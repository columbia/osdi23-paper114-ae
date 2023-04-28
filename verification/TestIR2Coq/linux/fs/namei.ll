; ModuleID = 'fs/namei.c'
source_filename = "fs/namei.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kmem_cache = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { %struct.anon, [48 x i8] }
%struct.anon = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.0, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.anon.7 = type { i32, i32 }
%struct.qstr = type { %union.anon.6, i8* }
%union.anon.6 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.84, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.85, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.86, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.87, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, {}*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
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
%struct.file = type { %union.anon.10, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.10 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.11 }
%union.anon.11 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.12, %union.anon.74, %struct.atomic_t, [8 x i8] }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.74 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.75, %union.anon.76 }
%union.anon.75 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.76 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.58, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.18 = type { i32 }
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
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type { %struct.path, %struct.qstr, %struct.path, %struct.inode*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.saved*, [2 x %struct.saved], %struct.filename*, %struct.nameidata*, i32, i32, %struct.kuid_t, i16 }
%struct.saved = type { %struct.path, %struct.delayed_call, i8*, i32 }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.filename = type { i8*, i8*, i32, %struct.audit_names*, [0 x i8] }
%struct.audit_names = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type { %struct.ns_common, %struct.mount*, %struct.list_head, %struct.spinlock, %struct.user_namespace*, %struct.ucounts*, i64, %struct.wait_queue_head, i64, i32, i32 }
%struct.mount = type { %struct.hlist_node, %struct.mount*, %struct.dentry*, %struct.vfsmount, %union.anon.88, %struct.mnt_pcp*, %struct.list_head, %struct.list_head, %struct.list_head, i8*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mount*, %struct.mnt_namespace*, %struct.mountpoint*, %union.anon.89, %struct.list_head, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%union.anon.88 = type { %struct.callback_head }
%struct.mnt_pcp = type { i32, i32 }
%struct.mountpoint = type { %struct.hlist_node, %struct.dentry*, %struct.hlist_head, i32 }
%union.anon.89 = type { %struct.hlist_node }
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
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.25, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.25 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sk_buff = type { %union.anon.27, %union.anon.30, %union.anon.31, [48 x i8], %union.anon.32, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.34, i32, i32, i32, i16, i16, %union.anon.36, %union.anon.37, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.29 }
%union.anon.29 = type { %struct.net_device* }
%union.anon.30 = type { %struct.sock* }
%union.anon.31 = type { i64 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { i64, void (%struct.sk_buff*)* }
%union.anon.34 = type { i32 }
%union.anon.36 = type { i32 }
%union.anon.37 = type { i16 }
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
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.38 }
%struct.bpf_prog = type opaque
%union.anon.38 = type { [2 x %struct.bpf_cgroup_storage*] }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%struct.request_queue = type opaque
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.53, i32, [12 x i8] }
%union.anon.53 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.55, %struct.qspinlock }
%union.anon.55 = type { %struct.atomic_t }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.57, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.57 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.58 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.59, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.60, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.59 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.60 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.78 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.78 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.24 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.24 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.80, i32 }
%union.anon.80 = type { %struct.kuid_t }
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
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.84 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.85 = type { %struct.callback_head }
%union.anon.86 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, {}*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.87 = type { %struct.pipe_inode_info* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.81, %struct.list_head, %struct.list_head, %union.anon.82 }
%struct.lockref = type { %union.anon.8 }
%union.anon.8 = type { i64 }
%union.anon.81 = type { %struct.list_head }
%union.anon.82 = type { %struct.hlist_node }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.83 }
%union.anon.83 = type { %struct.kuid_t }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.word_at_a_time = type { i64, i64 }
%struct.open_flags = type { i32, i16, i32, i32, i32 }
%struct.pt_regs = type { %union.anon.91, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.91 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.renamedata = type { %struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode**, i32 }
%struct.name_snapshot = type { %struct.qstr, [32 x i8] }

@names_cachep = external dso_local local_unnamed_addr global %struct.kmem_cache*, align 8
@sysctl_protected_symlinks = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@sysctl_protected_hardlinks = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@mount_lock = external dso_local global %struct.seqlock_t, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"pts\00", align 1
@__const.path_pts.this = private unnamed_addr constant { { %struct.anon.7 }, i8* } { { %struct.anon.7 } { %struct.anon.7 { i32 0, i32 3 } }, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0) }, align 8
@slash_name = external dso_local constant %struct.qstr, align 8
@page_symlink_inode_operations = dso_local local_unnamed_addr constant { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] } { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)* null, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @page_get_link, i32 (%struct.user_namespace*, %struct.inode*, i32)* null, %struct.posix_acl* (%struct.inode*, i32, i1)* null, i32 (%struct.dentry*, i8*, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* null, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.inode*, %struct.dentry*)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* null, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)* null, i64 (%struct.dentry*, i8*, i64)* null, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)* null, i32 (%struct.inode*, %struct.timespec64*, i32)* null, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* null, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)* null, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)* null, i32 (%struct.dentry*, %struct.fileattr*)* null, [8 x i8] undef }, align 64
@sysctl_protected_fifos = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@sysctl_protected_regular = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@rename_lock = external dso_local global %struct.seqlock_t, align 4
@__const.hash_name.constants = private unnamed_addr constant %struct.word_at_a_time { i64 72340172838076673, i64 -9187201950435737472 }, align 8
@switch.table.do_rmdir = private unnamed_addr constant [3 x i32] [i32 -16, i32 -22, i32 -39], align 4
@switch.table.may_mknod = private unnamed_addr constant [13 x i32] [i32 0, i32 0, i32 0, i32 -22, i32 -1, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 -22, i32 -22, i32 0], align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.filename* @getname_flags(i8* noundef %filename, i32 noundef %flags, i32* noundef writeonly %empty) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  %call1 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #16
  %tobool2.not = icmp eq i8* %call1, null
  br i1 %tobool2.not, label %if.then6, label %if.end8, !prof !7

if.then6:                                         ; preds = %entry
  %call7 = call fastcc i8* @ERR_PTR(i64 noundef -12) #17
  %1 = bitcast i8* %call7 to %struct.filename*
  br label %cleanup96

if.end8:                                          ; preds = %entry
  %iname = getelementptr inbounds i8, i8* %call1, i64 32
  %name = bitcast i8* %call1 to i8**
  store i8* %iname, i8** %name, align 8
  %call9 = call i64 @strncpy_from_user(i8* noundef %iname, i8* noundef %filename, i64 noundef 4064) #16
  %conv10 = trunc i64 %call9 to i32
  %cmp = icmp slt i32 %conv10, 0
  br i1 %cmp, label %if.then19, label %if.end22, !prof !7

if.then19:                                        ; preds = %if.end8
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %2, i8* noundef nonnull %call1) #16
  %sext135 = shl i64 %call9, 32
  %conv20 = ashr exact i64 %sext135, 32
  %call21 = call fastcc i8* @ERR_PTR(i64 noundef %conv20) #17
  %3 = bitcast i8* %call21 to %struct.filename*
  br label %cleanup96

if.end22:                                         ; preds = %if.end8
  %sext.mask = and i64 %call9, 4294967295
  %cmp24 = icmp eq i64 %sext.mask, 4064
  br i1 %cmp24, label %if.then33, label %if.end76, !prof !7

if.then33:                                        ; preds = %if.end22
  %call34 = call fastcc i8* @kzalloc() #17
  %tobool35.not = icmp eq i8* %call34, null
  br i1 %tobool35.not, label %if.then45, label %if.end47, !prof !7

if.then45:                                        ; preds = %if.then33
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %4, i8* noundef nonnull %call1) #16
  %call46 = call fastcc i8* @ERR_PTR(i64 noundef -12) #17
  %5 = bitcast i8* %call46 to %struct.filename*
  br label %cleanup96

if.end47:                                         ; preds = %if.then33
  %name48 = bitcast i8* %call34 to i8**
  store i8* %call1, i8** %name48, align 8
  %call49 = call i64 @strncpy_from_user(i8* noundef nonnull %call1, i8* noundef %filename, i64 noundef 4096) #16
  %conv50 = trunc i64 %call49 to i32
  %cmp51 = icmp slt i32 %conv50, 0
  br i1 %cmp51, label %if.then60, label %if.end63, !prof !7

if.then60:                                        ; preds = %if.end47
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %6, i8* noundef nonnull %call1) #16
  call void @kfree(i8* noundef nonnull %call34) #16
  %sext = shl i64 %call49, 32
  %conv61 = ashr exact i64 %sext, 32
  %call62 = call fastcc i8* @ERR_PTR(i64 noundef %conv61) #17
  %7 = bitcast i8* %call62 to %struct.filename*
  br label %cleanup96

if.end63:                                         ; preds = %if.end47
  %cmp64 = icmp eq i32 %conv50, 4096
  br i1 %cmp64, label %if.then73, label %if.end76, !prof !7

if.then73:                                        ; preds = %if.end63
  %8 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %8, i8* noundef nonnull %call1) #16
  call void @kfree(i8* noundef nonnull %call34) #16
  %call74 = call fastcc i8* @ERR_PTR(i64 noundef -36) #17
  %9 = bitcast i8* %call74 to %struct.filename*
  br label %cleanup96

if.end76:                                         ; preds = %if.end63, %if.end22
  %result.0.in = phi i8* [ %call1, %if.end22 ], [ %call34, %if.end63 ]
  %len.1 = phi i32 [ %conv10, %if.end22 ], [ %conv50, %if.end63 ]
  %result.0 = bitcast i8* %result.0.in to %struct.filename*
  %refcnt = getelementptr inbounds i8, i8* %result.0.in, i64 16
  %10 = bitcast i8* %refcnt to i32*
  store i32 1, i32* %10, align 8
  %tobool77.not = icmp eq i32 %len.1, 0
  br i1 %tobool77.not, label %if.then87, label %if.end95, !prof !7

if.then87:                                        ; preds = %if.end76
  %tobool88.not = icmp eq i32* %empty, null
  br i1 %tobool88.not, label %if.end90, label %if.then89

if.then89:                                        ; preds = %if.then87
  store i32 1, i32* %empty, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.then87
  %and = and i32 %flags, 16384
  %tobool91.not = icmp eq i32 %and, 0
  br i1 %tobool91.not, label %if.then92, label %if.end95

if.then92:                                        ; preds = %if.end90
  call void @putname(%struct.filename* noundef nonnull %result.0) #17
  %call93 = call fastcc i8* @ERR_PTR(i64 noundef -2) #17
  %11 = bitcast i8* %call93 to %struct.filename*
  br label %cleanup96

if.end95:                                         ; preds = %if.end90, %if.end76
  %uptr = getelementptr inbounds i8, i8* %result.0.in, i64 8
  %12 = bitcast i8* %uptr to i8**
  store i8* %filename, i8** %12, align 8
  %aname = getelementptr inbounds i8, i8* %result.0.in, i64 24
  %13 = bitcast i8* %aname to %struct.audit_names**
  store %struct.audit_names* null, %struct.audit_names** %13, align 8
  br label %cleanup96

cleanup96:                                        ; preds = %if.then73, %if.then60, %if.then45, %if.end95, %if.then92, %if.then19, %if.then6
  %retval.1 = phi %struct.filename* [ %1, %if.then6 ], [ %3, %if.then19 ], [ %result.0, %if.end95 ], [ %11, %if.then92 ], [ %9, %if.then73 ], [ %7, %if.then60 ], [ %5, %if.then45 ]
  ret %struct.filename* %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strncpy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #16
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @putname(%struct.filename* noundef %name) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.filename* %name to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef %0) #17
  br i1 %call, label %if.end18, label %do.body

do.body:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.filename, %struct.filename* %name, i64 0, i32 2
  %1 = load i32, i32* %refcnt, align 8
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.body3, label %do.end7, !prof !7

do.body3:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 261; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !8
  unreachable

do.end7:                                          ; preds = %do.body
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %refcnt, align 8
  %cmp9.not = icmp eq i32 %dec, 0
  br i1 %cmp9.not, label %if.end12, label %if.end18

if.end12:                                         ; preds = %do.end7
  %name13 = getelementptr inbounds %struct.filename, %struct.filename* %name, i64 0, i32 0
  %2 = load i8*, i8** %name13, align 8
  %arraydecay = getelementptr inbounds %struct.filename, %struct.filename* %name, i64 0, i32 4, i64 0
  %cmp14.not = icmp eq i8* %2, %arraydecay
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  br i1 %cmp14.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @kmem_cache_free(%struct.kmem_cache* noundef %3, i8* noundef %2) #16
  call void @kfree(i8* noundef %0) #16
  br label %if.end18

if.else:                                          ; preds = %if.end12
  call void @kmem_cache_free(%struct.kmem_cache* noundef %3, i8* noundef %0) #16
  br label %if.end18

if.end18:                                         ; preds = %do.end7, %entry, %if.else, %if.then16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.filename* @getname_uflags(i8* noundef %filename, i32 noundef %uflags) local_unnamed_addr #0 {
entry:
  %and = shl i32 %uflags, 2
  %0 = and i32 %and, 16384
  %call = call %struct.filename* @getname_flags(i8* noundef %filename, i32 noundef %0, i32* noundef null) #17
  ret %struct.filename* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.filename* @getname(i8* noundef %filename) local_unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname_flags(i8* noundef %filename, i32 noundef 0, i32* noundef null) #17
  ret %struct.filename* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.filename* @getname_kernel(i8* noundef %filename) local_unnamed_addr #0 {
entry:
  %call = call i64 @strlen(i8* noundef %filename) #16
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  %call1 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 3264) #16
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef -12) #17
  br label %cleanup36

if.end:                                           ; preds = %entry
  %conv7 = sext i32 %conv to i64
  %cmp = icmp ult i32 %conv, 4065
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %iname = getelementptr inbounds i8, i8* %call1, i64 32
  br label %if.end32

if.else:                                          ; preds = %if.end
  %cmp10 = icmp slt i32 %conv, 4097
  br i1 %cmp10, label %if.then12, label %if.else29

if.then12:                                        ; preds = %if.else
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef 3264) #16
  %tobool14.not = icmp eq i8* %call.i.i, null
  br i1 %tobool14.not, label %cleanup.thread, label %if.end32, !prof !7

cleanup.thread:                                   ; preds = %if.then12
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %3, i8* noundef nonnull %call1) #16
  %call25 = call fastcc i8* @ERR_PTR(i64 noundef -12) #17
  br label %cleanup36

if.else29:                                        ; preds = %if.else
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** @names_cachep, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %4, i8* noundef nonnull %call1) #16
  %call30 = call fastcc i8* @ERR_PTR(i64 noundef -36) #17
  br label %cleanup36

if.end32:                                         ; preds = %if.then12, %if.then9
  %call.i.i.sink = phi i8* [ %call1, %if.then9 ], [ %call.i.i, %if.then12 ]
  %call1.sink = phi i8* [ %iname, %if.then9 ], [ %call1, %if.then12 ]
  %name27 = bitcast i8* %call.i.i.sink to i8**
  store i8* %call1.sink, i8** %name27, align 8
  %call35 = call i8* @memcpy(i8* noundef %call1.sink, i8* noundef %filename, i64 noundef %conv7) #16
  %uptr = getelementptr inbounds i8, i8* %call.i.i.sink, i64 8
  %5 = bitcast i8* %uptr to i8**
  store i8* null, i8** %5, align 8
  %aname = getelementptr inbounds i8, i8* %call.i.i.sink, i64 24
  %6 = bitcast i8* %aname to %struct.audit_names**
  store %struct.audit_names* null, %struct.audit_names** %6, align 8
  %refcnt = getelementptr inbounds i8, i8* %call.i.i.sink, i64 16
  %7 = bitcast i8* %refcnt to i32*
  store i32 1, i32* %7, align 8
  br label %cleanup36

cleanup36:                                        ; preds = %cleanup.thread, %if.end32, %if.else29, %if.then
  %retval.1.in = phi i8* [ %call6, %if.then ], [ %call.i.i.sink, %if.end32 ], [ %call30, %if.else29 ], [ %call25, %cleanup.thread ]
  %retval.1 = bitcast i8* %retval.1.in to %struct.filename*
  ret %struct.filename* %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #3 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @generic_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef %mask) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @acl_permission_check(%struct.inode* noundef %inode, i32 noundef %mask) #17
  %cmp.not = icmp eq i32 %call, -13
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  %cmp1 = icmp eq i16 %1, 16384
  br i1 %cmp1, label %if.then3, label %if.end13

if.then3:                                         ; preds = %if.end
  %and4 = and i32 %mask, 2
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.then3
  %call6 = call i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef 2) #16
  br i1 %call6, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then3
  %call10 = call i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef 1) #16
  %. = select i1 %call10, i32 0, i32 -13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %and14 = and i32 %mask, 7
  %cmp15 = icmp eq i32 %and14, 4
  br i1 %cmp15, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end13
  %call18 = call i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef 2) #16
  br i1 %call18, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13
  %and22 = and i32 %mask, 1
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end21
  %2 = load i16, i16* %i_mode, align 8
  %3 = and i16 %2, 73
  %tobool27.not = icmp eq i16 %3, 0
  br i1 %tobool27.not, label %if.end32, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false, %if.end21
  %call29 = call i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef 1) #16
  br i1 %call29, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.then28, %lor.lhs.false
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.then17, %if.end9, %if.then5, %entry, %if.end32
  %retval.0 = phi i32 [ -13, %if.end32 ], [ %call, %entry ], [ 0, %if.then5 ], [ %., %if.end9 ], [ 0, %if.then17 ], [ 0, %if.then28 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @acl_permission_check(%struct.inode* nocapture noundef readonly %inode, i32 noundef %mask) unnamed_addr #0 {
entry:
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %conv = zext i16 %0 to i32
  %call = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %inode) #17
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %3, i64 0, i32 7, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %coerce.val.ii5 = zext i32 %call to i64
  %call6 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii5) #17
  %and = and i32 %mask, 7
  br i1 %call6, label %if.then, label %if.end20, !prof !10

if.then:                                          ; preds = %entry
  %shr = lshr i32 %conv, 6
  br label %cleanup40

if.end20:                                         ; preds = %entry
  %shr22 = lshr i32 %conv, 3
  %xor = xor i32 %shr22, %conv
  %and23 = and i32 %xor, %and
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cleanup40, label %if.then25

if.then25:                                        ; preds = %if.end20
  %call26 = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef %inode) #17
  %coerce.val.ii29 = zext i32 %call26 to i64
  %call30 = call i32 @in_group_p(i64 %coerce.val.ii29) #16
  %tobool31.not = icmp eq i32 %call30, 0
  %spec.select = select i1 %tobool31.not, i32 %conv, i32 %shr22
  br label %cleanup40

cleanup40:                                        ; preds = %if.end20, %if.then25, %if.then
  %mode.1.sink = phi i32 [ %shr, %if.then ], [ %spec.select, %if.then25 ], [ %conv, %if.end20 ]
  %neg36 = xor i32 %mode.1.sink, -1
  %and37 = and i32 %and, %neg36
  %tobool38.not = icmp eq i32 %and37, 0
  %cond39 = select i1 %tobool38.not, i32 0, i32 -13
  ret i32 %cond39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef %mask) local_unnamed_addr #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call fastcc i32 @sb_permission(%struct.super_block* noundef %0, %struct.inode* noundef %inode, i32 noundef %mask) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %mask, 2
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end13, label %if.then5, !prof !10

if.then5:                                         ; preds = %if.end
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 4
  %1 = load i32, i32* %i_flags, align 4
  %and6 = and i32 %1, 8
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %if.then5
  %call10 = call fastcc i1 @HAS_UNMAPPED_ID(%struct.inode* noundef %inode) #17
  br i1 %call10, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end9, %if.end
  %call14 = call fastcc i32 @do_inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef %mask) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9, %if.then5, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -1, %if.then5 ], [ -13, %if.end9 ], [ %call14, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sb_permission(%struct.super_block* nocapture noundef readonly %sb, %struct.inode* nocapture noundef readonly %inode, i32 noundef %mask) unnamed_addr #4 {
entry:
  %and = and i32 %mask, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  %call = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %sb) #17
  br i1 %call, label %land.lhs.true, label %cleanup.thread

land.lhs.true:                                    ; preds = %if.then
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, -4096
  switch i16 %1, label %cleanup.thread [
    i16 -32768, label %return
    i16 16384, label %return
    i16 -24576, label %return
  ]

cleanup.thread:                                   ; preds = %if.then, %land.lhs.true
  br label %return

return:                                           ; preds = %entry, %cleanup.thread, %land.lhs.true, %land.lhs.true, %land.lhs.true
  %retval.1 = phi i32 [ -30, %land.lhs.true ], [ -30, %land.lhs.true ], [ -30, %land.lhs.true ], [ 0, %cleanup.thread ], [ 0, %entry ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @HAS_UNMAPPED_ID(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %inode) #17
  %coerce.val.ii = zext i32 %call to i64
  %call2 = call fastcc i1 @uid_valid(i64 %coerce.val.ii) #17
  br i1 %call2, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call4 = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef %inode) #17
  %coerce.val.ii7 = zext i32 %call4 to i64
  %call8 = call fastcc i1 @gid_valid(i64 %coerce.val.ii7) #17
  %lnot = xor i1 %call8, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef %mask) unnamed_addr #0 {
entry:
  %i_opflags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 1
  %0 = load i16, i16* %i_opflags, align 2
  %1 = and i16 %0, 1
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end22, !prof !7

if.then:                                          ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 5
  %2 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %permission = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %2, i64 0, i32 2
  %permission5 = bitcast {}** %permission to i32 (%struct.user_namespace*, %struct.inode*, i32)**
  %3 = load i32 (%struct.user_namespace*, %struct.inode*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, i32)** %permission5, align 16
  %tobool6.not = icmp eq i32 (%struct.user_namespace*, %struct.inode*, i32)* %3, null
  br i1 %tobool6.not, label %if.end, label %if.then14, !prof !7

if.then14:                                        ; preds = %if.then
  %call = call i32 %3(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef %mask) #16
  br label %return

if.end:                                           ; preds = %if.then
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %4 = load i16, i16* %i_opflags, align 2
  %5 = or i16 %4, 1
  store i16 %5, i16* %i_opflags, align 2
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  br label %if.end22

if.end22:                                         ; preds = %if.end, %entry
  %call23 = call i32 @generic_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef %mask) #17
  br label %return

return:                                           ; preds = %if.end22, %if.then14
  %retval.0 = phi i32 [ %call, %if.then14 ], [ %call23, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @path_get(%struct.path* nocapture noundef readonly %path) local_unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call %struct.vfsmount* @mntget(%struct.vfsmount* noundef %0) #16
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call1 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vfsmount* @mntget(%struct.vfsmount* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @dget(%struct.dentry* noundef returned %dentry) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7
  call void @lockref_get(%struct.lockref* noundef %d_lockref) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.dentry* %dentry
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @path_put(%struct.path* nocapture noundef readonly %path) local_unnamed_addr #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call void @dput(%struct.dentry* noundef %0) #16
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mntput(%struct.vfsmount* noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(%struct.vfsmount* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @nd_jump_link(%struct.path* nocapture noundef readonly %path) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %nameidata = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 82
  %2 = load %struct.nameidata*, %struct.nameidata** %nameidata, align 32
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %2, i64 0, i32 4
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 131072
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %err, !prof !10

if.end:                                           ; preds = %entry
  %and4 = and i32 %3, 262144
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end19, label %if.then13, !prof !10

if.then13:                                        ; preds = %if.end
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %2, i64 0, i32 0, i32 0
  %4 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt15 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt15, align 8
  %cmp.not = icmp eq %struct.vfsmount* %4, %5
  %and21 = and i32 %3, 1572864
  %tobool22.not = icmp eq i32 %and21, 0
  %or.cond = select i1 %cmp.not, i1 %tobool22.not, i1 false
  br i1 %or.cond, label %if.end31, label %err, !prof !11

if.end19:                                         ; preds = %if.end
  %and21.old = and i32 %3, 1572864
  %tobool22.not.old = icmp eq i32 %and21.old, 0
  br i1 %tobool22.not.old, label %if.end31, label %err, !prof !10

if.end31:                                         ; preds = %if.then13, %if.end19
  %path32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %2, i64 0, i32 0
  call void @path_put(%struct.path* noundef %path32) #17
  %6 = bitcast %struct.nameidata* %2 to i8*
  %7 = bitcast %struct.path* %path to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %6, i8* noundef align 8 dereferenceable(16) %7, i64 16, i1 false)
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %2, i64 0, i32 0, i32 1
  %8 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i64 0, i32 5
  %9 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %inode = getelementptr inbounds %struct.nameidata, %struct.nameidata* %2, i64 0, i32 3
  store %struct.inode* %9, %struct.inode** %inode, align 8
  %state = getelementptr inbounds %struct.nameidata, %struct.nameidata* %2, i64 0, i32 5
  %10 = load i32, i32* %state, align 4
  %or = or i32 %10, 4
  store i32 %or, i32* %state, align 4
  br label %cleanup

err:                                              ; preds = %if.end19, %if.then13, %entry
  %error.0 = phi i32 [ -40, %entry ], [ -18, %if.then13 ], [ -18, %if.end19 ]
  call void @path_put(%struct.path* noundef %path) #17
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end31
  %retval.0 = phi i32 [ %error.0, %err ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @may_linkat(%struct.user_namespace* noundef %mnt_userns, %struct.path* nocapture noundef readonly %link) local_unnamed_addr #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %link, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %1) #17
  %coerce.val.ii = zext i32 %call to i64
  %call2 = call fastcc i1 @uid_valid(i64 %coerce.val.ii) #17
  br i1 %call2, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call4 = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef %1) #17
  %coerce.val.ii7 = zext i32 %call4 to i64
  %call8 = call fastcc i1 @gid_valid(i64 %coerce.val.ii7) #17
  br i1 %call8, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* @sysctl_protected_hardlinks, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  %call11 = call fastcc i1 @safe_hardlink_source(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %1) #17
  br i1 %call11, label %cleanup, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end10
  %call13 = call i1 @inode_owner_or_capable(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %1) #16
  %not.call13 = xor i1 %call13, true
  %spec.select = sext i1 %not.call13 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false12, %if.end10, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -75, %lor.lhs.false ], [ -75, %entry ], [ 0, %if.end ], [ 0, %if.end10 ], [ %spec.select, %lor.lhs.false12 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_valid(i64 %uid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #17
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_uid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #4 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kuid_into_mnt(i64 %coerce.val.ii) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_valid(i64 %gid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #17
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_gid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #4 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  %0 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kgid_into_mnt(i64 %coerce.val.ii) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @safe_hardlink_source(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %conv = zext i16 %0 to i32
  %1 = and i32 %conv, 63488
  %2 = icmp ne i32 %1, 32768
  %and7 = and i32 %conv, 1032
  %cmp8 = icmp eq i32 %and7, 1032
  %or.cond19 = or i1 %2, %cmp8
  br i1 %or.cond19, label %cleanup, label %if.end11

if.end11:                                         ; preds = %entry
  %call = call i32 @inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef 6) #17
  %tobool12.not = icmp eq i32 %call, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %tobool12.not, %if.end11 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @inode_owner_or_capable(%struct.user_namespace* noundef, %struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @follow_up(%struct.path* nocapture noundef %path) local_unnamed_addr #0 {
entry:
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %call = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %0) #17
  call fastcc void @read_seqlock_excl() #17
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 1
  %1 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %cmp = icmp eq %struct.mount* %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @read_sequnlock_excl() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mnt2 = getelementptr inbounds %struct.mount, %struct.mount* %1, i64 0, i32 3
  %call3 = call %struct.vfsmount* @mntget(%struct.vfsmount* noundef %mnt2) #16
  %mnt_mountpoint = getelementptr inbounds %struct.mount, %struct.mount* %call, i64 0, i32 2
  %2 = load %struct.dentry*, %struct.dentry** %mnt_mountpoint, align 8
  %call4 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %2) #17
  call fastcc void @read_sequnlock_excl() #17
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %3 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call void @dput(%struct.dentry* noundef %3) #16
  store %struct.dentry* %2, %struct.dentry** %dentry, align 8
  %4 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  call void @mntput(%struct.vfsmount* noundef %4) #16
  store %struct.vfsmount* %mnt2, %struct.vfsmount** %mnt1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef readnone %mnt) unnamed_addr #3 {
entry:
  %add.ptr2 = getelementptr %struct.vfsmount, %struct.vfsmount* %mnt, i64 -1
  %0 = bitcast %struct.vfsmount* %add.ptr2 to %struct.mount*
  ret %struct.mount* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_seqlock_excl() unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 1, i32 0, i32 0)) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @read_sequnlock_excl() unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 1, i32 0, i32 0)) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @follow_down_one(%struct.path* noundef %path) local_unnamed_addr #0 {
entry:
  %call = call %struct.vfsmount* @lookup_mnt(%struct.path* noundef %path) #16
  %tobool.not = icmp eq %struct.vfsmount* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call void @dput(%struct.dentry* noundef %0) #16
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mntput(%struct.vfsmount* noundef %1) #16
  store %struct.vfsmount* %call, %struct.vfsmount** %mnt, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %call, i64 0, i32 0
  %2 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call2 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %2) #17
  store %struct.dentry* %2, %struct.dentry** %dentry, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vfsmount* @lookup_mnt(%struct.path* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @follow_down(%struct.path* noundef %path) local_unnamed_addr #0 {
entry:
  %jumped = alloca i8, align 4
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %jumped) #18
  %call = call fastcc i32 @traverse_mounts(%struct.path* noundef %path, i8* noundef nonnull %jumped, i32* noundef null, i32 noundef 0) #17
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %cmp.not = icmp eq %struct.vfsmount* %1, %0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @mntput(%struct.vfsmount* noundef %0) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %jumped) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @traverse_mounts(%struct.path* noundef %path, i8* nocapture noundef writeonly %jumped, i32* noundef %count, i32 noundef %lookup_flags) unnamed_addr #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 0
  %1 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %d_flags) #18, !srcloc !12
  %and = and i32 %1, 458752
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end13, !prof !10

if.then:                                          ; preds = %entry
  store i8 0, i8* %jumped, align 1
  %call4 = call fastcc i1 @d_flags_negative(i32 noundef %1) #17
  %. = select i1 %call4, i32 -2, i32 0, !prof !7
  br label %cleanup

if.end13:                                         ; preds = %entry
  %call14 = call fastcc i32 @__traverse_mounts(%struct.path* noundef %path, i32 noundef %1, i8* noundef %jumped, i32* noundef %count, i32 noundef %lookup_flags) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end13
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ %., %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @full_name_hash(i8* noundef %salt, i8* noundef %name, i32 noundef %len) local_unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %salt to i64
  %tobool.not33 = icmp eq i32 %len, 0
  br i1 %tobool.not33, label %done, label %if.end

if.end:                                           ; preds = %entry, %if.end3
  %y.037 = phi i64 [ %mul, %if.end3 ], [ %0, %entry ]
  %x.036 = phi i64 [ %add, %if.end3 ], [ 0, %entry ]
  %len.addr.035 = phi i32 [ %sub, %if.end3 ], [ %len, %entry ]
  %name.addr.034 = phi i8* [ %add.ptr, %if.end3 ], [ %name, %entry ]
  %call = call fastcc i64 @load_unaligned_zeropad(i8* noundef %name.addr.034) #17
  %cmp = icmp ult i32 %len.addr.035, 8
  br i1 %cmp, label %for.end, label %if.end3

if.end3:                                          ; preds = %if.end
  %xor = xor i64 %call, %x.036
  %xor4 = xor i64 %xor, %y.037
  %call5 = call fastcc i64 @rol64(i64 noundef %xor, i32 noundef 12) #17
  %add = add i64 %call5, %xor4
  %call6 = call fastcc i64 @rol64(i64 noundef %xor4, i32 noundef 45) #17
  %mul = mul i64 %call6, 9
  %add.ptr = getelementptr i8, i8* %name.addr.034, i64 8
  %sub = add i32 %len.addr.035, -8
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %done, label %if.end

for.end:                                          ; preds = %if.end
  %mul9 = shl nuw nsw i32 %len.addr.035, 3
  %sh_prom = zext i32 %mul9 to i64
  %shl = shl nsw i64 -1, %sh_prom
  %neg = xor i64 %shl, -1
  %and = and i64 %call, %neg
  %xor10 = xor i64 %and, %x.036
  br label %done

done:                                             ; preds = %if.end3, %entry, %for.end
  %y.030 = phi i64 [ %y.037, %for.end ], [ %0, %entry ], [ %mul, %if.end3 ]
  %x.1 = phi i64 [ %xor10, %for.end ], [ 0, %entry ], [ %add, %if.end3 ]
  %call11 = call fastcc i32 @fold_hash(i64 noundef %x.1, i64 noundef %y.030) #17
  ret i32 %call11
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @load_unaligned_zeropad(i8* noundef %addr) unnamed_addr #7 {
entry:
  %0 = bitcast i8* %addr to i64*
  %1 = call { i64, i64 } asm "1:\09ldr\09$0, $3\0A2:\0A\09.pushsection .fixup,\22ax\22\0A\09.align 2\0A3:\09bic\09$1, $2, #0x7\0A\09ldr\09$0, [$1]\0A\09and\09$1, $2, #0x7\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=&r,=&r,r,*Q"(i8* %addr, i64* elementtype(i64) %0) #20, !srcloc !13
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @rol64(i64 noundef %word, i32 noundef %shift) unnamed_addr #8 {
entry:
  %sh_prom = zext i32 %shift to i64
  %or = call i64 @llvm.fshl.i64(i64 %word, i64 %word, i64 %sh_prom)
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fold_hash(i64 noundef %x, i64 noundef %y) unnamed_addr #3 {
entry:
  %mul = mul i64 %x, 7046029254386353131
  %xor = xor i64 %mul, %y
  %mul1 = mul i64 %xor, 7046029254386353131
  %shr = lshr i64 %mul1, 32
  %conv = trunc i64 %shr to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @hashlen_string(i8* noundef %salt, i8* noundef %name) local_unnamed_addr #6 {
entry:
  %adata = alloca i64, align 8
  %constants = alloca %struct.word_at_a_time, align 8
  %0 = ptrtoint i8* %salt to i64
  %1 = bitcast i64* %adata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #18
  store i64 0, i64* %adata, align 8, !annotation !14
  %2 = bitcast %struct.word_at_a_time* %constants to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) bitcast (%struct.word_at_a_time* @__const.hash_name.constants to i8*), i64 16, i1 false)
  %call430 = call fastcc i64 @load_unaligned_zeropad(i8* noundef %name) #17
  %call531 = call fastcc i64 @has_zero(i64 noundef %call430, i64* noundef nonnull %adata, %struct.word_at_a_time* noundef nonnull %constants) #17
  %tobool.not32 = icmp eq i64 %call531, 0
  br i1 %tobool.not32, label %do.body, label %do.end

do.body:                                          ; preds = %entry, %do.body
  %call436 = phi i64 [ %call4, %do.body ], [ %call430, %entry ]
  %len.035 = phi i64 [ %add3, %do.body ], [ 0, %entry ]
  %y.034 = phi i64 [ %mul, %do.body ], [ %0, %entry ]
  %x.033 = phi i64 [ %add, %do.body ], [ 0, %entry ]
  %xor = xor i64 %call436, %x.033
  %xor1 = xor i64 %xor, %y.034
  %call = call fastcc i64 @rol64(i64 noundef %xor, i32 noundef 12) #17
  %add = add i64 %call, %xor1
  %call2 = call fastcc i64 @rol64(i64 noundef %xor1, i32 noundef 45) #17
  %mul = mul i64 %call2, 9
  %add3 = add i64 %len.035, 8
  %add.ptr = getelementptr i8, i8* %name, i64 %add3
  %call4 = call fastcc i64 @load_unaligned_zeropad(i8* noundef %add.ptr) #17
  %call5 = call fastcc i64 @has_zero(i64 noundef %call4, i64* noundef nonnull %adata, %struct.word_at_a_time* noundef nonnull %constants) #17
  %tobool.not = icmp eq i64 %call5, 0
  br i1 %tobool.not, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %entry
  %x.0.lcssa = phi i64 [ 0, %entry ], [ %add, %do.body ]
  %y.0.lcssa = phi i64 [ %0, %entry ], [ %mul, %do.body ]
  %len.0.lcssa = phi i64 [ 0, %entry ], [ %add3, %do.body ]
  %call4.lcssa = phi i64 [ %call430, %entry ], [ %call4, %do.body ]
  %3 = load i64, i64* %adata, align 8
  %call6 = call fastcc i64 @create_zero_mask(i64 noundef %3) #17, !range !15
  %and = and i64 %call6, %call4.lcssa
  %xor7 = xor i64 %and, %x.0.lcssa
  %call8 = call fastcc i64 @find_zero(i64 noundef %call6) #17
  %add9 = add i64 %call8, %len.0.lcssa
  %shl = shl i64 %add9, 32
  %call10 = call fastcc i32 @fold_hash(i64 noundef %xor7, i64 noundef %y.0.lcssa) #17
  %conv = zext i32 %call10 to i64
  %or = or i64 %shl, %conv
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #18
  ret i64 %or
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @has_zero(i64 noundef %a, i64* nocapture noundef writeonly %bits, %struct.word_at_a_time* nocapture noundef readonly %c) unnamed_addr #9 {
entry:
  %one_bits = getelementptr inbounds %struct.word_at_a_time, %struct.word_at_a_time* %c, i64 0, i32 0
  %0 = load i64, i64* %one_bits, align 8
  %sub = sub i64 %a, %0
  %neg = xor i64 %a, -1
  %and = and i64 %sub, %neg
  %high_bits = getelementptr inbounds %struct.word_at_a_time, %struct.word_at_a_time* %c, i64 0, i32 1
  %1 = load i64, i64* %high_bits, align 8
  %and1 = and i64 %and, %1
  store i64 %and1, i64* %bits, align 8
  ret i64 %and1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @create_zero_mask(i64 noundef %bits) unnamed_addr #3 {
entry:
  %sub = add i64 %bits, -1
  %neg = xor i64 %bits, -1
  %and = and i64 %sub, %neg
  %shr = lshr i64 %and, 7
  ret i64 %shr
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @find_zero(i64 noundef %mask) unnamed_addr #8 {
entry:
  %cmp.i = icmp eq i64 %mask, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %mask, i1 false) #18, !range !16
  %conv.i = sub nuw nsw i64 64, %0
  %conv.i.op = lshr i64 %conv.i, 3
  %conv2 = select i1 %cmp.i, i64 0, i64 %conv.i.op
  ret i64 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @filename_lookup(i32 noundef %dfd, %struct.filename* noundef %name, i32 noundef %flags, %struct.path* nocapture noundef writeonly %path, %struct.path* noundef %root) local_unnamed_addr #0 {
entry:
  %nd = alloca %struct.nameidata, align 8
  %0 = bitcast %struct.nameidata* %nd to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false), !annotation !14
  %1 = bitcast %struct.filename* %name to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef %1) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %1) #17
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @set_nameidata(%struct.nameidata* noundef nonnull %nd, i32 noundef %dfd, %struct.filename* noundef %name, %struct.path* noundef %root) #17
  %or = or i32 %flags, 64
  %call3 = call fastcc i32 @path_lookupat(%struct.nameidata* noundef nonnull %nd, i32 noundef %or, %struct.path* noundef %path) #17
  %cmp = icmp eq i32 %call3, -10
  br i1 %cmp, label %if.then7, label %if.end9, !prof !7

if.then7:                                         ; preds = %if.end
  %call8 = call fastcc i32 @path_lookupat(%struct.nameidata* noundef nonnull %nd, i32 noundef %flags, %struct.path* noundef %path) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %retval1.0 = phi i32 [ %call8, %if.then7 ], [ %call3, %if.end ]
  %cmp10 = icmp eq i32 %retval1.0, -116
  br i1 %cmp10, label %if.then19, label %if.end35, !prof !7

if.then19:                                        ; preds = %if.end9
  %or20 = or i32 %flags, 32
  %call21 = call fastcc i32 @path_lookupat(%struct.nameidata* noundef nonnull %nd, i32 noundef %or20, %struct.path* noundef %path) #17
  br label %if.end35

if.end35:                                         ; preds = %if.end9, %if.then19
  %retval1.1 = phi i32 [ %call21, %if.then19 ], [ %retval1.0, %if.end9 ]
  call fastcc void @restore_nameidata() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %retval1.1, %if.end35 ]
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_nameidata(%struct.nameidata* noundef %p, i32 noundef %dfd, %struct.filename* noundef %name, %struct.path* noundef readonly %root) unnamed_addr #0 {
entry:
  call fastcc void @__set_nameidata(%struct.nameidata* noundef %p, i32 noundef %dfd, %struct.filename* noundef %name) #17
  %state = getelementptr inbounds %struct.nameidata, %struct.nameidata* %p, i64 0, i32 5
  store i32 0, i32* %state, align 4
  %tobool.not = icmp eq %struct.path* %root, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  store i32 1, i32* %state, align 4
  %root4 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %p, i64 0, i32 2
  %0 = bitcast %struct.path* %root4 to i8*
  %1 = bitcast %struct.path* %root to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @path_lookupat(%struct.nameidata* noundef %nd, i32 noundef %flags, %struct.path* nocapture noundef writeonly %path) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @path_init(%struct.nameidata* noundef %nd, i32 noundef %flags) #17
  %and = and i32 %flags, 32768
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond.preheader, label %land.lhs.true, !prof !10

land.lhs.true:                                    ; preds = %entry
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %call) #17
  br i1 %call3, label %while.cond.preheader, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call4 = call fastcc i32 @handle_lookup_down(%struct.nameidata* noundef %nd) #17
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then13, label %while.cond.preheader, !prof !7

if.then13:                                        ; preds = %if.then
  %conv14 = sext i32 %call4 to i64
  %call15 = call fastcc i8* @ERR_PTR(i64 noundef %conv14) #17
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %if.then13, %land.lhs.true, %entry
  %s.1.ph = phi i8* [ %call, %entry ], [ %call, %if.then ], [ %call15, %if.then13 ], [ %call, %land.lhs.true ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %land.rhs
  %s.1 = phi i8* [ %call19, %land.rhs ], [ %s.1.ph, %while.cond.preheader ]
  %call17 = call fastcc i32 @link_path_walk(i8* noundef %s.1, %struct.nameidata* noundef %nd) #17
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.rhs, label %if.end59

land.rhs:                                         ; preds = %while.cond
  %call19 = call fastcc i8* @lookup_last(%struct.nameidata* noundef %nd) #17
  %cmp20.not = icmp eq i8* %call19, null
  br i1 %cmp20.not, label %land.lhs.true23, label %while.cond

land.lhs.true23:                                  ; preds = %land.rhs
  %flags24 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %0 = load i32, i32* %flags24, align 8
  %and25 = and i32 %0, 128
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end41, label %if.end37, !prof !10

if.end37:                                         ; preds = %land.lhs.true23
  %call35 = call fastcc i32 @handle_lookup_down(%struct.nameidata* noundef %nd) #17
  %state = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 5
  %1 = load i32, i32* %state, align 4
  %and36 = and i32 %1, -5
  store i32 %and36, i32* %state, align 4
  %tobool38.not = icmp eq i32 %call35, 0
  br i1 %tobool38.not, label %if.end41, label %if.end59

if.end41:                                         ; preds = %land.lhs.true23, %if.end37
  %call40 = call fastcc i32 @complete_walk(%struct.nameidata* noundef %nd) #17
  %tobool42.not = icmp eq i32 %call40, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %if.end59

land.lhs.true43:                                  ; preds = %if.end41
  %2 = load i32, i32* %flags24, align 8
  %and45 = and i32 %2, 2
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then54, label %if.then47

if.then47:                                        ; preds = %land.lhs.true43
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %3 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call49 = call fastcc i1 @d_can_lookup(%struct.dentry* noundef %3) #17
  br i1 %call49, label %if.then54, label %if.end59

if.then54:                                        ; preds = %if.then47, %land.lhs.true43
  %4 = bitcast %struct.path* %path to i8*
  %5 = bitcast %struct.nameidata* %nd to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %4, i8* noundef align 8 dereferenceable(16) %5, i64 16, i1 false)
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %mnt, align 8
  %dentry58 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  store %struct.dentry* null, %struct.dentry** %dentry58, align 8
  br label %if.end59

if.end59:                                         ; preds = %while.cond, %if.end37, %if.then47, %if.end41, %if.then54
  %err.292 = phi i32 [ 0, %if.then54 ], [ -20, %if.then47 ], [ %call40, %if.end41 ], [ %call35, %if.end37 ], [ %call17, %while.cond ]
  call fastcc void @terminate_walk(%struct.nameidata* noundef %nd) #17
  ret i32 %err.292
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restore_nameidata() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %nameidata = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 82
  %2 = load %struct.nameidata*, %struct.nameidata** %nameidata, align 32
  %saved = getelementptr inbounds %struct.nameidata, %struct.nameidata* %2, i64 0, i32 15
  %3 = load %struct.nameidata*, %struct.nameidata** %saved, align 8
  store %struct.nameidata* %3, %struct.nameidata** %nameidata, align 32
  %tobool.not = icmp eq %struct.nameidata* %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %total_link_count = getelementptr inbounds %struct.nameidata, %struct.nameidata* %2, i64 0, i32 11
  %4 = load i32, i32* %total_link_count, align 4
  %total_link_count3 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %3, i64 0, i32 11
  store i32 %4, i32* %total_link_count3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %stack = getelementptr inbounds %struct.nameidata, %struct.nameidata* %2, i64 0, i32 12
  %5 = load %struct.saved*, %struct.saved** %stack, align 8
  %arraydecay = getelementptr inbounds %struct.nameidata, %struct.nameidata* %2, i64 0, i32 13, i64 0
  %cmp.not = icmp eq %struct.saved* %5, %arraydecay
  br i1 %cmp.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %6 = bitcast %struct.saved* %5 to i8*
  call void @kfree(i8* noundef %6) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @kern_path_locked(i8* noundef %name, %struct.path* nocapture noundef %path) local_unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname_kernel(i8* noundef %name) #17
  %call1 = call fastcc %struct.dentry* @__kern_path_locked(%struct.filename* noundef %call, %struct.path* noundef %path) #17
  call void @putname(%struct.filename* noundef %call) #17
  ret %struct.dentry* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @__kern_path_locked(%struct.filename* noundef %name, %struct.path* nocapture noundef %path) unnamed_addr #0 {
entry:
  %last = alloca %struct.qstr, align 8
  %type = alloca i32, align 4
  %0 = bitcast %struct.qstr* %last to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %1 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #18
  store i32 0, i32* %type, align 4, !annotation !14
  %call = call fastcc i32 @filename_parentat(i32 noundef -100, %struct.filename* noundef %name, i32 noundef 0, %struct.path* noundef %path, %struct.qstr* noundef nonnull %last, i32* noundef nonnull %type) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #17
  %2 = bitcast i8* %call1 to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %type, align 4
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end8, label %if.then6, !prof !10

if.then6:                                         ; preds = %if.end
  call void @path_put(%struct.path* noundef %path) #17
  %call7 = call fastcc i8* @ERR_PTR(i64 noundef -22) #17
  %4 = bitcast i8* %call7 to %struct.dentry*
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %5 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i64 0, i32 5
  %6 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock_nested(%struct.inode* noundef %6) #17
  %7 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call10 = call fastcc %struct.dentry* @__lookup_hash(%struct.qstr* noundef nonnull %last, %struct.dentry* noundef %7, i32 noundef 0) #17
  %8 = bitcast %struct.dentry* %call10 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %8) #17
  br i1 %call11, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end8
  %9 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode14 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i64 0, i32 5
  %10 = load %struct.inode*, %struct.inode** %d_inode14, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %10) #17
  call void @path_put(%struct.path* noundef %path) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then12, %if.then6, %if.then
  %retval.0 = phi %struct.dentry* [ %2, %if.then ], [ %4, %if.then6 ], [ %call10, %if.then12 ], [ %call10, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kern_path(i8* noundef %name, i32 noundef %flags, %struct.path* nocapture noundef writeonly %path) local_unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname_kernel(i8* noundef %name) #17
  %call1 = call i32 @filename_lookup(i32 noundef -100, %struct.filename* noundef %call, i32 noundef %flags, %struct.path* noundef %path, %struct.path* noundef null) #17
  call void @putname(%struct.filename* noundef %call) #17
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_path_lookup(%struct.dentry* noundef %dentry, %struct.vfsmount* noundef %mnt, i8* noundef %name, i32 noundef %flags, %struct.path* nocapture noundef writeonly %path) local_unnamed_addr #0 {
entry:
  %root = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %root to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 0
  store %struct.vfsmount* %mnt, %struct.vfsmount** %mnt1, align 8
  %dentry2 = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 1
  store %struct.dentry* %dentry, %struct.dentry** %dentry2, align 8
  %call = call %struct.filename* @getname_kernel(i8* noundef %name) #17
  %call3 = call i32 @filename_lookup(i32 noundef -100, %struct.filename* noundef %call, i32 noundef %flags, %struct.path* noundef %path, %struct.path* noundef nonnull %root) #17
  call void @putname(%struct.filename* noundef %call) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @try_lookup_one_len(i8* noundef %name, %struct.dentry* noundef %base, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %this = alloca %struct.qstr, align 8
  %0 = bitcast %struct.qstr* %this to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %base, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call fastcc i32 @inode_is_locked(%struct.inode* noundef %1) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 2652; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call16 = call fastcc i32 @lookup_one_common(%struct.user_namespace* noundef nonnull @init_user_ns, i8* noundef %name, %struct.dentry* noundef %base, i32 noundef %len, %struct.qstr* noundef nonnull %this) #17
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end
  %conv19 = sext i32 %call16 to i64
  %call20 = call fastcc i8* @ERR_PTR(i64 noundef %conv19) #17
  %2 = bitcast i8* %call20 to %struct.dentry*
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %call22 = call fastcc %struct.dentry* @lookup_dcache(%struct.qstr* noundef nonnull %this, %struct.dentry* noundef %base, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then18
  %retval.0 = phi %struct.dentry* [ %2, %if.then18 ], [ %call22, %if.end21 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret %struct.dentry* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @inode_is_locked(%struct.inode* noundef %inode) unnamed_addr #11 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  %call = call fastcc i32 @rwsem_is_locked(%struct.rw_semaphore* noundef %i_rwsem) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @lookup_one_common(%struct.user_namespace* noundef %mnt_userns, i8* noundef %name, %struct.dentry* noundef %base, i32 noundef %len, %struct.qstr* noundef %this) unnamed_addr #0 {
entry:
  %name1 = getelementptr inbounds %struct.qstr, %struct.qstr* %this, i64 0, i32 1
  store i8* %name, i8** %name1, align 8
  %0 = bitcast %struct.qstr* %this to %struct.anon.7*
  %len2 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %0, i64 0, i32 1
  store i32 %len, i32* %len2, align 4
  %1 = bitcast %struct.dentry* %base to i8*
  %call = call i32 @full_name_hash(i8* noundef %1, i8* noundef %name, i32 noundef %len) #21
  %hash = bitcast %struct.qstr* %this to i32*
  store i32 %call, i32* %hash, align 8
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %name, align 1
  %cmp = icmp eq i8 %2, 46
  br i1 %cmp, label %if.then7, label %while.cond.preheader, !prof !7

if.then7:                                         ; preds = %if.end
  %cmp8 = icmp slt i32 %len, 2
  br i1 %cmp8, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then7
  %cmp10 = icmp eq i32 %len, 2
  br i1 %cmp10, label %land.lhs.true, label %while.cond.preheader

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx12 = getelementptr i8, i8* %name, i64 1
  %3 = load i8, i8* %arrayidx12, align 1
  %cmp14 = icmp eq i8 %3, 46
  br i1 %cmp14, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false, %land.lhs.true, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %len.addr.0 = phi i32 [ %dec, %while.body ], [ %len, %while.cond.preheader ]
  %name.addr.0 = phi i8* [ %incdec.ptr, %while.body ], [ %name, %while.cond.preheader ]
  %tobool19.not = icmp eq i32 %len.addr.0, 0
  br i1 %tobool19.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %dec = add i32 %len.addr.0, -1
  %incdec.ptr = getelementptr i8, i8* %name.addr.0, i64 1
  %4 = load i8, i8* %name.addr.0, align 1
  switch i8 %4, label %while.cond [
    i8 47, label %return
    i8 0, label %return
  ]

while.end:                                        ; preds = %while.cond
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %base, i64 0, i32 0
  %5 = load i32, i32* %d_flags, align 8
  %and = and i32 %5, 1
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end38, label %if.then29

if.then29:                                        ; preds = %while.end
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %base, i64 0, i32 8
  %6 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_hash = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %6, i64 0, i32 2
  %7 = load i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.qstr*)** %d_hash, align 16
  %call30 = call i32 %7(%struct.dentry* noundef %base, %struct.qstr* noundef %this) #16
  %cmp31 = icmp sgt i32 %call30, -1
  br i1 %cmp31, label %if.end38, label %return

if.end38:                                         ; preds = %if.then29, %while.end
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %base, i64 0, i32 5
  %8 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call39 = call i32 @inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %8, i32 noundef 1) #17
  br label %return

return:                                           ; preds = %while.body, %while.body, %if.then29, %if.then7, %land.lhs.true, %entry, %if.end38
  %retval.3 = phi i32 [ %call30, %if.then29 ], [ %call39, %if.end38 ], [ -13, %entry ], [ -13, %land.lhs.true ], [ -13, %if.then7 ], [ -13, %while.body ], [ -13, %while.body ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @lookup_dcache(%struct.qstr* noundef %name, %struct.dentry* noundef %dir, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call %struct.dentry* @d_lookup(%struct.dentry* noundef %dir, %struct.qstr* noundef %name) #16
  %tobool.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool.not, label %cleanup11, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @d_revalidate(%struct.dentry* noundef nonnull %call, i32 noundef %flags) #17
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.then4, label %cleanup11, !prof !7

if.then4:                                         ; preds = %if.then
  %tobool5.not = icmp eq i32 %call1, 0
  br i1 %tobool5.not, label %if.then6, label %cleanup.thread

if.then6:                                         ; preds = %if.then4
  call void @d_invalidate(%struct.dentry* noundef nonnull %call) #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then4, %if.then6
  call void @dput(%struct.dentry* noundef nonnull %call) #16
  %conv7 = sext i32 %call1 to i64
  %call8 = call fastcc i8* @ERR_PTR(i64 noundef %conv7) #17
  %0 = bitcast i8* %call8 to %struct.dentry*
  br label %cleanup11

cleanup11:                                        ; preds = %entry, %if.then, %cleanup.thread
  %retval.1 = phi %struct.dentry* [ %0, %cleanup.thread ], [ %call, %if.then ], [ null, %entry ]
  ret %struct.dentry* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @lookup_one_len(i8* noundef %name, %struct.dentry* noundef %base, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %this = alloca %struct.qstr, align 8
  %0 = bitcast %struct.qstr* %this to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %base, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call fastcc i32 @inode_is_locked(%struct.inode* noundef %1) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 2679; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call16 = call fastcc i32 @lookup_one_common(%struct.user_namespace* noundef nonnull @init_user_ns, i8* noundef %name, %struct.dentry* noundef %base, i32 noundef %len, %struct.qstr* noundef nonnull %this) #17
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end
  %conv19 = sext i32 %call16 to i64
  %call20 = call fastcc i8* @ERR_PTR(i64 noundef %conv19) #17
  %2 = bitcast i8* %call20 to %struct.dentry*
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %call22 = call fastcc %struct.dentry* @lookup_dcache(%struct.qstr* noundef nonnull %this, %struct.dentry* noundef %base, i32 noundef 0) #17
  %tobool23.not = icmp eq %struct.dentry* %call22, null
  br i1 %tobool23.not, label %cond.false, label %cleanup

cond.false:                                       ; preds = %if.end21
  %call24 = call fastcc %struct.dentry* @__lookup_slow(%struct.qstr* noundef nonnull %this, %struct.dentry* noundef %base, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end21, %if.then18
  %retval.0 = phi %struct.dentry* [ %2, %if.then18 ], [ %call24, %cond.false ], [ %call22, %if.end21 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @__lookup_slow(%struct.qstr* noundef %name, %struct.dentry* noundef %dir, i32 noundef %flags) unnamed_addr #0 {
entry:
  %wq = alloca %struct.wait_queue_head, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dir, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %1 = bitcast %struct.wait_queue_head* %wq to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #18
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq, i64 0, i32 1
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %2 = bitcast %struct.wait_queue_head* %wq to i64*
  store i64 0, i64* %2, align 8
  store %struct.list_head* %head, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq, i64 0, i32 1, i32 1
  store %struct.list_head* %head, %struct.list_head** %prev, align 8
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 4
  %3 = load i32, i32* %i_flags, align 4
  %and = and i32 %3, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %again.preheader, label %if.then, !prof !10

again.preheader:                                  ; preds = %entry
  %call579 = call %struct.dentry* @d_alloc_parallel(%struct.dentry* noundef %dir, %struct.qstr* noundef %name, %struct.wait_queue_head* noundef nonnull %wq) #16
  %4 = bitcast %struct.dentry* %call579 to i8*
  %call680 = call fastcc i1 @IS_ERR(i8* noundef %4) #17
  br i1 %call680, label %cleanup49, label %if.end8

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -2) #17
  %5 = bitcast i8* %call to %struct.dentry*
  br label %cleanup49

if.end8:                                          ; preds = %again.preheader, %cleanup
  %call581 = phi %struct.dentry* [ %call5, %cleanup ], [ %call579, %again.preheader ]
  %call9 = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %call581) #17
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then20, label %if.else, !prof !7

if.then20:                                        ; preds = %if.end8
  %call21 = call fastcc i32 @d_revalidate(%struct.dentry* noundef %call581, i32 noundef %flags) #17
  %cmp = icmp slt i32 %call21, 1
  br i1 %cmp, label %if.then30, label %cleanup49, !prof !7

if.then30:                                        ; preds = %if.then20
  %tobool31.not = icmp eq i32 %call21, 0
  br i1 %tobool31.not, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.then30
  call void @dput(%struct.dentry* noundef %call581) #16
  %conv34 = sext i32 %call21 to i64
  %call35 = call fastcc i8* @ERR_PTR(i64 noundef %conv34) #17
  %6 = bitcast i8* %call35 to %struct.dentry*
  br label %cleanup49

cleanup:                                          ; preds = %if.then30
  call void @d_invalidate(%struct.dentry* noundef %call581) #16
  call void @dput(%struct.dentry* noundef %call581) #16
  %call5 = call %struct.dentry* @d_alloc_parallel(%struct.dentry* noundef %dir, %struct.qstr* noundef %name, %struct.wait_queue_head* noundef nonnull %wq) #16
  %7 = bitcast %struct.dentry* %call5 to i8*
  %call6 = call fastcc i1 @IS_ERR(i8* noundef %7) #17
  br i1 %call6, label %cleanup49, label %if.end8

if.else:                                          ; preds = %if.end8
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 5
  %8 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %lookup = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %8, i64 0, i32 0
  %9 = load %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, %struct.dentry* (%struct.inode*, %struct.dentry*, i32)** %lookup, align 64
  %call37 = call %struct.dentry* %9(%struct.inode* noundef %0, %struct.dentry* noundef %call581, i32 noundef %flags) #16
  call fastcc void @d_lookup_done(%struct.dentry* noundef %call581) #17
  %tobool38.not = icmp eq %struct.dentry* %call37, null
  br i1 %tobool38.not, label %cleanup49, label %if.then46, !prof !10

if.then46:                                        ; preds = %if.else
  call void @dput(%struct.dentry* noundef %call581) #16
  br label %cleanup49

cleanup49:                                        ; preds = %cleanup, %if.then20, %again.preheader, %if.end33, %if.then46, %if.else, %if.then
  %retval.0 = phi %struct.dentry* [ %5, %if.then ], [ %call37, %if.then46 ], [ %call581, %if.else ], [ %6, %if.end33 ], [ %call579, %again.preheader ], [ %call5, %cleanup ], [ %call581, %if.then20 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #18
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @lookup_one(%struct.user_namespace* noundef %mnt_userns, i8* noundef %name, %struct.dentry* noundef %base, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %this = alloca %struct.qstr, align 8
  %0 = bitcast %struct.qstr* %this to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %base, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call fastcc i32 @inode_is_locked(%struct.inode* noundef %1) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 2709; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call16 = call fastcc i32 @lookup_one_common(%struct.user_namespace* noundef %mnt_userns, i8* noundef %name, %struct.dentry* noundef %base, i32 noundef %len, %struct.qstr* noundef nonnull %this) #17
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end
  %conv19 = sext i32 %call16 to i64
  %call20 = call fastcc i8* @ERR_PTR(i64 noundef %conv19) #17
  %2 = bitcast i8* %call20 to %struct.dentry*
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %call22 = call fastcc %struct.dentry* @lookup_dcache(%struct.qstr* noundef nonnull %this, %struct.dentry* noundef %base, i32 noundef 0) #17
  %tobool23.not = icmp eq %struct.dentry* %call22, null
  br i1 %tobool23.not, label %cond.false, label %cleanup

cond.false:                                       ; preds = %if.end21
  %call24 = call fastcc %struct.dentry* @__lookup_slow(%struct.qstr* noundef nonnull %this, %struct.dentry* noundef %base, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end21, %if.then18
  %retval.0 = phi %struct.dentry* [ %2, %if.then18 ], [ %call24, %cond.false ], [ %call22, %if.end21 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @lookup_one_len_unlocked(i8* noundef %name, %struct.dentry* noundef %base, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %this = alloca %struct.qstr, align 8
  %0 = bitcast %struct.qstr* %this to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %call = call fastcc i32 @lookup_one_common(%struct.user_namespace* noundef nonnull @init_user_ns, i8* noundef %name, %struct.dentry* noundef %base, i32 noundef %len, %struct.qstr* noundef nonnull %this) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #17
  %1 = bitcast i8* %call1 to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.dentry* @lookup_dcache(%struct.qstr* noundef nonnull %this, %struct.dentry* noundef %base, i32 noundef 0) #17
  %tobool3.not = icmp eq %struct.dentry* %call2, null
  br i1 %tobool3.not, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc %struct.dentry* @lookup_slow(%struct.qstr* noundef nonnull %this, %struct.dentry* noundef %base, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi %struct.dentry* [ %1, %if.then ], [ %call2, %if.end ], [ %call5, %if.then4 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @lookup_slow(%struct.qstr* noundef %name, %struct.dentry* noundef %dir, i32 noundef %flags) unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dir, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock_shared(%struct.inode* noundef %0) #17
  %call = call fastcc %struct.dentry* @__lookup_slow(%struct.qstr* noundef %name, %struct.dentry* noundef %dir, i32 noundef %flags) #17
  call fastcc void @inode_unlock_shared(%struct.inode* noundef %0) #17
  ret %struct.dentry* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @lookup_positive_unlocked(i8* noundef %name, %struct.dentry* noundef %base, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = call %struct.dentry* @lookup_one_len_unlocked(i8* noundef %name, %struct.dentry* noundef %base, i32 noundef %len) #17
  %0 = bitcast %struct.dentry* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #17
  br i1 %call1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %call, i64 0, i32 0
  %1 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %d_flags) #18, !srcloc !20
  %call3 = call fastcc i1 @d_flags_negative(i32 noundef %1) #17
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @dput(%struct.dentry* noundef %call) #16
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -2) #17
  %2 = bitcast i8* %call4 to %struct.dentry*
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %ret.0 = phi %struct.dentry* [ %call, %entry ], [ %2, %if.then ], [ %call, %land.lhs.true ]
  ret %struct.dentry* %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @d_flags_negative(i32 noundef %flags) unnamed_addr #3 {
entry:
  %and = and i32 %flags, 7340032
  %cmp = icmp eq i32 %and, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @path_pts(%struct.path* noundef %path) local_unnamed_addr #0 {
entry:
  %this = alloca %struct.qstr, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call %struct.dentry* @dget_parent(%struct.dentry* noundef %0) #16
  %1 = bitcast %struct.qstr* %this to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8* noundef align 8 dereferenceable(16) bitcast ({ { %struct.anon.7 }, i8* }* @__const.path_pts.this to i8*), i64 16, i1 false)
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call1 = call fastcc i1 @path_connected(%struct.vfsmount* noundef %2, %struct.dentry* noundef %call) #17
  br i1 %call1, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void @dput(%struct.dentry* noundef %call) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call void @dput(%struct.dentry* noundef %3) #16
  store %struct.dentry* %call, %struct.dentry** %dentry, align 8
  %call6 = call %struct.dentry* @d_hash_and_lookup(%struct.dentry* noundef %call, %struct.qstr* noundef nonnull %this) #16
  %tobool7.not = icmp eq %struct.dentry* %call6, null
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  store %struct.dentry* %call6, %struct.dentry** %dentry, align 8
  call void @dput(%struct.dentry* noundef %call) #16
  %call11 = call i32 @follow_down(%struct.path* noundef %path) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end9, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ 0, %if.end9 ], [ -2, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @dget_parent(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @path_connected(%struct.vfsmount* nocapture noundef readonly %mnt, %struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 1
  %0 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 0
  %1 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %s_root = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 13
  %2 = load %struct.dentry*, %struct.dentry** %s_root, align 8
  %cmp = icmp eq %struct.dentry* %1, %2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i1 @is_subdir(%struct.dentry* noundef %dentry, %struct.dentry* noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %call, %if.end ], [ true, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_hash_and_lookup(%struct.dentry* noundef, %struct.qstr* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @user_path_at_empty(i32 noundef %dfd, i8* noundef %name, i32 noundef %flags, %struct.path* nocapture noundef writeonly %path, i32* noundef %empty) local_unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname_flags(i8* noundef %name, i32 noundef %flags, i32* noundef %empty) #17
  %call1 = call i32 @filename_lookup(i32 noundef %dfd, %struct.filename* noundef %call, i32 noundef %flags, %struct.path* noundef %path, %struct.path* noundef null) #17
  call void @putname(%struct.filename* noundef %call) #17
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__check_sticky(%struct.user_namespace* noundef %mnt_userns, %struct.inode* nocapture noundef readonly %dir, %struct.inode* noundef %inode) local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %fsuid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 7, i32 0
  %fsuid.sroa.0.0.copyload = load i32, i32* %fsuid.sroa.0.0..sroa_idx, align 4
  %call2 = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %inode) #17
  %coerce.val.ii = zext i32 %call2 to i64
  %coerce.val.ii5 = zext i32 %fsuid.sroa.0.0.copyload to i64
  %call6 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii5) #17
  br i1 %call6, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call8 = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %dir) #17
  %coerce.val.ii11 = zext i32 %call8 to i64
  %call14 = call fastcc i1 @uid_eq(i64 %coerce.val.ii11, i64 %coerce.val.ii5) #17
  br i1 %call14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end
  %call17 = call i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef 3) #16
  %lnot = xor i1 %call17, true
  %lnot.ext = zext i1 %lnot to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end16
  %retval.0 = phi i32 [ %lnot.ext, %if.end16 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #17
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #17
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @lock_rename(%struct.dentry* noundef %p1, %struct.dentry* noundef %p2) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.dentry* %p1, %p2
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %p1, i64 0, i32 9
  %0 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_vfs_rename_mutex = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 35
  call void @mutex_lock(%struct.mutex* noundef %s_vfs_rename_mutex) #16
  %call = call %struct.dentry* @d_ancestor(%struct.dentry* noundef %p2, %struct.dentry* noundef %p1) #16
  %tobool.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool.not, label %if.end4, label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %call5 = call %struct.dentry* @d_ancestor(%struct.dentry* noundef %p1, %struct.dentry* noundef %p2) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.end4
  %p1.sink = phi %struct.dentry* [ %p1, %if.end4 ], [ %p2, %if.end ]
  %p2.sink.ph = phi %struct.dentry* [ %p2, %if.end4 ], [ %p1, %if.end ]
  %retval.0.ph = phi %struct.dentry* [ %call5, %if.end4 ], [ %call, %if.end ]
  %d_inode11 = getelementptr inbounds %struct.dentry, %struct.dentry* %p1.sink, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode11, align 8
  call fastcc void @inode_lock_nested(%struct.inode* noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %p2.sink = phi %struct.dentry* [ %p1, %entry ], [ %p2.sink.ph, %cleanup.sink.split ]
  %retval.0 = phi %struct.dentry* [ null, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  %d_inode12 = getelementptr inbounds %struct.dentry, %struct.dentry* %p2.sink, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode12, align 8
  call fastcc void @inode_lock_nested(%struct.inode* noundef %2) #17
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock_nested(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_ancestor(%struct.dentry* noundef, %struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unlock_rename(%struct.dentry* noundef readonly %p1, %struct.dentry* noundef readonly %p2) local_unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %p1, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %0) #17
  %cmp.not = icmp eq %struct.dentry* %p1, %p2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %d_inode1 = getelementptr inbounds %struct.dentry, %struct.dentry* %p2, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode1, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %1) #17
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %p1, i64 0, i32 9
  %2 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_vfs_rename_mutex = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 35
  call void @mutex_unlock(%struct.mutex* noundef %s_vfs_rename_mutex) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_write(%struct.rw_semaphore* noundef %i_rwsem) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_create(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i16 noundef %mode, i1 noundef %want_excl) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @may_create(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 5
  %0 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %create = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %0, i64 0, i32 5
  %1 = load i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)** %create, align 8
  %tobool1.not = icmp eq i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* %1, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %2 = and i16 %mode, 4095
  %3 = or i16 %2, -32768
  %call14 = call i32 %1(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i16 noundef %3, i1 noundef %want_excl) #16
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.end3
  call fastcc void @fsnotify_create(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then16, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -13, %if.end ], [ 0, %if.then16 ], [ %call14, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @may_create(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* nocapture noundef readonly %child) unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %child, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool.not = icmp eq %struct.inode* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 4
  %1 = load i32, i32* %i_flags, align 4
  %and = and i32 %1, 16
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 6
  %2 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call = call fastcc i1 @fsuidgid_has_mapping(%struct.super_block* noundef %2) #17
  br i1 %call, label %if.end5, label %return

if.end5:                                          ; preds = %if.end3
  %call6 = call i32 @inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, i32 noundef 3) #17
  br label %return

return:                                           ; preds = %if.end3, %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -17, %entry ], [ -2, %if.end ], [ -75, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_create(%struct.inode* nocapture noundef readonly %inode, %struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #11 {
entry:
  call fastcc void @fsnotify_dirent(%struct.inode* noundef %inode, %struct.dentry* noundef %dentry) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_mkobj(%struct.dentry* noundef %dentry, i16 noundef %mode, i32 (%struct.dentry*, i16, i8*)* nocapture noundef readonly %f, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call fastcc i32 @may_create(%struct.user_namespace* noundef nonnull @init_user_ns, %struct.inode* noundef %1, %struct.dentry* noundef %dentry) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i16 %mode, 4095
  %3 = or i16 %2, -32768
  %call8 = call i32 %f(%struct.dentry* noundef %dentry, i16 noundef %3, i8* noundef %arg) #16
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end
  call fastcc void @fsnotify_create(%struct.inode* noundef %1, %struct.dentry* noundef %dentry) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then10, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %if.then10 ], [ %call8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @may_open_dev(%struct.path* nocapture noundef readonly %path) local_unnamed_addr #4 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_flags = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 2
  %1 = load i32, i32* %mnt_flags, align 8
  %and = and i32 %1, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 1
  %2 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %s_iflags = getelementptr inbounds %struct.super_block, %struct.super_block* %2, i64 0, i32 11
  %3 = load i64, i64* %s_iflags, align 8
  %and2 = and i64 %3, 4
  %tobool3.not = icmp eq i64 %and2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool3.not, %land.rhs ]
  ret i1 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @vfs_tmpfile(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, i16 noundef %mode, i32 noundef %open_flag) local_unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call i32 @inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %0, i32 noundef 3) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %out_err

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 5
  %1 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %tmpfile = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %1, i64 0, i32 19
  %2 = load i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)** %tmpfile, align 8
  %tobool1.not = icmp eq i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* %2, null
  br i1 %tobool1.not, label %out_err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call %struct.dentry* @d_alloc(%struct.dentry* noundef %dentry, %struct.qstr* noundef nonnull @slash_name) #16
  %tobool5.not = icmp eq %struct.dentry* %call4, null
  br i1 %tobool5.not, label %out_err, label %if.end10, !prof !7

if.end10:                                         ; preds = %if.end3
  %3 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %tmpfile12 = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %3, i64 0, i32 19
  %4 = load i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)** %tmpfile12, align 8
  %call13 = call i32 %4(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %0, %struct.dentry* noundef nonnull %call4, i16 noundef %mode) #16
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %out_err

if.end16:                                         ; preds = %if.end10
  %d_inode17 = getelementptr inbounds %struct.dentry, %struct.dentry* %call4, i64 0, i32 5
  %5 = load %struct.inode*, %struct.inode** %d_inode17, align 8
  %tobool18.not = icmp eq %struct.inode* %5, null
  br i1 %tobool18.not, label %out_err, label %if.end29, !prof !7

if.end29:                                         ; preds = %if.end16
  %and = and i32 %open_flag, 128
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.then31, label %cleanup

if.then31:                                        ; preds = %if.end29
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %5, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %5, i64 0, i32 20
  %6 = load i64, i64* %i_state, align 8
  %or = or i64 %6, 1024
  store i64 %or, i64* %i_state, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  br label %cleanup

out_err:                                          ; preds = %if.end16, %if.end10, %if.end3, %if.end, %entry
  %child.0 = phi %struct.dentry* [ null, %entry ], [ null, %if.end3 ], [ %call4, %if.end10 ], [ %call4, %if.end16 ], [ null, %if.end ]
  %error.0 = phi i32 [ %call, %entry ], [ -12, %if.end3 ], [ %call13, %if.end10 ], [ -2, %if.end16 ], [ -95, %if.end ]
  call void @dput(%struct.dentry* noundef %child.0) #16
  %conv34 = sext i32 %error.0 to i64
  %call35 = call fastcc i8* @ERR_PTR(i64 noundef %conv34) #17
  %7 = bitcast i8* %call35 to %struct.dentry*
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then31, %out_err
  %retval.0 = phi %struct.dentry* [ %7, %out_err ], [ %call4, %if.then31 ], [ %call4, %if.end29 ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_alloc(%struct.dentry* noundef, %struct.qstr* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @do_filp_open(i32 noundef %dfd, %struct.filename* noundef %pathname, %struct.open_flags* nocapture noundef readonly %op) local_unnamed_addr #0 {
entry:
  %nd = alloca %struct.nameidata, align 8
  %0 = bitcast %struct.nameidata* %nd to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false), !annotation !14
  %lookup_flags = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 4
  %1 = load i32, i32* %lookup_flags, align 4
  call fastcc void @set_nameidata(%struct.nameidata* noundef nonnull %nd, i32 noundef %dfd, %struct.filename* noundef %pathname, %struct.path* noundef null) #17
  %or = or i32 %1, 64
  %call = call fastcc %struct.file* @path_openat(%struct.nameidata* noundef nonnull %nd, %struct.open_flags* noundef %op, i32 noundef %or) #17
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  %2 = bitcast i8* %call1 to %struct.file*
  %cmp = icmp eq %struct.file* %call, %2
  br i1 %cmp, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  %call3 = call fastcc %struct.file* @path_openat(%struct.nameidata* noundef nonnull %nd, %struct.open_flags* noundef %op, i32 noundef %1) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %filp.0 = phi %struct.file* [ %call3, %if.then ], [ %call, %entry ]
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef -116) #17
  %3 = bitcast i8* %call4 to %struct.file*
  %cmp5 = icmp eq %struct.file* %filp.0, %3
  br i1 %cmp5, label %if.then14, label %if.end17, !prof !7

if.then14:                                        ; preds = %if.end
  %or15 = or i32 %1, 32
  %call16 = call fastcc %struct.file* @path_openat(%struct.nameidata* noundef nonnull %nd, %struct.open_flags* noundef %op, i32 noundef %or15) #17
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end
  %filp.1 = phi %struct.file* [ %call16, %if.then14 ], [ %filp.0, %if.end ]
  call fastcc void @restore_nameidata() #17
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %0) #18
  ret %struct.file* %filp.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @path_openat(%struct.nameidata* noundef %nd, %struct.open_flags* nocapture noundef readonly %op, i32 noundef %flags) unnamed_addr #0 {
entry:
  %open_flag = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 0
  %0 = load i32, i32* %open_flag, align 4
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !9
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 80
  %3 = load %struct.cred*, %struct.cred** %cred, align 8
  %call1 = call %struct.file* @alloc_empty_file(i32 noundef %0, %struct.cred* noundef %3) #16
  %4 = bitcast %struct.file* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %4) #17
  br i1 %call2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %call1, i64 0, i32 7
  %5 = load i32, i32* %f_flags, align 8
  %and = and i32 %5, 4194304
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then5, !prof !10

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i32 @do_tmpfile(%struct.nameidata* noundef %nd, i32 noundef %flags, %struct.open_flags* noundef %op, %struct.file* noundef %call1) #17
  br label %if.end30

if.else:                                          ; preds = %if.end
  %and8 = and i32 %5, 2097152
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else19, label %if.then17, !prof !10

if.then17:                                        ; preds = %if.else
  %call18 = call fastcc i32 @do_o_path(%struct.nameidata* noundef %nd, i32 noundef %flags, %struct.file* noundef %call1) #17
  br label %if.end30

if.else19:                                        ; preds = %if.else
  %call20 = call fastcc i8* @path_init(%struct.nameidata* noundef %nd, i32 noundef %flags) #17
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.else19
  %s.0 = phi i8* [ %call20, %if.else19 ], [ %call23, %land.rhs ]
  %call21 = call fastcc i32 @link_path_walk(i8* noundef %s.0, %struct.nameidata* noundef %nd) #17
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.rhs, label %if.end28

land.rhs:                                         ; preds = %while.cond
  %call23 = call fastcc i8* @open_last_lookups(%struct.nameidata* noundef %nd, %struct.file* noundef %call1, %struct.open_flags* noundef %op) #17
  %cmp.not = icmp eq i8* %call23, null
  br i1 %cmp.not, label %if.then26, label %while.cond

if.then26:                                        ; preds = %land.rhs
  %call27 = call fastcc i32 @do_open(%struct.nameidata* noundef %nd, %struct.file* noundef %call1, %struct.open_flags* noundef %op) #17
  br label %if.end28

if.end28:                                         ; preds = %while.cond, %if.then26
  %error.0 = phi i32 [ %call27, %if.then26 ], [ %call21, %while.cond ]
  call fastcc void @terminate_walk(%struct.nameidata* noundef %nd) #17
  br label %if.end30

if.end30:                                         ; preds = %if.then17, %if.end28, %if.then5
  %error.1 = phi i32 [ %call6, %if.then5 ], [ %call18, %if.then17 ], [ %error.0, %if.end28 ]
  %tobool31.not = icmp eq i32 %error.1, 0
  br i1 %tobool31.not, label %if.then41, label %if.end71, !prof !10

if.then41:                                        ; preds = %if.end30
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %call1, i64 0, i32 8
  %6 = load i32, i32* %f_mode, align 4
  %and42 = and i32 %6, 524288
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then61, label %cleanup, !prof !7

if.then61:                                        ; preds = %if.then41
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 3567; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !21
  br label %if.end71

if.end71:                                         ; preds = %if.then61, %if.end30
  %error.2 = phi i32 [ -22, %if.then61 ], [ %error.1, %if.end30 ]
  call void @fput(%struct.file* noundef %call1) #16
  %cmp72 = icmp eq i32 %error.2, -518
  %and75 = and i32 %flags, 64
  %tobool76.not = icmp eq i32 %and75, 0
  %. = select i1 %tobool76.not, i32 -116, i32 -10
  %spec.select = select i1 %cmp72, i32 %., i32 %error.2
  %conv81 = sext i32 %spec.select to i64
  %call82 = call fastcc i8* @ERR_PTR(i64 noundef %conv81) #17
  %7 = bitcast i8* %call82 to %struct.file*
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %entry, %if.end71
  %retval.0 = phi %struct.file* [ %7, %if.end71 ], [ %call1, %entry ], [ %call1, %if.then41 ]
  ret %struct.file* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @do_file_open_root(%struct.path* noundef %root, i8* noundef %name, %struct.open_flags* nocapture noundef readonly %op) local_unnamed_addr #0 {
entry:
  %nd = alloca %struct.nameidata, align 8
  %0 = bitcast %struct.nameidata* %nd to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false), !annotation !14
  %lookup_flags = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 4
  %1 = load i32, i32* %lookup_flags, align 4
  %dentry = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc i1 @d_is_symlink(%struct.dentry* noundef %2) #17
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %intent = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 3
  %3 = load i32, i32* %intent, align 4
  %and = and i32 %3, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -40) #17
  %4 = bitcast i8* %call1 to %struct.file*
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call %struct.filename* @getname_kernel(i8* noundef %name) #17
  %5 = bitcast %struct.filename* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %5) #17
  br i1 %call3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %6 = bitcast %struct.filename* %call2 to %struct.file*
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call fastcc void @set_nameidata(%struct.nameidata* noundef nonnull %nd, i32 noundef -1, %struct.filename* noundef %call2, %struct.path* noundef %root) #17
  %or = or i32 %1, 64
  %call7 = call fastcc %struct.file* @path_openat(%struct.nameidata* noundef nonnull %nd, %struct.open_flags* noundef %op, i32 noundef %or) #17
  %call8 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  %7 = bitcast i8* %call8 to %struct.file*
  %cmp = icmp eq %struct.file* %call7, %7
  br i1 %cmp, label %if.then11, label %if.end13, !prof !7

if.then11:                                        ; preds = %if.end6
  %call12 = call fastcc %struct.file* @path_openat(%struct.nameidata* noundef nonnull %nd, %struct.open_flags* noundef %op, i32 noundef %1) #17
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end6
  %file.0 = phi %struct.file* [ %call12, %if.then11 ], [ %call7, %if.end6 ]
  %call14 = call fastcc i8* @ERR_PTR(i64 noundef -116) #17
  %8 = bitcast i8* %call14 to %struct.file*
  %cmp15 = icmp eq %struct.file* %file.0, %8
  br i1 %cmp15, label %if.then24, label %if.end27, !prof !7

if.then24:                                        ; preds = %if.end13
  %or25 = or i32 %1, 32
  %call26 = call fastcc %struct.file* @path_openat(%struct.nameidata* noundef nonnull %nd, %struct.open_flags* noundef %op, i32 noundef %or25) #17
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end13
  %file.1 = phi %struct.file* [ %call26, %if.then24 ], [ %file.0, %if.end13 ]
  call fastcc void @restore_nameidata() #17
  call void @putname(%struct.filename* noundef %call2) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then4, %if.then
  %retval.0 = phi %struct.file* [ %4, %if.then ], [ %6, %if.then4 ], [ %file.1, %if.end27 ]
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %0) #18
  ret %struct.file* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_symlink(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #17
  %cmp = icmp eq i32 %call, 6291456
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @kern_path_create(i32 noundef %dfd, i8* noundef %pathname, %struct.path* nocapture noundef %path, i32 noundef %lookup_flags) local_unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname_kernel(i8* noundef %pathname) #17
  %call1 = call fastcc %struct.dentry* @filename_create(i32 noundef %dfd, %struct.filename* noundef %call, %struct.path* noundef %path, i32 noundef %lookup_flags) #17
  call void @putname(%struct.filename* noundef %call) #17
  ret %struct.dentry* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @filename_create(i32 noundef %dfd, %struct.filename* noundef %name, %struct.path* nocapture noundef %path, i32 noundef %lookup_flags) unnamed_addr #0 {
entry:
  %last = alloca %struct.qstr, align 8
  %type = alloca i32, align 4
  %0 = bitcast %struct.qstr* %last to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %1 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #18
  store i32 0, i32* %type, align 4, !annotation !14
  %and = and i32 %lookup_flags, 2
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %lookup_flags, 32
  %call2 = call fastcc i32 @filename_parentat(i32 noundef %dfd, %struct.filename* noundef %name, i32 noundef %and1, %struct.path* noundef %path, %struct.qstr* noundef nonnull %last, i32* noundef nonnull %type) #17
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call2 to i64
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #17
  %2 = bitcast i8* %call4 to %struct.dentry*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -17) #17
  %3 = bitcast i8* %call to %struct.dentry*
  %4 = load i32, i32* %type, align 4
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end10, label %out, !prof !10

if.end10:                                         ; preds = %if.end
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call11 = call i32 @mnt_want_write(%struct.vfsmount* noundef %5) #16
  %or = or i32 %and1, 1536
  %dentry12 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %6 = load %struct.dentry*, %struct.dentry** %dentry12, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i64 0, i32 5
  %7 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock_nested(%struct.inode* noundef %7) #17
  %8 = load %struct.dentry*, %struct.dentry** %dentry12, align 8
  %call14 = call fastcc %struct.dentry* @__lookup_hash(%struct.qstr* noundef nonnull %last, %struct.dentry* noundef %8, i32 noundef %or) #17
  %9 = bitcast %struct.dentry* %call14 to i8*
  %call15 = call fastcc i1 @IS_ERR(i8* noundef %9) #17
  br i1 %call15, label %unlock, label %if.end17

if.end17:                                         ; preds = %if.end10
  %call18 = call fastcc i1 @d_is_positive(%struct.dentry* noundef %call14) #17
  br i1 %call18, label %fail, label %if.end20

if.end20:                                         ; preds = %if.end17
  br i1 %tobool.not, label %land.rhs, label %if.end33

land.rhs:                                         ; preds = %if.end20
  %name22 = getelementptr inbounds %struct.qstr, %struct.qstr* %last, i64 0, i32 1
  %10 = load i8*, i8** %name22, align 8
  %11 = bitcast %struct.qstr* %last to %struct.anon.7*
  %len = getelementptr inbounds %struct.anon.7, %struct.anon.7* %11, i64 0, i32 1
  %12 = load i32, i32* %len, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr i8, i8* %10, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %tobool24.not = icmp eq i8 %13, 0
  br i1 %tobool24.not, label %if.end33, label %fail, !prof !10

if.end33:                                         ; preds = %if.end20, %land.rhs
  %tobool34.not = icmp eq i32 %call11, 0
  br i1 %tobool34.not, label %cleanup, label %if.then42, !prof !10

if.then42:                                        ; preds = %if.end33
  %phi.cast = sext i32 %call11 to i64
  br label %fail

fail:                                             ; preds = %land.rhs, %if.end17, %if.then42
  %error.0 = phi i64 [ -17, %if.end17 ], [ %phi.cast, %if.then42 ], [ -2, %land.rhs ]
  call void @dput(%struct.dentry* noundef %call14) #16
  %call45 = call fastcc i8* @ERR_PTR(i64 noundef %error.0) #17
  %14 = bitcast i8* %call45 to %struct.dentry*
  br label %unlock

unlock:                                           ; preds = %if.end10, %fail
  %dentry.0 = phi %struct.dentry* [ %call14, %if.end10 ], [ %14, %fail ]
  %15 = load %struct.dentry*, %struct.dentry** %dentry12, align 8
  %d_inode47 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i64 0, i32 5
  %16 = load %struct.inode*, %struct.inode** %d_inode47, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %16) #17
  %tobool48.not = icmp eq i32 %call11, 0
  br i1 %tobool48.not, label %if.then49, label %out

if.then49:                                        ; preds = %unlock
  %17 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mnt_drop_write(%struct.vfsmount* noundef %17) #16
  br label %out

out:                                              ; preds = %unlock, %if.then49, %if.end
  %dentry.1 = phi %struct.dentry* [ %3, %if.end ], [ %dentry.0, %unlock ], [ %dentry.0, %if.then49 ]
  call void @path_put(%struct.path* noundef %path) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %out, %if.then
  %retval.0 = phi %struct.dentry* [ %2, %if.then ], [ %dentry.1, %out ], [ %call14, %if.end33 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @done_path_create(%struct.path* nocapture noundef readonly %path, %struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  call void @dput(%struct.dentry* noundef %dentry) #16
  %dentry1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %1) #17
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mnt_drop_write(%struct.vfsmount* noundef %2) #16
  call void @path_put(%struct.path* noundef %path) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(%struct.vfsmount* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.dentry* @user_path_create(i32 noundef %dfd, i8* noundef %pathname, %struct.path* nocapture noundef %path, i32 noundef %lookup_flags) local_unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %pathname) #17
  %call1 = call fastcc %struct.dentry* @filename_create(i32 noundef %dfd, %struct.filename* noundef %call, %struct.path* noundef %path, i32 noundef %lookup_flags) #17
  call void @putname(%struct.filename* noundef %call) #17
  ret %struct.dentry* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_mknod(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i16 noundef %mode, i32 noundef %dev) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @may_create(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = and i16 %mode, -4096
  %cmp = icmp eq i16 %0, 8192
  %cmp2 = icmp eq i32 %dev, 0
  %1 = and i1 %cmp, %cmp2
  %2 = and i16 %mode, -20480
  %3 = icmp ne i16 %2, 8192
  %brmerge = or i1 %3, %1
  br i1 %brmerge, label %if.end16, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end
  %call14 = call i1 @capable(i32 noundef 27) #16
  br i1 %call14, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end, %land.lhs.true13
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 5
  %4 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %mknod = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %4, i64 0, i32 11
  %5 = load i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)** %mknod, align 8
  %tobool17.not = icmp eq i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)* %5, null
  br i1 %tobool17.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end16
  %call32 = call i32 %5(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i16 noundef %mode, i32 noundef %dev) #16
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %cleanup

if.then34:                                        ; preds = %if.end19
  call fastcc void @fsnotify_create(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then34, %if.end16, %land.lhs.true13, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -1, %land.lhs.true13 ], [ -1, %if.end16 ], [ 0, %if.then34 ], [ %call32, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mknodat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_mknodat(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mknodat(i64 noundef %dfd, i64 noundef %filename, i64 noundef %mode, i64 noundef %dev) unnamed_addr #0 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %filename to i8*
  %conv1 = trunc i64 %mode to i16
  %conv2 = trunc i64 %dev to i32
  %call = call fastcc i64 @__do_sys_mknodat(i32 noundef %conv, i8* noundef %0, i16 noundef %conv1, i32 noundef %conv2) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mknod(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_mknod(i64 noundef %0, i64 noundef %1, i64 noundef %2) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mknod(i64 noundef %filename, i64 noundef %mode, i64 noundef %dev) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %filename to i8*
  %conv = trunc i64 %mode to i16
  %conv1 = trunc i64 %dev to i32
  %call = call fastcc i64 @__do_sys_mknod(i8* noundef %0, i16 noundef %conv, i32 noundef %conv1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_mkdir(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i16 noundef %mode) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @may_create(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #17
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_max_links = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 33
  %1 = load i32, i32* %s_max_links, align 8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 5
  %2 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %mkdir = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %2, i64 0, i32 9
  %3 = load i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)** %mkdir, align 8
  %tobool1.not = icmp eq i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)* %3, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %4 = and i16 %mode, 1023
  %tobool10.not = icmp eq i32 %1, 0
  br i1 %tobool10.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 9, i32 0
  %5 = load i32, i32* %i_nlink, align 8
  %cmp.not = icmp ult i32 %5, %1
  br i1 %cmp.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %land.lhs.true, %if.end3
  %call16 = call i32 %3(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i16 noundef %4) #16
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %cleanup

if.then18:                                        ; preds = %if.end13
  call fastcc void @fsnotify_mkdir(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then18, %land.lhs.true, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -1, %if.end ], [ -31, %land.lhs.true ], [ 0, %if.then18 ], [ %call16, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_mkdir(%struct.inode* nocapture noundef readonly %inode, %struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #11 {
entry:
  call fastcc void @fsnotify_dirent(%struct.inode* noundef %inode, %struct.dentry* noundef %dentry) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_mkdirat(i32 noundef %dfd, %struct.filename* noundef %name, i16 noundef %mode) local_unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %dentry3 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  br label %retry

retry:                                            ; preds = %if.end9, %entry
  %lookup_flags.0 = phi i32 [ 2, %entry ], [ 34, %if.end9 ]
  %mode.addr.0 = phi i16 [ %mode, %entry ], [ %mode.addr.1, %if.end9 ]
  %call = call fastcc %struct.dentry* @filename_create(i32 noundef %dfd, %struct.filename* noundef %name, %struct.path* noundef nonnull %path, i32 noundef %lookup_flags.0) #17
  %1 = bitcast %struct.dentry* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %1) #17
  br i1 %call2, label %out_putname.split.loop.exit37, label %if.end

if.end:                                           ; preds = %retry
  %2 = load %struct.dentry*, %struct.dentry** %dentry3, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 5
  %3 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %3, i64 0, i32 6
  %4 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i64 0, i32 10
  %5 = load i64, i64* %s_flags, align 16
  %and = and i64 %5, 65536
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @current_umask() #16
  %6 = trunc i32 %call5 to i16
  %7 = xor i16 %6, -1
  %conv8 = and i16 %mode.addr.0, %7
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end
  %mode.addr.1 = phi i16 [ %mode.addr.0, %if.end ], [ %conv8, %if.then4 ]
  %8 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call13 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %8) #17
  %9 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call16 = call i32 @vfs_mkdir(%struct.user_namespace* noundef %call13, %struct.inode* noundef %9, %struct.dentry* noundef %call, i16 noundef %mode.addr.1) #17
  call void @done_path_create(%struct.path* noundef nonnull %path, %struct.dentry* noundef %call) #17
  %conv18 = sext i32 %call16 to i64
  %call19 = call fastcc i1 @retry_estale(i64 noundef %conv18, i32 noundef %lookup_flags.0) #17
  br i1 %call19, label %retry, label %out_putname

out_putname.split.loop.exit37:                    ; preds = %retry
  %10 = bitcast %struct.dentry* %call to i8*
  %call1.le = call fastcc i64 @PTR_ERR(i8* noundef %10) #17
  %conv.le = trunc i64 %call1.le to i32
  br label %out_putname

out_putname:                                      ; preds = %if.end9, %out_putname.split.loop.exit37
  %error.1 = phi i32 [ %conv.le, %out_putname.split.loop.exit37 ], [ %call16, %if.end9 ]
  call void @putname(%struct.filename* noundef %name) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %mnt) unnamed_addr #0 {
entry:
  %mnt_userns = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.user_namespace** elementtype(%struct.user_namespace*) %mnt_userns) #18, !srcloc !22
  %1 = inttoptr i64 %0 to %struct.user_namespace*
  ret %struct.user_namespace* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @retry_estale(i64 noundef %error, i32 noundef %flags) unnamed_addr #3 {
entry:
  %cmp = icmp eq i64 %error, -116
  %and = and i32 %flags, 32
  %tobool.not = icmp eq i32 %and, 0
  %0 = and i1 %cmp, %tobool.not
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mkdirat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_mkdirat(i64 noundef %0, i64 noundef %1, i64 noundef %2) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mkdirat(i64 noundef %dfd, i64 noundef %pathname, i64 noundef %mode) unnamed_addr #0 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %pathname to i8*
  %conv1 = trunc i64 %mode to i16
  %call = call fastcc i64 @__do_sys_mkdirat(i32 noundef %conv, i8* noundef %0, i16 noundef %conv1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_mkdir(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_mkdir(i64 noundef %0, i64 noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_mkdir(i64 noundef %pathname, i64 noundef %mode) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %pathname to i8*
  %conv = trunc i64 %mode to i16
  %call = call fastcc i64 @__do_sys_mkdir(i8* noundef %0, i16 noundef %conv) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_rmdir(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @may_delete(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i1 noundef true) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 5
  %0 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %rmdir = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %0, i64 0, i32 10
  %1 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %rmdir, align 16
  %tobool1.not = icmp eq i32 (%struct.inode*, %struct.dentry*)* %1, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %dentry) #17
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock(%struct.inode* noundef %2) #17
  %call5 = call fastcc i1 @is_local_mountpoint(%struct.dentry* noundef %dentry) #17
  br i1 %call5, label %out, label %if.end7

if.end7:                                          ; preds = %if.end3
  %3 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %rmdir13 = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %3, i64 0, i32 10
  %4 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %rmdir13, align 16
  %call14 = call i32 %4(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #16
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %out

if.end17:                                         ; preds = %if.end7
  call void @shrink_dcache_parent(%struct.dentry* noundef %dentry) #16
  %5 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %5, i64 0, i32 4
  %6 = load i32, i32* %i_flags, align 4
  %or = or i32 %6, 16
  store i32 %or, i32* %i_flags, align 4
  call fastcc void @dont_mount(%struct.dentry* noundef %dentry) #17
  call fastcc void @detach_mounts(%struct.dentry* noundef %dentry) #17
  call fastcc void @fsnotify_rmdir(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #17
  br label %out

out:                                              ; preds = %if.end7, %if.end3, %if.end17
  %error.0 = phi i32 [ -16, %if.end3 ], [ %call14, %if.end7 ], [ 0, %if.end17 ]
  %7 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %7) #17
  call void @dput(%struct.dentry* noundef %dentry) #16
  %tobool20.not = icmp eq i32 %error.0, 0
  br i1 %tobool20.not, label %if.then21, label %cleanup

if.then21:                                        ; preds = %out
  call void @d_delete(%struct.dentry* noundef %dentry) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then21, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -1, %if.end ], [ 0, %if.then21 ], [ %error.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @may_delete(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef readonly %victim, i1 noundef %isdir) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %victim) #17
  %call1 = call fastcc i1 @d_is_negative(%struct.dentry* noundef %victim) #17
  br i1 %call1, label %cleanup, label %do.body

do.body:                                          ; preds = %entry
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %do.body6, label %do.body13, !prof !7

do.body6:                                         ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 2849; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !23
  unreachable

do.body13:                                        ; preds = %do.body
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %victim, i64 0, i32 3
  %0 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %cmp.not = icmp eq %struct.inode* %1, %dir
  br i1 %cmp.not, label %do.end31, label %do.body23, !prof !10

do.body23:                                        ; preds = %do.body13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 2851; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !24
  unreachable

do.end31:                                         ; preds = %do.body13
  %call32 = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef nonnull %call) #17
  %coerce.val.ii = zext i32 %call32 to i64
  %call34 = call fastcc i1 @uid_valid(i64 %coerce.val.ii) #17
  br i1 %call34, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %do.end31
  %call36 = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef nonnull %call) #17
  %coerce.val.ii39 = zext i32 %call36 to i64
  %call40 = call fastcc i1 @gid_valid(i64 %coerce.val.ii39) #17
  br i1 %call40, label %if.end42, label %cleanup

if.end42:                                         ; preds = %lor.lhs.false
  %call43 = call i32 @inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, i32 noundef 3) #17
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %cleanup

if.end46:                                         ; preds = %if.end42
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 4
  %2 = load i32, i32* %i_flags, align 4
  %and = and i32 %2, 4
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %if.end49, label %cleanup

if.end49:                                         ; preds = %if.end46
  %call50 = call fastcc i32 @check_sticky(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.inode* noundef nonnull %call) #17
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %cleanup

lor.lhs.false52:                                  ; preds = %if.end49
  %i_flags53 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 4
  %3 = load i32, i32* %i_flags53, align 4
  %4 = and i32 %3, 268
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %lor.lhs.false64, label %cleanup

lor.lhs.false64:                                  ; preds = %lor.lhs.false52
  %call65 = call fastcc i1 @HAS_UNMAPPED_ID(%struct.inode* noundef nonnull %call) #17
  br i1 %call65, label %cleanup, label %if.end68

if.end68:                                         ; preds = %lor.lhs.false64
  %call71 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %victim) #17
  br i1 %isdir, label %if.then70, label %if.else

if.then70:                                        ; preds = %if.end68
  br i1 %call71, label %if.end73, label %cleanup

if.end73:                                         ; preds = %if.then70
  %6 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %cmp75 = icmp eq %struct.dentry* %6, %victim
  br i1 %cmp75, label %cleanup, label %if.end82

if.else:                                          ; preds = %if.end68
  br i1 %call71, label %cleanup, label %if.end82

if.end82:                                         ; preds = %if.else, %if.end73
  %7 = load i32, i32* %i_flags, align 4
  %and84 = and i32 %7, 16
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end87, label %cleanup

if.end87:                                         ; preds = %if.end82
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %victim, i64 0, i32 0
  %8 = load i32, i32* %d_flags, align 8
  %and88 = and i32 %8, 4096
  %tobool89.not = icmp eq i32 %and88, 0
  %. = select i1 %tobool89.not, i32 0, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.end82, %if.else, %if.end73, %if.then70, %if.end49, %lor.lhs.false52, %lor.lhs.false64, %if.end46, %if.end42, %do.end31, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ -75, %lor.lhs.false ], [ -75, %do.end31 ], [ %call43, %if.end42 ], [ -1, %if.end46 ], [ -1, %lor.lhs.false64 ], [ -1, %lor.lhs.false52 ], [ -1, %if.end49 ], [ -20, %if.then70 ], [ -16, %if.end73 ], [ -21, %if.else ], [ -2, %if.end82 ], [ %., %if.end87 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_write(%struct.rw_semaphore* noundef %i_rwsem) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @is_local_mountpoint(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @d_mountpoint(%struct.dentry* noundef %dentry) #17
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i1 @__is_local_mountpoint(%struct.dentry* noundef %dentry) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %call1, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_parent(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dont_mount(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.8* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %1 = load i32, i32* %d_flags, align 8
  %or = or i32 %1, 256
  store i32 %or, i32* %d_flags, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @detach_mounts(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @d_mountpoint(%struct.dentry* noundef %dentry) #17
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void @__detach_mounts(%struct.dentry* noundef %dentry) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fsnotify_rmdir(%struct.inode* nocapture noundef readonly %dir, %struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @d_is_negative(%struct.dentry* noundef %dentry) #17
  br i1 %call, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/fsnotify.h\22; .popsection; .long 14472b - 14470b; .short 246; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @fsnotify_dirent(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_rmdir(i32 noundef %dfd, %struct.filename* noundef %name) local_unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %last = alloca %struct.qstr, align 8
  %type = alloca i32, align 4
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %1 = bitcast %struct.qstr* %last to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !14
  %2 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #18
  store i32 0, i32* %type, align 4, !annotation !14
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %dentry7 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  br label %retry

retry:                                            ; preds = %exit2, %entry
  %lookup_flags.0 = phi i32 [ 0, %entry ], [ 32, %exit2 ]
  %call = call fastcc i32 @filename_parentat(i32 noundef %dfd, %struct.filename* noundef %name, i32 noundef %lookup_flags.0, %struct.path* noundef nonnull %path, %struct.qstr* noundef nonnull %last, i32* noundef nonnull %type) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %exit1

if.end:                                           ; preds = %retry
  %3 = load i32, i32* %type, align 4
  %switch.tableidx = add i32 %3, -1
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %sw.epilog

sw.epilog:                                        ; preds = %if.end
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call3 = call i32 @mnt_want_write(%struct.vfsmount* noundef %5) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %exit2

if.end6:                                          ; preds = %sw.epilog
  %6 = load %struct.dentry*, %struct.dentry** %dentry7, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i64 0, i32 5
  %7 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock_nested(%struct.inode* noundef %7) #17
  %call9 = call fastcc %struct.dentry* @__lookup_hash(%struct.qstr* noundef nonnull %last, %struct.dentry* noundef %6, i32 noundef %lookup_flags.0) #17
  %8 = bitcast %struct.dentry* %call9 to i8*
  %call10 = call fastcc i64 @PTR_ERR(i8* noundef %8) #17
  %conv = trunc i64 %call10 to i32
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %8) #17
  br i1 %call11, label %exit3, label %if.end13

if.end13:                                         ; preds = %if.end6
  %d_inode14 = getelementptr inbounds %struct.dentry, %struct.dentry* %call9, i64 0, i32 5
  %9 = load %struct.inode*, %struct.inode** %d_inode14, align 8
  %tobool15.not = icmp eq %struct.inode* %9, null
  br i1 %tobool15.not, label %exit4, label %if.end17

if.end17:                                         ; preds = %if.end13
  %call23 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %5) #17
  %10 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call26 = call i32 @vfs_rmdir(%struct.user_namespace* noundef %call23, %struct.inode* noundef %10, %struct.dentry* noundef %call9) #17
  br label %exit4

exit4:                                            ; preds = %if.end13, %if.end17
  %error.0 = phi i32 [ %call26, %if.end17 ], [ -2, %if.end13 ]
  call void @dput(%struct.dentry* noundef %call9) #16
  br label %exit3

exit3:                                            ; preds = %if.end6, %exit4
  %error.1 = phi i32 [ %conv, %if.end6 ], [ %error.0, %exit4 ]
  %11 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %11) #17
  call void @mnt_drop_write(%struct.vfsmount* noundef %5) #16
  br label %exit2

switch.lookup:                                    ; preds = %if.end
  %12 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [3 x i32], [3 x i32]* @switch.table.do_rmdir, i64 0, i64 %12
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %exit2

exit2:                                            ; preds = %switch.lookup, %sw.epilog, %exit3
  %error.2 = phi i32 [ %call3, %sw.epilog ], [ %error.1, %exit3 ], [ %switch.load, %switch.lookup ]
  call void @path_put(%struct.path* noundef nonnull %path) #17
  %conv30 = sext i32 %error.2 to i64
  %call31 = call fastcc i1 @retry_estale(i64 noundef %conv30, i32 noundef %lookup_flags.0) #17
  br i1 %call31, label %retry, label %exit1

exit1:                                            ; preds = %exit2, %retry
  %error.3 = phi i32 [ %call, %retry ], [ %error.2, %exit2 ]
  call void @putname(%struct.filename* noundef %name) #17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %error.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @filename_parentat(i32 noundef %dfd, %struct.filename* noundef %name, i32 noundef %flags, %struct.path* nocapture noundef writeonly %parent, %struct.qstr* nocapture noundef writeonly %last, i32* nocapture noundef writeonly %type) unnamed_addr #0 {
entry:
  %nd = alloca %struct.nameidata, align 8
  %0 = bitcast %struct.nameidata* %nd to i8*
  call void @llvm.lifetime.start.p0i8(i64 224, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false), !annotation !14
  %1 = bitcast %struct.filename* %name to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef %1) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %1) #17
  %conv = trunc i64 %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @set_nameidata(%struct.nameidata* noundef nonnull %nd, i32 noundef %dfd, %struct.filename* noundef %name, %struct.path* noundef null) #17
  %or = or i32 %flags, 64
  %call3 = call fastcc i32 @path_parentat(%struct.nameidata* noundef nonnull %nd, i32 noundef %or, %struct.path* noundef %parent) #17
  %cmp = icmp eq i32 %call3, -10
  br i1 %cmp, label %if.then7, label %if.end9, !prof !7

if.then7:                                         ; preds = %if.end
  %call8 = call fastcc i32 @path_parentat(%struct.nameidata* noundef nonnull %nd, i32 noundef %flags, %struct.path* noundef %parent) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %retval1.0 = phi i32 [ %call8, %if.then7 ], [ %call3, %if.end ]
  %cmp10 = icmp eq i32 %retval1.0, -116
  br i1 %cmp10, label %if.then19, label %if.end22, !prof !7

if.then19:                                        ; preds = %if.end9
  %or20 = or i32 %flags, 32
  %call21 = call fastcc i32 @path_parentat(%struct.nameidata* noundef nonnull %nd, i32 noundef %or20, %struct.path* noundef %parent) #17
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end9
  %retval1.1 = phi i32 [ %call21, %if.then19 ], [ %retval1.0, %if.end9 ]
  %tobool23.not = icmp eq i32 %retval1.1, 0
  br i1 %tobool23.not, label %if.then33, label %if.end35, !prof !10

if.then33:                                        ; preds = %if.end22
  %last34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1
  %2 = bitcast %struct.qstr* %last to i8*
  %3 = bitcast %struct.qstr* %last34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %2, i8* noundef align 8 dereferenceable(16) %3, i64 16, i1 false)
  %last_type = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 9
  %4 = load i32, i32* %last_type, align 4
  store i32 %4, i32* %type, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end22
  call fastcc void @restore_nameidata() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %retval1.1, %if.end35 ]
  call void @llvm.lifetime.end.p0i8(i64 224, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(%struct.vfsmount* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @__lookup_hash(%struct.qstr* noundef %name, %struct.dentry* noundef %base, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.dentry* @lookup_dcache(%struct.qstr* noundef %name, %struct.dentry* noundef %base, i32 noundef %flags) #17
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %base, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 4
  %1 = load i32, i32* %i_flags, align 4
  %and = and i32 %1, 16
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end6, label %if.then4, !prof !10

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i8* @ERR_PTR(i64 noundef -2) #17
  %2 = bitcast i8* %call5 to %struct.dentry*
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call %struct.dentry* @d_alloc(%struct.dentry* noundef %base, %struct.qstr* noundef %name) #16
  %tobool8.not = icmp eq %struct.dentry* %call7, null
  br i1 %tobool8.not, label %if.then18, label %if.end20, !prof !7

if.then18:                                        ; preds = %if.end6
  %call19 = call fastcc i8* @ERR_PTR(i64 noundef -12) #17
  %3 = bitcast i8* %call19 to %struct.dentry*
  br label %cleanup

if.end20:                                         ; preds = %if.end6
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 5
  %4 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %lookup = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %4, i64 0, i32 0
  %5 = load %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, %struct.dentry* (%struct.inode*, %struct.dentry*, i32)** %lookup, align 64
  %call21 = call %struct.dentry* %5(%struct.inode* noundef %0, %struct.dentry* noundef nonnull %call7, i32 noundef %flags) #16
  %tobool22.not = icmp eq %struct.dentry* %call21, null
  br i1 %tobool22.not, label %cleanup, label %if.then30, !prof !10

if.then30:                                        ; preds = %if.end20
  call void @dput(%struct.dentry* noundef nonnull %call7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then30, %entry, %if.then18, %if.then4
  %retval.0 = phi %struct.dentry* [ %2, %if.then4 ], [ %3, %if.then18 ], [ %call, %entry ], [ %call21, %if.then30 ], [ %call7, %if.end20 ]
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_rmdir(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_rmdir(i64 noundef %0) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_rmdir(i64 noundef %pathname) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %pathname to i8*
  %call = call fastcc i64 @__do_sys_rmdir(i8* noundef %0) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_unlink(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry, %struct.inode** noundef %delegated_inode) local_unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call fastcc i32 @may_delete(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i1 noundef false) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 5
  %1 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %unlink = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %1, i64 0, i32 7
  %2 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %unlink, align 8
  %tobool1.not = icmp eq i32 (%struct.inode*, %struct.dentry*)* %2, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  call fastcc void @inode_lock(%struct.inode* noundef %0) #17
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 4
  %3 = load i32, i32* %i_flags, align 4
  %and = and i32 %3, 256
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %out.thread

if.else:                                          ; preds = %if.end3
  %call6 = call fastcc i1 @is_local_mountpoint(%struct.dentry* noundef %dentry) #17
  br i1 %call6, label %out.thread, label %if.else8

if.else8:                                         ; preds = %if.else
  %call12 = call fastcc i32 @try_break_deleg(%struct.inode* noundef %0, %struct.inode** noundef %delegated_inode) #17
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %out.thread

if.end15:                                         ; preds = %if.else8
  %4 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %unlink17 = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %4, i64 0, i32 7
  %5 = load i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)** %unlink17, align 8
  %call18 = call i32 %5(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #16
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %out.thread

out.thread:                                       ; preds = %if.else8, %if.end15, %if.end3, %if.else
  %error.0.ph = phi i32 [ -16, %if.else ], [ -1, %if.end3 ], [ %call18, %if.end15 ], [ %call12, %if.else8 ]
  call fastcc void @inode_unlock(%struct.inode* noundef %0) #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end15
  call fastcc void @dont_mount(%struct.dentry* noundef %dentry) #17
  call fastcc void @detach_mounts(%struct.dentry* noundef %dentry) #17
  call fastcc void @fsnotify_unlink(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #17
  call fastcc void @inode_unlock(%struct.inode* noundef %0) #17
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %6 = load i32, i32* %d_flags, align 8
  %and26 = and i32 %6, 4096
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %cleanup

if.then28:                                        ; preds = %land.lhs.true
  call fastcc void @fsnotify_link_count(%struct.inode* noundef %0) #17
  call void @d_delete(%struct.dentry* noundef %dentry) #16
  br label %cleanup

cleanup:                                          ; preds = %out.thread, %land.lhs.true, %if.then28, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -1, %if.end ], [ 0, %if.then28 ], [ 0, %land.lhs.true ], [ %error.0.ph, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_break_deleg(%struct.inode* noundef %inode, %struct.inode** noundef writeonly %delegated_inode) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @break_deleg(%struct.inode* noundef %inode, i32 noundef 2049) #17
  %cmp = icmp eq i32 %call, -11
  %tobool = icmp ne %struct.inode** %delegated_inode, null
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.inode* %inode, %struct.inode** %delegated_inode, align 8
  call void @ihold(%struct.inode* noundef %inode) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fsnotify_unlink(%struct.inode* nocapture noundef readonly %dir, %struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @d_is_negative(%struct.dentry* noundef %dentry) #17
  br i1 %call, label %if.then, label %if.end, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/fsnotify.h\22; .popsection; .long 14472b - 14470b; .short 223; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @fsnotify_dirent(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_link_count(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #11 {
entry:
  call fastcc void @fsnotify_inode(%struct.inode* noundef %inode, i32 noundef 4) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_unlinkat(i32 noundef %dfd, %struct.filename* noundef %name) local_unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %last = alloca %struct.qstr, align 8
  %type = alloca i32, align 4
  %delegated_inode = alloca %struct.inode*, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %1 = bitcast %struct.qstr* %last to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !14
  %2 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #18
  store i32 0, i32* %type, align 4, !annotation !14
  %3 = bitcast %struct.inode** %delegated_inode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #18
  store %struct.inode* null, %struct.inode** %delegated_inode, align 8
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %dentry7 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %name13 = getelementptr inbounds %struct.qstr, %struct.qstr* %last, i64 0, i32 1
  %4 = bitcast %struct.qstr* %last to %struct.anon.7*
  %len = getelementptr inbounds %struct.anon.7, %struct.anon.7* %4, i64 0, i32 1
  br label %retry

retry:                                            ; preds = %exit2, %entry
  %lookup_flags.0 = phi i32 [ 0, %entry ], [ 32, %exit2 ]
  %call = call fastcc i32 @filename_parentat(i32 noundef %dfd, %struct.filename* noundef %name, i32 noundef %lookup_flags.0, %struct.path* noundef nonnull %path, %struct.qstr* noundef nonnull %last, i32* noundef nonnull %type) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %exit1

if.end:                                           ; preds = %retry
  %5 = load i32, i32* %type, align 4
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end2, label %exit2

if.end2:                                          ; preds = %if.end
  %6 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call3 = call i32 @mnt_want_write(%struct.vfsmount* noundef %6) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %retry_deleg.preheader, label %exit2

retry_deleg.preheader:                            ; preds = %if.end2
  %7 = load %struct.dentry*, %struct.dentry** %dentry7, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i64 0, i32 5
  br label %retry_deleg

retry_deleg:                                      ; preds = %retry_deleg.preheader, %if.then37
  %8 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_lock_nested(%struct.inode* noundef %8) #17
  %call9 = call fastcc %struct.dentry* @__lookup_hash(%struct.qstr* noundef nonnull %last, %struct.dentry* noundef %7, i32 noundef %lookup_flags.0) #17
  %9 = bitcast %struct.dentry* %call9 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %9) #17
  br i1 %call11, label %if.end30.thread, label %if.then12

if.end30.thread:                                  ; preds = %retry_deleg
  %call10 = call fastcc i64 @PTR_ERR(i8* noundef %9) #17
  %conv = trunc i64 %call10 to i32
  %10 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %10) #17
  br label %if.end35

if.then12:                                        ; preds = %retry_deleg
  %11 = load i8*, i8** %name13, align 8
  %12 = load i32, i32* %len, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr i8, i8* %11, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %if.end16, label %slashes

if.end16:                                         ; preds = %if.then12
  %d_inode17 = getelementptr inbounds %struct.dentry, %struct.dentry* %call9, i64 0, i32 5
  %14 = load %struct.inode*, %struct.inode** %d_inode17, align 8
  %call18 = call fastcc i1 @d_is_negative(%struct.dentry* noundef %call9) #17
  br i1 %call18, label %slashes, label %if.end20

if.end20:                                         ; preds = %if.end16
  call void @ihold(%struct.inode* noundef %14) #16
  %call26 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %6) #17
  %15 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call29 = call i32 @vfs_unlink(%struct.user_namespace* noundef %call26, %struct.inode* noundef %15, %struct.dentry* noundef %call9, %struct.inode** noundef nonnull %delegated_inode) #17
  br label %if.end30

if.end30:                                         ; preds = %if.end20, %slashes, %if.else
  %error.0 = phi i32 [ %call29, %if.end20 ], [ -2, %slashes ], [ %., %if.else ]
  %inode.2 = phi %struct.inode* [ %14, %if.end20 ], [ %inode.4, %slashes ], [ %inode.4, %if.else ]
  call void @dput(%struct.dentry* noundef %call9) #16
  %16 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @inode_unlock(%struct.inode* noundef %16) #17
  %tobool33.not = icmp eq %struct.inode* %inode.2, null
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @iput(%struct.inode* noundef nonnull %inode.2) #16
  br label %if.end35

if.end35:                                         ; preds = %if.end30.thread, %if.then34, %if.end30
  %error.181 = phi i32 [ %conv, %if.end30.thread ], [ %error.0, %if.then34 ], [ %error.0, %if.end30 ]
  %17 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  %tobool36.not = icmp eq %struct.inode* %17, null
  br i1 %tobool36.not, label %if.end42, label %if.then37

if.then37:                                        ; preds = %if.end35
  %call38 = call fastcc i32 @break_deleg_wait(%struct.inode** noundef nonnull %delegated_inode) #17
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %retry_deleg, label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end35
  %error.2 = phi i32 [ %call38, %if.then37 ], [ %error.181, %if.end35 ]
  call void @mnt_drop_write(%struct.vfsmount* noundef %6) #16
  br label %exit2

exit2:                                            ; preds = %if.end2, %if.end, %if.end42
  %error.3 = phi i32 [ -21, %if.end ], [ %call3, %if.end2 ], [ %error.2, %if.end42 ]
  call void @path_put(%struct.path* noundef nonnull %path) #17
  %conv44 = sext i32 %error.3 to i64
  %call45 = call fastcc i1 @retry_estale(i64 noundef %conv44, i32 noundef %lookup_flags.0) #17
  br i1 %call45, label %retry, label %exit1

exit1:                                            ; preds = %exit2, %retry
  %error.4 = phi i32 [ %call, %retry ], [ %error.3, %exit2 ]
  call void @putname(%struct.filename* noundef %name) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %error.4

slashes:                                          ; preds = %if.end16, %if.then12
  %inode.4 = phi %struct.inode* [ null, %if.then12 ], [ %14, %if.end16 ]
  %call48 = call fastcc i1 @d_is_negative(%struct.dentry* noundef %call9) #17
  br i1 %call48, label %if.end30, label %if.else

if.else:                                          ; preds = %slashes
  %call50 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %call9) #17
  %. = select i1 %call50, i32 -21, i32 -20
  br label %if.end30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_negative(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @d_is_miss(%struct.dentry* noundef %dentry) #17
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @break_deleg_wait(%struct.inode** nocapture noundef %delegated_inode) unnamed_addr #0 {
entry:
  %0 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  %call = call fastcc i32 @break_deleg(%struct.inode* noundef %0, i32 noundef 1) #17
  %1 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  call void @iput(%struct.inode* noundef %1) #16
  store %struct.inode* null, %struct.inode** %delegated_inode, align 8
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_dir(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @d_can_lookup(%struct.dentry* noundef %dentry) #17
  br i1 %call, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %call1 = call fastcc i1 @d_is_autodir(%struct.dentry* noundef %dentry) #17
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_unlinkat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_unlinkat(i64 noundef %0, i64 noundef %1, i64 noundef %2) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_unlinkat(i64 noundef %dfd, i64 noundef %pathname, i64 noundef %flag) unnamed_addr #0 {
entry:
  %conv = trunc i64 %dfd to i32
  %0 = inttoptr i64 %pathname to i8*
  %conv1 = trunc i64 %flag to i32
  %call = call fastcc i64 @__do_sys_unlinkat(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_unlink(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_unlink(i64 noundef %0) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_unlink(i64 noundef %pathname) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %pathname to i8*
  %call = call fastcc i64 @__do_sys_unlink(i8* noundef %0) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_symlink(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i8* noundef %oldname) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @may_create(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 5
  %0 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %symlink = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %0, i64 0, i32 8
  %1 = load i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)** %symlink, align 64
  %tobool1.not = icmp eq i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)* %1, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call10 = call i32 %1(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %dentry, i8* noundef %oldname) #16
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end3
  call fastcc void @fsnotify_create(%struct.inode* noundef %dir, %struct.dentry* noundef %dentry) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then12, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ -1, %if.end ], [ 0, %if.then12 ], [ %call10, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_symlinkat(%struct.filename* noundef %from, i32 noundef %newdfd, %struct.filename* noundef %to) local_unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %1 = bitcast %struct.filename* %from to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef %1) #17
  br i1 %call, label %out_putnames.sink.split, label %retry.preheader

retry.preheader:                                  ; preds = %entry
  %name = getelementptr inbounds %struct.filename, %struct.filename* %from, i64 0, i32 0
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %dentry11 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  br label %retry

retry:                                            ; preds = %retry.preheader, %if.end7
  %lookup_flags.0 = phi i32 [ 32, %if.end7 ], [ 0, %retry.preheader ]
  %call2 = call fastcc %struct.dentry* @filename_create(i32 noundef %newdfd, %struct.filename* noundef %to, %struct.path* noundef nonnull %path, i32 noundef %lookup_flags.0) #17
  %2 = bitcast %struct.dentry* %call2 to i8*
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %2) #17
  br i1 %call5, label %out_putnames.loopexit.split.loop.exit, label %if.end7

if.end7:                                          ; preds = %retry
  %3 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call10 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %3) #17
  %4 = load %struct.dentry*, %struct.dentry** %dentry11, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i64 0, i32 5
  %5 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %6 = load i8*, i8** %name, align 8
  %call13 = call i32 @vfs_symlink(%struct.user_namespace* noundef %call10, %struct.inode* noundef %5, %struct.dentry* noundef %call2, i8* noundef %6) #17
  call void @done_path_create(%struct.path* noundef nonnull %path, %struct.dentry* noundef %call2) #17
  %conv15 = sext i32 %call13 to i64
  %call16 = call fastcc i1 @retry_estale(i64 noundef %conv15, i32 noundef %lookup_flags.0) #17
  br i1 %call16, label %retry, label %out_putnames

out_putnames.loopexit.split.loop.exit:            ; preds = %retry
  %7 = bitcast %struct.dentry* %call2 to i8*
  br label %out_putnames.sink.split

out_putnames.sink.split:                          ; preds = %entry, %out_putnames.loopexit.split.loop.exit
  %.sink = phi i8* [ %7, %out_putnames.loopexit.split.loop.exit ], [ %1, %entry ]
  %call3.le = call fastcc i64 @PTR_ERR(i8* noundef %.sink) #17
  %conv4.le = trunc i64 %call3.le to i32
  br label %out_putnames

out_putnames:                                     ; preds = %if.end7, %out_putnames.sink.split
  %error.1 = phi i32 [ %conv4.le, %out_putnames.sink.split ], [ %call13, %if.end7 ]
  call void @putname(%struct.filename* noundef %to) #17
  call void @putname(%struct.filename* noundef %from) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %error.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_symlinkat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %call = call fastcc i64 @__se_sys_symlinkat(i64 noundef %0, i64 noundef %1, i64 noundef %2) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_symlinkat(i64 noundef %oldname, i64 noundef %newdfd, i64 noundef %newname) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %oldname to i8*
  %conv = trunc i64 %newdfd to i32
  %1 = inttoptr i64 %newname to i8*
  %call = call fastcc i64 @__do_sys_symlinkat(i8* noundef %0, i32 noundef %conv, i8* noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_symlink(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_symlink(i64 noundef %0, i64 noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_symlink(i64 noundef %oldname, i64 noundef %newname) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %oldname to i8*
  %1 = inttoptr i64 %newname to i8*
  %call = call fastcc i64 @__do_sys_symlink(i8* noundef %0, i8* noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_link(%struct.dentry* noundef %old_dentry, %struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %new_dentry, %struct.inode** noundef %delegated_inode) local_unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %old_dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_max_links = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 33
  %2 = load i32, i32* %s_max_links, align 8
  %tobool.not = icmp eq %struct.inode* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @may_create(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.dentry* noundef %new_dentry) #17
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %i_sb5 = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 6
  %4 = load %struct.super_block*, %struct.super_block** %i_sb5, align 8
  %cmp.not = icmp eq %struct.super_block* %3, %4
  br i1 %cmp.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end3
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 4
  %5 = load i32, i32* %i_flags, align 4
  %6 = and i32 %5, 12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end7
  %call14 = call fastcc i1 @HAS_UNMAPPED_ID(%struct.inode* noundef nonnull %0) #17
  br i1 %call14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end13
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 5
  %8 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %link = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %8, i64 0, i32 6
  %9 = load i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)** %link, align 16
  %tobool17.not = icmp eq i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* %9, null
  br i1 %tobool17.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end16
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 0
  %10 = load i16, i16* %i_mode, align 8
  %11 = and i16 %10, -4096
  %cmp21 = icmp eq i16 %11, 16384
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.end19
  call fastcc void @inode_lock(%struct.inode* noundef nonnull %0) #17
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 9, i32 0
  %12 = load i32, i32* %i_nlink, align 8
  %cmp29 = icmp eq i32 %12, 0
  br i1 %cmp29, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end24
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 20
  %13 = load i64, i64* %i_state, align 8
  %and31 = and i64 %13, 1024
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %if.end62.critedge, label %if.else

if.else:                                          ; preds = %land.lhs.true, %if.end24
  %tobool34.not = icmp eq i32 %2, 0
  %cmp37.not = icmp ult i32 %12, %2
  %or.cond110 = select i1 %tobool34.not, i1 true, i1 %cmp37.not
  br i1 %or.cond110, label %if.else40, label %if.end62.critedge

if.else40:                                        ; preds = %if.else
  %call41 = call fastcc i32 @try_break_deleg(%struct.inode* noundef nonnull %0, %struct.inode** noundef %delegated_inode) #17
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end49, label %if.end62.critedge

if.end49:                                         ; preds = %if.else40
  %14 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %link45 = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %14, i64 0, i32 6
  %15 = load i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)** %link45, align 16
  %call46 = call i32 %15(%struct.dentry* noundef %old_dentry, %struct.inode* noundef %dir, %struct.dentry* noundef %new_dentry) #16
  %tobool50.not = icmp eq i32 %call46, 0
  br i1 %tobool50.not, label %land.lhs.true51, label %if.end62.critedge

land.lhs.true51:                                  ; preds = %if.end49
  %i_state52 = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 20
  %16 = load i64, i64* %i_state52, align 8
  %and53 = and i64 %16, 1024
  %tobool54.not = icmp eq i64 %and53, 0
  br i1 %tobool54.not, label %if.then61, label %if.then55

if.then55:                                        ; preds = %land.lhs.true51
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %17 = load i64, i64* %i_state52, align 8
  %and57 = and i64 %17, -1025
  store i64 %and57, i64* %i_state52, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  br label %if.then61

if.then61:                                        ; preds = %land.lhs.true51, %if.then55
  call fastcc void @inode_unlock(%struct.inode* noundef nonnull %0) #17
  call fastcc void @fsnotify_link(%struct.inode* noundef %dir, %struct.inode* noundef nonnull %0, %struct.dentry* noundef %new_dentry) #17
  br label %cleanup

if.end62.critedge:                                ; preds = %if.else, %land.lhs.true, %if.else40, %if.end49
  %error.0109 = phi i32 [ %call46, %if.end49 ], [ -2, %land.lhs.true ], [ %call41, %if.else40 ], [ -31, %if.else ]
  call fastcc void @inode_unlock(%struct.inode* noundef nonnull %0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end62.critedge, %if.end19, %if.end16, %if.end13, %if.end7, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ %call, %if.end ], [ -18, %if.end3 ], [ -1, %if.end7 ], [ -1, %if.end13 ], [ -1, %if.end16 ], [ -1, %if.end19 ], [ %error.0109, %if.end62.critedge ], [ 0, %if.then61 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_link(%struct.inode* nocapture noundef readonly %dir, %struct.inode* nocapture noundef readonly %inode, %struct.dentry* nocapture noundef readnone %new_dentry) unnamed_addr #11 {
entry:
  call fastcc void @fsnotify_link_count(%struct.inode* noundef %inode) #17
  call fastcc void @fsnotify_name(%struct.inode* noundef %dir, %struct.inode* noundef %inode) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_linkat(i32 noundef %olddfd, %struct.filename* noundef %old, i32 noundef %newdfd, %struct.filename* noundef %new, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %old_path = alloca %struct.path, align 8
  %new_path = alloca %struct.path, align 8
  %delegated_inode = alloca %struct.inode*, align 8
  %0 = bitcast %struct.path* %old_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %1 = bitcast %struct.path* %new_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !14
  %2 = bitcast %struct.inode** %delegated_inode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #18
  store %struct.inode* null, %struct.inode** %delegated_inode, align 8
  %and = and i32 %flags, -5121
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %out_putnames

if.end:                                           ; preds = %entry
  %and1 = and i32 %flags, 4096
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = call i1 @capable(i32 noundef 2) #16
  br i1 %call, label %if.end3, label %out_putnames

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %and4 = lshr i32 %flags, 10
  %and4.lobit = and i32 %and4, 1
  %call87881 = call i32 @filename_lookup(i32 noundef %olddfd, %struct.filename* noundef %old, i32 noundef %and4.lobit, %struct.path* noundef nonnull %old_path, %struct.path* noundef null) #17
  %tobool9.not7982 = icmp eq i32 %call87881, 0
  br i1 %tobool9.not7982, label %if.end11.lr.ph.lr.ph, label %out_putnames

if.end11.lr.ph.lr.ph:                             ; preds = %if.end3
  %mnt = getelementptr inbounds %struct.path, %struct.path* %old_path, i64 0, i32 0
  %mnt18 = getelementptr inbounds %struct.path, %struct.path* %new_path, i64 0, i32 0
  %dentry = getelementptr inbounds %struct.path, %struct.path* %old_path, i64 0, i32 1
  %dentry37 = getelementptr inbounds %struct.path, %struct.path* %new_path, i64 0, i32 1
  %3 = or i32 %and4.lobit, 32
  br label %if.end11.lr.ph

if.end11.lr.ph:                                   ; preds = %if.end11.lr.ph.lr.ph, %if.then48
  %how.1.ph83 = phi i32 [ %and4.lobit, %if.end11.lr.ph.lr.ph ], [ %3, %if.then48 ]
  %and12 = and i32 %how.1.ph83, 32
  br label %if.end11

if.end11:                                         ; preds = %if.end11.lr.ph, %if.then43
  %call13 = call fastcc %struct.dentry* @filename_create(i32 noundef %newdfd, %struct.filename* noundef %new, %struct.path* noundef nonnull %new_path, i32 noundef %and12) #17
  %4 = bitcast %struct.dentry* %call13 to i8*
  %call15 = call fastcc i1 @IS_ERR(i8* noundef %4) #17
  br i1 %call15, label %out_putpath.loopexit, label %if.end17

if.end17:                                         ; preds = %if.end11
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %6 = load %struct.vfsmount*, %struct.vfsmount** %mnt18, align 8
  %cmp19.not = icmp eq %struct.vfsmount* %5, %6
  br i1 %cmp19.not, label %if.end22, label %out_dput

if.end22:                                         ; preds = %if.end17
  %call24 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %5) #17
  %call25 = call i32 @may_linkat(%struct.user_namespace* noundef %call24, %struct.path* noundef nonnull %old_path) #17
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end31, label %out_dput, !prof !10

if.end31:                                         ; preds = %if.end22
  %7 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %8 = load %struct.dentry*, %struct.dentry** %dentry37, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i64 0, i32 5
  %9 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call38 = call i32 @vfs_link(%struct.dentry* noundef %7, %struct.user_namespace* noundef %call24, %struct.inode* noundef %9, %struct.dentry* noundef %call13, %struct.inode** noundef nonnull %delegated_inode) #17
  br label %out_dput

out_dput:                                         ; preds = %if.end22, %if.end17, %if.end31
  %error.0 = phi i32 [ -18, %if.end17 ], [ %call25, %if.end22 ], [ %call38, %if.end31 ]
  call void @done_path_create(%struct.path* noundef nonnull %new_path, %struct.dentry* noundef %call13) #17
  %10 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  %tobool39.not = icmp eq %struct.inode* %10, null
  br i1 %tobool39.not, label %if.end45, label %if.then40

if.then40:                                        ; preds = %out_dput
  %call41 = call fastcc i32 @break_deleg_wait(%struct.inode** noundef nonnull %delegated_inode) #17
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then40
  call void @path_put(%struct.path* noundef nonnull %old_path) #17
  %call8 = call i32 @filename_lookup(i32 noundef %olddfd, %struct.filename* noundef %old, i32 noundef %how.1.ph83, %struct.path* noundef nonnull %old_path, %struct.path* noundef null) #17
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %out_putnames

if.end45:                                         ; preds = %if.then40, %out_dput
  %error.1 = phi i32 [ %call41, %if.then40 ], [ %error.0, %out_dput ]
  %conv46 = sext i32 %error.1 to i64
  %call47 = call fastcc i1 @retry_estale(i64 noundef %conv46, i32 noundef %how.1.ph83) #17
  br i1 %call47, label %if.then48, label %out_putpath

if.then48:                                        ; preds = %if.end45
  call void @path_put(%struct.path* noundef nonnull %old_path) #17
  %call878 = call i32 @filename_lookup(i32 noundef %olddfd, %struct.filename* noundef %old, i32 noundef %3, %struct.path* noundef nonnull %old_path, %struct.path* noundef null) #17
  %tobool9.not79 = icmp eq i32 %call878, 0
  br i1 %tobool9.not79, label %if.end11.lr.ph, label %out_putnames

out_putpath.loopexit:                             ; preds = %if.end11
  %11 = bitcast %struct.dentry* %call13 to i8*
  %call14.le = call fastcc i64 @PTR_ERR(i8* noundef %11) #17
  %conv.le = trunc i64 %call14.le to i32
  br label %out_putpath

out_putpath:                                      ; preds = %if.end45, %out_putpath.loopexit
  %error.2 = phi i32 [ %conv.le, %out_putpath.loopexit ], [ %error.1, %if.end45 ]
  call void @path_put(%struct.path* noundef nonnull %old_path) #17
  br label %out_putnames

out_putnames:                                     ; preds = %if.then48, %if.then43, %if.end3, %land.lhs.true, %entry, %out_putpath
  %error.3 = phi i32 [ %error.2, %out_putpath ], [ -22, %entry ], [ -2, %land.lhs.true ], [ %call87881, %if.end3 ], [ %call8, %if.then43 ], [ %call878, %if.then48 ]
  call void @putname(%struct.filename* noundef %old) #17
  call void @putname(%struct.filename* noundef %new) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %error.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_linkat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %call = call fastcc i64 @__se_sys_linkat(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_linkat(i64 noundef %olddfd, i64 noundef %oldname, i64 noundef %newdfd, i64 noundef %newname, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %olddfd to i32
  %0 = inttoptr i64 %oldname to i8*
  %conv1 = trunc i64 %newdfd to i32
  %1 = inttoptr i64 %newname to i8*
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_linkat(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1, i8* noundef %1, i32 noundef %conv2) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_link(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_link(i64 noundef %0, i64 noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_link(i64 noundef %oldname, i64 noundef %newname) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %oldname to i8*
  %1 = inttoptr i64 %newname to i8*
  %call = call fastcc i64 @__do_sys_link(i8* noundef %0, i8* noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_rename(%struct.renamedata* nocapture noundef readonly %rd) local_unnamed_addr #0 {
entry:
  %old_name = alloca %struct.name_snapshot, align 8
  %old_dir1 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 1
  %0 = load %struct.inode*, %struct.inode** %old_dir1, align 8
  %new_dir2 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 4
  %1 = load %struct.inode*, %struct.inode** %new_dir2, align 8
  %old_dentry3 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 2
  %2 = load %struct.dentry*, %struct.dentry** %old_dentry3, align 8
  %new_dentry4 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 5
  %3 = load %struct.dentry*, %struct.dentry** %new_dentry4, align 8
  %delegated_inode5 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 6
  %4 = load %struct.inode**, %struct.inode*** %delegated_inode5, align 8
  %flags6 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 7
  %5 = load i32, i32* %flags6, align 8
  %call = call fastcc i1 @d_is_dir(%struct.dentry* noundef %2) #17
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 5
  %6 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %d_inode7 = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i64 0, i32 5
  %7 = load %struct.inode*, %struct.inode** %d_inode7, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 6
  %8 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_max_links = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i64 0, i32 33
  %9 = load i32, i32* %s_max_links, align 8
  %10 = bitcast %struct.name_snapshot* %old_name to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %10) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false), !annotation !14
  %cmp = icmp eq %struct.inode* %6, %7
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %old_mnt_userns = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 0
  %11 = load %struct.user_namespace*, %struct.user_namespace** %old_mnt_userns, align 8
  %call8 = call fastcc i32 @may_delete(%struct.user_namespace* noundef %11, %struct.inode* noundef %0, %struct.dentry* noundef %2, i1 noundef %call) #17
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.end
  %tobool12 = icmp ne %struct.inode* %7, null
  br i1 %tobool12, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %new_mnt_userns = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 3
  %12 = load %struct.user_namespace*, %struct.user_namespace** %new_mnt_userns, align 8
  %call14 = call fastcc i32 @may_create(%struct.user_namespace* noundef %12, %struct.inode* noundef %1, %struct.dentry* noundef %3) #17
  br label %if.end27

if.else:                                          ; preds = %if.end11
  %call15 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %3) #17
  %and = and i32 %5, 2
  %tobool17.not = icmp eq i32 %and, 0
  %new_mnt_userns19 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 3
  %13 = load %struct.user_namespace*, %struct.user_namespace** %new_mnt_userns19, align 8
  br i1 %tobool17.not, label %if.then18, label %if.else22

if.then18:                                        ; preds = %if.else
  %call21 = call fastcc i32 @may_delete(%struct.user_namespace* noundef %13, %struct.inode* noundef %1, %struct.dentry* noundef %3, i1 noundef %call) #17
  br label %if.end27

if.else22:                                        ; preds = %if.else
  %call25 = call fastcc i32 @may_delete(%struct.user_namespace* noundef %13, %struct.inode* noundef %1, %struct.dentry* noundef %3, i1 noundef %call15) #17
  br label %if.end27

if.end27:                                         ; preds = %if.then18, %if.else22, %if.then13
  %error.0 = phi i32 [ %call25, %if.else22 ], [ %call21, %if.then18 ], [ %call14, %if.then13 ]
  %new_is_dir.0.shrunk = phi i1 [ %call15, %if.else22 ], [ %call15, %if.then18 ], [ false, %if.then13 ]
  %tobool28.not = icmp eq i32 %error.0, 0
  br i1 %tobool28.not, label %if.end30, label %cleanup

if.end30:                                         ; preds = %if.end27
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 5
  %14 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %rename = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %14, i64 0, i32 12
  %15 = load i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)** %rename, align 32
  %tobool31.not = icmp eq i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* %15, null
  br i1 %tobool31.not, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.end30
  %cmp34.not = icmp eq %struct.inode* %1, %0
  br i1 %cmp34.not, label %if.end33.if.end54_crit_edge, label %if.then35

if.end33.if.end54_crit_edge:                      ; preds = %if.end33
  %.pre = and i32 %5, 2
  br label %if.end54

if.then35:                                        ; preds = %if.end33
  br i1 %call, label %if.then37, label %if.end43

if.then37:                                        ; preds = %if.then35
  %16 = load %struct.user_namespace*, %struct.user_namespace** %old_mnt_userns, align 8
  %call39 = call i32 @inode_permission(%struct.user_namespace* noundef %16, %struct.inode* noundef %6, i32 noundef 2) #17
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end43, label %cleanup

if.end43:                                         ; preds = %if.then37, %if.then35
  %and44 = and i32 %5, 2
  %tobool45.not = icmp eq i32 %and44, 0
  %new_is_dir.0.shrunk.not = xor i1 %new_is_dir.0.shrunk, true
  %brmerge = select i1 %tobool45.not, i1 true, i1 %new_is_dir.0.shrunk.not
  br i1 %brmerge, label %if.end54, label %if.then47

if.then47:                                        ; preds = %if.end43
  %new_mnt_userns48 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 3
  %17 = load %struct.user_namespace*, %struct.user_namespace** %new_mnt_userns48, align 8
  %call49 = call i32 @inode_permission(%struct.user_namespace* noundef %17, %struct.inode* noundef %7, i32 noundef 2) #17
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end54, label %cleanup

if.end54:                                         ; preds = %if.end33.if.end54_crit_edge, %if.end43, %if.then47
  %and61.pre-phi = phi i32 [ %.pre, %if.end33.if.end54_crit_edge ], [ %and44, %if.end43 ], [ %and44, %if.then47 ]
  call void @take_dentry_name_snapshot(%struct.name_snapshot* noundef nonnull %old_name, %struct.dentry* noundef %2) #16
  %call59 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %3) #17
  %tobool62.not = icmp eq i32 %and61.pre-phi, 0
  %or.cond316 = select i1 %call, i1 %tobool62.not, i1 false
  br i1 %or.cond316, label %if.else64, label %if.end68

if.else64:                                        ; preds = %if.end54
  br i1 %tobool12, label %if.end68.thread327, label %if.end68.thread

if.end68:                                         ; preds = %if.end54
  call void @lock_two_nondirectories(%struct.inode* noundef %6, %struct.inode* noundef %7) #16
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %6, i64 0, i32 4
  %18 = load i32, i32* %i_flags, align 4
  %and69 = and i32 %18, 256
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %lor.lhs.false71, label %if.then154

if.end68.thread327:                               ; preds = %if.else64
  call fastcc void @inode_lock(%struct.inode* noundef nonnull %7) #17
  %i_flags328 = getelementptr inbounds %struct.inode, %struct.inode* %6, i64 0, i32 4
  %19 = load i32, i32* %i_flags328, align 4
  %and69329 = and i32 %19, 256
  %tobool70.not330 = icmp eq i32 %and69329, 0
  br i1 %tobool70.not330, label %land.lhs.true73, label %if.then157

if.end68.thread:                                  ; preds = %if.else64
  %i_flags324 = getelementptr inbounds %struct.inode, %struct.inode* %6, i64 0, i32 4
  %20 = load i32, i32* %i_flags324, align 4
  %and69325 = and i32 %20, 256
  %tobool70.not326 = icmp eq i32 %and69325, 0
  br i1 %tobool70.not326, label %if.end78, label %if.end159.thread

if.end159.thread:                                 ; preds = %if.end68.thread
  call void @dput(%struct.dentry* noundef %3) #16
  br label %if.end171

lor.lhs.false71:                                  ; preds = %if.end68
  br i1 %tobool12, label %land.lhs.true73.thread, label %if.end78

land.lhs.true73:                                  ; preds = %if.end68.thread327
  %i_flags74 = getelementptr inbounds %struct.inode, %struct.inode* %7, i64 0, i32 4
  %21 = load i32, i32* %i_flags74, align 4
  %and75 = and i32 %21, 256
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end78, label %if.then157

land.lhs.true73.thread:                           ; preds = %lor.lhs.false71
  %i_flags74349 = getelementptr inbounds %struct.inode, %struct.inode* %7, i64 0, i32 4
  %22 = load i32, i32* %i_flags74349, align 4
  %and75350 = and i32 %22, 256
  %tobool76.not351 = icmp eq i32 %and75350, 0
  br i1 %tobool76.not351, label %if.end78, label %if.then154

if.end78:                                         ; preds = %land.lhs.true73.thread, %if.end68.thread, %land.lhs.true73, %lor.lhs.false71
  %call79 = call fastcc i1 @is_local_mountpoint(%struct.dentry* noundef %2) #17
  br i1 %call79, label %out, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %if.end78
  %call81 = call fastcc i1 @is_local_mountpoint(%struct.dentry* noundef %3) #17
  br i1 %call81, label %out, label %if.end83

if.end83:                                         ; preds = %lor.lhs.false80
  %tobool84.not = icmp eq i32 %9, 0
  %brmerge317 = select i1 %tobool84.not, i1 true, i1 %cmp34.not
  br i1 %brmerge317, label %if.end106, label %if.then87

if.then87:                                        ; preds = %if.end83
  %call.not = xor i1 %call, true
  %brmerge318 = select i1 %call.not, i1 true, i1 %new_is_dir.0.shrunk
  br i1 %brmerge318, label %if.end94, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.then87
  %i_nlink = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 9, i32 0
  %23 = load i32, i32* %i_nlink, align 8
  %cmp92.not = icmp ult i32 %23, %9
  br i1 %cmp92.not, label %if.end94, label %out

if.end94:                                         ; preds = %if.then87, %land.lhs.true91
  %brmerge319 = select i1 %tobool62.not, i1 true, i1 %call
  %new_is_dir.0.shrunk.not320 = xor i1 %new_is_dir.0.shrunk, true
  %brmerge321 = select i1 %brmerge319, i1 true, i1 %new_is_dir.0.shrunk.not320
  br i1 %brmerge321, label %if.end106, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %if.end94
  %i_nlink102 = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 9, i32 0
  %24 = load i32, i32* %i_nlink102, align 8
  %cmp103.not = icmp ult i32 %24, %9
  br i1 %cmp103.not, label %if.end106, label %out

if.end106:                                        ; preds = %if.end94, %if.end83, %land.lhs.true101
  br i1 %call, label %if.end113, label %if.then108

if.then108:                                       ; preds = %if.end106
  %call109 = call fastcc i32 @try_break_deleg(%struct.inode* noundef %6, %struct.inode** noundef %4) #17
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end113, label %out

if.end113:                                        ; preds = %if.then108, %if.end106
  %tobool12.not = xor i1 %tobool12, true
  %brmerge322 = select i1 %tobool12.not, i1 true, i1 %new_is_dir.0.shrunk
  br i1 %brmerge322, label %if.end122, label %if.then117

if.then117:                                       ; preds = %if.end113
  %call118 = call fastcc i32 @try_break_deleg(%struct.inode* noundef nonnull %7, %struct.inode** noundef %4) #17
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end122, label %out

if.end122:                                        ; preds = %if.end113, %if.then117
  %25 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %rename124 = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %25, i64 0, i32 12
  %26 = load i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)** %rename124, align 32
  %new_mnt_userns125 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 3
  %27 = load %struct.user_namespace*, %struct.user_namespace** %new_mnt_userns125, align 8
  %call126 = call i32 %26(%struct.user_namespace* noundef %27, %struct.inode* noundef %0, %struct.dentry* noundef %2, %struct.inode* noundef %1, %struct.dentry* noundef %3, i32 noundef %5) #16
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %out

if.end129:                                        ; preds = %if.end122
  %or.cond = select i1 %tobool62.not, i1 %tobool12, i1 false
  br i1 %or.cond, label %if.then134, label %if.end139

if.then134:                                       ; preds = %if.end129
  br i1 %call, label %if.then136, label %if.end138

if.then136:                                       ; preds = %if.then134
  call void @shrink_dcache_parent(%struct.dentry* noundef %3) #16
  %i_flags137 = getelementptr inbounds %struct.inode, %struct.inode* %7, i64 0, i32 4
  %28 = load i32, i32* %i_flags137, align 4
  %or = or i32 %28, 16
  store i32 %or, i32* %i_flags137, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.then134
  call fastcc void @dont_mount(%struct.dentry* noundef %3) #17
  call fastcc void @detach_mounts(%struct.dentry* noundef %3) #17
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.end129
  %i_sb140 = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 6
  %29 = load %struct.super_block*, %struct.super_block** %i_sb140, align 8
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i64 0, i32 5
  %30 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %fs_flags = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %30, i64 0, i32 1
  %31 = load i32, i32* %fs_flags, align 8
  %and141 = and i32 %31, 32768
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.then143, label %out

if.then143:                                       ; preds = %if.end139
  br i1 %tobool62.not, label %if.then146, label %if.else147

if.then146:                                       ; preds = %if.then143
  call void @d_move(%struct.dentry* noundef %2, %struct.dentry* noundef %3) #16
  br label %out

if.else147:                                       ; preds = %if.then143
  call void @d_exchange(%struct.dentry* noundef %2, %struct.dentry* noundef %3) #16
  br label %out

out:                                              ; preds = %if.end139, %if.else147, %if.then146, %if.end122, %if.then117, %if.then108, %land.lhs.true101, %land.lhs.true91, %if.end78, %lor.lhs.false80
  %error.1 = phi i32 [ -16, %if.end78 ], [ -16, %lor.lhs.false80 ], [ %call126, %if.end122 ], [ 0, %if.end139 ], [ 0, %if.else147 ], [ 0, %if.then146 ], [ %call118, %if.then117 ], [ %call109, %if.then108 ], [ -31, %land.lhs.true101 ], [ -31, %land.lhs.true91 ]
  br i1 %or.cond316, label %if.else155, label %if.then154

if.then154:                                       ; preds = %land.lhs.true73.thread, %if.end68, %out
  %error.1337 = phi i32 [ %error.1, %out ], [ -1, %if.end68 ], [ -1, %land.lhs.true73.thread ]
  call void @unlock_two_nondirectories(%struct.inode* noundef %6, %struct.inode* noundef %7) #16
  br label %if.end159

if.else155:                                       ; preds = %out
  br i1 %tobool12, label %if.then157, label %if.end159

if.then157:                                       ; preds = %land.lhs.true73, %if.end68.thread327, %if.else155
  %error.1334339 = phi i32 [ %error.1, %if.else155 ], [ -1, %if.end68.thread327 ], [ -1, %land.lhs.true73 ]
  call fastcc void @inode_unlock(%struct.inode* noundef nonnull %7) #17
  br label %if.end159

if.end159:                                        ; preds = %if.else155, %if.then157, %if.then154
  %error.1333 = phi i32 [ %error.1, %if.else155 ], [ %error.1334339, %if.then157 ], [ %error.1337, %if.then154 ]
  call void @dput(%struct.dentry* noundef %3) #16
  %tobool160.not = icmp eq i32 %error.1333, 0
  br i1 %tobool160.not, label %if.then161, label %if.end171

if.then161:                                       ; preds = %if.end159
  %conv = zext i1 %call to i32
  %cond = select i1 %tobool62.not, %struct.inode* %7, %struct.inode* null
  call fastcc void @fsnotify_move(%struct.inode* noundef %0, %struct.inode* noundef %1, i32 noundef %conv, %struct.inode* noundef %cond, %struct.dentry* noundef %2) #17
  br i1 %tobool62.not, label %if.end171, label %if.then167

if.then167:                                       ; preds = %if.then161
  %conv169 = zext i1 %new_is_dir.0.shrunk to i32
  call fastcc void @fsnotify_move(%struct.inode* noundef %1, %struct.inode* noundef %0, i32 noundef %conv169, %struct.inode* noundef null, %struct.dentry* noundef %3) #17
  br label %if.end171

if.end171:                                        ; preds = %if.end159.thread, %if.then161, %if.then167, %if.end159
  %error.1333348 = phi i32 [ -1, %if.end159.thread ], [ 0, %if.then161 ], [ 0, %if.then167 ], [ %error.1333, %if.end159 ]
  call void @release_dentry_name_snapshot(%struct.name_snapshot* noundef nonnull %old_name) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.then37, %if.end30, %if.end27, %if.end, %entry, %if.end171
  %retval.0 = phi i32 [ %error.1333348, %if.end171 ], [ 0, %entry ], [ %call8, %if.end ], [ %error.0, %if.end27 ], [ -1, %if.end30 ], [ %call39, %if.then37 ], [ %call49, %if.then47 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %10) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @take_dentry_name_snapshot(%struct.name_snapshot* noundef, %struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_two_nondirectories(%struct.inode* noundef, %struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(%struct.dentry* noundef, %struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_exchange(%struct.dentry* noundef, %struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_two_nondirectories(%struct.inode* noundef, %struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_move(%struct.inode* noundef readonly %old_dir, %struct.inode* noundef readonly %new_dir, i32 noundef %isdir, %struct.inode* noundef readonly %target, %struct.dentry* nocapture noundef readonly %moved) unnamed_addr #11 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %moved, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  call fastcc void @fsnotify_name(%struct.inode* noundef %old_dir, %struct.inode* noundef %0) #17
  call fastcc void @fsnotify_name(%struct.inode* noundef %new_dir, %struct.inode* noundef %0) #17
  %tobool5.not = icmp eq %struct.inode* %target, null
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %entry
  call fastcc void @fsnotify_link_count(%struct.inode* noundef nonnull %target) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %entry
  call fastcc void @fsnotify_inode(%struct.inode* noundef %0, i32 noundef 2048) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_dentry_name_snapshot(%struct.name_snapshot* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_renameat2(i32 noundef %olddfd, %struct.filename* noundef %from, i32 noundef %newdfd, %struct.filename* noundef %to, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %rd = alloca %struct.renamedata, align 8
  %old_path = alloca %struct.path, align 8
  %new_path = alloca %struct.path, align 8
  %old_last = alloca %struct.qstr, align 8
  %new_last = alloca %struct.qstr, align 8
  %old_type = alloca i32, align 4
  %new_type = alloca i32, align 4
  %delegated_inode = alloca %struct.inode*, align 8
  %0 = bitcast %struct.renamedata* %rd to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !14
  %1 = bitcast %struct.path* %old_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !14
  %2 = bitcast %struct.path* %new_path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !14
  %3 = bitcast %struct.qstr* %old_last to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !14
  %4 = bitcast %struct.qstr* %new_last to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !14
  %5 = bitcast i32* %old_type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18
  store i32 0, i32* %old_type, align 4, !annotation !14
  %6 = bitcast i32* %new_type to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18
  store i32 0, i32* %new_type, align 4, !annotation !14
  %7 = bitcast %struct.inode** %delegated_inode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #18
  store %struct.inode* null, %struct.inode** %delegated_inode, align 8
  %tobool.not = icmp ult i32 %flags, 8
  br i1 %tobool.not, label %if.end, label %put_names

if.end:                                           ; preds = %entry
  %and1 = and i32 %flags, 5
  %tobool2.not = icmp eq i32 %and1, 0
  %and3 = and i32 %flags, 2
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = or i1 %tobool2.not, %tobool4.not
  br i1 %or.cond, label %if.end6, label %put_names

if.end6:                                          ; preds = %if.end
  %8 = shl nuw nsw i32 %and3, 10
  %mnt = getelementptr inbounds %struct.path, %struct.path* %old_path, i64 0, i32 0
  %mnt18 = getelementptr inbounds %struct.path, %struct.path* %new_path, i64 0, i32 0
  %and24 = and i32 %flags, 1
  %tobool25.not = icmp eq i32 %and24, 0
  %spec.select186 = select i1 %tobool25.not, i32 -16, i32 -17
  %dentry = getelementptr inbounds %struct.path, %struct.path* %new_path, i64 0, i32 1
  %dentry36 = getelementptr inbounds %struct.path, %struct.path* %old_path, i64 0, i32 1
  %name = getelementptr inbounds %struct.qstr, %struct.qstr* %new_last, i64 0, i32 1
  %9 = bitcast %struct.qstr* %new_last to %struct.anon.7*
  %len = getelementptr inbounds %struct.anon.7, %struct.anon.7* %9, i64 0, i32 1
  %name76 = getelementptr inbounds %struct.qstr, %struct.qstr* %old_last, i64 0, i32 1
  %10 = bitcast %struct.qstr* %old_last to %struct.anon.7*
  %len77 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %10, i64 0, i32 1
  %spec.select187 = select i1 %tobool4.not, i32 -39, i32 -22
  %old_dir = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 1
  %old_dentry112 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 2
  %old_mnt_userns = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 0
  %new_dir = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 4
  %new_dentry117 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 5
  %new_mnt_userns = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 3
  %delegated_inode120 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 6
  %flags121 = getelementptr inbounds %struct.renamedata, %struct.renamedata* %rd, i64 0, i32 7
  br label %retry

retry:                                            ; preds = %exit1, %if.end6
  %lookup_flags.0 = phi i32 [ 0, %if.end6 ], [ 32, %exit1 ]
  %call = call fastcc i32 @filename_parentat(i32 noundef %olddfd, %struct.filename* noundef %from, i32 noundef %lookup_flags.0, %struct.path* noundef nonnull %old_path, %struct.qstr* noundef nonnull %old_last, i32* noundef nonnull %old_type) #17
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end13, label %put_names

if.end13:                                         ; preds = %retry
  %call14 = call fastcc i32 @filename_parentat(i32 noundef %newdfd, %struct.filename* noundef %to, i32 noundef %lookup_flags.0, %struct.path* noundef nonnull %new_path, %struct.qstr* noundef nonnull %new_last, i32* noundef nonnull %new_type) #17
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %exit1.thread

exit1.thread:                                     ; preds = %if.end13
  call void @path_put(%struct.path* noundef nonnull %old_path) #17
  br label %put_names

if.end17:                                         ; preds = %if.end13
  %11 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %12 = load %struct.vfsmount*, %struct.vfsmount** %mnt18, align 8
  %cmp.not = icmp eq %struct.vfsmount* %11, %12
  br i1 %cmp.not, label %if.end20, label %exit1

if.end20:                                         ; preds = %if.end17
  %13 = load i32, i32* %old_type, align 4
  %cmp21.not = icmp eq i32 %13, 0
  br i1 %cmp21.not, label %if.end23, label %exit1

if.end23:                                         ; preds = %if.end20
  %14 = load i32, i32* %new_type, align 4
  %cmp28.not = icmp eq i32 %14, 0
  br i1 %cmp28.not, label %if.end30, label %exit1

if.end30:                                         ; preds = %if.end23
  %call32 = call i32 @mnt_want_write(%struct.vfsmount* noundef %11) #16
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %retry_deleg.preheader, label %exit1

retry_deleg.preheader:                            ; preds = %if.end30
  %15 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %16 = load %struct.dentry*, %struct.dentry** %dentry36, align 8
  %17 = or i32 %lookup_flags.0, %8
  %or = xor i32 %17, 2048
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i64 0, i32 5
  %d_inode116 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i64 0, i32 5
  br label %retry_deleg

retry_deleg:                                      ; preds = %retry_deleg.preheader, %if.then126
  %call37 = call %struct.dentry* @lock_rename(%struct.dentry* noundef %15, %struct.dentry* noundef %16) #17
  %call39 = call fastcc %struct.dentry* @__lookup_hash(%struct.qstr* noundef nonnull %old_last, %struct.dentry* noundef %16, i32 noundef %lookup_flags.0) #17
  %18 = bitcast %struct.dentry* %call39 to i8*
  %call40 = call fastcc i64 @PTR_ERR(i8* noundef %18) #17
  %conv = trunc i64 %call40 to i32
  %call41 = call fastcc i1 @IS_ERR(i8* noundef %18) #17
  br i1 %call41, label %exit3, label %if.end43

if.end43:                                         ; preds = %retry_deleg
  %call44 = call fastcc i1 @d_is_negative(%struct.dentry* noundef %call39) #17
  br i1 %call44, label %exit4, label %if.end46

if.end46:                                         ; preds = %if.end43
  %call48 = call fastcc %struct.dentry* @__lookup_hash(%struct.qstr* noundef nonnull %new_last, %struct.dentry* noundef %15, i32 noundef %or) #17
  %19 = bitcast %struct.dentry* %call48 to i8*
  %call49 = call fastcc i64 @PTR_ERR(i8* noundef %19) #17
  %conv50 = trunc i64 %call49 to i32
  %call51 = call fastcc i1 @IS_ERR(i8* noundef %19) #17
  br i1 %call51, label %exit4, label %if.end53

if.end53:                                         ; preds = %if.end46
  br i1 %tobool25.not, label %if.end60, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end53
  %call57 = call fastcc i1 @d_is_positive(%struct.dentry* noundef %call48) #17
  br i1 %call57, label %exit5, label %if.end60

if.end60:                                         ; preds = %land.lhs.true56, %if.end53
  br i1 %tobool4.not, label %if.end73, label %if.then63

if.then63:                                        ; preds = %if.end60
  %call64 = call fastcc i1 @d_is_negative(%struct.dentry* noundef %call48) #17
  br i1 %call64, label %exit5, label %if.end66

if.end66:                                         ; preds = %if.then63
  %call67 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %call48) #17
  br i1 %call67, label %if.end73, label %if.then68

if.then68:                                        ; preds = %if.end66
  %20 = load i8*, i8** %name, align 8
  %21 = load i32, i32* %len, align 4
  %idxprom = zext i32 %21 to i64
  %arrayidx = getelementptr i8, i8* %20, i64 %idxprom
  %22 = load i8, i8* %arrayidx, align 1
  %tobool69.not = icmp eq i8 %22, 0
  br i1 %tobool69.not, label %if.end73, label %exit5

if.end73:                                         ; preds = %if.end66, %if.then68, %if.end60
  %call74 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %call39) #17
  br i1 %call74, label %if.end94, label %if.then75

if.then75:                                        ; preds = %if.end73
  %23 = load i8*, i8** %name76, align 8
  %24 = load i32, i32* %len77, align 4
  %idxprom78 = zext i32 %24 to i64
  %arrayidx79 = getelementptr i8, i8* %23, i64 %idxprom78
  %25 = load i8, i8* %arrayidx79, align 1
  %tobool80.not = icmp eq i8 %25, 0
  br i1 %tobool80.not, label %if.end82, label %exit5

if.end82:                                         ; preds = %if.then75
  br i1 %tobool4.not, label %land.lhs.true85, label %if.end94

land.lhs.true85:                                  ; preds = %if.end82
  %26 = load i8*, i8** %name, align 8
  %27 = load i32, i32* %len, align 4
  %idxprom88 = zext i32 %27 to i64
  %arrayidx89 = getelementptr i8, i8* %26, i64 %idxprom88
  %28 = load i8, i8* %arrayidx89, align 1
  %tobool91.not = icmp eq i8 %28, 0
  br i1 %tobool91.not, label %if.end94, label %exit5

if.end94:                                         ; preds = %if.end82, %land.lhs.true85, %if.end73
  %cmp95 = icmp eq %struct.dentry* %call39, %call37
  br i1 %cmp95, label %exit5, label %if.end98

if.end98:                                         ; preds = %if.end94
  %cmp103 = icmp eq %struct.dentry* %call48, %call37
  br i1 %cmp103, label %exit5, label %if.end106

if.end106:                                        ; preds = %if.end98
  %29 = load %struct.inode*, %struct.inode** %d_inode, align 8
  store %struct.inode* %29, %struct.inode** %old_dir, align 8
  store %struct.dentry* %call39, %struct.dentry** %old_dentry112, align 8
  %call114 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %11) #17
  store %struct.user_namespace* %call114, %struct.user_namespace** %old_mnt_userns, align 8
  %30 = load %struct.inode*, %struct.inode** %d_inode116, align 8
  store %struct.inode* %30, %struct.inode** %new_dir, align 8
  store %struct.dentry* %call48, %struct.dentry** %new_dentry117, align 8
  %call119 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %11) #17
  store %struct.user_namespace* %call119, %struct.user_namespace** %new_mnt_userns, align 8
  store %struct.inode** %delegated_inode, %struct.inode*** %delegated_inode120, align 8
  store i32 %flags, i32* %flags121, align 8
  %call122 = call i32 @vfs_rename(%struct.renamedata* noundef nonnull %rd) #17
  br label %exit5

exit5:                                            ; preds = %if.end98, %if.end94, %land.lhs.true85, %if.then75, %if.then68, %if.then63, %land.lhs.true56, %if.end106
  %error.2 = phi i32 [ -17, %land.lhs.true56 ], [ -2, %if.then63 ], [ -22, %if.end94 ], [ %spec.select187, %if.end98 ], [ %call122, %if.end106 ], [ -20, %if.then75 ], [ -20, %land.lhs.true85 ], [ -20, %if.then68 ]
  call void @dput(%struct.dentry* noundef %call48) #16
  br label %exit4

exit4:                                            ; preds = %if.end46, %if.end43, %exit5
  %error.3 = phi i32 [ -2, %if.end43 ], [ %conv50, %if.end46 ], [ %error.2, %exit5 ]
  call void @dput(%struct.dentry* noundef %call39) #16
  br label %exit3

exit3:                                            ; preds = %retry_deleg, %exit4
  %error.4 = phi i32 [ %conv, %retry_deleg ], [ %error.3, %exit4 ]
  call void @unlock_rename(%struct.dentry* noundef %15, %struct.dentry* noundef %16) #17
  %31 = load %struct.inode*, %struct.inode** %delegated_inode, align 8
  %tobool125.not = icmp eq %struct.inode* %31, null
  br i1 %tobool125.not, label %if.end131, label %if.then126

if.then126:                                       ; preds = %exit3
  %call127 = call fastcc i32 @break_deleg_wait(%struct.inode** noundef nonnull %delegated_inode) #17
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %retry_deleg, label %if.end131

if.end131:                                        ; preds = %if.then126, %exit3
  %error.5 = phi i32 [ %call127, %if.then126 ], [ %error.4, %exit3 ]
  call void @mnt_drop_write(%struct.vfsmount* noundef %11) #16
  br label %exit1

exit1:                                            ; preds = %if.end131, %if.end17, %if.end20, %if.end23, %if.end30
  %error.6 = phi i32 [ -18, %if.end17 ], [ -16, %if.end20 ], [ %spec.select186, %if.end23 ], [ %call32, %if.end30 ], [ %error.5, %if.end131 ]
  %conv133 = sext i32 %error.6 to i64
  %call134 = call fastcc i1 @retry_estale(i64 noundef %conv133, i32 noundef %lookup_flags.0) #17
  call void @path_put(%struct.path* noundef nonnull %new_path) #17
  call void @path_put(%struct.path* noundef nonnull %old_path) #17
  br i1 %call134, label %retry, label %put_names

put_names:                                        ; preds = %exit1, %retry, %exit1.thread, %if.end, %entry
  %error.8 = phi i32 [ -22, %entry ], [ -22, %if.end ], [ %call14, %exit1.thread ], [ %error.6, %exit1 ], [ %call, %retry ]
  call void @putname(%struct.filename* noundef %from) #17
  call void @putname(%struct.filename* noundef %to) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #18
  ret i32 %error.8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_positive(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i1 @d_is_negative(%struct.dentry* noundef %dentry) #17
  %lnot = xor i1 %call, true
  ret i1 %lnot
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_renameat2(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %call = call fastcc i64 @__se_sys_renameat2(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_renameat2(i64 noundef %olddfd, i64 noundef %oldname, i64 noundef %newdfd, i64 noundef %newname, i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %olddfd to i32
  %0 = inttoptr i64 %oldname to i8*
  %conv1 = trunc i64 %newdfd to i32
  %1 = inttoptr i64 %newname to i8*
  %conv2 = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_renameat2(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1, i8* noundef %1, i32 noundef %conv2) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_renameat(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_renameat(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_renameat(i64 noundef %olddfd, i64 noundef %oldname, i64 noundef %newdfd, i64 noundef %newname) unnamed_addr #0 {
entry:
  %conv = trunc i64 %olddfd to i32
  %0 = inttoptr i64 %oldname to i8*
  %conv1 = trunc i64 %newdfd to i32
  %1 = inttoptr i64 %newname to i8*
  %call = call fastcc i64 @__do_sys_renameat(i32 noundef %conv, i8* noundef %0, i32 noundef %conv1, i8* noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_rename(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_rename(i64 noundef %0, i64 noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_rename(i64 noundef %oldname, i64 noundef %newname) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %oldname to i8*
  %1 = inttoptr i64 %newname to i8*
  %call = call fastcc i64 @__do_sys_rename(i8* noundef %0, i8* noundef %1) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @readlink_copy(i8* noundef %buffer, i32 noundef %buflen, i8* noundef %link) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @PTR_ERR(i8* noundef %link) #17
  %conv = trunc i64 %call to i32
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %link) #17
  br i1 %call1, label %out, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i64 @strlen(i8* noundef %link) #16
  %conv3 = trunc i64 %call2 to i32
  %cmp = icmp ugt i32 %conv3, %buflen
  %spec.select = select i1 %cmp, i32 %buflen, i32 %conv3
  %cmp11.i.i = icmp slt i32 %spec.select, 0
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !7

check_copy_size.exit.i:                           ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !27
  br label %out

if.then.i:                                        ; preds = %if.end
  %conv719 = zext i32 %spec.select to i64
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %buffer, i8* noundef %link, i64 noundef %conv719) #16
  %phi.cmp = icmp eq i64 %call2.i, 0
  %phi.sel = select i1 %phi.cmp, i32 %spec.select, i32 -14
  br label %out

out:                                              ; preds = %if.then.i, %check_copy_size.exit.i, %entry
  %len.1 = phi i32 [ %conv, %entry ], [ %phi.sel, %if.then.i ], [ -14, %check_copy_size.exit.i ]
  ret i32 %len.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vfs_readlink(%struct.dentry* noundef %dentry, i8* noundef %buffer, i32 noundef %buflen) local_unnamed_addr #0 {
entry:
  %done = alloca %struct.delayed_call, align 8
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #17
  %0 = bitcast %struct.delayed_call* %done to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i_opflags = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 1
  %1 = load i16, i16* %i_opflags, align 2
  %2 = and i16 %1, 16
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then, label %do.end, !prof !7

if.then:                                          ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  %3 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %readlink = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %3, i64 0, i32 4
  %4 = load i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.dentry*, i8*, i32)** %readlink, align 32
  %tobool5.not = icmp eq i32 (%struct.dentry*, i8*, i32)* %4, null
  br i1 %tobool5.not, label %if.end, label %if.then13, !prof !10

if.then13:                                        ; preds = %if.then
  %call16 = call i32 %4(%struct.dentry* noundef %dentry, i8* noundef %buffer, i32 noundef %buflen) #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call17 = call fastcc i1 @d_is_symlink(%struct.dentry* noundef %dentry) #17
  br i1 %call17, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %5 = load i16, i16* %i_opflags, align 2
  %6 = or i16 %5, 16
  store i16 %6, i16* %i_opflags, align 2
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  br label %do.end

do.end:                                           ; preds = %entry, %if.end19
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 40
  %i_link = bitcast %union.anon.87* %7 to i8**
  %8 = load volatile i8*, i8** %i_link, align 8
  %tobool25.not = icmp eq i8* %8, null
  br i1 %tobool25.not, label %if.then26, label %if.end34

if.then26:                                        ; preds = %do.end
  %i_op27 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 5
  %9 = load %struct.inode_operations*, %struct.inode_operations** %i_op27, align 8
  %get_link = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %9, i64 0, i32 1
  %10 = load i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)** %get_link, align 8
  %call28 = call i8* %10(%struct.dentry* noundef %dentry, %struct.inode* noundef %call, %struct.delayed_call* noundef nonnull %done) #16
  %call29 = call fastcc i1 @IS_ERR(i8* noundef %call28) #17
  br i1 %call29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.then26
  %call31 = call fastcc i64 @PTR_ERR(i8* noundef %call28) #17
  %conv32 = trunc i64 %call31 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.then26, %do.end
  %link.0 = phi i8* [ %8, %do.end ], [ %call28, %if.then26 ]
  %call35 = call i32 @readlink_copy(i8* noundef %buffer, i32 noundef %buflen, i8* noundef %link.0) #17
  call fastcc void @do_delayed_call(%struct.delayed_call* noundef nonnull %done) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end34, %if.then30, %if.then13
  %retval.0 = phi i32 [ %call16, %if.then13 ], [ %call35, %if.end34 ], [ %conv32, %if.then30 ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_delayed_call(%struct.delayed_call* nocapture noundef readonly %call) unnamed_addr #0 {
entry:
  %fn = getelementptr inbounds %struct.delayed_call, %struct.delayed_call* %call, i64 0, i32 0
  %0 = load void (i8*)*, void (i8*)** %fn, align 8
  %tobool.not = icmp eq void (i8*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arg = getelementptr inbounds %struct.delayed_call, %struct.delayed_call* %call, i64 0, i32 1
  %1 = load i8*, i8** %arg, align 8
  call void %0(i8* noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @vfs_get_link(%struct.dentry* noundef %dentry, %struct.delayed_call* noundef %done) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @ERR_PTR(i64 noundef -22) #17
  %call1 = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #17
  %call2 = call fastcc i1 @d_is_symlink(%struct.dentry* noundef %dentry) #17
  br i1 %call2, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call4 = call fastcc i8* @ERR_PTR(i64 noundef 0) #17
  %tobool.not = icmp eq i8* %call4, null
  br i1 %tobool.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %call1, i64 0, i32 5
  %0 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %get_link = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %0, i64 0, i32 1
  %1 = load i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)** %get_link, align 8
  %call6 = call i8* %1(%struct.dentry* noundef %dentry, %struct.inode* noundef %call1, %struct.delayed_call* noundef %done) #16
  br label %if.end7

if.end7:                                          ; preds = %if.then, %if.then5, %entry
  %res.0 = phi i8* [ %call4, %if.then ], [ %call6, %if.then5 ], [ %call, %entry ]
  ret i8* %res.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @page_get_link(%struct.dentry* noundef readnone %dentry, %struct.inode* nocapture noundef readonly %inode, %struct.delayed_call* nocapture noundef writeonly %callback) #0 {
entry:
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %tobool.not = icmp eq %struct.dentry* %dentry, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.page* @find_get_page(%struct.address_space* noundef %0) #17
  %tobool1.not = icmp eq %struct.page* %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call3 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call4 = call fastcc i32 @PageUptodate(%struct.page* noundef nonnull %call) #17
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  %.pre = bitcast %struct.page* %call to i8*
  br label %if.end13

if.then6:                                         ; preds = %if.end
  call fastcc void @put_page(%struct.page* noundef nonnull %call) #17
  %call7 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  br label %cleanup

if.else:                                          ; preds = %entry
  %call9 = call fastcc %struct.page* @read_mapping_page(%struct.address_space* noundef %0) #17
  %1 = bitcast %struct.page* %call9 to i8*
  %call10 = call fastcc i1 @IS_ERR(i8* noundef %1) #17
  br i1 %call10, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %if.else
  %.pre-phi = phi i8* [ %.pre, %if.end.if.end13_crit_edge ], [ %1, %if.else ]
  %page.0 = phi %struct.page* [ %call, %if.end.if.end13_crit_edge ], [ %call9, %if.else ]
  call fastcc void @set_delayed_call(%struct.delayed_call* noundef %callback, i8* noundef %.pre-phi) #17
  %call14 = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %0) #17
  %and = and i32 %call14, 2
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.end25, label %do.body19, !prof !10

do.body19:                                        ; preds = %if.end13
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 4932; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !28
  unreachable

do.end25:                                         ; preds = %if.end13
  %2 = ptrtoint %struct.page* %page.0 to i64
  %sub.i = shl i64 %2, 6
  %add.i = and i64 %sub.i, -4096
  %3 = inttoptr i64 %add.i to i8*
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %4 = load i64, i64* %i_size, align 8
  call fastcc void @nd_terminate_link(i8* noundef %3, i64 noundef %4) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end25, %if.then6, %if.then2
  %retval.0 = phi i8* [ %3, %do.end25 ], [ %call7, %if.then6 ], [ %call3, %if.then2 ], [ %1, %if.else ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @find_get_page(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %call = call %struct.page* @pagecache_get_page(%struct.address_space* noundef %mapping, i64 noundef 0, i32 noundef 0, i32 noundef 0) #16
  ret %struct.page* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @PageUptodate(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %1 = load volatile i64, i64* %flags, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 2
  %conv.i = and i32 %3, 1
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %conv.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #17
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @read_mapping_page(%struct.address_space* noundef %mapping) unnamed_addr #0 {
entry:
  %call = call %struct.page* @read_cache_page(%struct.address_space* noundef %mapping, i64 noundef 0, i32 (i8*, %struct.page*)* noundef null, i8* noundef null) #16
  ret %struct.page* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_delayed_call(%struct.delayed_call* nocapture noundef writeonly %call, i8* noundef %arg) unnamed_addr #12 {
entry:
  %fn1 = getelementptr inbounds %struct.delayed_call, %struct.delayed_call* %call, i64 0, i32 0
  store void (i8*)* @page_put_link, void (i8*)** %fn1, align 8
  %arg2 = getelementptr inbounds %struct.delayed_call, %struct.delayed_call* %call, i64 0, i32 1
  store i8* %arg, i8** %arg2, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @page_put_link(i8* noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to %struct.page*
  call fastcc void @put_page(%struct.page* noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mapping_gfp_mask(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #4 {
entry:
  %gfp_mask = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 3
  %0 = load i32, i32* %gfp_mask, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @nd_terminate_link(i8* nocapture noundef writeonly %name, i64 noundef %len) unnamed_addr #12 {
entry:
  %cmp = icmp ult i64 %len, 4095
  %cond = select i1 %cmp, i64 %len, i64 4095
  %arrayidx = getelementptr i8, i8* %name, i64 %cond
  store i8 0, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @page_readlink(%struct.dentry* noundef %dentry, i8* noundef %buffer, i32 noundef %buflen) local_unnamed_addr #0 {
entry:
  %done = alloca %struct.delayed_call, align 8
  %0 = bitcast %struct.delayed_call* %done to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #17
  %call1 = call i8* @page_get_link(%struct.dentry* noundef %dentry, %struct.inode* noundef %call, %struct.delayed_call* noundef nonnull %done) #17
  %call2 = call i32 @readlink_copy(i8* noundef %buffer, i32 noundef %buflen, i8* noundef %call1) #17
  call fastcc void @do_delayed_call(%struct.delayed_call* noundef nonnull %done) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %call2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__page_symlink(%struct.inode* noundef %inode, i8* noundef %symname, i32 noundef %len, i32 noundef %nofs) local_unnamed_addr #0 {
entry:
  %page = alloca %struct.page*, align 8
  %fsdata = alloca i8*, align 8
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %1 = bitcast %struct.page** %page to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #18
  store %struct.page* null, %struct.page** %page, align 8, !annotation !14
  %2 = bitcast i8** %fsdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #18
  store i8* null, i8** %fsdata, align 8, !annotation !14
  %tobool.not = icmp eq i32 %nofs, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 2
  %sub = add i32 %len, -1
  %conv = sext i32 %sub to i64
  br label %retry

retry:                                            ; preds = %if.end12, %entry
  %call = call i32 @pagecache_write_begin(%struct.file* noundef null, %struct.address_space* noundef %0, i64 noundef 0, i32 noundef %sub, i32 noundef %spec.select, %struct.page** noundef nonnull %page, i8** noundef nonnull %fsdata) #16
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %retry
  %3 = load %struct.page*, %struct.page** %page, align 8
  %4 = ptrtoint %struct.page* %3 to i64
  %sub.i = shl i64 %4, 6
  %add.i = and i64 %sub.i, -4096
  %5 = inttoptr i64 %add.i to i8*
  %call6 = call i8* @memcpy(i8* noundef %5, i8* noundef %symname, i64 noundef %conv) #16
  %6 = load %struct.page*, %struct.page** %page, align 8
  %7 = load i8*, i8** %fsdata, align 8
  %call9 = call i32 @pagecache_write_end(%struct.file* noundef null, %struct.address_space* noundef %0, i64 noundef 0, i32 noundef %sub, i32 noundef %sub, %struct.page* noundef %6, i8* noundef %7) #16
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end3
  %cmp14 = icmp slt i32 %call9, %sub
  br i1 %cmp14, label %retry, label %if.end17

if.end17:                                         ; preds = %if.end12
  call fastcc void @mark_inode_dirty(%struct.inode* noundef %inode) #17
  br label %cleanup

cleanup:                                          ; preds = %retry, %if.end3, %if.end17
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call9, %if.end3 ], [ %call, %retry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_begin(%struct.file* noundef, %struct.address_space* noundef, i64 noundef, i32 noundef, i32 noundef, %struct.page** noundef, i8** noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_end(%struct.file* noundef, %struct.address_space* noundef, i64 noundef, i32 noundef, i32 noundef, %struct.page* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mark_inode_dirty(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void @__mark_inode_dirty(%struct.inode* noundef %inode, i32 noundef 7) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @page_symlink(%struct.inode* noundef %inode, i8* noundef %symname, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %i_mapping = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 7
  %0 = load %struct.address_space*, %struct.address_space** %i_mapping, align 8
  %call = call fastcc i32 @mapping_gfp_constraint(%struct.address_space* noundef %0) #17
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %call1 = call i32 @__page_symlink(%struct.inode* noundef %inode, i8* noundef %symname, i32 noundef %len, i32 noundef %lnot.ext) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mapping_gfp_constraint(%struct.address_space* nocapture noundef readonly %mapping) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @mapping_gfp_mask(%struct.address_space* noundef %mapping) #17
  %and = and i32 %call, 128
  ret i32 %and
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p(i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sb_rdonly(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #4 {
entry:
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %0 = load i64, i64* %s_flags, align 16
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(%struct.lockref* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_into_mnt(i64 %kuid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kgid_into_mnt(i64 %kgid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__traverse_mounts(%struct.path* noundef %path, i32 noundef %flags, i8* nocapture noundef writeonly %jumped, i32* noundef %count, i32 noundef %lookup_flags) unnamed_addr #0 {
entry:
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %cleanup, %entry
  %ret.0.ph = phi i32 [ %ret.1, %cleanup ], [ 0, %entry ]
  %need_mntput.0.off0.ph = phi i1 [ true, %cleanup ], [ false, %entry ]
  %flags.addr.0.ph = phi i32 [ %9, %cleanup ], [ %flags, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end29
  %ret.0 = phi i32 [ %call30, %if.end29 ], [ %ret.0.ph, %while.cond.outer ]
  %flags.addr.0 = phi i32 [ %11, %if.end29 ], [ %flags.addr.0.ph, %while.cond.outer ]
  %and = and i32 %flags.addr.0, 458752
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %and2 = and i32 %flags.addr.0, 262144
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end7, label %if.then

if.then:                                          ; preds = %while.body
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 8
  %2 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_manage = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %2, i64 0, i32 11
  %3 = load i32 (%struct.path*, i1)*, i32 (%struct.path*, i1)** %d_manage, align 8
  %call = call i32 %3(%struct.path* noundef %path, i1 noundef false) #16
  %4 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i64 0, i32 0
  %5 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %d_flags) #18, !srcloc !30
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %while.end, label %if.end7

if.end7:                                          ; preds = %if.then, %while.body
  %ret.1 = phi i32 [ %call, %if.then ], [ %ret.0, %while.body ]
  %flags.addr.1 = phi i32 [ %5, %if.then ], [ %flags.addr.0, %while.body ]
  %and8 = and i32 %flags.addr.1, 65536
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end25, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = call %struct.vfsmount* @lookup_mnt(%struct.path* noundef %path) #16
  %tobool12.not = icmp eq %struct.vfsmount* %call11, null
  br i1 %tobool12.not, label %if.end25, label %if.then13

if.then13:                                        ; preds = %if.then10
  %6 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call void @dput(%struct.dentry* noundef %6) #16
  br i1 %need_mntput.0.off0.ph, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.then13
  %7 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  call void @mntput(%struct.vfsmount* noundef %7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then16
  store %struct.vfsmount* %call11, %struct.vfsmount** %mnt1, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %call11, i64 0, i32 0
  %8 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %call20 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %8) #17
  store %struct.dentry* %8, %struct.dentry** %dentry, align 8
  %d_flags23 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i64 0, i32 0
  %9 = load i32, i32* %d_flags23, align 8
  br label %while.cond.outer

if.end25:                                         ; preds = %if.then10, %if.end7
  %and26 = and i32 %flags.addr.1, 131072
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %while.end, label %if.end29

if.end29:                                         ; preds = %if.end25
  %call30 = call fastcc i32 @follow_automount(%struct.path* noundef %path, i32* noundef %count, i32 noundef %lookup_flags) #17
  %10 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_flags34 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i64 0, i32 0
  %11 = call i32 asm sideeffect "ldar ${0:w}, $1", "=r,*Q,~{memory}"(i32* elementtype(i32) %d_flags34) #18, !srcloc !31
  %cmp43 = icmp slt i32 %call30, 0
  br i1 %cmp43, label %while.end, label %while.cond

while.end:                                        ; preds = %if.end29, %if.end25, %if.then, %while.cond
  %ret.2 = phi i32 [ %call, %if.then ], [ %call30, %if.end29 ], [ %ret.1, %if.end25 ], [ %ret.0, %while.cond ]
  %flags.addr.4 = phi i32 [ %5, %if.then ], [ %11, %if.end29 ], [ %flags.addr.1, %if.end25 ], [ %flags.addr.0, %while.cond ]
  %cmp46 = icmp eq i32 %ret.2, -21
  %spec.store.select = select i1 %cmp46, i32 0, i32 %ret.2
  br i1 %need_mntput.0.off0.ph, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %while.end
  %12 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %cmp51 = icmp eq %struct.vfsmount* %12, %0
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %land.lhs.true
  call void @mntput(%struct.vfsmount* noundef %0) #16
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %land.lhs.true, %while.end
  %tobool55.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool55.not, label %land.lhs.true56, label %if.end61

land.lhs.true56:                                  ; preds = %if.end54
  %call57 = call fastcc i1 @d_flags_negative(i32 noundef %flags.addr.4) #17
  br i1 %call57, label %if.then60, label %if.end61, !prof !7

if.then60:                                        ; preds = %land.lhs.true56
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %land.lhs.true56, %if.end54
  %ret.3 = phi i32 [ %spec.store.select, %if.end54 ], [ -2, %if.then60 ], [ 0, %land.lhs.true56 ]
  %frombool = zext i1 %need_mntput.0.off0.ph to i8
  store i8 %frombool, i8* %jumped, align 1
  ret i32 %ret.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @follow_automount(%struct.path* noundef %path, i32* noundef %count, i32 noundef %lookup_flags) unnamed_addr #0 {
entry:
  %dentry1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %and = and i32 %lookup_flags, 790
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool2.not = icmp eq %struct.inode* %1, null
  br i1 %tobool2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool3.not = icmp eq i32* %count, null
  br i1 %tobool3.not, label %if.end6, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.end
  %2 = load i32, i32* %count, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %count, align 4
  %cmp = icmp sgt i32 %2, 39
  br i1 %cmp, label %cleanup, label %if.end6

if.end6:                                          ; preds = %land.lhs.true4, %if.end
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 8
  %3 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_automount = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %3, i64 0, i32 10
  %4 = load %struct.vfsmount* (%struct.path*)*, %struct.vfsmount* (%struct.path*)** %d_automount, align 16
  %call = call %struct.vfsmount* %4(%struct.path* noundef %path) #16
  %call7 = call i32 @finish_automount(%struct.vfsmount* noundef %call, %struct.path* noundef %path) #16
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true4, %land.lhs.true, %if.end6
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -21, %land.lhs.true ], [ -40, %land.lhs.true4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_automount(%struct.vfsmount* noundef, %struct.path* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__set_nameidata(%struct.nameidata* noundef %p, i32 noundef %dfd, %struct.filename* noundef %name) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %nameidata = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 82
  %2 = load %struct.nameidata*, %struct.nameidata** %nameidata, align 32
  %arraydecay = getelementptr inbounds %struct.nameidata, %struct.nameidata* %p, i64 0, i32 13, i64 0
  %stack = getelementptr inbounds %struct.nameidata, %struct.nameidata* %p, i64 0, i32 12
  store %struct.saved* %arraydecay, %struct.saved** %stack, align 8
  %depth = getelementptr inbounds %struct.nameidata, %struct.nameidata* %p, i64 0, i32 10
  store i32 0, i32* %depth, align 8
  %dfd1 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %p, i64 0, i32 17
  store i32 %dfd, i32* %dfd1, align 4
  %name2 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %p, i64 0, i32 14
  store %struct.filename* %name, %struct.filename** %name2, align 8
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %p, i64 0, i32 0, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %mnt, align 8
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %p, i64 0, i32 0, i32 1
  store %struct.dentry* null, %struct.dentry** %dentry, align 8
  %tobool.not = icmp eq %struct.nameidata* %2, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %total_link_count = getelementptr inbounds %struct.nameidata, %struct.nameidata* %2, i64 0, i32 11
  %3 = load i32, i32* %total_link_count, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %entry ]
  %total_link_count4 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %p, i64 0, i32 11
  store i32 %cond, i32* %total_link_count4, align 4
  %saved = getelementptr inbounds %struct.nameidata, %struct.nameidata* %p, i64 0, i32 15
  store %struct.nameidata* %2, %struct.nameidata** %saved, align 8
  store %struct.nameidata* %p, %struct.nameidata** %nameidata, align 32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @path_init(%struct.nameidata* noundef %nd, i32 noundef %flags) unnamed_addr #0 {
entry:
  %name = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 14
  %0 = load %struct.filename*, %struct.filename** %name, align 8
  %name1 = getelementptr inbounds %struct.filename, %struct.filename* %0, i64 0, i32 0
  %1 = load i8*, i8** %name1, align 8
  %and = and i32 %flags, 2097216
  %cmp = icmp eq i32 %and, 2097152
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -11) #17
  br label %cleanup207

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %1, align 1
  %tobool.not = icmp eq i8 %2, 0
  %and3 = and i32 %flags, -65
  %spec.select = select i1 %tobool.not, i32 %and3, i32 %flags
  %and5 = and i32 %spec.select, 64
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call fastcc void @__rcu_read_lock() #16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %flags9 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  store i32 %spec.select, i32* %flags9, align 8
  %state = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 5
  %3 = load i32, i32* %state, align 4
  %or = or i32 %3, 4
  store i32 %or, i32* %state, align 4
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0, i32 0), align 4
  %and11311 = and i32 %4, 1
  %tobool12.not312 = icmp eq i32 %and11311, 0
  br i1 %tobool12.not312, label %while.end, label %while.body

while.body:                                       ; preds = %if.end8, %while.body
  call fastcc void @cpu_relax() #17
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0, i32 0), align 4
  %and11 = and i32 %5, 1
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end8
  %.lcssa310 = phi i32 [ %4, %if.end8 ], [ %5, %while.body ]
  %m_seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 7
  store i32 %.lcssa310, i32* %m_seq, align 4
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @rename_lock, i64 0, i32 0, i32 0, i32 0), align 4
  %and16313 = and i32 %6, 1
  %tobool17.not314 = icmp eq i32 %and16313, 0
  br i1 %tobool17.not314, label %while.end19, label %while.body18

while.body18:                                     ; preds = %while.end, %while.body18
  call fastcc void @cpu_relax() #17
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @rename_lock, i64 0, i32 0, i32 0, i32 0), align 4
  %and16 = and i32 %7, 1
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %while.end19, label %while.body18

while.end19:                                      ; preds = %while.body18, %while.end
  %.lcssa309 = phi i32 [ %6, %while.end ], [ %7, %while.body18 ]
  %r_seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 8
  store i32 %.lcssa309, i32* %r_seq, align 8
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !32
  %8 = load i32, i32* %state, align 4
  %and22 = and i32 %8, 1
  %tobool23.not = icmp eq i32 %and22, 0
  %root57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2
  br i1 %tobool23.not, label %if.end56, label %if.then24

if.then24:                                        ; preds = %while.end19
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2, i32 1
  %9 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i64 0, i32 5
  %10 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %11 = load i8, i8* %1, align 1
  %tobool26.not = icmp eq i8 %11, 0
  br i1 %tobool26.not, label %if.end34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then24
  %call27 = call fastcc i1 @d_can_lookup(%struct.dentry* noundef %9) #17
  br i1 %call27, label %if.end34, label %if.then32, !prof !10

if.then32:                                        ; preds = %land.lhs.true
  %call33 = call fastcc i8* @ERR_PTR(i64 noundef -20) #17
  br label %cleanup207

if.end34:                                         ; preds = %land.lhs.true, %if.then24
  %12 = bitcast %struct.nameidata* %nd to i8*
  %13 = bitcast %struct.path* %root57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %12, i8* noundef align 8 dereferenceable(16) %13, i64 16, i1 false)
  %inode36 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  store %struct.inode* %10, %struct.inode** %inode36, align 8
  br i1 %tobool6.not, label %if.else, label %while.cond42.preheader

while.cond42.preheader:                           ; preds = %if.end34
  %dentry44 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %14 = load %struct.dentry*, %struct.dentry** %dentry44, align 8
  %sequence.i316 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i64 0, i32 1, i32 0, i32 0
  %15 = load volatile i32, i32* %sequence.i316, align 4
  %and46317 = and i32 %15, 1
  %tobool47.not318 = icmp eq i32 %and46317, 0
  br i1 %tobool47.not318, label %while.end49, label %while.body48

while.body48:                                     ; preds = %while.cond42.preheader, %while.body48
  call fastcc void @cpu_relax() #17
  %16 = load %struct.dentry*, %struct.dentry** %dentry44, align 8
  %sequence.i = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i64 0, i32 1, i32 0, i32 0
  %17 = load volatile i32, i32* %sequence.i, align 4
  %and46 = and i32 %17, 1
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %while.end49, label %while.body48

while.end49:                                      ; preds = %while.body48, %while.cond42.preheader
  %.lcssa308 = phi i32 [ %15, %while.cond42.preheader ], [ %17, %while.body48 ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !33
  %seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 6
  store i32 %.lcssa308, i32* %seq, align 8
  %root_seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 16
  store i32 %.lcssa308, i32* %root_seq, align 8
  br label %cleanup207

if.else:                                          ; preds = %if.end34
  %path = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0
  call void @path_get(%struct.path* noundef %path) #17
  br label %cleanup207

if.end56:                                         ; preds = %while.end19
  %mnt = getelementptr inbounds %struct.path, %struct.path* %root57, i64 0, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %mnt, align 8
  %18 = load i8, i8* %1, align 1
  %cmp59 = icmp eq i8 %18, 47
  %and62 = and i32 %spec.select, 1048576
  %tobool63.not = icmp eq i32 %and62, 0
  %or.cond = select i1 %cmp59, i1 %tobool63.not, i1 false
  br i1 %or.cond, label %if.then64, label %if.end78

if.then64:                                        ; preds = %if.end56
  %call65 = call fastcc i32 @nd_jump_root(%struct.nameidata* noundef %nd) #17
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %cleanup207, label %if.then74, !prof !10

if.then74:                                        ; preds = %if.then64
  %conv75 = sext i32 %call65 to i64
  %call76 = call fastcc i8* @ERR_PTR(i64 noundef %conv75) #17
  br label %cleanup207

if.end78:                                         ; preds = %if.end56
  %dfd = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 17
  %19 = load i32, i32* %dfd, align 4
  %cmp79 = icmp eq i32 %19, -100
  br i1 %cmp79, label %if.then81, label %if.else130

if.then81:                                        ; preds = %if.end78
  %20 = call i64 asm "mrs $0, sp_el0", "=r"() #19
  %21 = inttoptr i64 %20 to %struct.task_struct*
  %fs123 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i64 0, i32 83
  %22 = load %struct.fs_struct*, %struct.fs_struct** %fs123, align 8
  br i1 %tobool6.not, label %if.end190.thread, label %if.then84

if.then84:                                        ; preds = %if.then81
  %seq116 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 6
  %seq92 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %22, i64 0, i32 2
  %sequence.i299 = getelementptr inbounds %struct.seqcount_spinlock, %struct.seqcount_spinlock* %seq92, i64 0, i32 0, i32 0
  %pwd = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %22, i64 0, i32 6
  %23 = bitcast %struct.nameidata* %nd to i8*
  %24 = bitcast %struct.path* %pwd to i8*
  %dentry102 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %inode104 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  %seqcount.i = getelementptr inbounds %struct.seqcount_spinlock, %struct.seqcount_spinlock* %seq92, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %while.end114, %if.then84
  %25 = load volatile i32, i32* %sequence.i299, align 4
  %and94324 = and i32 %25, 1
  %tobool95.not325 = icmp eq i32 %and94324, 0
  br i1 %tobool95.not325, label %while.end97, label %while.body96

while.body96:                                     ; preds = %do.body, %while.body96
  call fastcc void @cpu_relax() #17
  %26 = load volatile i32, i32* %sequence.i299, align 4
  %and94 = and i32 %26, 1
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %while.end97, label %while.body96

while.end97:                                      ; preds = %while.body96, %do.body
  %.lcssa = phi i32 [ %25, %do.body ], [ %26, %while.body96 ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %23, i8* noundef align 8 dereferenceable(16) %24, i64 16, i1 false)
  %27 = load %struct.dentry*, %struct.dentry** %dentry102, align 8
  %d_inode103 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i64 0, i32 5
  %28 = load %struct.inode*, %struct.inode** %d_inode103, align 8
  store %struct.inode* %28, %struct.inode** %inode104, align 8
  %sequence.i300328 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i64 0, i32 1, i32 0, i32 0
  %29 = load volatile i32, i32* %sequence.i300328, align 4
  %and111329 = and i32 %29, 1
  %tobool112.not330 = icmp eq i32 %and111329, 0
  br i1 %tobool112.not330, label %while.end114, label %while.body113

while.body113:                                    ; preds = %while.end97, %while.body113
  call fastcc void @cpu_relax() #17
  %30 = load %struct.dentry*, %struct.dentry** %dentry102, align 8
  %sequence.i300 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i64 0, i32 1, i32 0, i32 0
  %31 = load volatile i32, i32* %sequence.i300, align 4
  %and111 = and i32 %31, 1
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %while.end114, label %while.body113

while.end114:                                     ; preds = %while.body113, %while.end97
  %.lcssa306 = phi i32 [ %29, %while.end97 ], [ %31, %while.body113 ]
  store i32 %.lcssa306, i32* %seq116, align 8
  %call119 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %.lcssa) #17
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end190, label %do.body

if.else130:                                       ; preds = %if.end78
  %call132 = call fastcc [2 x i64] @fdget_raw(i32 noundef %19) #17
  %call132.fca.0.extract = extractvalue [2 x i64] %call132, 0
  %tobool134.not = icmp eq i64 %call132.fca.0.extract, 0
  br i1 %tobool134.not, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.else130
  %call136 = call fastcc i8* @ERR_PTR(i64 noundef -9) #17
  br label %cleanup207

if.end137:                                        ; preds = %if.else130
  %32 = inttoptr i64 %call132.fca.0.extract to %struct.file*
  %f_path = getelementptr inbounds %struct.file, %struct.file* %32, i64 0, i32 1
  %33 = load i8, i8* %1, align 1
  %tobool141.not = icmp eq i8 %33, 0
  br i1 %tobool141.not, label %if.end155, label %land.lhs.true142

land.lhs.true142:                                 ; preds = %if.end137
  %dentry139 = getelementptr inbounds %struct.file, %struct.file* %32, i64 0, i32 1, i32 1
  %34 = load %struct.dentry*, %struct.dentry** %dentry139, align 8
  %call143 = call fastcc i1 @d_can_lookup(%struct.dentry* noundef %34) #17
  br i1 %call143, label %if.end155, label %if.then153, !prof !10

if.then153:                                       ; preds = %land.lhs.true142
  call fastcc void @fdput([2 x i64] %call132) #17
  %call154 = call fastcc i8* @ERR_PTR(i64 noundef -20) #17
  br label %cleanup207

if.end155:                                        ; preds = %land.lhs.true142, %if.end137
  %35 = bitcast %struct.nameidata* %nd to i8*
  %36 = bitcast %struct.path* %f_path to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %35, i8* noundef align 8 dereferenceable(16) %36, i64 16, i1 false)
  br i1 %tobool6.not, label %if.else181, label %if.then161

if.then161:                                       ; preds = %if.end155
  %dentry163 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %37 = load %struct.dentry*, %struct.dentry** %dentry163, align 8
  %d_inode164 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i64 0, i32 5
  %38 = load %struct.inode*, %struct.inode** %d_inode164, align 8
  %inode165 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  store %struct.inode* %38, %struct.inode** %inode165, align 8
  %sequence.i301320 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i64 0, i32 1, i32 0, i32 0
  %39 = load volatile i32, i32* %sequence.i301320, align 4
  %and174321 = and i32 %39, 1
  %tobool175.not322 = icmp eq i32 %and174321, 0
  br i1 %tobool175.not322, label %while.end177, label %while.body176

while.body176:                                    ; preds = %if.then161, %while.body176
  call fastcc void @cpu_relax() #17
  %40 = load %struct.dentry*, %struct.dentry** %dentry163, align 8
  %sequence.i301 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i64 0, i32 1, i32 0, i32 0
  %41 = load volatile i32, i32* %sequence.i301, align 4
  %and174 = and i32 %41, 1
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %while.end177, label %while.body176

while.end177:                                     ; preds = %while.body176, %if.then161
  %.lcssa307 = phi i32 [ %39, %if.then161 ], [ %41, %while.body176 ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !35
  %seq180 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 6
  store i32 %.lcssa307, i32* %seq180, align 8
  br label %cleanup188

if.else181:                                       ; preds = %if.end155
  %path156 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0
  call void @path_get(%struct.path* noundef %path156) #17
  %dentry184 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %42 = load %struct.dentry*, %struct.dentry** %dentry184, align 8
  %d_inode185 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i64 0, i32 5
  %43 = load %struct.inode*, %struct.inode** %d_inode185, align 8
  %inode186 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  store %struct.inode* %43, %struct.inode** %inode186, align 8
  br label %cleanup188

cleanup188:                                       ; preds = %while.end177, %if.else181
  call fastcc void @fdput([2 x i64] %call132) #17
  br label %if.end190

if.end190:                                        ; preds = %while.end114, %cleanup188
  %and191 = and i32 %spec.select, 1572864
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %cleanup207, label %if.then193

if.end190.thread:                                 ; preds = %if.then81
  %path124 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0
  call fastcc void @get_fs_pwd(%struct.fs_struct* noundef %22, %struct.path* noundef %path124) #17
  %dentry126 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %44 = load %struct.dentry*, %struct.dentry** %dentry126, align 8
  %d_inode127 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i64 0, i32 5
  %45 = load %struct.inode*, %struct.inode** %d_inode127, align 8
  %inode128 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  store %struct.inode* %45, %struct.inode** %inode128, align 8
  %and191304 = and i32 %spec.select, 1572864
  %tobool192.not305 = icmp eq i32 %and191304, 0
  br i1 %tobool192.not305, label %cleanup207, label %if.then193.thread

if.then193.thread:                                ; preds = %if.end190.thread
  %46 = bitcast %struct.path* %root57 to i8*
  %47 = bitcast %struct.nameidata* %nd to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %46, i8* noundef align 8 dereferenceable(16) %47, i64 16, i1 false)
  br label %if.else201

if.then193:                                       ; preds = %if.end190
  %48 = bitcast %struct.path* %root57 to i8*
  %49 = bitcast %struct.nameidata* %nd to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %48, i8* noundef align 8 dereferenceable(16) %49, i64 16, i1 false)
  br i1 %tobool6.not, label %if.else201, label %if.then198

if.then198:                                       ; preds = %if.then193
  %seq199 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 6
  %50 = load i32, i32* %seq199, align 8
  %root_seq200 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 16
  store i32 %50, i32* %root_seq200, align 8
  br label %cleanup207

if.else201:                                       ; preds = %if.then193.thread, %if.then193
  call void @path_get(%struct.path* noundef %root57) #17
  %51 = load i32, i32* %state, align 4
  %or204 = or i32 %51, 2
  store i32 %or204, i32* %state, align 4
  br label %cleanup207

cleanup207:                                       ; preds = %if.then135, %if.then153, %if.end190.thread, %if.end190, %if.else201, %if.then198, %if.then64, %if.then32, %if.else, %while.end49, %if.then74, %if.then
  %retval.2 = phi i8* [ %call, %if.then ], [ %call76, %if.then74 ], [ %call33, %if.then32 ], [ %1, %if.else ], [ %1, %while.end49 ], [ %1, %if.then64 ], [ %1, %if.then198 ], [ %1, %if.else201 ], [ %1, %if.end190 ], [ %1, %if.end190.thread ], [ %call136, %if.then135 ], [ %call154, %if.then153 ]
  ret i8* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @handle_lookup_down(%struct.nameidata* noundef %nd) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %1) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dentry2 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry2, align 8
  %inode = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  %3 = load %struct.inode*, %struct.inode** %inode, align 8
  %seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 6
  %4 = load i32, i32* %seq, align 8
  %call3 = call fastcc i8* @step_into(%struct.nameidata* noundef %nd, i32 noundef 4, %struct.dentry* noundef %2, %struct.inode* noundef %3, i32 noundef %4) #17
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %call3) #17
  %conv = trunc i64 %call4 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @link_path_walk(i8* noundef %name, %struct.nameidata* noundef %nd) unnamed_addr #0 {
entry:
  %this = alloca %struct.qstr, align 8
  %last_type = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 9
  store i32 1, i32* %last_type, align 4
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %or = or i32 %0, 16
  store i32 %or, i32* %flags, align 8
  %call = call fastcc i1 @IS_ERR(i8* noundef %name) #17
  br i1 %call, label %if.then, label %while.cond

if.then:                                          ; preds = %entry
  %call1 = call fastcc i64 @PTR_ERR(i8* noundef %name) #17
  %conv = trunc i64 %call1 to i32
  br label %cleanup151

while.cond:                                       ; preds = %entry, %while.body
  %name.addr.0 = phi i8* [ %incdec.ptr, %while.body ], [ %name, %entry ]
  %1 = load i8, i8* %name.addr.0, align 1
  switch i8 %1, label %for.cond.preheader [
    i8 47, label %while.body
    i8 0, label %if.then4
  ]

for.cond.preheader:                               ; preds = %while.cond
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call6232 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %2) #17
  %call7233 = call fastcc i32 @may_lookup(%struct.user_namespace* noundef %call6232, %struct.nameidata* noundef %nd) #17
  %tobool8.not234 = icmp eq i32 %call7233, 0
  br i1 %tobool8.not234, label %if.end10.lr.ph, label %cleanup151

if.end10.lr.ph:                                   ; preds = %for.cond.preheader
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %3 = bitcast %struct.dentry** %dentry to i8**
  %state = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 5
  %4 = bitcast %struct.qstr* %this to i8*
  %hash_len46 = getelementptr inbounds %struct.qstr, %struct.qstr* %this, i64 0, i32 0, i32 0
  %name47 = getelementptr inbounds %struct.qstr, %struct.qstr* %this, i64 0, i32 1
  %hash_len60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1, i32 0, i32 0
  %name62 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1, i32 1
  %stack = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 12
  br label %if.end10

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr i8, i8* %name.addr.0, i64 1
  br label %while.cond

if.then4:                                         ; preds = %while.cond
  %dir_mode = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 19
  store i16 0, i16* %dir_mode, align 4
  br label %cleanup151

if.end10:                                         ; preds = %if.end10.lr.ph, %cleanup145
  %depth.0236 = phi i32 [ 0, %if.end10.lr.ph ], [ %depth.2, %cleanup145 ]
  %name.addr.1235 = phi i8* [ %name.addr.0, %if.end10.lr.ph ], [ %name.addr.9, %cleanup145 ]
  %5 = load i8*, i8** %3, align 8
  %call12 = call fastcc i64 @hash_name(i8* noundef %5, i8* noundef %name.addr.1235) #17
  %6 = load i8, i8* %name.addr.1235, align 1
  %cmp14 = icmp eq i8 %6, 46
  br i1 %cmp14, label %if.then16, label %if.then32, !prof !36

if.then16:                                        ; preds = %if.end10
  %shr = lshr i64 %call12, 32
  %conv17 = trunc i64 %shr to i32
  switch i32 %conv17, label %if.then32 [
    i32 2, label %sw.bb
    i32 1, label %if.end59
  ]

sw.bb:                                            ; preds = %if.then16
  %arrayidx18 = getelementptr i8, i8* %name.addr.1235, i64 1
  %7 = load i8, i8* %arrayidx18, align 1
  %cmp20 = icmp eq i8 %7, 46
  br i1 %cmp20, label %if.then22, label %if.then32, !prof !36

if.then22:                                        ; preds = %sw.bb
  %8 = load i32, i32* %state, align 4
  %or23 = or i32 %8, 4
  store i32 %or23, i32* %state, align 4
  br label %if.end59

if.then32:                                        ; preds = %if.then16, %sw.bb, %if.end10
  %9 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %10 = load i32, i32* %state, align 4
  %and = and i32 %10, -5
  store i32 %and, i32* %state, align 4
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i64 0, i32 0
  %11 = load i32, i32* %d_flags, align 8
  %and36 = and i32 %11, 1
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end59, label %if.then45, !prof !10

if.then45:                                        ; preds = %if.then32
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #18
  store i64 %call12, i64* %hash_len46, align 8
  store i8* %name.addr.1235, i8** %name47, align 8
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i64 0, i32 8
  %12 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_hash = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %12, i64 0, i32 2
  %13 = load i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, %struct.qstr*)** %d_hash, align 16
  %call48 = call i32 %13(%struct.dentry* noundef %9, %struct.qstr* noundef nonnull %this) #16
  %cmp49 = icmp slt i32 %call48, 0
  %14 = load i64, i64* %hash_len46, align 8
  %15 = load i8*, i8** %name47, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #18
  br i1 %cmp49, label %cleanup151, label %if.end59

if.end59:                                         ; preds = %if.then45, %if.then32, %if.then16, %if.then22
  %type.0219 = phi i32 [ 3, %if.then22 ], [ 2, %if.then16 ], [ 0, %if.then32 ], [ 0, %if.then45 ]
  %name.addr.5 = phi i8* [ %name.addr.1235, %if.then22 ], [ %name.addr.1235, %if.then16 ], [ %name.addr.1235, %if.then32 ], [ %15, %if.then45 ]
  %hash_len.3 = phi i64 [ %call12, %if.then22 ], [ %call12, %if.then16 ], [ %call12, %if.then32 ], [ %14, %if.then45 ]
  store i64 %hash_len.3, i64* %hash_len60, align 8
  store i8* %name.addr.5, i8** %name62, align 8
  store i32 %type.0219, i32* %last_type, align 4
  %shr64 = lshr i64 %hash_len.3, 32
  %add.ptr = getelementptr i8, i8* %name.addr.5, i64 %shr64
  %16 = load i8, i8* %add.ptr, align 1
  %tobool66.not = icmp eq i8 %16, 0
  br i1 %tobool66.not, label %OK, label %do.body

do.body:                                          ; preds = %if.end59, %do.body
  %name.addr.6 = phi i8* [ %incdec.ptr69, %do.body ], [ %add.ptr, %if.end59 ]
  %incdec.ptr69 = getelementptr i8, i8* %name.addr.6, i64 1
  %17 = load i8, i8* %incdec.ptr69, align 1
  switch i8 %17, label %if.end103 [
    i8 47, label %do.body
    i8 0, label %OK
  ], !prof !37

OK:                                               ; preds = %do.body, %if.end59
  %tobool91.not = icmp eq i32 %depth.0236, 0
  br i1 %tobool91.not, label %if.then92, label %if.end98

if.then92:                                        ; preds = %OK
  %inode = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  %18 = load %struct.inode*, %struct.inode** %inode, align 8
  %call93 = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %18) #17
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 18, i32 0
  store i32 %call93, i32* %tmp.sroa.0.0..sroa_idx, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %18, i64 0, i32 0
  %19 = load i16, i16* %i_mode, align 8
  %dir_mode95 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 19
  store i16 %19, i16* %dir_mode95, align 4
  %20 = load i32, i32* %flags, align 8
  %and97 = and i32 %20, -17
  store i32 %and97, i32* %flags, align 8
  br label %cleanup151

if.end98:                                         ; preds = %OK
  %21 = load %struct.saved*, %struct.saved** %stack, align 8
  %dec = add i32 %depth.0236, -1
  %idxprom = sext i32 %dec to i64
  %name100 = getelementptr %struct.saved, %struct.saved* %21, i64 %idxprom, i32 2
  %22 = load i8*, i8** %name100, align 8
  br label %if.end103

if.end103:                                        ; preds = %do.body, %if.end98
  %.sink = phi i32 [ 0, %if.end98 ], [ 2, %do.body ]
  %name.addr.8 = phi i8* [ %22, %if.end98 ], [ %incdec.ptr69, %do.body ]
  %depth.1 = phi i32 [ %dec, %if.end98 ], [ %depth.0236, %do.body ]
  %call102 = call fastcc i8* @walk_component(%struct.nameidata* noundef %nd, i32 noundef %.sink) #17
  %tobool104.not = icmp eq i8* %call102, null
  br i1 %tobool104.not, label %if.end122, label %if.then112, !prof !10

if.then112:                                       ; preds = %if.end103
  %call113 = call fastcc i1 @IS_ERR(i8* noundef nonnull %call102) #17
  br i1 %call113, label %if.then114, label %if.end117

if.then114:                                       ; preds = %if.then112
  %call115 = call fastcc i64 @PTR_ERR(i8* noundef nonnull %call102) #17
  %conv116 = trunc i64 %call115 to i32
  br label %cleanup151

if.end117:                                        ; preds = %if.then112
  %23 = load %struct.saved*, %struct.saved** %stack, align 8
  %inc = add i32 %depth.1, 1
  %idxprom119 = sext i32 %depth.1 to i64
  %name121 = getelementptr %struct.saved, %struct.saved* %23, i64 %idxprom119, i32 2
  store i8* %name.addr.8, i8** %name121, align 8
  br label %cleanup145

if.end122:                                        ; preds = %if.end103
  %24 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call125 = call fastcc i1 @d_can_lookup(%struct.dentry* noundef %24) #17
  br i1 %call125, label %cleanup145, label %if.then135, !prof !10

if.then135:                                       ; preds = %if.end122
  %25 = load i32, i32* %flags, align 8
  %and137 = and i32 %25, 64
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end143, label %if.then139

if.then139:                                       ; preds = %if.then135
  %call140 = call fastcc i1 @try_to_unlazy(%struct.nameidata* noundef %nd) #17
  br i1 %call140, label %if.end143, label %cleanup151

if.end143:                                        ; preds = %if.then139, %if.then135
  br label %cleanup151

cleanup145:                                       ; preds = %if.end122, %if.end117
  %name.addr.9 = phi i8* [ %call102, %if.end117 ], [ %name.addr.8, %if.end122 ]
  %depth.2 = phi i32 [ %inc, %if.end117 ], [ %depth.1, %if.end122 ]
  %26 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call6 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %26) #17
  %call7 = call fastcc i32 @may_lookup(%struct.user_namespace* noundef %call6, %struct.nameidata* noundef %nd) #17
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup151

cleanup151:                                       ; preds = %cleanup145, %if.then45, %for.cond.preheader, %if.then139, %if.then92, %if.end143, %if.then114, %if.then4, %if.then
  %retval.6 = phi i32 [ %conv, %if.then ], [ 0, %if.then4 ], [ -10, %if.then139 ], [ 0, %if.then92 ], [ -20, %if.end143 ], [ %conv116, %if.then114 ], [ %call7233, %for.cond.preheader ], [ %call7, %cleanup145 ], [ %call48, %if.then45 ]
  ret i32 %retval.6
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @lookup_last(%struct.nameidata* noundef %nd) unnamed_addr #0 {
entry:
  %last_type = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 9
  %0 = load i32, i32* %last_type, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1, i32 1
  %1 = load i8*, i8** %name, align 8
  %2 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1, i32 0
  %3 = bitcast %union.anon.6* %2 to %struct.anon.7*
  %len = getelementptr inbounds %struct.anon.7, %struct.anon.7* %3, i64 0, i32 1
  %4 = load i32, i32* %len, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %6 = load i32, i32* %flags, align 8
  %or = or i32 %6, 3
  store i32 %or, i32* %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call = call fastcc i8* @walk_component(%struct.nameidata* noundef %nd, i32 noundef 1) #17
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @complete_walk(%struct.nameidata* noundef %nd) unnamed_addr #0 {
entry:
  %path = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0
  %dentry1 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 5
  %2 = load i32, i32* %state, align 4
  %and2 = and i32 %2, 1
  %tobool3.not = icmp eq i32 %and2, 0
  %and6 = and i32 %1, 1572864
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %mnt, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then
  %and11 = and i32 %1, -2097153
  store i32 %and11, i32* %flags, align 8
  %call = call fastcc i1 @try_to_unlazy(%struct.nameidata* noundef %nd) #17
  br i1 %call, label %if.end9.if.end14_crit_edge, label %cleanup

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  %.pre = load i32, i32* %flags, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end9.if.end14_crit_edge, %entry
  %3 = phi i32 [ %.pre, %if.end9.if.end14_crit_edge ], [ %1, %entry ]
  %and16 = and i32 %3, 1572864
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end26, label %if.then20, !prof !10

if.then20:                                        ; preds = %if.end14
  %root22 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2
  %call23 = call i1 @path_is_under(%struct.path* noundef %path, %struct.path* noundef %root22) #16
  br i1 %call23, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.then20, %if.end14
  %state27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 5
  %4 = load i32, i32* %state27, align 4
  %and28 = and i32 %4, 4
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end40, !prof !10

if.end40:                                         ; preds = %if.end26
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 0
  %5 = load i32, i32* %d_flags, align 8
  %and41 = and i32 %5, 2048
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %cleanup, label %if.end53, !prof !10

if.end53:                                         ; preds = %if.end40
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 8
  %6 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_weak_revalidate = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %6, i64 0, i32 1
  %7 = load i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)** %d_weak_revalidate, align 8
  %8 = load i32, i32* %flags, align 8
  %call55 = call i32 %7(%struct.dentry* noundef %0, i32 noundef %8) #16
  %cmp = icmp sgt i32 %call55, 0
  br i1 %cmp, label %cleanup, label %if.end58

if.end58:                                         ; preds = %if.end53
  %tobool59.not = icmp eq i32 %call55, 0
  %spec.store.select = select i1 %tobool59.not, i32 -116, i32 %call55
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end40, %if.end26, %if.then20, %if.end9, %if.end58
  %retval.0 = phi i32 [ %spec.store.select, %if.end58 ], [ -10, %if.end9 ], [ -18, %if.then20 ], [ 0, %if.end26 ], [ 0, %if.end40 ], [ 0, %if.end53 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_can_lookup(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #17
  %cmp = icmp eq i32 %call, 2097152
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @terminate_walk(%struct.nameidata* nocapture noundef %nd) unnamed_addr #0 {
entry:
  call fastcc void @drop_links(%struct.nameidata* noundef %nd) #17
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %path = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0
  call void @path_put(%struct.path* noundef %path) #17
  %depth = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 10
  %1 = load i32, i32* %depth, align 8
  %cmp26.not = icmp eq i32 %1, 0
  br i1 %cmp26.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %stack = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %2 = load %struct.saved*, %struct.saved** %stack, align 8
  %idxprom = sext i32 %i.027 to i64
  %link = getelementptr %struct.saved, %struct.saved* %2, i64 %idxprom, i32 0
  call void @path_put(%struct.path* noundef %link) #17
  %inc = add nuw i32 %i.027, 1
  %3 = load i32, i32* %depth, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.then
  %state = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 5
  %4 = load i32, i32* %state, align 4
  %and1 = and i32 %4, 2
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %for.end
  %root = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2
  call void @path_put(%struct.path* noundef %root) #17
  %5 = load i32, i32* %state, align 4
  %and5 = and i32 %5, -3
  store i32 %and5, i32* %state, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  %and7 = and i32 %0, -65
  store i32 %and7, i32* %flags, align 8
  call fastcc void @rcu_read_unlock() #17
  br label %if.end8

if.end8:                                          ; preds = %for.end, %if.then3, %if.else
  %depth9 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 10
  store i32 0, i32* %depth9, align 8
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %mnt, align 8
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  store %struct.dentry* null, %struct.dentry** %dentry, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #18, !srcloc !38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @nd_jump_root(%struct.nameidata* nocapture noundef %nd) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 524288
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !10

if.end:                                           ; preds = %entry
  %and4 = and i32 %0, 262144
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end22, label %if.then13, !prof !10

if.then13:                                        ; preds = %if.end
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %cmp.not = icmp eq %struct.vfsmount* %1, null
  br i1 %cmp.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then13
  %mnt17 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2, i32 0
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt17, align 8
  %cmp18.not = icmp eq %struct.vfsmount* %1, %2
  br i1 %cmp18.not, label %if.end22, label %return

if.end22:                                         ; preds = %if.then13, %land.lhs.true, %if.end
  %root23 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2
  %mnt24 = getelementptr inbounds %struct.path, %struct.path* %root23, i64 0, i32 0
  %3 = load %struct.vfsmount*, %struct.vfsmount** %mnt24, align 8
  %tobool25.not = icmp eq %struct.vfsmount* %3, null
  br i1 %tobool25.not, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end22
  %call = call fastcc i32 @set_root(%struct.nameidata* noundef %nd) #17
  %tobool27.not = icmp eq i32 %call, 0
  br i1 %tobool27.not, label %if.then26.if.end30_crit_edge, label %return

if.then26.if.end30_crit_edge:                     ; preds = %if.then26
  %.pre = load i32, i32* %flags, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then26.if.end30_crit_edge, %if.end22
  %4 = phi i32 [ %.pre, %if.then26.if.end30_crit_edge ], [ %0, %if.end22 ]
  %and32 = and i32 %4, 64
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end30
  %5 = bitcast %struct.nameidata* %nd to i8*
  %6 = bitcast %struct.path* %root23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %5, i8* noundef align 8 dereferenceable(16) %6, i64 16, i1 false)
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %7 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i64 0, i32 5
  %8 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %inode = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  store %struct.inode* %8, %struct.inode** %inode, align 8
  %root_seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 16
  %9 = load i32, i32* %root_seq, align 8
  %seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 6
  store i32 %9, i32* %seq, align 8
  %seqcount.i = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i64 0, i32 1, i32 0
  %call40 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %9) #17
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end62, label %return

if.else:                                          ; preds = %if.end30
  %path54 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0
  call void @path_put(%struct.path* noundef %path54) #17
  %10 = bitcast %struct.nameidata* %nd to i8*
  %11 = bitcast %struct.path* %root23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %10, i8* noundef align 8 dereferenceable(16) %11, i64 16, i1 false)
  call void @path_get(%struct.path* noundef %path54) #17
  %dentry59 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %12 = load %struct.dentry*, %struct.dentry** %dentry59, align 8
  %d_inode60 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i64 0, i32 5
  %13 = load %struct.inode*, %struct.inode** %d_inode60, align 8
  %inode61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  store %struct.inode* %13, %struct.inode** %inode61, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then34, %if.else
  %state = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 5
  %14 = load i32, i32* %state, align 4
  %or = or i32 %14, 4
  store i32 %or, i32* %state, align 4
  br label %return

return:                                           ; preds = %if.then34, %if.then26, %land.lhs.true, %entry, %if.end62
  %retval.3 = phi i32 [ -10, %if.then34 ], [ 0, %if.end62 ], [ %call, %if.then26 ], [ -18, %entry ], [ -18, %land.lhs.true ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !39
  %call = call fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_fs_pwd(%struct.fs_struct* noundef %fs, %struct.path* nocapture noundef %pwd) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %pwd1 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 6
  %0 = bitcast %struct.path* %pwd to i8*
  %1 = bitcast %struct.path* %pwd1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @path_get(%struct.path* noundef %pwd) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget_raw(i32 noundef %fd) unnamed_addr #0 {
entry:
  %call = call i64 @__fdget_raw(i32 noundef %fd) #16
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #17
  ret [2 x i64] %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput([2 x i64] %fd.coerce) unnamed_addr #0 {
entry:
  %fd.coerce.fca.1.extract = extractvalue [2 x i64] %fd.coerce, 1
  %and1 = and i64 %fd.coerce.fca.1.extract, 1
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fd.coerce.fca.0.extract = extractvalue [2 x i64] %fd.coerce, 0
  %0 = inttoptr i64 %fd.coerce.fca.0.extract to %struct.file*
  call void @fput(%struct.file* noundef %0) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @set_root(%struct.nameidata* nocapture noundef %nd) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %fs1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 83
  %2 = load %struct.fs_struct*, %struct.fs_struct** %fs1, align 8
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 1572864
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 933; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !41
  br label %cleanup

if.end18:                                         ; preds = %entry
  %and20 = and i32 %3, 64
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else, label %do.body.preheader

do.body.preheader:                                ; preds = %if.end18
  %root_seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 16
  %seq24 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %2, i64 0, i32 2
  %sequence.i = getelementptr inbounds %struct.seqcount_spinlock, %struct.seqcount_spinlock* %seq24, i64 0, i32 0, i32 0
  %root = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2
  %root30 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %2, i64 0, i32 5
  %4 = bitcast %struct.path* %root to i8*
  %5 = bitcast %struct.path* %root30 to i8*
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2, i32 1
  %seqcount.i = getelementptr inbounds %struct.seqcount_spinlock, %struct.seqcount_spinlock* %seq24, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %while.end38
  %6 = load volatile i32, i32* %sequence.i, align 4
  %and2664 = and i32 %6, 1
  %tobool27.not65 = icmp eq i32 %and2664, 0
  br i1 %tobool27.not65, label %while.end, label %while.body

while.body:                                       ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #17
  %7 = load volatile i32, i32* %sequence.i, align 4
  %and26 = and i32 %7, 1
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %do.body
  %.lcssa = phi i32 [ %6, %do.body ], [ %7, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !42
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %4, i8* noundef align 8 dereferenceable(16) %5, i64 16, i1 false)
  %8 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %sequence.i6267 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i64 0, i32 1, i32 0, i32 0
  %9 = load volatile i32, i32* %sequence.i6267, align 4
  %and3568 = and i32 %9, 1
  %tobool36.not69 = icmp eq i32 %and3568, 0
  br i1 %tobool36.not69, label %while.end38, label %while.body37

while.body37:                                     ; preds = %while.end, %while.body37
  call fastcc void @cpu_relax() #17
  %10 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %sequence.i62 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i64 0, i32 1, i32 0, i32 0
  %11 = load volatile i32, i32* %sequence.i62, align 4
  %and35 = and i32 %11, 1
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %while.end38, label %while.body37

while.end38:                                      ; preds = %while.body37, %while.end
  %.lcssa63 = phi i32 [ %9, %while.end ], [ %11, %while.body37 ]
  store i32 %.lcssa63, i32* %root_seq, align 8
  %call42 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %.lcssa) #17
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %do.body

if.else:                                          ; preds = %if.end18
  %root44 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2
  call fastcc void @get_fs_root(%struct.fs_struct* noundef %2, %struct.path* noundef %root44) #17
  %state = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 5
  %12 = load i32, i32* %state, align 4
  %or = or i32 %12, 2
  store i32 %or, i32* %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end38, %if.then, %if.else
  %retval.0 = phi i32 [ -131, %if.then ], [ 0, %if.else ], [ 0, %while.end38 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_fs_root(%struct.fs_struct* noundef %fs, %struct.path* nocapture noundef %root) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %root1 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %fs, i64 0, i32 5
  %0 = bitcast %struct.path* %root to i8*
  %1 = bitcast %struct.path* %root1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @path_get(%struct.path* noundef %root) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %s, i32 noundef %start) unnamed_addr #11 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  %0 = load volatile i32, i32* %sequence, align 4
  %cmp = icmp ne i32 %0, %start
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #3 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget_raw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @step_into(%struct.nameidata* noundef %nd, i32 noundef %flags, %struct.dentry* noundef %dentry, %struct.inode* noundef %inode, i32 noundef %seq) unnamed_addr #0 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %seq.addr = alloca i32, align 4
  %path = alloca %struct.path, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  store i32 %seq, i32* %seq.addr, align 4
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %call = call fastcc i32 @handle_mounts(%struct.nameidata* noundef %nd, %struct.dentry* noundef %dentry, %struct.path* noundef nonnull %path, %struct.inode** noundef nonnull %inode.addr, i32* noundef nonnull %seq.addr) #17
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry2 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry2, align 8
  %call3 = call fastcc i1 @d_is_symlink(%struct.dentry* noundef %1) #17
  br i1 %call3, label %lor.lhs.false, label %if.then14, !prof !7

lor.lhs.false:                                    ; preds = %if.end
  %and = and i32 %flags, 1
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false11, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %flags8 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %2 = load i32, i32* %flags8, align 8
  %and9 = and i32 %2, 1
  %tobool10.not = icmp ne i32 %and9, 0
  %and12 = and i32 %flags, 4
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond = and i1 %tobool13.not, %tobool10.not
  br i1 %or.cond, label %if.end33, label %if.then14

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %and12.old = and i32 %flags, 4
  %tobool13.not.old = icmp eq i32 %and12.old, 0
  br i1 %tobool13.not.old, label %lor.lhs.false11.if.end33_crit_edge, label %if.then14

lor.lhs.false11.if.end33_crit_edge:               ; preds = %lor.lhs.false11
  %flags34.phi.trans.insert = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %.pre = load i32, i32* %flags34.phi.trans.insert, align 8
  br label %if.end33

if.then14:                                        ; preds = %lor.lhs.false11, %land.lhs.true, %if.end
  %flags15 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %3 = load i32, i32* %flags15, align 8
  %and16 = and i32 %3, 64
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.then14
  %dentry20 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %4 = load %struct.dentry*, %struct.dentry** %dentry20, align 8
  call void @dput(%struct.dentry* noundef %4) #16
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt22 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %6 = load %struct.vfsmount*, %struct.vfsmount** %mnt22, align 8
  %cmp23.not = icmp eq %struct.vfsmount* %5, %6
  br i1 %cmp23.not, label %if.end29, label %if.then25

if.then25:                                        ; preds = %if.then18
  call void @mntput(%struct.vfsmount* noundef %5) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then18, %if.then25, %if.then14
  %7 = bitcast %struct.nameidata* %nd to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %7, i8* noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %8 = load %struct.inode*, %struct.inode** %inode.addr, align 8
  %inode31 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  store %struct.inode* %8, %struct.inode** %inode31, align 8
  %9 = load i32, i32* %seq.addr, align 4
  %seq32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 6
  store i32 %9, i32* %seq32, align 8
  br label %cleanup

if.end33:                                         ; preds = %lor.lhs.false11.if.end33_crit_edge, %land.lhs.true
  %10 = phi i32 [ %.pre, %lor.lhs.false11.if.end33_crit_edge ], [ %2, %land.lhs.true ]
  %and35 = and i32 %10, 64
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end33
  %seqcount.i = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 1, i32 0
  %11 = load i32, i32* %seq.addr, align 4
  %call40 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %11) #17
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end54, label %if.then42

if.then42:                                        ; preds = %if.then37
  %call43 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  br label %cleanup

if.else:                                          ; preds = %if.end33
  %mnt45 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %12 = load %struct.vfsmount*, %struct.vfsmount** %mnt45, align 8
  %mnt47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %13 = load %struct.vfsmount*, %struct.vfsmount** %mnt47, align 8
  %cmp48 = icmp eq %struct.vfsmount* %12, %13
  br i1 %cmp48, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.else
  %call52 = call %struct.vfsmount* @mntget(%struct.vfsmount* noundef %12) #16
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then50, %if.then37
  %14 = load %struct.inode*, %struct.inode** %inode.addr, align 8
  %15 = load i32, i32* %seq.addr, align 4
  %call55 = call fastcc i8* @pick_link(%struct.nameidata* noundef %nd, %struct.path* noundef nonnull %path, %struct.inode* noundef %14, i32 noundef %15, i32 noundef %flags) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then42, %if.end29, %if.then
  %retval.0 = phi i8* [ %call1, %if.then ], [ null, %if.end29 ], [ %call43, %if.then42 ], [ %call55, %if.end54 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @handle_mounts(%struct.nameidata* noundef %nd, %struct.dentry* noundef %dentry, %struct.path* noundef %path, %struct.inode** nocapture noundef %inode, i32* nocapture noundef %seqp) unnamed_addr #0 {
entry:
  %jumped = alloca i8, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %jumped) #18
  store i8 0, i8* %jumped, align 4, !annotation !14
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt2 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  store %struct.vfsmount* %0, %struct.vfsmount** %mnt2, align 8
  %dentry3 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  store %struct.dentry* %dentry, %struct.dentry** %dentry3, align 8
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end25, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %seqp, align 4
  %3 = load %struct.inode*, %struct.inode** %inode, align 8
  %tobool4.not = icmp eq %struct.inode* %3, null
  br i1 %tobool4.not, label %cleanup64, label %if.end, !prof !7

if.end:                                           ; preds = %if.then
  %call = call fastcc i1 @__follow_mount_rcu(%struct.nameidata* noundef %nd, %struct.path* noundef %path, %struct.inode** noundef %inode, i32* noundef %seqp) #17
  br i1 %call, label %cleanup64, label %if.end17, !prof !10

if.end17:                                         ; preds = %if.end
  %call18 = call fastcc i1 @try_to_unlazy_next(%struct.nameidata* noundef %nd, %struct.dentry* noundef %dentry, i32 noundef %2) #17
  br i1 %call18, label %cleanup, label %cleanup64

cleanup:                                          ; preds = %if.end17
  %4 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %mnt2, align 8
  store %struct.dentry* %dentry, %struct.dentry** %dentry3, align 8
  %.pre = load i32, i32* %flags, align 8
  br label %if.end25

if.end25:                                         ; preds = %cleanup, %entry
  %5 = phi i32 [ %.pre, %cleanup ], [ %1, %entry ]
  %total_link_count = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 11
  %call27 = call fastcc i32 @traverse_mounts(%struct.path* noundef %path, i8* noundef nonnull %jumped, i32* noundef %total_link_count, i32 noundef %5) #17
  %6 = load i8, i8* %jumped, align 4, !range !43
  %tobool28.not = icmp eq i8 %6, 0
  br i1 %tobool28.not, label %if.end42, label %if.then29

if.then29:                                        ; preds = %if.end25
  %7 = load i32, i32* %flags, align 8
  %and31 = and i32 %7, 262144
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else, label %if.then51, !prof !10

if.else:                                          ; preds = %if.then29
  %state = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 5
  %8 = load i32, i32* %state, align 4
  %or = or i32 %8, 4
  store i32 %or, i32* %state, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.end25
  %tobool43.not = icmp eq i32 %call27, 0
  br i1 %tobool43.not, label %if.else60, label %if.then51, !prof !10

if.then51:                                        ; preds = %if.then29, %if.end42
  %ret.097 = phi i32 [ %call27, %if.end42 ], [ -18, %if.then29 ]
  %9 = load %struct.dentry*, %struct.dentry** %dentry3, align 8
  call void @dput(%struct.dentry* noundef %9) #16
  %10 = load %struct.vfsmount*, %struct.vfsmount** %mnt2, align 8
  %11 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %cmp.not = icmp eq %struct.vfsmount* %10, %11
  br i1 %cmp.not, label %cleanup64, label %if.then57

if.then57:                                        ; preds = %if.then51
  call void @mntput(%struct.vfsmount* noundef %10) #16
  br label %cleanup64

if.else60:                                        ; preds = %if.end42
  %12 = load %struct.dentry*, %struct.dentry** %dentry3, align 8
  %call62 = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %12) #17
  store %struct.inode* %call62, %struct.inode** %inode, align 8
  store i32 0, i32* %seqp, align 4
  br label %cleanup64

cleanup64:                                        ; preds = %if.end17, %if.end, %if.then, %if.else60, %if.then57, %if.then51
  %retval.1 = phi i32 [ %ret.097, %if.then51 ], [ %ret.097, %if.then57 ], [ 0, %if.else60 ], [ -10, %if.end17 ], [ 0, %if.end ], [ -2, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %jumped) #18
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @pick_link(%struct.nameidata* noundef %nd, %struct.path* nocapture noundef %link, %struct.inode* noundef %inode, i32 noundef %seq, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @reserve_stack(%struct.nameidata* noundef %nd, %struct.path* noundef %link, i32 noundef %seq) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  %flags3 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %0 = load i32, i32* %flags3, align 8
  %and = and i32 %0, 64
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @path_put(%struct.path* noundef %link) #17
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %conv6 = sext i32 %call to i64
  %call7 = call fastcc i8* @ERR_PTR(i64 noundef %conv6) #17
  br label %cleanup143

if.end8:                                          ; preds = %entry
  %stack = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 12
  %1 = load %struct.saved*, %struct.saved** %stack, align 8
  %depth = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 10
  %2 = load i32, i32* %depth, align 8
  %inc = add i32 %2, 1
  store i32 %inc, i32* %depth, align 8
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr %struct.saved, %struct.saved* %1, i64 %idx.ext
  %link9 = getelementptr inbounds %struct.saved, %struct.saved* %add.ptr, i64 0, i32 0
  %3 = bitcast %struct.saved* %add.ptr to i8*
  %4 = bitcast %struct.path* %link to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %3, i8* noundef align 8 dereferenceable(16) %4, i64 16, i1 false)
  %done = getelementptr %struct.saved, %struct.saved* %1, i64 %idx.ext, i32 1
  call fastcc void @clear_delayed_call(%struct.delayed_call* noundef %done) #17
  %seq10 = getelementptr %struct.saved, %struct.saved* %1, i64 %idx.ext, i32 3
  store i32 %seq, i32* %seq10, align 8
  %and11 = and i32 %flags, 1
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end27, label %if.then13

if.then13:                                        ; preds = %if.end8
  %call14 = call fastcc i32 @may_follow_link(%struct.nameidata* noundef %nd, %struct.inode* noundef %inode) #17
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end27, label %if.then23, !prof !10

if.then23:                                        ; preds = %if.then13
  %conv24 = sext i32 %call14 to i64
  %call25 = call fastcc i8* @ERR_PTR(i64 noundef %conv24) #17
  br label %cleanup143

if.end27:                                         ; preds = %if.then13, %if.end8
  %flags28 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %5 = load i32, i32* %flags28, align 8
  %and29 = and i32 %5, 65536
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %lor.lhs.false, label %if.then47, !prof !10

lor.lhs.false:                                    ; preds = %if.end27
  %mnt = getelementptr inbounds %struct.path, %struct.path* %link, i64 0, i32 0
  %6 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_flags = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %6, i64 0, i32 2
  %7 = load i32, i32* %mnt_flags, align 8
  %and38 = and i32 %7, 128
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end49, label %if.then47, !prof !10

if.then47:                                        ; preds = %lor.lhs.false, %if.end27
  %call48 = call fastcc i8* @ERR_PTR(i64 noundef -40) #17
  br label %cleanup143

if.end49:                                         ; preds = %lor.lhs.false
  %and51 = and i32 %5, 64
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end49
  call void @touch_atime(%struct.path* noundef %link9) #16
  call fastcc void @_cond_resched() #17
  br label %if.end65

if.else:                                          ; preds = %if.end49
  %call57 = call i1 @atime_needs_update(%struct.path* noundef %link9, %struct.inode* noundef %inode) #16
  br i1 %call57, label %if.then58, label %if.end65

if.then58:                                        ; preds = %if.else
  %call59 = call fastcc i1 @try_to_unlazy(%struct.nameidata* noundef %nd) #17
  br i1 %call59, label %if.end62, label %if.then60

if.then60:                                        ; preds = %if.then58
  %call61 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  br label %cleanup143

if.end62:                                         ; preds = %if.then58
  call void @touch_atime(%struct.path* noundef %link9) #16
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.end62, %if.then53
  %dentry = getelementptr inbounds %struct.path, %struct.path* %link, i64 0, i32 1
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 40
  %i_link = bitcast %union.anon.87* %8 to i8**
  %9 = load volatile i8*, i8** %i_link, align 8
  %tobool83.not = icmp eq i8* %9, null
  br i1 %tobool83.not, label %if.then84, label %if.end111

if.then84:                                        ; preds = %if.end65
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 5
  %10 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %get_link = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %10, i64 0, i32 1
  %11 = load i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)** %get_link, align 8
  %12 = load i32, i32* %flags28, align 8
  %and86 = and i32 %12, 64
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end104.sink.split, label %if.then88

if.then88:                                        ; preds = %if.then84
  %call90 = call i8* %11(%struct.dentry* noundef null, %struct.inode* noundef %inode, %struct.delayed_call* noundef %done) #16
  %call91 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  %cmp = icmp eq i8* %call90, %call91
  br i1 %cmp, label %land.lhs.true, label %if.end104

land.lhs.true:                                    ; preds = %if.then88
  %call93 = call fastcc i1 @try_to_unlazy(%struct.nameidata* noundef %nd) #17
  br i1 %call93, label %if.end104.sink.split, label %if.end104

if.end104.sink.split:                             ; preds = %if.then84, %land.lhs.true
  %13 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call98 = call i8* %11(%struct.dentry* noundef %13, %struct.inode* noundef %inode, %struct.delayed_call* noundef %done) #16
  br label %if.end104

if.end104:                                        ; preds = %if.end104.sink.split, %if.then88, %land.lhs.true
  %res.0 = phi i8* [ %call91, %land.lhs.true ], [ %call90, %if.then88 ], [ %call98, %if.end104.sink.split ]
  %tobool105.not = icmp eq i8* %res.0, null
  br i1 %tobool105.not, label %all_done, label %if.end107

if.end107:                                        ; preds = %if.end104
  %call108 = call fastcc i1 @IS_ERR(i8* noundef nonnull %res.0) #17
  br i1 %call108, label %cleanup143, label %if.end111

if.end111:                                        ; preds = %if.end107, %if.end65
  %res.1 = phi i8* [ %9, %if.end65 ], [ %res.0, %if.end107 ]
  %14 = load i8, i8* %res.1, align 1
  %cmp113 = icmp eq i8 %14, 47
  br i1 %cmp113, label %if.then115, label %if.end139

if.then115:                                       ; preds = %if.end111
  %call116 = call fastcc i32 @nd_jump_root(%struct.nameidata* noundef %nd) #17
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %while.cond, label %if.then125, !prof !10

if.then125:                                       ; preds = %if.then115
  %conv126 = sext i32 %call116 to i64
  %call127 = call fastcc i8* @ERR_PTR(i64 noundef %conv126) #17
  br label %cleanup143

while.cond:                                       ; preds = %if.then115, %while.cond
  %res.2 = phi i8* [ %incdec.ptr, %while.cond ], [ %res.1, %if.then115 ]
  %incdec.ptr = getelementptr i8, i8* %res.2, i64 1
  %15 = load i8, i8* %incdec.ptr, align 1
  %cmp130 = icmp eq i8 %15, 47
  br i1 %cmp130, label %while.cond, label %if.end139, !prof !7

if.end139:                                        ; preds = %while.cond, %if.end111
  %16 = phi i8 [ %14, %if.end111 ], [ %15, %while.cond ]
  %res.3 = phi i8* [ %res.1, %if.end111 ], [ %incdec.ptr, %while.cond ]
  %tobool140.not = icmp eq i8 %16, 0
  br i1 %tobool140.not, label %all_done, label %cleanup143

all_done:                                         ; preds = %if.end104, %if.end139
  call fastcc void @put_link(%struct.nameidata* noundef %nd) #17
  br label %cleanup143

cleanup143:                                       ; preds = %if.end107, %if.end139, %all_done, %if.then125, %if.then60, %if.then47, %if.then23, %if.end
  %retval.1 = phi i8* [ %call7, %if.end ], [ %call25, %if.then23 ], [ %call48, %if.then47 ], [ %call127, %if.then125 ], [ null, %all_done ], [ %call61, %if.then60 ], [ %res.3, %if.end139 ], [ %res.0, %if.end107 ]
  ret i8* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__follow_mount_rcu(%struct.nameidata* nocapture noundef %nd, %struct.path* noundef %path, %struct.inode** nocapture noundef writeonly %inode, i32* nocapture noundef writeonly %seqp) unnamed_addr #0 {
entry:
  %dentry1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 0
  %1 = load i32, i32* %d_flags, align 8
  %and = and i32 %1, 458752
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup62, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  %flags5 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %2 = load i32, i32* %flags5, align 8
  %and6 = and i32 %2, 262144
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.cond.preheader, label %cleanup62, !prof !10

for.cond.preheader:                               ; preds = %if.end
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %state = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %cleanup54
  %flags.0 = phi i32 [ %13, %cleanup54 ], [ %1, %for.cond.preheader ]
  %dentry.0 = phi %struct.dentry* [ %7, %cleanup54 ], [ %0, %for.cond.preheader ]
  %and17 = and i32 %flags.0, 262144
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end32, label %if.then26, !prof !10

if.then26:                                        ; preds = %for.cond
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.0, i64 0, i32 8
  %3 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_manage = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %3, i64 0, i32 11
  %4 = load i32 (%struct.path*, i1)*, i32 (%struct.path*, i1)** %d_manage, align 8
  %call = call i32 %4(%struct.path* noundef %path, i1 noundef true) #16
  %tobool27.not = icmp eq i32 %call, 0
  br i1 %tobool27.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then26
  %d_flags31 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry.0, i64 0, i32 0
  %5 = load i32, i32* %d_flags31, align 8
  br label %if.end32

cleanup:                                          ; preds = %if.then26
  %cmp = icmp eq i32 %call, -21
  br label %cleanup62

if.end32:                                         ; preds = %cleanup.thread, %for.cond
  %flags.2 = phi i32 [ %flags.0, %for.cond ], [ %5, %cleanup.thread ]
  %and33 = and i32 %flags.2, 65536
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end57, label %if.then35

if.then35:                                        ; preds = %if.end32
  %6 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call36 = call %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef %6, %struct.dentry* noundef %dentry.0) #16
  %tobool37.not = icmp eq %struct.mount* %call36, null
  br i1 %tobool37.not, label %if.end49, label %if.then38

if.then38:                                        ; preds = %if.then35
  %mnt39 = getelementptr inbounds %struct.mount, %struct.mount* %call36, i64 0, i32 3
  store %struct.vfsmount* %mnt39, %struct.vfsmount** %mnt, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt39, i64 0, i32 0
  %7 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  store %struct.dentry* %7, %struct.dentry** %dentry1, align 8
  %8 = load i32, i32* %state, align 4
  %or = or i32 %8, 4
  store i32 %or, i32* %state, align 4
  %sequence.i = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i64 0, i32 1, i32 0, i32 0
  %9 = load volatile i32, i32* %sequence.i, align 4
  %and44102 = and i32 %9, 1
  %tobool45.not103 = icmp eq i32 %and44102, 0
  br i1 %tobool45.not103, label %cleanup54, label %while.body

while.body:                                       ; preds = %if.then38, %while.body
  call fastcc void @cpu_relax() #17
  %10 = load volatile i32, i32* %sequence.i, align 4
  %and44 = and i32 %10, 1
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %cleanup54, label %while.body

if.end49:                                         ; preds = %if.then35
  %m_seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 7
  %11 = load i32, i32* %m_seq, align 4
  %call50 = call fastcc i32 @read_seqretry(i32 noundef %11) #17
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end57, label %cleanup62

cleanup54:                                        ; preds = %while.body, %if.then38
  %.lcssa = phi i32 [ %9, %if.then38 ], [ %10, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !44
  store i32 %.lcssa, i32* %seqp, align 4
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i64 0, i32 5
  %12 = load %struct.inode*, %struct.inode** %d_inode, align 8
  store %struct.inode* %12, %struct.inode** %inode, align 8
  %d_flags48 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i64 0, i32 0
  %13 = load i32, i32* %d_flags48, align 8
  br label %for.cond

if.end57:                                         ; preds = %if.end32, %if.end49
  %and58 = and i32 %flags.2, 131072
  %tobool59.not = icmp eq i32 %and58, 0
  br label %cleanup62

cleanup62:                                        ; preds = %if.end49, %cleanup, %if.end, %entry, %if.end57
  %retval.4 = phi i1 [ %tobool59.not, %if.end57 ], [ %cmp, %cleanup ], [ true, %entry ], [ false, %if.end ], [ false, %if.end49 ]
  ret i1 %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @try_to_unlazy_next(%struct.nameidata* nocapture noundef %nd, %struct.dentry* noundef %dentry, i32 noundef %seq) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !7

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 808; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !45
  unreachable

do.end7:                                          ; preds = %entry
  %and9 = and i32 %0, -65
  store i32 %and9, i32* %flags, align 8
  %call = call fastcc i1 @legitimize_links(%struct.nameidata* noundef %nd) #17
  br i1 %call, label %if.end20, label %out2, !prof !10

if.end20:                                         ; preds = %do.end7
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %m_seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 7
  %2 = load i32, i32* %m_seq, align 4
  %call21 = call i1 @legitimize_mnt(%struct.vfsmount* noundef %1, i32 noundef %2) #16
  br i1 %call21, label %if.end32, label %out2, !prof !10

if.end32:                                         ; preds = %if.end20
  %dentry34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %3 = load %struct.dentry*, %struct.dentry** %dentry34, align 8
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i64 0, i32 7
  %call35 = call i32 @lockref_get_not_dead(%struct.lockref* noundef %d_lockref) #16
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %out1, label %if.end47, !prof !7

if.end47:                                         ; preds = %if.end32
  %d_lockref48 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7
  %call49 = call i32 @lockref_get_not_dead(%struct.lockref* noundef %d_lockref48) #16
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %out, label %if.end61, !prof !7

if.end61:                                         ; preds = %if.end47
  %seqcount.i = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 1, i32 0
  %call63 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %seq) #17
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end73, label %out_dput, !prof !10

if.end73:                                         ; preds = %if.end61
  %call74 = call fastcc i1 @legitimize_root(%struct.nameidata* noundef %nd) #17
  br i1 %call74, label %if.end85, label %out_dput, !prof !10

if.end85:                                         ; preds = %if.end73
  call fastcc void @rcu_read_unlock() #17
  br label %return

out2:                                             ; preds = %if.end20, %do.end7
  %mnt87 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %mnt87, align 8
  br label %out1

out1:                                             ; preds = %if.end32, %out2
  %dentry89 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  store %struct.dentry* null, %struct.dentry** %dentry89, align 8
  br label %out

out:                                              ; preds = %if.end47, %out1
  call fastcc void @rcu_read_unlock() #17
  br label %return

out_dput:                                         ; preds = %if.end73, %if.end61
  call fastcc void @rcu_read_unlock() #17
  call void @dput(%struct.dentry* noundef %dentry) #16
  br label %return

return:                                           ; preds = %out_dput, %out, %if.end85
  %retval.0 = phi i1 [ false, %out ], [ false, %out_dput ], [ true, %if.end85 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_backing_inode(%struct.dentry* nocapture noundef readonly %upper) unnamed_addr #4 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %upper, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.mount* @__lookup_mnt(%struct.vfsmount* noundef, %struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqretry(i32 noundef %start) unnamed_addr #0 {
entry:
  %call1 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0), i32 noundef %start) #17
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @legitimize_links(%struct.nameidata* nocapture noundef %nd) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 2097152
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then, !prof !10

for.cond.preheader:                               ; preds = %entry
  %depth3 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 10
  %1 = load i32, i32* %depth3, align 8
  %cmp33.not = icmp eq i32 %1, 0
  br i1 %cmp33.not, label %cleanup17, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %stack = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 12
  br label %for.body

if.then:                                          ; preds = %entry
  call fastcc void @drop_links(%struct.nameidata* noundef %nd) #17
  %depth = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 10
  store i32 0, i32* %depth, align 8
  br label %cleanup17

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %2 = load %struct.saved*, %struct.saved** %stack, align 8
  %idx.ext = sext i32 %i.034 to i64
  %link = getelementptr %struct.saved, %struct.saved* %2, i64 %idx.ext, i32 0
  %seq = getelementptr %struct.saved, %struct.saved* %2, i64 %idx.ext, i32 3
  %3 = load i32, i32* %seq, align 8
  %call = call fastcc i1 @legitimize_path(%struct.nameidata* noundef %nd, %struct.path* noundef %link, i32 noundef %3) #17
  br i1 %call, label %for.inc, label %if.then14, !prof !10

if.then14:                                        ; preds = %for.body
  call fastcc void @drop_links(%struct.nameidata* noundef %nd) #17
  %add = add nuw i32 %i.034, 1
  store i32 %add, i32* %depth3, align 8
  br label %cleanup17

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.034, 1
  %4 = load i32, i32* %depth3, align 8
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %for.body, label %cleanup17

cleanup17:                                        ; preds = %for.inc, %for.cond.preheader, %if.then14, %if.then
  %retval.2 = phi i1 [ false, %if.then ], [ false, %if.then14 ], [ true, %for.cond.preheader ], [ true, %for.inc ]
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @legitimize_mnt(%struct.vfsmount* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_get_not_dead(%struct.lockref* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @legitimize_root(%struct.nameidata* nocapture noundef %nd) unnamed_addr #0 {
entry:
  %root = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2
  %mnt = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %tobool.not = icmp eq %struct.vfsmount* %0, null
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 1572864
  %tobool1.not = icmp eq i32 %and, 0
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 5
  %2 = load i32, i32* %state, align 4
  %and5 = and i32 %2, 1
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %return

if.end8:                                          ; preds = %lor.lhs.false
  %or = or i32 %2, 2
  store i32 %or, i32* %state, align 4
  %root_seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 16
  %3 = load i32, i32* %root_seq, align 8
  %call = call fastcc i1 @legitimize_path(%struct.nameidata* noundef %nd, %struct.path* noundef %root, i32 noundef %3) #17
  br label %return

return:                                           ; preds = %land.lhs.true, %lor.lhs.false, %if.end8
  %retval.0 = phi i1 [ %call, %if.end8 ], [ true, %lor.lhs.false ], [ %tobool1.not, %land.lhs.true ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @drop_links(%struct.nameidata* nocapture noundef readonly %nd) unnamed_addr #0 {
entry:
  %depth = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 10
  %0 = load i32, i32* %depth, align 8
  %tobool.not8 = icmp eq i32 %0, 0
  br i1 %tobool.not8, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %stack = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 12
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %dec9.in = phi i32 [ %0, %while.body.lr.ph ], [ %dec9, %while.body ]
  %dec9 = add i32 %dec9.in, -1
  %1 = load %struct.saved*, %struct.saved** %stack, align 8
  %idx.ext = sext i32 %dec9 to i64
  %done = getelementptr %struct.saved, %struct.saved* %1, i64 %idx.ext, i32 1
  call fastcc void @do_delayed_call(%struct.delayed_call* noundef %done) #17
  call fastcc void @clear_delayed_call(%struct.delayed_call* noundef %done) #17
  %tobool.not = icmp eq i32 %dec9, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @legitimize_path(%struct.nameidata* nocapture noundef readonly %nd, %struct.path* nocapture noundef %path, i32 noundef %seq) unnamed_addr #0 {
entry:
  %m_seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 7
  %0 = load i32, i32* %m_seq, align 4
  %call = call fastcc i1 @__legitimize_path(%struct.path* noundef %path, i32 noundef %seq, i32 noundef %0) #17
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @clear_delayed_call(%struct.delayed_call* nocapture noundef writeonly %call) unnamed_addr #12 {
entry:
  %fn = getelementptr inbounds %struct.delayed_call, %struct.delayed_call* %call, i64 0, i32 0
  store void (i8*)* null, void (i8*)** %fn, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__legitimize_path(%struct.path* nocapture noundef %path, i32 noundef %seq, i32 noundef %mseq) unnamed_addr #0 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call i32 @__legitimize_mnt(%struct.vfsmount* noundef %0, i32 noundef %mseq) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store %struct.vfsmount* null, %struct.vfsmount** %mnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  store %struct.dentry* null, %struct.dentry** %dentry, align 8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %dentry7 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %1 = load %struct.dentry*, %struct.dentry** %dentry7, align 8
  %d_lockref = getelementptr inbounds %struct.dentry, %struct.dentry* %1, i64 0, i32 7
  %call8 = call i32 @lockref_get_not_dead(%struct.lockref* noundef %d_lockref) #16
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then19, label %if.end21, !prof !7

if.then19:                                        ; preds = %if.end6
  store %struct.dentry* null, %struct.dentry** %dentry7, align 8
  br label %cleanup

if.end21:                                         ; preds = %if.end6
  %2 = load %struct.dentry*, %struct.dentry** %dentry7, align 8
  %seqcount.i = getelementptr inbounds %struct.dentry, %struct.dentry* %2, i64 0, i32 1, i32 0
  %call24 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %seq) #17
  %tobool25.not = icmp eq i32 %call24, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %if.end
  %retval.0 = phi i1 [ false, %if.end ], [ false, %if.then19 ], [ %tobool25.not, %if.end21 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__legitimize_mnt(%struct.vfsmount* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !46
  call void @rcu_read_unlock_strict() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @reserve_stack(%struct.nameidata* noundef %nd, %struct.path* nocapture noundef %link, i32 noundef %seq) unnamed_addr #0 {
entry:
  %total_link_count = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 11
  %0 = load i32, i32* %total_link_count, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %total_link_count, align 4
  %cmp = icmp sgt i32 %0, 39
  br i1 %cmp, label %return, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %depth = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 10
  %1 = load i32, i32* %depth, align 8
  %cmp2.not = icmp eq i32 %1, 2
  br i1 %cmp2.not, label %if.end12, label %return, !prof !7

if.end12:                                         ; preds = %if.end
  %stack = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 12
  %2 = load %struct.saved*, %struct.saved** %stack, align 8
  %arraydecay = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 13, i64 0
  %cmp13.not = icmp eq %struct.saved* %2, %arraydecay
  br i1 %cmp13.not, label %if.end23, label %return, !prof !7

if.end23:                                         ; preds = %if.end12
  %call = call fastcc i1 @nd_alloc_stack(%struct.nameidata* noundef %nd) #17
  br i1 %call, label %return, label %if.end32, !prof !10

if.end32:                                         ; preds = %if.end23
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 64
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end47, label %if.then34

if.then34:                                        ; preds = %if.end32
  %call35 = call fastcc i1 @legitimize_path(%struct.nameidata* noundef %nd, %struct.path* noundef %link, i32 noundef %seq) #17
  %call36 = call fastcc i1 @try_to_unlazy(%struct.nameidata* noundef %nd) #17
  %4 = select i1 %call36, i1 %call35, i1 false
  br i1 %4, label %cleanup, label %return

cleanup:                                          ; preds = %if.then34
  %call44 = call fastcc i1 @nd_alloc_stack(%struct.nameidata* noundef %nd) #17
  br i1 %call44, label %return, label %if.end47

if.end47:                                         ; preds = %cleanup, %if.end32
  br label %return

return:                                           ; preds = %if.then34, %cleanup, %if.end23, %if.end12, %if.end, %entry, %if.end47
  %retval.1 = phi i32 [ 0, %cleanup ], [ -12, %if.end47 ], [ -40, %entry ], [ 0, %if.end ], [ 0, %if.end12 ], [ 0, %if.end23 ], [ -10, %if.then34 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @may_follow_link(%struct.nameidata* nocapture noundef readonly %nd, %struct.inode* nocapture noundef readonly %inode) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @sysctl_protected_symlinks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %1) #17
  %call1 = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %inode) #17
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !9
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 80
  %4 = load %struct.cred*, %struct.cred** %cred, align 8
  %coerce.dive4 = getelementptr inbounds %struct.cred, %struct.cred* %4, i64 0, i32 7, i32 0
  %5 = load i32, i32* %coerce.dive4, align 4
  %coerce.val.ii = zext i32 %5 to i64
  %coerce.val.ii6 = zext i32 %call1 to i64
  %call7 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii6) #17
  br i1 %call7, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %dir_mode = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 19
  %6 = load i16, i16* %dir_mode, align 4
  %7 = and i16 %6, 514
  %cmp.not = icmp eq i16 %7, 514
  br i1 %cmp.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end9
  %coerce.dive13 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 18, i32 0
  %8 = load i32, i32* %coerce.dive13, align 8
  %coerce.val.ii14 = zext i32 %8 to i64
  %call15 = call fastcc i1 @uid_valid(i64 %coerce.val.ii14) #17
  br i1 %call15, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end12
  %call22 = call fastcc i1 @uid_eq(i64 %coerce.val.ii14, i64 %coerce.val.ii6) #17
  br i1 %call22, label %cleanup, label %if.end25

if.end25:                                         ; preds = %land.lhs.true, %if.end12
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %9 = load i32, i32* %flags, align 8
  %and26 = and i32 %9, 64
  %tobool27.not = icmp eq i32 %and26, 0
  %spec.select = select i1 %tobool27.not, i32 -13, i32 -10
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %land.lhs.true, %if.end9, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end9 ], [ 0, %land.lhs.true ], [ %spec.select, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(%struct.path* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @atime_needs_update(%struct.path* noundef, %struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @try_to_unlazy(%struct.nameidata* nocapture noundef %nd) unnamed_addr #0 {
entry:
  %path = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !7

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 772; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !47
  unreachable

do.end9:                                          ; preds = %entry
  %and11 = and i32 %1, -65
  store i32 %and11, i32* %flags, align 8
  %call = call fastcc i1 @legitimize_links(%struct.nameidata* noundef %nd) #17
  br i1 %call, label %if.end22, label %out1, !prof !10

if.end22:                                         ; preds = %do.end9
  %seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 6
  %2 = load i32, i32* %seq, align 8
  %call24 = call fastcc i1 @legitimize_path(%struct.nameidata* noundef %nd, %struct.path* noundef %path, i32 noundef %2) #17
  br i1 %call24, label %if.end35, label %out, !prof !10

if.end35:                                         ; preds = %if.end22
  %call36 = call fastcc i1 @legitimize_root(%struct.nameidata* noundef %nd) #17
  br i1 %call36, label %if.end47, label %out, !prof !10

if.end47:                                         ; preds = %if.end35
  call fastcc void @rcu_read_unlock() #17
  %inode = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  %3 = load %struct.inode*, %struct.inode** %inode, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %4 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %cmp.not = icmp eq %struct.inode* %3, %4
  br i1 %cmp.not, label %cleanup, label %do.body58, !prof !10

do.body58:                                        ; preds = %if.end47
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 782; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !48
  unreachable

out1:                                             ; preds = %do.end9
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %mnt, align 8
  store %struct.dentry* null, %struct.dentry** %dentry, align 8
  br label %out

out:                                              ; preds = %if.end35, %if.end22, %out1
  call fastcc void @rcu_read_unlock() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %out
  %retval.0 = phi i1 [ false, %out ], [ true, %if.end47 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_link(%struct.nameidata* nocapture noundef %nd) unnamed_addr #0 {
entry:
  %stack = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 12
  %0 = load %struct.saved*, %struct.saved** %stack, align 8
  %depth = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 10
  %1 = load i32, i32* %depth, align 8
  %dec = add i32 %1, -1
  store i32 %dec, i32* %depth, align 8
  %idx.ext = zext i32 %dec to i64
  %done = getelementptr %struct.saved, %struct.saved* %0, i64 %idx.ext, i32 1
  call fastcc void @do_delayed_call(%struct.delayed_call* noundef %done) #17
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %2 = load i32, i32* %flags, align 8
  %and = and i32 %2, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %link = getelementptr %struct.saved, %struct.saved* %0, i64 %idx.ext, i32 0
  call void @path_put(%struct.path* noundef %link) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @nd_alloc_stack(%struct.nameidata* noundef %nd) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 3264, i32 2592
  %call = call fastcc i8* @kmalloc_array(i32 noundef %cond) #17
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 13, i64 0
  %1 = bitcast %struct.saved* %arraydecay to i8*
  %call5 = call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %1, i64 noundef 96) #16
  %stack = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 12
  %2 = bitcast %struct.saved** %stack to i8**
  store i8* %call, i8** %2, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %3 = xor i1 %tobool1.not, true
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmalloc_array(i32 noundef %flags) unnamed_addr #0 {
entry:
  %and.i.i = and i32 %flags, 17
  %cmp.i21.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i21.i, label %kmalloc.exit, label %if.end.i22.i, !prof !10

if.end.i22.i:                                     ; preds = %entry
  %and2.i.i = and i32 %flags, 1
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i64 1, i64 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %entry, %if.end.i22.i
  %retval.0.i23.i = phi i64 [ 0, %entry ], [ %..i.i, %if.end.i22.i ]
  %arrayidx7.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %retval.0.i23.i, i64 11
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef %flags) #16
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @may_lookup(%struct.user_namespace* noundef %mnt_userns, %struct.nameidata* nocapture noundef %nd) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %inode = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  %1 = load %struct.inode*, %struct.inode** %inode, align 8
  %call = call i32 @inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %1, i32 noundef 129) #17
  %cmp.not = icmp eq i32 %call, -10
  br i1 %cmp.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.then
  %call1 = call fastcc i1 @try_to_unlazy(%struct.nameidata* noundef %nd) #17
  br i1 %call1, label %if.end3, label %return

if.end3:                                          ; preds = %lor.lhs.false, %entry
  %inode4 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  %2 = load %struct.inode*, %struct.inode** %inode4, align 8
  %call5 = call i32 @inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %2, i32 noundef 1) #17
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.then, %if.end3
  %retval.1 = phi i32 [ %call5, %if.end3 ], [ %call, %if.then ], [ -10, %lor.lhs.false ]
  ret i32 %retval.1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i64 @hash_name(i8* noundef %salt, i8* noundef %name) unnamed_addr #14 {
entry:
  %adata = alloca i64, align 8
  %bdata = alloca i64, align 8
  %constants = alloca %struct.word_at_a_time, align 8
  %0 = ptrtoint i8* %salt to i64
  %1 = bitcast i64* %adata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #18
  store i64 0, i64* %adata, align 8, !annotation !14
  %2 = bitcast i64* %bdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #18
  store i64 0, i64* %bdata, align 8, !annotation !14
  %3 = bitcast %struct.word_at_a_time* %constants to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8* noundef align 8 dereferenceable(16) bitcast (%struct.word_at_a_time* @__const.hash_name.constants to i8*), i64 16, i1 false)
  %call436 = call fastcc i64 @load_unaligned_zeropad(i8* noundef %name) #17
  %xor537 = xor i64 %call436, 3399988123389603631
  %call638 = call fastcc i64 @has_zero(i64 noundef %call436, i64* noundef nonnull %adata, %struct.word_at_a_time* noundef nonnull %constants) #17
  %call739 = call fastcc i64 @has_zero(i64 noundef %xor537, i64* noundef nonnull %bdata, %struct.word_at_a_time* noundef nonnull %constants) #17
  %or40 = or i64 %call739, %call638
  %tobool.not41 = icmp eq i64 %or40, 0
  br i1 %tobool.not41, label %do.body, label %do.end

do.body:                                          ; preds = %entry, %do.body
  %call445 = phi i64 [ %call4, %do.body ], [ %call436, %entry ]
  %len.044 = phi i64 [ %add3, %do.body ], [ 0, %entry ]
  %y.043 = phi i64 [ %mul, %do.body ], [ %0, %entry ]
  %x.042 = phi i64 [ %add, %do.body ], [ 0, %entry ]
  %xor = xor i64 %call445, %x.042
  %xor1 = xor i64 %xor, %y.043
  %call = call fastcc i64 @rol64(i64 noundef %xor, i32 noundef 12) #17
  %add = add i64 %call, %xor1
  %call2 = call fastcc i64 @rol64(i64 noundef %xor1, i32 noundef 45) #17
  %mul = mul i64 %call2, 9
  %add3 = add i64 %len.044, 8
  %add.ptr = getelementptr i8, i8* %name, i64 %add3
  %call4 = call fastcc i64 @load_unaligned_zeropad(i8* noundef %add.ptr) #17
  %xor5 = xor i64 %call4, 3399988123389603631
  %call6 = call fastcc i64 @has_zero(i64 noundef %call4, i64* noundef nonnull %adata, %struct.word_at_a_time* noundef nonnull %constants) #17
  %call7 = call fastcc i64 @has_zero(i64 noundef %xor5, i64* noundef nonnull %bdata, %struct.word_at_a_time* noundef nonnull %constants) #17
  %or = or i64 %call7, %call6
  %tobool.not = icmp eq i64 %or, 0
  br i1 %tobool.not, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %entry
  %x.0.lcssa = phi i64 [ 0, %entry ], [ %add, %do.body ]
  %y.0.lcssa = phi i64 [ %0, %entry ], [ %mul, %do.body ]
  %len.0.lcssa = phi i64 [ 0, %entry ], [ %add3, %do.body ]
  %call4.lcssa = phi i64 [ %call436, %entry ], [ %call4, %do.body ]
  %4 = load i64, i64* %adata, align 8
  %5 = load i64, i64* %bdata, align 8
  %or8 = or i64 %5, %4
  %call9 = call fastcc i64 @create_zero_mask(i64 noundef %or8) #17, !range !15
  %and = and i64 %call9, %call4.lcssa
  %xor10 = xor i64 %and, %x.0.lcssa
  %call11 = call fastcc i64 @find_zero(i64 noundef %call9) #17
  %add12 = add i64 %call11, %len.0.lcssa
  %shl = shl i64 %add12, 32
  %call13 = call fastcc i32 @fold_hash(i64 noundef %xor10, i64 noundef %y.0.lcssa) #17
  %conv = zext i32 %call13 to i64
  %or14 = or i64 %shl, %conv
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #18
  ret i64 %or14
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @walk_component(%struct.nameidata* noundef %nd, i32 noundef %flags) unnamed_addr #0 {
entry:
  %inode = alloca %struct.inode*, align 8
  %seq = alloca i32, align 4
  %0 = bitcast %struct.inode** %inode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store %struct.inode* null, %struct.inode** %inode, align 8, !annotation !14
  %1 = bitcast i32* %seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #18
  store i32 0, i32* %seq, align 4, !annotation !14
  %last_type = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 9
  %2 = load i32, i32* %last_type, align 4
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end6, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  %and = and i32 %flags, 2
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %depth = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 10
  %3 = load i32, i32* %depth, align 8
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  call fastcc void @put_link(%struct.nameidata* noundef %nd) #17
  %.pre = load i32, i32* %last_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.then
  %4 = phi i32 [ %.pre, %if.then4 ], [ %2, %land.lhs.true ], [ %2, %if.then ]
  %call = call fastcc i8* @handle_dots(%struct.nameidata* noundef %nd, i32 noundef %4) #17
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = call fastcc %struct.dentry* @lookup_fast(%struct.nameidata* noundef %nd, %struct.inode** noundef nonnull %inode, i32* noundef nonnull %seq) #17
  %5 = bitcast %struct.dentry* %call7 to i8*
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %5) #17
  br i1 %call8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %tobool12.not = icmp eq %struct.dentry* %call7, null
  br i1 %tobool12.not, label %if.then22, label %if.end30, !prof !7

if.then22:                                        ; preds = %if.end11
  %last = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1
  %dentry23 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %6 = load %struct.dentry*, %struct.dentry** %dentry23, align 8
  %flags24 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %7 = load i32, i32* %flags24, align 8
  %call25 = call fastcc %struct.dentry* @lookup_slow(%struct.qstr* noundef %last, %struct.dentry* noundef %6, i32 noundef %7) #17
  %8 = bitcast %struct.dentry* %call25 to i8*
  %call26 = call fastcc i1 @IS_ERR(i8* noundef %8) #17
  br i1 %call26, label %cleanup, label %if.end30

if.end30:                                         ; preds = %if.then22, %if.end11
  %dentry.0 = phi %struct.dentry* [ %call25, %if.then22 ], [ %call7, %if.end11 ]
  %and31 = and i32 %flags, 2
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %if.end37

land.lhs.true33:                                  ; preds = %if.end30
  %depth34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 10
  %9 = load i32, i32* %depth34, align 8
  %tobool35.not = icmp eq i32 %9, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %land.lhs.true33
  call fastcc void @put_link(%struct.nameidata* noundef %nd) #17
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %land.lhs.true33, %if.end30
  %10 = load %struct.inode*, %struct.inode** %inode, align 8
  %11 = load i32, i32* %seq, align 4
  %call38 = call fastcc i8* @step_into(%struct.nameidata* noundef %nd, i32 noundef %flags, %struct.dentry* noundef %dentry.0, %struct.inode* noundef %10, i32 noundef %11) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end6, %if.end37, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %call38, %if.end37 ], [ %5, %if.end6 ], [ %8, %if.then22 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @handle_dots(%struct.nameidata* noundef %nd, i32 noundef %type) unnamed_addr #0 {
entry:
  %inode = alloca %struct.inode*, align 8
  %seq = alloca i32, align 4
  %cmp = icmp eq i32 %type, 3
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.inode** %inode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store %struct.inode* null, %struct.inode** %inode, align 8, !annotation !14
  %1 = bitcast i32* %seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #18
  store i32 0, i32* %seq, align 4, !annotation !14
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2, i32 0
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %tobool.not = icmp eq %struct.vfsmount* %2, null
  br i1 %tobool.not, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.then
  %call = call fastcc i32 @set_root(%struct.nameidata* noundef %nd) #17
  %conv = sext i32 %call to i64
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #17
  %tobool3.not = icmp eq i8* %call2, null
  br i1 %tobool3.not, label %if.end5, label %cleanup.thread

if.end5:                                          ; preds = %if.then1, %if.then
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 64
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call8 = call fastcc %struct.dentry* @follow_dotdot_rcu(%struct.nameidata* noundef %nd, %struct.inode** noundef nonnull %inode, i32* noundef nonnull %seq) #17
  br label %if.end10

if.else:                                          ; preds = %if.end5
  %call9 = call fastcc %struct.dentry* @follow_dotdot(%struct.nameidata* noundef %nd, %struct.inode** noundef nonnull %inode, i32* noundef nonnull %seq) #17
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %parent.0 = phi %struct.dentry* [ %call8, %if.then7 ], [ %call9, %if.else ]
  %4 = bitcast %struct.dentry* %parent.0 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %4) #17
  br i1 %call11, label %cleanup.thread, label %if.end14

if.end14:                                         ; preds = %if.end10
  %tobool15.not = icmp eq %struct.dentry* %parent.0, null
  br i1 %tobool15.not, label %if.then20, label %if.else24, !prof !7

if.then20:                                        ; preds = %if.end14
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %5 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %inode21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  %6 = load %struct.inode*, %struct.inode** %inode21, align 8
  %seq22 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 6
  %7 = load i32, i32* %seq22, align 8
  %call23 = call fastcc i8* @step_into(%struct.nameidata* noundef %nd, i32 noundef 4, %struct.dentry* noundef %5, %struct.inode* noundef %6, i32 noundef %7) #17
  br label %if.end26

if.else24:                                        ; preds = %if.end14
  %8 = load %struct.inode*, %struct.inode** %inode, align 8
  %9 = load i32, i32* %seq, align 4
  %call25 = call fastcc i8* @step_into(%struct.nameidata* noundef %nd, i32 noundef 4, %struct.dentry* noundef nonnull %parent.0, %struct.inode* noundef %8, i32 noundef %9) #17
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then20
  %error.0 = phi i8* [ %call23, %if.then20 ], [ %call25, %if.else24 ]
  %tobool27.not = icmp eq i8* %error.0, null
  br i1 %tobool27.not, label %if.end36, label %cleanup.thread, !prof !10

if.end36:                                         ; preds = %if.end26
  %10 = load i32, i32* %flags, align 8
  %and38 = and i32 %10, 1572864
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %cleanup, label %if.then47, !prof !10

if.then47:                                        ; preds = %if.end36
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !49
  %m_seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 7
  %11 = load i32, i32* %m_seq, align 4
  %call49 = call fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0), i32 noundef %11) #17
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end60, label %cleanup.thread.sink.split, !prof !10

if.end60:                                         ; preds = %if.then47
  %r_seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 8
  %12 = load i32, i32* %r_seq, align 8
  %call62 = call fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @rename_lock, i64 0, i32 0, i32 0), i32 noundef %12) #17
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cleanup, label %cleanup.thread.sink.split, !prof !10

cleanup.thread.sink.split:                        ; preds = %if.end60, %if.then47
  %call59 = call fastcc i8* @ERR_PTR(i64 noundef -11) #17
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.end10, %if.then1, %if.end26
  %retval.0.ph = phi i8* [ %error.0, %if.end26 ], [ %call2, %if.then1 ], [ %4, %if.end10 ], [ %call59, %cleanup.thread.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  br label %return

cleanup:                                          ; preds = %if.end36, %if.end60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  br label %return

return:                                           ; preds = %entry, %cleanup, %cleanup.thread
  %retval.1 = phi i8* [ %retval.0.ph, %cleanup.thread ], [ null, %cleanup ], [ null, %entry ]
  ret i8* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @lookup_fast(%struct.nameidata* noundef %nd, %struct.inode** nocapture noundef writeonly %inode, i32* nocapture noundef writeonly %seqp) unnamed_addr #0 {
entry:
  %seq = alloca i32, align 4
  %dentry1 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #18
  store i32 0, i32* %seq, align 4, !annotation !14
  %last = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1
  %call = call %struct.dentry* @__d_lookup_rcu(%struct.dentry* noundef %0, %struct.qstr* noundef %last, i32* noundef nonnull %seq) #16
  %tobool2.not = icmp eq %struct.dentry* %call, null
  br i1 %tobool2.not, label %if.then6, label %if.end10, !prof !7

if.then6:                                         ; preds = %if.then
  %call7 = call fastcc i1 @try_to_unlazy(%struct.nameidata* noundef %nd) #17
  br i1 %call7, label %cleanup.thread, label %cleanup.thread.sink.split

if.end10:                                         ; preds = %if.then
  %call11 = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef nonnull %call) #17
  store %struct.inode* %call11, %struct.inode** %inode, align 8
  %seqcount.i = getelementptr inbounds %struct.dentry, %struct.dentry* %call, i64 0, i32 1, i32 0
  %3 = load i32, i32* %seq, align 4
  %call13 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %3) #17
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end24, label %cleanup.thread.sink.split, !prof !10

if.end24:                                         ; preds = %if.end10
  %seqcount.i127 = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 1, i32 0
  %seq27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 6
  %4 = load i32, i32* %seq27, align 8
  %call28 = call fastcc i32 @do___read_seqcount_retry(%struct.seqcount* noundef %seqcount.i127, i32 noundef %4) #17
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end39, label %cleanup.thread.sink.split, !prof !10

if.end39:                                         ; preds = %if.end24
  %5 = load i32, i32* %seq, align 4
  store i32 %5, i32* %seqp, align 4
  %6 = load i32, i32* %flags, align 8
  %call41 = call fastcc i32 @d_revalidate(%struct.dentry* noundef nonnull %call, i32 noundef %6) #17
  %cmp = icmp sgt i32 %call41, 0
  br i1 %cmp, label %cleanup.thread, label %if.end51, !prof !10

if.end51:                                         ; preds = %if.end39
  %7 = load i32, i32* %seq, align 4
  %call52 = call fastcc i1 @try_to_unlazy_next(%struct.nameidata* noundef %nd, %struct.dentry* noundef nonnull %call, i32 noundef %7) #17
  br i1 %call52, label %if.end55, label %cleanup.thread.sink.split

if.end55:                                         ; preds = %if.end51
  %cmp56 = icmp eq i32 %call41, -10
  br i1 %cmp56, label %if.then58, label %cleanup

if.then58:                                        ; preds = %if.end55
  %8 = load i32, i32* %flags, align 8
  %call60 = call fastcc i32 @d_revalidate(%struct.dentry* noundef nonnull %call, i32 noundef %8) #17
  br label %cleanup

cleanup.thread.sink.split:                        ; preds = %if.end51, %if.end24, %if.end10, %if.then6
  %call9 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  %9 = bitcast i8* %call9 to %struct.dentry*
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.then6, %if.end39
  %retval.0.ph = phi %struct.dentry* [ %call, %if.end39 ], [ null, %if.then6 ], [ %9, %cleanup.thread.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #18
  br label %cleanup95

cleanup:                                          ; preds = %if.end55, %if.then58
  %status.1 = phi i32 [ %call60, %if.then58 ], [ %call41, %if.end55 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #18
  br label %if.end78

if.else:                                          ; preds = %entry
  %last62 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1
  %call63 = call %struct.dentry* @__d_lookup(%struct.dentry* noundef %0, %struct.qstr* noundef %last62) #16
  %tobool64.not = icmp eq %struct.dentry* %call63, null
  br i1 %tobool64.not, label %cleanup95, label %if.end75, !prof !7

if.end75:                                         ; preds = %if.else
  %10 = load i32, i32* %flags, align 8
  %call77 = call fastcc i32 @d_revalidate(%struct.dentry* noundef nonnull %call63, i32 noundef %10) #17
  br label %if.end78

if.end78:                                         ; preds = %cleanup, %if.end75
  %dentry.0 = phi %struct.dentry* [ %call, %cleanup ], [ %call63, %if.end75 ]
  %status.2 = phi i32 [ %status.1, %cleanup ], [ %call77, %if.end75 ]
  %cmp79 = icmp slt i32 %status.2, 1
  br i1 %cmp79, label %if.then88, label %cleanup95, !prof !7

if.then88:                                        ; preds = %if.end78
  %tobool89.not = icmp eq i32 %status.2, 0
  br i1 %tobool89.not, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.then88
  call void @d_invalidate(%struct.dentry* noundef nonnull %dentry.0) #16
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.then88
  call void @dput(%struct.dentry* noundef nonnull %dentry.0) #16
  %conv92 = sext i32 %status.2 to i64
  %call93 = call fastcc i8* @ERR_PTR(i64 noundef %conv92) #17
  %11 = bitcast i8* %call93 to %struct.dentry*
  br label %cleanup95

cleanup95:                                        ; preds = %cleanup.thread, %if.end78, %if.else, %if.end91
  %retval.1 = phi %struct.dentry* [ %11, %if.end91 ], [ null, %if.else ], [ %dentry.0, %if.end78 ], [ %retval.0.ph, %cleanup.thread ]
  ret %struct.dentry* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @follow_dotdot_rcu(%struct.nameidata* nocapture noundef %nd, %struct.inode** nocapture noundef writeonly %inodep, i32* nocapture noundef writeonly %seqp) unnamed_addr #0 {
entry:
  %path6 = alloca %struct.path, align 8
  %seq = alloca i32, align 4
  %path = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0
  %root = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2
  %call = call fastcc i32 @path_equal(%struct.path* noundef %path, %struct.path* noundef %root) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %in_root

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %1, i64 0, i32 0
  %2 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp = icmp eq %struct.dentry* %0, %2
  br i1 %cmp, label %if.then5, label %if.end41, !prof !7

if.then5:                                         ; preds = %if.end
  %3 = bitcast %struct.path* %path6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !14
  %4 = bitcast i32* %seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18
  store i32 0, i32* %seq, align 4, !annotation !14
  %call9 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %1) #17
  %call11 = call fastcc i1 @choose_mountpoint_rcu(%struct.mount* noundef %call9, %struct.path* noundef %root, %struct.path* noundef nonnull %path6, i32* noundef nonnull %seq) #17
  br i1 %call11, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.then5
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %5 = load i32, i32* %flags, align 8
  %and = and i32 %5, 262144
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end24, label %cleanup.thread, !prof !10

if.end24:                                         ; preds = %if.end13
  %6 = bitcast %struct.nameidata* %nd to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %6, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %dentry26 = getelementptr inbounds %struct.path, %struct.path* %path6, i64 0, i32 1
  %7 = load %struct.dentry*, %struct.dentry** %dentry26, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i64 0, i32 5
  %8 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %inode = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  store %struct.inode* %8, %struct.inode** %inode, align 8
  %9 = load i32, i32* %seq, align 4
  %seq27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 6
  store i32 %9, i32* %seq27, align 8
  %m_seq = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 7
  %10 = load i32, i32* %m_seq, align 4
  %call28 = call fastcc i32 @read_seqretry(i32 noundef %10) #17
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup.thread133, label %cleanup.thread, !prof !10

cleanup.thread133:                                ; preds = %if.end24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #18
  %.pre = load %struct.dentry*, %struct.dentry** %dentry, align 8
  br label %if.end41

cleanup.thread:                                   ; preds = %if.end24, %if.end13
  %call23 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  %retval.0.ph = bitcast i8* %call23 to %struct.dentry*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #18
  br label %cleanup106

cleanup:                                          ; preds = %if.then5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #18
  br label %in_root

if.end41:                                         ; preds = %cleanup.thread133, %if.end
  %11 = phi %struct.dentry* [ %.pre, %cleanup.thread133 ], [ %0, %if.end ]
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i64 0, i32 3
  %12 = load %struct.dentry*, %struct.dentry** %d_parent, align 8
  %d_inode44 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i64 0, i32 5
  %13 = load %struct.inode*, %struct.inode** %d_inode44, align 8
  store %struct.inode* %13, %struct.inode** %inodep, align 8
  %sequence.i = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i64 0, i32 1, i32 0, i32 0
  %14 = load volatile i32, i32* %sequence.i, align 4
  %and46136 = and i32 %14, 1
  %tobool47.not137 = icmp eq i32 %and46136, 0
  br i1 %tobool47.not137, label %while.end, label %while.body

while.body:                                       ; preds = %if.end41, %while.body
  call fastcc void @cpu_relax() #17
  %15 = load volatile i32, i32* %sequence.i, align 4
  %and46 = and i32 %15, 1
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end41
  %.lcssa = phi i32 [ %14, %if.end41 ], [ %15, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !50
  store i32 %.lcssa, i32* %seqp, align 4
  %seqcount.i = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i64 0, i32 1, i32 0
  %seq52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 6
  %16 = load i32, i32* %seq52, align 8
  %call53 = call fastcc i32 @do_read_seqcount_retry(%struct.seqcount* noundef %seqcount.i, i32 noundef %16) #17
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end64, label %if.then62, !prof !10

if.then62:                                        ; preds = %while.end
  %call63 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  %17 = bitcast i8* %call63 to %struct.dentry*
  br label %cleanup106

if.end64:                                         ; preds = %while.end
  %18 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call67 = call fastcc i1 @path_connected(%struct.vfsmount* noundef %18, %struct.dentry* noundef %12) #17
  br i1 %call67, label %cleanup106, label %if.then77, !prof !10

if.then77:                                        ; preds = %if.end64
  %call78 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  %19 = bitcast i8* %call78 to %struct.dentry*
  br label %cleanup106

in_root:                                          ; preds = %cleanup, %entry
  %m_seq80 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 7
  %20 = load i32, i32* %m_seq80, align 4
  %call81 = call fastcc i32 @read_seqretry(i32 noundef %20) #17
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end92, label %if.then90, !prof !10

if.then90:                                        ; preds = %in_root
  %call91 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  %21 = bitcast i8* %call91 to %struct.dentry*
  br label %cleanup106

if.end92:                                         ; preds = %in_root
  %flags93 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %22 = load i32, i32* %flags93, align 8
  %and94 = and i32 %22, 524288
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %cleanup106, label %if.then103, !prof !10

if.then103:                                       ; preds = %if.end92
  %call104 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  %23 = bitcast i8* %call104 to %struct.dentry*
  br label %cleanup106

cleanup106:                                       ; preds = %cleanup.thread, %if.end92, %if.end64, %if.then103, %if.then90, %if.then77, %if.then62
  %retval.1 = phi %struct.dentry* [ %21, %if.then90 ], [ %23, %if.then103 ], [ %17, %if.then62 ], [ %19, %if.then77 ], [ %12, %if.end64 ], [ null, %if.end92 ], [ %retval.0.ph, %cleanup.thread ]
  ret %struct.dentry* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @follow_dotdot(%struct.nameidata* nocapture noundef %nd, %struct.inode** nocapture noundef writeonly %inodep, i32* nocapture noundef writeonly %seqp) unnamed_addr #0 {
entry:
  %path6 = alloca %struct.path, align 8
  %path = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0
  %root = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 2
  %call = call fastcc i32 @path_equal(%struct.path* noundef %path, %struct.path* noundef %root) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %in_root

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %1, i64 0, i32 0
  %2 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp = icmp eq %struct.dentry* %0, %2
  br i1 %cmp, label %if.then5, label %if.end28, !prof !7

if.then5:                                         ; preds = %if.end
  %3 = bitcast %struct.path* %path6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !14
  %call9 = call fastcc %struct.mount* @real_mount(%struct.vfsmount* noundef %1) #17
  %call11 = call fastcc i1 @choose_mountpoint(%struct.mount* noundef %call9, %struct.path* noundef %root, %struct.path* noundef nonnull %path6) #17
  br i1 %call11, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.then5
  call void @path_put(%struct.path* noundef %path) #17
  %4 = bitcast %struct.nameidata* %nd to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %4, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %dentry16 = getelementptr inbounds %struct.path, %struct.path* %path6, i64 0, i32 1
  %5 = load %struct.dentry*, %struct.dentry** %dentry16, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i64 0, i32 5
  %6 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %inode = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 3
  store %struct.inode* %6, %struct.inode** %inode, align 8
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %7 = load i32, i32* %flags, align 8
  %and = and i32 %7, 262144
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %cleanup.thread84, label %cleanup.thread, !prof !10

cleanup.thread84:                                 ; preds = %if.end13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #18
  %.pre = load %struct.dentry*, %struct.dentry** %dentry, align 8
  br label %if.end28

cleanup.thread:                                   ; preds = %if.end13
  %call26 = call fastcc i8* @ERR_PTR(i64 noundef -18) #17
  %8 = bitcast i8* %call26 to %struct.dentry*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #18
  br label %cleanup64

cleanup:                                          ; preds = %if.then5
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #18
  br label %in_root

if.end28:                                         ; preds = %cleanup.thread84, %if.end
  %9 = phi %struct.dentry* [ %.pre, %cleanup.thread84 ], [ %0, %if.end ]
  %call31 = call %struct.dentry* @dget_parent(%struct.dentry* noundef %9) #16
  %10 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call34 = call fastcc i1 @path_connected(%struct.vfsmount* noundef %10, %struct.dentry* noundef %call31) #17
  br i1 %call34, label %if.end46, label %if.then44, !prof !10

if.then44:                                        ; preds = %if.end28
  call void @dput(%struct.dentry* noundef %call31) #16
  %call45 = call fastcc i8* @ERR_PTR(i64 noundef -2) #17
  %11 = bitcast i8* %call45 to %struct.dentry*
  br label %cleanup64

if.end46:                                         ; preds = %if.end28
  store i32 0, i32* %seqp, align 4
  %d_inode47 = getelementptr inbounds %struct.dentry, %struct.dentry* %call31, i64 0, i32 5
  %12 = load %struct.inode*, %struct.inode** %d_inode47, align 8
  store %struct.inode* %12, %struct.inode** %inodep, align 8
  br label %cleanup64

in_root:                                          ; preds = %cleanup, %entry
  %flags48 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %13 = load i32, i32* %flags48, align 8
  %and49 = and i32 %13, 524288
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end60, label %if.then58, !prof !10

if.then58:                                        ; preds = %in_root
  %call59 = call fastcc i8* @ERR_PTR(i64 noundef -18) #17
  %14 = bitcast i8* %call59 to %struct.dentry*
  br label %cleanup64

if.end60:                                         ; preds = %in_root
  %dentry62 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %15 = load %struct.dentry*, %struct.dentry** %dentry62, align 8
  %call63 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %15) #17
  br label %cleanup64

cleanup64:                                        ; preds = %cleanup.thread, %if.end60, %if.then58, %if.end46, %if.then44
  %retval.1 = phi %struct.dentry* [ %14, %if.then58 ], [ null, %if.end60 ], [ %11, %if.then44 ], [ %call31, %if.end46 ], [ %8, %cleanup.thread ]
  ret %struct.dentry* %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @path_equal(%struct.path* nocapture noundef readonly %path1, %struct.path* nocapture noundef readonly %path2) unnamed_addr #4 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path1, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path2, i64 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %cmp = icmp eq %struct.vfsmount* %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path1, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %dentry2 = getelementptr inbounds %struct.path, %struct.path* %path2, i64 0, i32 1
  %3 = load %struct.dentry*, %struct.dentry** %dentry2, align 8
  %cmp3 = icmp eq %struct.dentry* %2, %3
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @choose_mountpoint_rcu(%struct.mount* noundef readonly %m, %struct.path* nocapture noundef readonly %root, %struct.path* nocapture noundef writeonly %path, i32* nocapture noundef writeonly %seqp) unnamed_addr #0 {
entry:
  %dentry = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 1
  %mnt = getelementptr inbounds %struct.path, %struct.path* %root, i64 0, i32 0
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %m.addr.0 = phi %struct.mount* [ %m, %entry ], [ %1, %if.end ]
  %call = call fastcc i32 @mnt_has_parent(%struct.mount* noundef %m.addr.0) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %mnt_mountpoint = getelementptr inbounds %struct.mount, %struct.mount* %m.addr.0, i64 0, i32 2
  %0 = load %struct.dentry*, %struct.dentry** %mnt_mountpoint, align 8
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %m.addr.0, i64 0, i32 1
  %1 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %cmp = icmp eq %struct.dentry* %2, %0
  br i1 %cmp, label %land.rhs, label %if.end

land.rhs:                                         ; preds = %while.body
  %3 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt1 = getelementptr inbounds %struct.mount, %struct.mount* %1, i64 0, i32 3
  %cmp2 = icmp eq %struct.vfsmount* %3, %mnt1
  br i1 %cmp2, label %return, label %if.end, !prof !7

if.end:                                           ; preds = %while.body, %land.rhs
  %mnt5 = getelementptr inbounds %struct.mount, %struct.mount* %1, i64 0, i32 3
  %mnt_root = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %mnt5, i64 0, i32 0
  %4 = load %struct.dentry*, %struct.dentry** %mnt_root, align 8
  %cmp6.not = icmp eq %struct.dentry* %0, %4
  br i1 %cmp6.not, label %while.cond, label %if.then8

if.then8:                                         ; preds = %if.end
  %mnt10 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  store %struct.vfsmount* %mnt5, %struct.vfsmount** %mnt10, align 8
  %dentry11 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  store %struct.dentry* %0, %struct.dentry** %dentry11, align 8
  %sequence.i = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 1, i32 0, i32 0
  %5 = load volatile i32, i32* %sequence.i, align 4
  %and37 = and i32 %5, 1
  %tobool14.not38 = icmp eq i32 %and37, 0
  br i1 %tobool14.not38, label %cleanup.thread34, label %while.body15

while.body15:                                     ; preds = %if.then8, %while.body15
  call fastcc void @cpu_relax() #17
  %6 = load volatile i32, i32* %sequence.i, align 4
  %and = and i32 %6, 1
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %cleanup.thread34, label %while.body15

cleanup.thread34:                                 ; preds = %while.body15, %if.then8
  %.lcssa = phi i32 [ %5, %if.then8 ], [ %6, %while.body15 ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !51
  store i32 %.lcssa, i32* %seqp, align 4
  br label %return

return:                                           ; preds = %land.rhs, %while.cond, %cleanup.thread34
  %retval.2 = phi i1 [ true, %cleanup.thread34 ], [ false, %while.cond ], [ false, %land.rhs ]
  ret i1 %retval.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @mnt_has_parent(%struct.mount* noundef readonly %mnt) unnamed_addr #4 {
entry:
  %mnt_parent = getelementptr inbounds %struct.mount, %struct.mount* %mnt, i64 0, i32 1
  %0 = load %struct.mount*, %struct.mount** %mnt_parent, align 8
  %cmp = icmp ne %struct.mount* %0, %mnt
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @choose_mountpoint(%struct.mount* noundef %m, %struct.path* nocapture noundef readonly %root, %struct.path* nocapture noundef %path) unnamed_addr #0 {
entry:
  %seq = alloca i32, align 4
  call fastcc void @__rcu_read_lock() #16
  %0 = bitcast i32* %seq to i8*
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  store i32 0, i32* %seq, align 4, !annotation !14
  %call = call fastcc i32 @read_seqbegin() #17
  %call1 = call fastcc i1 @choose_mountpoint_rcu(%struct.mount* noundef %m, %struct.path* noundef %root, %struct.path* noundef %path, i32* noundef nonnull %seq) #17
  br i1 %call1, label %if.else, label %if.then, !prof !10

if.then:                                          ; preds = %while.cond
  %call5 = call fastcc i32 @read_seqretry(i32 noundef %call) #17
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %while.end, label %cleanup

if.else:                                          ; preds = %while.cond
  %1 = load i32, i32* %seq, align 4
  %call8 = call fastcc i1 @__legitimize_path(%struct.path* noundef %path, i32 noundef %1, i32 noundef %call) #17
  br i1 %call8, label %while.end, label %if.end17, !prof !10

if.end17:                                         ; preds = %if.else
  call fastcc void @rcu_read_unlock() #17
  call void @path_put(%struct.path* noundef %path) #17
  call fastcc void @__rcu_read_lock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  br label %while.cond

while.end:                                        ; preds = %if.then, %if.else
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  call fastcc void @rcu_read_unlock() #17
  ret i1 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @read_seqbegin() unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0, i32 0), align 4
  %and1 = and i32 %0, 1
  %tobool.not2 = icmp eq i32 %and1, 0
  br i1 %tobool.not2, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  call fastcc void @cpu_relax() #17
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.seqlock_t, %struct.seqlock_t* @mount_lock, i64 0, i32 0, i32 0, i32 0), align 4
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %while.body ]
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !52
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @__d_lookup_rcu(%struct.dentry* noundef, %struct.qstr* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @d_revalidate(%struct.dentry* noundef %dentry, i32 noundef %flags) unnamed_addr #0 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %return, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  %d_op = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 8
  %1 = load %struct.dentry_operations*, %struct.dentry_operations** %d_op, align 8
  %d_revalidate = getelementptr inbounds %struct.dentry_operations, %struct.dentry_operations* %1, i64 0, i32 0
  %2 = load i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)** %d_revalidate, align 64
  %call = call i32 %2(%struct.dentry* noundef %dentry, i32 noundef %flags) #16
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @__d_lookup(%struct.dentry* noundef, %struct.qstr* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @path_is_under(%struct.path* noundef, %struct.path* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__d_entry_type(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 7340032
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @rwsem_is_locked(%struct.rw_semaphore* noundef %sem) unnamed_addr #11 {
entry:
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %cmp = icmp ne i64 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_lookup(%struct.dentry* noundef, %struct.qstr* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.dentry* @d_alloc_parallel(%struct.dentry* noundef, %struct.qstr* noundef, %struct.wait_queue_head* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @d_in_lookup(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 268435456
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @d_lookup_done(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %dentry) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 7, i32 0
  %rlock.i = bitcast %union.anon.8* %0 to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  call void @__d_lookup_done(%struct.dentry* noundef %dentry) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_lock_shared(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @down_read(%struct.rw_semaphore* noundef %i_rwsem) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @inode_unlock_shared(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  call void @up_read(%struct.rw_semaphore* noundef %i_rwsem) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_subdir(%struct.dentry* noundef, %struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i1 @fsuidgid_has_mapping(%struct.super_block* nocapture noundef readnone %sb) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @mapped_fsuid() #17
  %coerce.val.ii = zext i32 %call to i64
  %call3 = call fastcc i1 @kuid_has_mapping(i64 %coerce.val.ii) #17
  br i1 %call3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call5 = call fastcc i32 @mapped_fsgid() #17
  %coerce.val.ii8 = zext i32 %call5 to i64
  %call9 = call fastcc i1 @kgid_has_mapping(i64 %coerce.val.ii8) #17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %call9, %land.rhs ]
  ret i1 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @kuid_has_mapping(i64 %uid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i1 @uid_valid(i64 %coerce.val.ii2) #17
  ret i1 %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @mapped_fsuid() unnamed_addr #7 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 7, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call1 = call fastcc i32 @kuid_from_mnt(i64 %coerce.val.ii) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @kgid_has_mapping(i64 %gid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i1 @gid_valid(i64 %coerce.val.ii2) #17
  ret i1 %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @mapped_fsgid() unnamed_addr #7 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !9
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 8, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 8
  %coerce.val.ii = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %call1 = call fastcc i32 @kgid_from_mnt(i64 %coerce.val.ii) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_from_mnt(i64 %kuid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @from_kuid(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kgid_from_mnt(i64 %kgid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @from_kgid(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kgid(i64 %kgid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_dirent(%struct.inode* nocapture noundef readonly %dir, %struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #11 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #17
  call fastcc void @fsnotify_name(%struct.inode* noundef %dir, %struct.inode* noundef %call) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_name(%struct.inode* nocapture noundef readonly %dir, %struct.inode* nocapture noundef readnone %child) unnamed_addr #11 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !53
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #16
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #16
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #18, !srcloc !54
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !55
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #18, !srcloc !56
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @alloc_empty_file(i32 noundef, %struct.cred* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_tmpfile(%struct.nameidata* noundef %nd, i32 noundef %flags, %struct.open_flags* nocapture noundef readonly %op, %struct.file* noundef %file) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %or = or i32 %flags, 2
  %call = call fastcc i32 @path_lookupat(%struct.nameidata* noundef %nd, i32 noundef %or, %struct.path* noundef nonnull %path) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !10

if.end:                                           ; preds = %entry
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call3 = call i32 @mnt_want_write(%struct.vfsmount* noundef %1) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end13, label %out, !prof !10

if.end13:                                         ; preds = %if.end
  %call15 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %1) #17
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %mode = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 1
  %3 = load i16, i16* %mode, align 4
  %open_flag = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 0
  %4 = load i32, i32* %open_flag, align 4
  %call16 = call %struct.dentry* @vfs_tmpfile(%struct.user_namespace* noundef %call15, %struct.dentry* noundef %2, i16 noundef %3, i32 noundef %4) #17
  %5 = bitcast %struct.dentry* %call16 to i8*
  %call17 = call fastcc i64 @PTR_ERR(i8* noundef %5) #17
  %conv18 = trunc i64 %call17 to i32
  %call19 = call fastcc i1 @IS_ERR(i8* noundef %5) #17
  br i1 %call19, label %out2, label %if.end21

if.end21:                                         ; preds = %if.end13
  call void @dput(%struct.dentry* noundef %2) #16
  store %struct.dentry* %call16, %struct.dentry** %dentry, align 8
  %6 = load i32, i32* %open_flag, align 4
  %call25 = call fastcc i32 @may_open(%struct.user_namespace* noundef %call15, %struct.path* noundef nonnull %path, i32 noundef 0, i32 noundef %6) #17
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %out2

if.then27:                                        ; preds = %if.end21
  %call28 = call i32 @vfs_open(%struct.path* noundef nonnull %path, %struct.file* noundef %file) #16
  br label %out2

out2:                                             ; preds = %if.end21, %if.then27, %if.end13
  %error.0 = phi i32 [ %conv18, %if.end13 ], [ %call25, %if.end21 ], [ %call28, %if.then27 ]
  %7 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mnt_drop_write(%struct.vfsmount* noundef %7) #16
  br label %out

out:                                              ; preds = %if.end, %out2
  %error.1 = phi i32 [ %call3, %if.end ], [ %error.0, %out2 ]
  call void @path_put(%struct.path* noundef nonnull %path) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %error.1, %out ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_o_path(%struct.nameidata* noundef %nd, i32 noundef %flags, %struct.file* noundef %file) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %call = call fastcc i32 @path_lookupat(%struct.nameidata* noundef %nd, i32 noundef %flags, %struct.path* noundef nonnull %path) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @vfs_open(%struct.path* noundef nonnull %path, %struct.file* noundef %file) #16
  call void @path_put(%struct.path* noundef nonnull %path) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %error.0 = phi i32 [ %call, %entry ], [ %call1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @open_last_lookups(%struct.nameidata* noundef %nd, %struct.file* noundef %file, %struct.open_flags* nocapture noundef readonly %op) unnamed_addr #0 {
entry:
  %seq = alloca i32, align 4
  %inode = alloca %struct.inode*, align 8
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %open_flag1 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 0
  %1 = load i32, i32* %open_flag1, align 4
  %2 = bitcast i32* %seq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #18
  store i32 0, i32* %seq, align 4, !annotation !14
  %3 = bitcast %struct.inode** %inode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #18
  store %struct.inode* null, %struct.inode** %inode, align 8, !annotation !14
  %intent = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 3
  %4 = load i32, i32* %intent, align 4
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %5 = load i32, i32* %flags, align 8
  %or = or i32 %5, %4
  store i32 %or, i32* %flags, align 8
  %last_type = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 9
  %6 = load i32, i32* %last_type, align 4
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %depth = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 10
  %7 = load i32, i32* %depth, align 8
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call fastcc void @put_link(%struct.nameidata* noundef %nd) #17
  %.pre = load i32, i32* %last_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %8 = phi i32 [ %.pre, %if.then3 ], [ %6, %if.then ]
  %call = call fastcc i8* @handle_dots(%struct.nameidata* noundef %nd, i32 noundef %8) #17
  br label %cleanup

if.end5:                                          ; preds = %entry
  %and = and i32 %1, 64
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %name = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1, i32 1
  %9 = load i8*, i8** %name, align 8
  %10 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1, i32 0
  %11 = bitcast %union.anon.6* %10 to %struct.anon.7*
  %len = getelementptr inbounds %struct.anon.7, %struct.anon.7* %11, i64 0, i32 1
  %12 = load i32, i32* %len, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr i8, i8* %9, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.then7
  %or12 = or i32 %or, 3
  store i32 %or12, i32* %flags, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then7
  %call14 = call fastcc %struct.dentry* @lookup_fast(%struct.nameidata* noundef %nd, %struct.inode** noundef nonnull %inode, i32* noundef nonnull %seq) #17
  %14 = bitcast %struct.dentry* %call14 to i8*
  %call15 = call fastcc i1 @IS_ERR(i8* noundef %14) #17
  br i1 %call15, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end13
  %tobool19.not = icmp eq %struct.dentry* %call14, null
  br i1 %tobool19.not, label %do.body, label %finish_lookup, !prof !7

do.body:                                          ; preds = %if.end18
  %15 = load i32, i32* %flags, align 8
  %and25 = and i32 %15, 64
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end69, label %do.body35, !prof !10

do.body35:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 3327; .short 0; .popsection; 14471: brk 0x800", ""() #18, !srcloc !57
  unreachable

if.else:                                          ; preds = %if.end5
  %and43 = and i32 %or, 64
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end50, label %if.then45

if.then45:                                        ; preds = %if.else
  %call46 = call fastcc i1 @try_to_unlazy(%struct.nameidata* noundef %nd) #17
  br i1 %call46, label %if.end50, label %if.then47

if.then47:                                        ; preds = %if.then45
  %call48 = call fastcc i8* @ERR_PTR(i64 noundef -10) #17
  br label %cleanup

if.end50:                                         ; preds = %if.then45, %if.else
  %name53 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1, i32 1
  %16 = load i8*, i8** %name53, align 8
  %17 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1, i32 0
  %18 = bitcast %union.anon.6* %17 to %struct.anon.7*
  %len55 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %18, i64 0, i32 1
  %19 = load i32, i32* %len55, align 4
  %idxprom56 = zext i32 %19 to i64
  %arrayidx57 = getelementptr i8, i8* %16, i64 %idxprom56
  %20 = load i8, i8* %arrayidx57, align 1
  %tobool58.not = icmp eq i8 %20, 0
  br i1 %tobool58.not, label %if.end69, label %if.then66, !prof !10

if.then66:                                        ; preds = %if.end50
  %call67 = call fastcc i8* @ERR_PTR(i64 noundef -21) #17
  br label %cleanup

if.end69:                                         ; preds = %if.end50, %do.body
  %and70 = and i32 %1, 579
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end78, label %if.then72

if.then72:                                        ; preds = %if.end69
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %21 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call74 = call i32 @mnt_want_write(%struct.vfsmount* noundef %21) #16
  %tobool75.not = icmp eq i32 %call74, 0
  br label %if.end78

if.end78:                                         ; preds = %if.then72, %if.end69
  %got_write.0.off0 = phi i1 [ %tobool75.not, %if.then72 ], [ false, %if.end69 ]
  %d_inode83 = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %22 = load %struct.inode*, %struct.inode** %d_inode83, align 8
  br i1 %tobool6.not, label %if.else82, label %if.then81

if.then81:                                        ; preds = %if.end78
  call fastcc void @inode_lock(%struct.inode* noundef %22) #17
  br label %if.end84

if.else82:                                        ; preds = %if.end78
  call fastcc void @inode_lock_shared(%struct.inode* noundef %22) #17
  br label %if.end84

if.end84:                                         ; preds = %if.else82, %if.then81
  %call86 = call fastcc %struct.dentry* @lookup_open(%struct.nameidata* noundef %nd, %struct.file* noundef %file, %struct.open_flags* noundef %op, i1 noundef %got_write.0.off0) #17
  %23 = bitcast %struct.dentry* %call86 to i8*
  %call87 = call fastcc i1 @IS_ERR(i8* noundef %23) #17
  br i1 %call87, label %if.end92, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end84
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %24 = load i32, i32* %f_mode, align 4
  %and88 = and i32 %24, 1048576
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end92, label %if.then90

if.then90:                                        ; preds = %land.lhs.true
  %d_inode91 = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %25 = load %struct.inode*, %struct.inode** %d_inode91, align 8
  call fastcc void @fsnotify_create(%struct.inode* noundef %25, %struct.dentry* noundef %call86) #17
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %land.lhs.true, %if.end84
  %d_inode98 = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %26 = load %struct.inode*, %struct.inode** %d_inode98, align 8
  br i1 %tobool6.not, label %if.else97, label %if.then95

if.then95:                                        ; preds = %if.end92
  call fastcc void @inode_unlock(%struct.inode* noundef %26) #17
  br label %if.end99

if.else97:                                        ; preds = %if.end92
  call fastcc void @inode_unlock_shared(%struct.inode* noundef %26) #17
  br label %if.end99

if.end99:                                         ; preds = %if.else97, %if.then95
  br i1 %got_write.0.off0, label %if.then101, label %if.end104

if.then101:                                       ; preds = %if.end99
  %mnt103 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %27 = load %struct.vfsmount*, %struct.vfsmount** %mnt103, align 8
  call void @mnt_drop_write(%struct.vfsmount* noundef %27) #16
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.end99
  br i1 %call87, label %cleanup, label %if.end108

if.end108:                                        ; preds = %if.end104
  %f_mode109 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %28 = load i32, i32* %f_mode109, align 4
  %and110 = and i32 %28, 1572864
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %finish_lookup, label %if.then112

if.then112:                                       ; preds = %if.end108
  %29 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call void @dput(%struct.dentry* noundef %29) #16
  store %struct.dentry* %call86, %struct.dentry** %dentry, align 8
  br label %cleanup

finish_lookup:                                    ; preds = %if.end108, %if.end18
  %dentry2.0 = phi %struct.dentry* [ %call86, %if.end108 ], [ %call14, %if.end18 ]
  %depth118 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 10
  %30 = load i32, i32* %depth118, align 8
  %tobool119.not = icmp eq i32 %30, 0
  br i1 %tobool119.not, label %if.end121, label %if.then120

if.then120:                                       ; preds = %finish_lookup
  call fastcc void @put_link(%struct.nameidata* noundef %nd) #17
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %finish_lookup
  %31 = load %struct.inode*, %struct.inode** %inode, align 8
  %32 = load i32, i32* %seq, align 4
  %call122 = call fastcc i8* @step_into(%struct.nameidata* noundef %nd, i32 noundef 1, %struct.dentry* noundef %dentry2.0, %struct.inode* noundef %31, i32 noundef %32) #17
  %tobool123.not = icmp eq i8* %call122, null
  br i1 %tobool123.not, label %cleanup, label %if.then131, !prof !10

if.then131:                                       ; preds = %if.end121
  %33 = load i32, i32* %flags, align 8
  %and133 = and i32 %33, -1793
  store i32 %and133, i32* %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %if.end13, %if.end121, %if.then131, %if.then112, %if.then66, %if.then47, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %call67, %if.then66 ], [ null, %if.then112 ], [ %call48, %if.then47 ], [ %call122, %if.then131 ], [ null, %if.end121 ], [ %14, %if.end13 ], [ %23, %if.end104 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #18
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_open(%struct.nameidata* noundef %nd, %struct.file* noundef %file, %struct.open_flags* nocapture noundef readonly %op) unnamed_addr #0 {
entry:
  %open_flag1 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 0
  %0 = load i32, i32* %open_flag1, align 4
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %1 = load i32, i32* %f_mode, align 4
  %and = and i32 %1, 1572864
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @complete_walk(%struct.nameidata* noundef %nd) #17
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %entry, %if.then
  %path10 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %2 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call11 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %2) #17
  %and12 = and i32 %0, 64
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end36, label %if.then14

if.then14:                                        ; preds = %if.end9
  %and15 = and i32 %0, 128
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then14
  %3 = load i32, i32* %f_mode, align 4
  %and18 = and i32 %3, 1048576
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %land.lhs.true, %if.then14
  %dentry23 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %4 = load %struct.dentry*, %struct.dentry** %dentry23, align 8
  %call24 = call fastcc i1 @d_is_dir(%struct.dentry* noundef %4) #17
  br i1 %call24, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end21
  %call29 = call fastcc %struct.inode* @d_backing_inode(%struct.dentry* noundef %4) #17
  %call30 = call fastcc i32 @may_create_in_sticky(%struct.nameidata* noundef %nd, %struct.inode* noundef %call29) #17
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %cleanup, !prof !10

if.end36:                                         ; preds = %if.end26, %if.end9
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %5 = load i32, i32* %flags, align 8
  %and37 = and i32 %5, 2
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end44, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.end36
  %dentry41 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %6 = load %struct.dentry*, %struct.dentry** %dentry41, align 8
  %call42 = call fastcc i1 @d_can_lookup(%struct.dentry* noundef %6) #17
  br i1 %call42, label %if.end44, label %cleanup

if.end44:                                         ; preds = %land.lhs.true39, %if.end36
  %acc_mode45 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 2
  %7 = load i32, i32* %acc_mode45, align 4
  %8 = load i32, i32* %f_mode, align 4
  %and47 = and i32 %8, 1048576
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end44
  %and50 = and i32 %0, -513
  br label %if.end66

if.else:                                          ; preds = %if.end44
  %dentry52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %9 = load %struct.dentry*, %struct.dentry** %dentry52, align 8
  %call53 = call fastcc i1 @d_is_reg(%struct.dentry* noundef %9) #17
  %call53.not = xor i1 %call53, true
  %and56 = and i32 %0, 512
  %tobool57.not = icmp eq i32 %and56, 0
  %or.cond = select i1 %call53.not, i1 true, i1 %tobool57.not
  br i1 %or.cond, label %if.end66, label %if.then58

if.then58:                                        ; preds = %if.else
  %10 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call61 = call i32 @mnt_want_write(%struct.vfsmount* noundef %10) #16
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end66, label %cleanup

if.end66:                                         ; preds = %if.then58, %if.else, %if.then49
  %open_flag.0 = phi i32 [ %and50, %if.then49 ], [ %0, %if.else ], [ %0, %if.then58 ]
  %do_truncate.0.off0 = phi i1 [ false, %if.then49 ], [ false, %if.else ], [ true, %if.then58 ]
  %acc_mode.0 = phi i32 [ 0, %if.then49 ], [ %7, %if.else ], [ %7, %if.then58 ]
  %call68 = call fastcc i32 @may_open(%struct.user_namespace* noundef %call11, %struct.path* noundef %path10, i32 noundef %acc_mode.0, i32 noundef %open_flag.0) #17
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true70, label %if.end89

land.lhs.true70:                                  ; preds = %if.end66
  %11 = load i32, i32* %f_mode, align 4
  %and72 = and i32 %11, 524288
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end77, label %if.end82

if.end77:                                         ; preds = %land.lhs.true70
  %call76 = call i32 @vfs_open(%struct.path* noundef %path10, %struct.file* noundef %file) #16
  %tobool78.not = icmp eq i32 %call76, 0
  br i1 %tobool78.not, label %if.end82, label %if.end89

if.end82:                                         ; preds = %land.lhs.true70, %if.end77
  br i1 %do_truncate.0.off0, label %if.then87, label %cleanup

if.then87:                                        ; preds = %if.end82
  %call88 = call fastcc i32 @handle_truncate(%struct.user_namespace* noundef %call11, %struct.file* noundef %file) #17
  br label %if.end89

if.end89:                                         ; preds = %if.end77, %if.end66, %if.then87
  %error.2 = phi i32 [ %call88, %if.then87 ], [ %call76, %if.end77 ], [ %call68, %if.end66 ]
  %cmp = icmp sgt i32 %error.2, 0
  br i1 %cmp, label %if.then107, label %if.end116, !prof !7

if.then107:                                       ; preds = %if.end89
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 3434; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !58
  br label %if.end116

if.end116:                                        ; preds = %if.then107, %if.end89
  %error.3 = phi i32 [ -22, %if.then107 ], [ %error.2, %if.end89 ]
  br i1 %do_truncate.0.off0, label %if.then118, label %cleanup

if.then118:                                       ; preds = %if.end116
  %12 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  call void @mnt_drop_write(%struct.vfsmount* noundef %12) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.end116, %if.then118, %if.then58, %land.lhs.true39, %if.end26, %if.end21, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -17, %land.lhs.true ], [ -21, %if.end21 ], [ %call30, %if.end26 ], [ -20, %land.lhs.true39 ], [ %call61, %if.then58 ], [ %error.3, %if.then118 ], [ %error.3, %if.end116 ], [ 0, %if.end82 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @may_open(%struct.user_namespace* noundef %mnt_userns, %struct.path* noundef %path, i32 noundef %acc_mode, i32 noundef %flag) unnamed_addr #0 {
entry:
  %dentry1 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %tobool.not = icmp eq %struct.inode* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 0
  %2 = load i16, i16* %i_mode, align 8
  %3 = and i16 %2, -4096
  %and = zext i16 %3 to i32
  %4 = add nsw i32 %and, -4096
  %5 = lshr exact i32 %4, 12
  switch i32 %5, label %sw.epilog [
    i32 9, label %cleanup
    i32 3, label %sw.bb2
    i32 5, label %sw.bb11
    i32 1, label %sw.bb11
    i32 0, label %sw.bb14
    i32 11, label %sw.bb14
    i32 7, label %sw.bb20
  ]

sw.bb2:                                           ; preds = %if.end
  %and3 = and i32 %acc_mode, 2
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %sw.bb2
  %and7 = and i32 %acc_mode, 1
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %sw.epilog, label %cleanup

sw.bb11:                                          ; preds = %if.end, %if.end
  %call = call i1 @may_open_dev(%struct.path* noundef %path) #17
  %and15 = and i32 %acc_mode, 1
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond73 = and i1 %tobool16.not, %call
  br i1 %or.cond73, label %if.end18, label %cleanup

sw.bb14:                                          ; preds = %if.end, %if.end
  %and15.old = and i32 %acc_mode, 1
  %tobool16.not.old = icmp eq i32 %and15.old, 0
  br i1 %tobool16.not.old, label %if.end18, label %cleanup

if.end18:                                         ; preds = %sw.bb11, %sw.bb14
  %and19 = and i32 %flag, -513
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  %and21 = and i32 %acc_mode, 1
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %sw.epilog, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb20
  %call23 = call i1 @path_noexec(%struct.path* noundef %path) #16
  br i1 %call23, label %cleanup, label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %land.lhs.true, %if.end6, %if.end, %if.end18
  %flag.addr.0 = phi i32 [ %flag, %if.end ], [ %flag, %land.lhs.true ], [ %flag, %sw.bb20 ], [ %and19, %if.end18 ], [ %flag, %if.end6 ]
  %or = or i32 %acc_mode, 32
  %call27 = call i32 @inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef nonnull %1, i32 noundef %or) #17
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %cleanup

if.end30:                                         ; preds = %sw.epilog
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 4
  %6 = load i32, i32* %i_flags, align 4
  %and31 = and i32 %6, 4
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end45, label %if.then33

if.then33:                                        ; preds = %if.end30
  %and34 = and i32 %flag.addr.0, 3
  %cmp.not = icmp eq i32 %and34, 0
  %and37 = and i32 %flag.addr.0, 1024
  %tobool38.not = icmp ne i32 %and37, 0
  %or.cond.not = or i1 %cmp.not, %tobool38.not
  %and41 = and i32 %flag.addr.0, 512
  %tobool42.not = icmp eq i32 %and41, 0
  %or.cond74 = and i1 %tobool42.not, %or.cond.not
  br i1 %or.cond74, label %if.end45, label %cleanup

if.end45:                                         ; preds = %if.then33, %if.end30
  %and46 = and i32 %flag.addr.0, 262144
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end51, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %if.end45
  %call49 = call i1 @inode_owner_or_capable(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef nonnull %1) #16
  br i1 %call49, label %if.end51, label %cleanup

if.end51:                                         ; preds = %land.lhs.true48, %if.end45
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true48, %if.then33, %sw.epilog, %land.lhs.true, %sw.bb14, %sw.bb11, %if.end6, %sw.bb2, %if.end, %entry, %if.end51
  %retval.0 = phi i32 [ 0, %if.end51 ], [ -2, %entry ], [ -40, %if.end ], [ -21, %sw.bb2 ], [ -13, %if.end6 ], [ -13, %sw.bb11 ], [ -13, %sw.bb14 ], [ -13, %land.lhs.true ], [ %call27, %sw.epilog ], [ -1, %if.then33 ], [ -1, %land.lhs.true48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_open(%struct.path* noundef, %struct.file* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @path_noexec(%struct.path* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @lookup_open(%struct.nameidata* noundef %nd, %struct.file* noundef %file, %struct.open_flags* nocapture noundef readonly %op, i1 noundef %got_write) unnamed_addr #0 {
entry:
  %wq = alloca %struct.wait_queue_head, align 8
  %path = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %open_flag1 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 0
  %2 = load i32, i32* %open_flag1, align 4
  %mode3 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %op, i64 0, i32 1
  %3 = load i16, i16* %mode3, align 4
  %4 = bitcast %struct.wait_queue_head* %wq to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #18
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq, i64 0, i32 1
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %5 = bitcast %struct.wait_queue_head* %wq to i64*
  store i64 0, i64* %5, align 8
  store %struct.list_head* %head, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq, i64 0, i32 1, i32 1
  store %struct.list_head* %head, %struct.list_head** %prev, align 8
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 4
  %6 = load i32, i32* %i_flags, align 4
  %and = and i32 %6, 16
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup165.sink.split, !prof !10

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %7 = load i32, i32* %f_mode, align 4
  %and8 = and i32 %7, -1048577
  store i32 %and8, i32* %f_mode, align 4
  %last = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 1
  %call9 = call %struct.dentry* @d_lookup(%struct.dentry* noundef %0, %struct.qstr* noundef %last) #16
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.end35, %if.end
  %dentry2.0 = phi %struct.dentry* [ %call9, %if.end ], [ null, %if.end35 ]
  %tobool10.not = icmp eq %struct.dentry* %dentry2.0, null
  br i1 %tobool10.not, label %if.then11, label %if.end17

if.then11:                                        ; preds = %for.cond
  %call13 = call %struct.dentry* @d_alloc_parallel(%struct.dentry* noundef %0, %struct.qstr* noundef %last, %struct.wait_queue_head* noundef nonnull %wq) #16
  %8 = bitcast %struct.dentry* %call13 to i8*
  %call14 = call fastcc i1 @IS_ERR(i8* noundef %8) #17
  br i1 %call14, label %cleanup165, label %if.end17

if.end17:                                         ; preds = %if.then11, %for.cond
  %dentry2.1 = phi %struct.dentry* [ %dentry2.0, %for.cond ], [ %call13, %if.then11 ]
  %call18 = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %dentry2.1) #17
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %for.end

if.end21:                                         ; preds = %if.end17
  %9 = load i32, i32* %flags, align 8
  %call22 = call fastcc i32 @d_revalidate(%struct.dentry* noundef %dentry2.1, i32 noundef %9) #17
  %cmp = icmp sgt i32 %call22, 0
  br i1 %cmp, label %for.end, label %if.end32, !prof !10

if.end32:                                         ; preds = %if.end21
  %tobool33.not = icmp eq i32 %call22, 0
  br i1 %tobool33.not, label %if.end35, label %out_dput

if.end35:                                         ; preds = %if.end32
  call void @d_invalidate(%struct.dentry* noundef %dentry2.1) #16
  call void @dput(%struct.dentry* noundef %dentry2.1) #16
  br label %for.cond

for.end:                                          ; preds = %if.end21, %if.end17
  %d_inode36 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry2.1, i64 0, i32 5
  %10 = load %struct.inode*, %struct.inode** %d_inode36, align 8
  %tobool37.not = icmp eq %struct.inode* %10, null
  br i1 %tobool37.not, label %if.end39, label %cleanup165

if.end39:                                         ; preds = %for.end
  br i1 %got_write, label %if.end52, label %if.then50, !prof !10

if.then50:                                        ; preds = %if.end39
  %and51 = and i32 %2, -513
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end39
  %open_flag.0 = phi i32 [ %and51, %if.then50 ], [ %2, %if.end39 ]
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %11 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call54 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %11) #17
  %and55 = and i32 %open_flag.0, 64
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end84, label %if.then57

if.then57:                                        ; preds = %if.end52
  %and58 = and i32 %open_flag.0, 128
  %tobool59.not = icmp eq i32 %and58, 0
  %and61 = and i32 %open_flag.0, -513
  %spec.select = select i1 %tobool59.not, i32 %open_flag.0, i32 %and61
  %12 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %12, i64 0, i32 6
  %13 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i64 0, i32 10
  %14 = load i64, i64* %s_flags, align 16
  %and64 = and i64 %14, 65536
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %if.then66, label %if.end71

if.then66:                                        ; preds = %if.then57
  %call67 = call i32 @current_umask() #16
  %15 = trunc i32 %call67 to i16
  %16 = xor i16 %15, -1
  %conv70 = and i16 %3, %16
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.then57
  %mode.0 = phi i16 [ %3, %if.then57 ], [ %conv70, %if.then66 ]
  br i1 %got_write, label %if.then80, label %if.end84, !prof !10

if.then80:                                        ; preds = %if.end71
  %call82 = call fastcc i32 @may_o_create(%struct.user_namespace* noundef %call54, %struct.path* noundef %path) #17
  br label %if.end84

if.end84:                                         ; preds = %if.end71, %if.then80, %if.end52
  %open_flag.2 = phi i32 [ %spec.select, %if.then80 ], [ %open_flag.0, %if.end52 ], [ %spec.select, %if.end71 ]
  %create_error.0 = phi i32 [ %call82, %if.then80 ], [ 0, %if.end52 ], [ -30, %if.end71 ]
  %mode.1 = phi i16 [ %mode.0, %if.then80 ], [ %3, %if.end52 ], [ %mode.0, %if.end71 ]
  %tobool85.not = icmp eq i32 %create_error.0, 0
  %and87 = and i32 %open_flag.2, -65
  %spec.select247 = select i1 %tobool85.not, i32 %open_flag.2, i32 %and87
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 5
  %17 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %atomic_open = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %17, i64 0, i32 18
  %18 = load i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)** %atomic_open, align 16
  %tobool89.not = icmp eq i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)* %18, null
  br i1 %tobool89.not, label %if.end107, label %if.then90

if.then90:                                        ; preds = %if.end84
  %call91 = call fastcc %struct.dentry* @atomic_open(%struct.nameidata* noundef %nd, %struct.dentry* noundef %dentry2.1, %struct.file* noundef %file, i32 noundef %spec.select247, i16 noundef %mode.1) #17
  br i1 %tobool85.not, label %cleanup165, label %land.lhs.true, !prof !10

land.lhs.true:                                    ; preds = %if.then90
  %call100 = call fastcc i8* @ERR_PTR(i64 noundef -2) #17
  %19 = bitcast i8* %call100 to %struct.dentry*
  %cmp101 = icmp eq %struct.dentry* %call91, %19
  br i1 %cmp101, label %if.then103, label %cleanup165

if.then103:                                       ; preds = %land.lhs.true
  %conv104 = sext i32 %create_error.0 to i64
  br label %cleanup165.sink.split

if.end107:                                        ; preds = %if.end84
  %call108 = call fastcc i32 @d_in_lookup(%struct.dentry* noundef %dentry2.1) #17
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end129, label %if.then110

if.then110:                                       ; preds = %if.end107
  %lookup = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %17, i64 0, i32 0
  %20 = load %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, %struct.dentry* (%struct.inode*, %struct.dentry*, i32)** %lookup, align 64
  %21 = load i32, i32* %flags, align 8
  %call113 = call %struct.dentry* %20(%struct.inode* noundef %1, %struct.dentry* noundef %dentry2.1, i32 noundef %21) #16
  call fastcc void @d_lookup_done(%struct.dentry* noundef %dentry2.1) #17
  %tobool114.not = icmp eq %struct.dentry* %call113, null
  br i1 %tobool114.not, label %if.end129, label %if.then122, !prof !10

if.then122:                                       ; preds = %if.then110
  %22 = bitcast %struct.dentry* %call113 to i8*
  %call123 = call fastcc i1 @IS_ERR(i8* noundef nonnull %22) #17
  br i1 %call123, label %cleanup, label %if.end127

if.end127:                                        ; preds = %if.then122
  call void @dput(%struct.dentry* noundef %dentry2.1) #16
  br label %if.end129

cleanup:                                          ; preds = %if.then122
  %call125 = call fastcc i64 @PTR_ERR(i8* noundef nonnull %22) #17
  %conv126 = trunc i64 %call125 to i32
  br label %out_dput

if.end129:                                        ; preds = %if.then110, %if.end127, %if.end107
  %dentry2.5 = phi %struct.dentry* [ %dentry2.1, %if.end107 ], [ %dentry2.1, %if.then110 ], [ %call113, %if.end127 ]
  %d_inode130 = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry2.5, i64 0, i32 5
  %23 = load %struct.inode*, %struct.inode** %d_inode130, align 8
  %tobool131.not = icmp ne %struct.inode* %23, null
  %and133 = and i32 %spec.select247, 64
  %tobool134.not = icmp eq i32 %and133, 0
  %or.cond = select i1 %tobool131.not, i1 true, i1 %tobool134.not
  br i1 %or.cond, label %if.end149, label %if.then135

if.then135:                                       ; preds = %if.end129
  %24 = load i32, i32* %f_mode, align 4
  %or = or i32 %24, 1048576
  store i32 %or, i32* %f_mode, align 4
  %25 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %create = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %25, i64 0, i32 5
  %26 = load i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)** %create, align 8
  %tobool138.not = icmp eq i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)* %26, null
  br i1 %tobool138.not, label %out_dput, label %if.end140

if.end140:                                        ; preds = %if.then135
  %and143 = and i32 %spec.select247, 128
  %tobool144 = icmp ne i32 %and143, 0
  %call145 = call i32 %26(%struct.user_namespace* noundef %call54, %struct.inode* noundef %1, %struct.dentry* noundef %dentry2.5, i16 noundef %mode.1, i1 noundef %tobool144) #16
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end149, label %out_dput

if.end149:                                        ; preds = %if.end140, %if.end129
  br i1 %tobool85.not, label %cleanup165, label %land.lhs.true158, !prof !10

land.lhs.true158:                                 ; preds = %if.end149
  %27 = load %struct.inode*, %struct.inode** %d_inode130, align 8
  %tobool160.not = icmp eq %struct.inode* %27, null
  br i1 %tobool160.not, label %out_dput, label %cleanup165

out_dput:                                         ; preds = %if.end32, %cleanup, %land.lhs.true158, %if.then135, %if.end140
  %dentry2.6 = phi %struct.dentry* [ %dentry2.1, %cleanup ], [ %dentry2.5, %if.end140 ], [ %dentry2.5, %if.then135 ], [ %dentry2.5, %land.lhs.true158 ], [ %dentry2.1, %if.end32 ]
  %error.3 = phi i32 [ %conv126, %cleanup ], [ %call145, %if.end140 ], [ -13, %if.then135 ], [ %create_error.0, %land.lhs.true158 ], [ %call22, %if.end32 ]
  call void @dput(%struct.dentry* noundef %dentry2.6) #16
  %conv163 = sext i32 %error.3 to i64
  br label %cleanup165.sink.split

cleanup165.sink.split:                            ; preds = %entry, %out_dput, %if.then103
  %conv104.sink = phi i64 [ %conv104, %if.then103 ], [ %conv163, %out_dput ], [ -2, %entry ]
  %call105 = call fastcc i8* @ERR_PTR(i64 noundef %conv104.sink) #17
  %28 = bitcast i8* %call105 to %struct.dentry*
  br label %cleanup165

cleanup165:                                       ; preds = %if.then11, %cleanup165.sink.split, %if.end149, %land.lhs.true158, %if.then90, %land.lhs.true, %for.end
  %retval.0 = phi %struct.dentry* [ %dentry2.1, %for.end ], [ %call91, %land.lhs.true ], [ %call91, %if.then90 ], [ %dentry2.5, %land.lhs.true158 ], [ %dentry2.5, %if.end149 ], [ %28, %cleanup165.sink.split ], [ %call13, %if.then11 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #18
  ret %struct.dentry* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @may_o_create(%struct.user_namespace* noundef %mnt_userns, %struct.path* nocapture noundef readonly %dir) unnamed_addr #0 {
entry:
  %dentry1 = getelementptr inbounds %struct.path, %struct.path* %dir, i64 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 9
  %1 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %call2 = call fastcc i1 @fsuidgid_has_mapping(%struct.super_block* noundef %1) #17
  br i1 %call2, label %if.end4, label %cleanup

if.end4:                                          ; preds = %entry
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %2 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call6 = call i32 @inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %2, i32 noundef 3) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry
  %retval.0 = phi i32 [ -75, %entry ], [ %call6, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.dentry* @atomic_open(%struct.nameidata* nocapture noundef readonly %nd, %struct.dentry* noundef %dentry, %struct.file* noundef %file, i32 noundef %open_flag, i16 noundef %mode) unnamed_addr #0 {
entry:
  %dentry1 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry1, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %flags = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 4
  %2 = load i32, i32* %flags, align 8
  %and = shl i32 %2, 13
  %3 = and i32 %and, 16384
  %4 = or i32 %3, %open_flag
  %dentry2 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 1
  store %struct.dentry* inttoptr (i64 -1 to %struct.dentry*), %struct.dentry** %dentry2, align 8
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  %5 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt5 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1, i32 0
  store %struct.vfsmount* %5, %struct.vfsmount** %mnt5, align 8
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %1, i64 0, i32 5
  %6 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %atomic_open = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %6, i64 0, i32 18
  %7 = load i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)** %atomic_open, align 16
  %call = call fastcc i32 @open_to_namei_flags(i32 noundef %4) #17
  %call6 = call i32 %7(%struct.inode* noundef %1, %struct.dentry* noundef %dentry, %struct.file* noundef %file, i32 noundef %call, i16 noundef %mode) #16
  call fastcc void @d_lookup_done(%struct.dentry* noundef %dentry) #17
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.then70

if.then8:                                         ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %8 = load i32, i32* %f_mode, align 4
  %and9 = and i32 %8, 524288
  %tobool10.not = icmp eq i32 %and9, 0
  %9 = load %struct.dentry*, %struct.dentry** %dentry2, align 8
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then8
  %cmp.not = icmp eq %struct.dentry* %9, %dentry
  br i1 %cmp.not, label %if.end73, label %if.then16, !prof !10

if.then16:                                        ; preds = %if.then11
  call void @dput(%struct.dentry* noundef %dentry) #16
  %10 = load %struct.dentry*, %struct.dentry** %dentry2, align 8
  %call19 = call fastcc %struct.dentry* @dget(%struct.dentry* noundef %10) #17
  br label %if.end73

if.else:                                          ; preds = %if.then8
  %magicptr = ptrtoint %struct.dentry* %9 to i64
  switch i64 %magicptr, label %if.then52 [
    i64 -1, label %if.then37
    i64 0, label %if.end55
  ], !prof !59

if.then37:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/namei.c\22; .popsection; .long 14472b - 14470b; .short 3153; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !60
  br label %if.then70

if.then52:                                        ; preds = %if.else
  call void @dput(%struct.dentry* noundef %dentry) #16
  %11 = load %struct.dentry*, %struct.dentry** %dentry2, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then52
  %dentry.addr.0 = phi %struct.dentry* [ %11, %if.then52 ], [ %dentry, %if.else ]
  %call56 = call fastcc i1 @d_is_negative(%struct.dentry* noundef %dentry.addr.0) #17
  br i1 %call56, label %if.then70, label %if.end73, !prof !7

if.then70:                                        ; preds = %if.end55, %entry, %if.then37
  %error.0 = phi i32 [ %call6, %entry ], [ -5, %if.then37 ], [ -2, %if.end55 ]
  %dentry.addr.1 = phi %struct.dentry* [ %dentry, %entry ], [ %dentry, %if.then37 ], [ %dentry.addr.0, %if.end55 ]
  call void @dput(%struct.dentry* noundef %dentry.addr.1) #16
  %conv71 = sext i32 %error.0 to i64
  %call72 = call fastcc i8* @ERR_PTR(i64 noundef %conv71) #17
  %12 = bitcast i8* %call72 to %struct.dentry*
  br label %if.end73

if.end73:                                         ; preds = %if.end55, %if.then11, %if.then16, %if.then70
  %dentry.addr.2 = phi %struct.dentry* [ %12, %if.then70 ], [ %dentry.addr.0, %if.end55 ], [ %dentry, %if.then11 ], [ %10, %if.then16 ]
  ret %struct.dentry* %dentry.addr.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @open_to_namei_flags(i32 noundef %flag) unnamed_addr #3 {
entry:
  %and = and i32 %flag, 3
  %cmp = icmp eq i32 %and, 3
  %dec = sext i1 %cmp to i32
  %spec.select = add i32 %dec, %flag
  ret i32 %spec.select
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i32 @may_create_in_sticky(%struct.nameidata* nocapture noundef readonly %nd, %struct.inode* nocapture noundef readonly %inode) unnamed_addr #7 {
entry:
  %dir_mode1 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 19
  %0 = load i16, i16* %dir_mode1, align 4
  %dir_uid.sroa.0.0..sroa_idx = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 18, i32 0
  %dir_uid.sroa.0.0.copyload = load i32, i32* %dir_uid.sroa.0.0..sroa_idx, align 8
  %1 = load i32, i32* @sysctl_protected_fifos, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %2 = load i16, i16* %i_mode, align 8
  %3 = and i16 %2, -4096
  %cmp = icmp eq i16 %3, 4096
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* @sysctl_protected_regular, align 4
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %lor.lhs.false11

land.lhs.true5:                                   ; preds = %lor.lhs.false
  %i_mode6 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %5 = load i16, i16* %i_mode6, align 8
  %6 = and i16 %5, -4096
  %cmp9 = icmp eq i16 %6, -32768
  br i1 %cmp9, label %cleanup, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %land.lhs.true5, %lor.lhs.false
  %conv12 = zext i16 %0 to i32
  %and13 = and i32 %conv12, 512
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %cleanup, label %lor.lhs.false19, !prof !10

lor.lhs.false19:                                  ; preds = %lor.lhs.false11
  %call = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %inode) #17
  %coerce.val.ii = zext i32 %call to i64
  %coerce.val.ii22 = zext i32 %dir_uid.sroa.0.0.copyload to i64
  %call23 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii22) #17
  br i1 %call23, label %cleanup, label %do.end

do.end:                                           ; preds = %lor.lhs.false19
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !9
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i64 0, i32 80
  %9 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp26.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %9, i64 0, i32 7, i32 0
  %agg.tmp26.sroa.0.0.copyload = load i32, i32* %agg.tmp26.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii32 = zext i32 %agg.tmp26.sroa.0.0.copyload to i64
  %call35 = call fastcc i1 @uid_eq(i64 %coerce.val.ii32, i64 %coerce.val.ii) #17
  br i1 %call35, label %cleanup, label %if.end

if.end:                                           ; preds = %do.end
  %and38 = and i32 %conv12, 2
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %lor.lhs.false47, label %if.then69, !prof !7

lor.lhs.false47:                                  ; preds = %if.end
  %and49 = and i32 %conv12, 16
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %cleanup, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %lor.lhs.false47
  %cmp52 = icmp sgt i32 %1, 1
  br i1 %cmp52, label %land.lhs.true54, label %lor.lhs.false60

land.lhs.true54:                                  ; preds = %land.lhs.true51
  %i_mode55 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %10 = load i16, i16* %i_mode55, align 8
  %11 = and i16 %10, -4096
  %cmp58 = icmp eq i16 %11, 4096
  br i1 %cmp58, label %if.then69, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %land.lhs.true54, %land.lhs.true51
  %cmp61 = icmp sgt i32 %4, 1
  br i1 %cmp61, label %land.lhs.true63, label %cleanup

land.lhs.true63:                                  ; preds = %lor.lhs.false60
  %i_mode64 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  %12 = load i16, i16* %i_mode64, align 8
  %13 = and i16 %12, -4096
  %cmp67 = icmp eq i16 %13, -32768
  br i1 %cmp67, label %if.then69, label %cleanup

if.then69:                                        ; preds = %land.lhs.true63, %land.lhs.true54, %if.end
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false47, %lor.lhs.false60, %land.lhs.true63, %land.lhs.true, %land.lhs.true5, %lor.lhs.false11, %lor.lhs.false19, %do.end, %if.then69
  %retval.0 = phi i32 [ -13, %if.then69 ], [ 0, %do.end ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false11 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true63 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false47 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_reg(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #17
  %cmp = icmp eq i32 %call, 4194304
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @handle_truncate(%struct.user_namespace* noundef %mnt_userns, %struct.file* noundef %filp) unnamed_addr #0 {
entry:
  %dentry = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 1, i32 1
  %0 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %0, i64 0, i32 5
  %1 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call = call fastcc i32 @get_write_access(%struct.inode* noundef %1) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call5 = call i32 @do_truncate(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %2, i64 noundef 0, i32 noundef 32864, %struct.file* noundef %filp) #16
  call fastcc void @put_write_access(%struct.inode* noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_write_access(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_writecount = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 34
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %i_writecount, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %1 = bitcast %struct.atomic_t* %i_writecount to i8*
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i, %entry
  %c.0.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i, %do.cond.i.i ]
  %cmp.i.i = icmp slt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %atomic_inc_unless_negative.exit, label %do.cond.i.i, !prof !7

do.cond.i.i:                                      ; preds = %do.body.i.i
  %add.i.i = add nuw i32 %c.0.i.i, 1
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i, i32 noundef %add.i.i) #16
  %cmp.not.i.i.i = icmp eq i32 %c.0.i.i, %call11.i.i.i.i
  br i1 %cmp.not.i.i.i, label %atomic_inc_unless_negative.exit, label %do.body.i.i, !prof !10

atomic_inc_unless_negative.exit:                  ; preds = %do.body.i.i, %do.cond.i.i
  %cond = phi i32 [ -26, %do.body.i.i ], [ 0, %do.cond.i.i ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_truncate(%struct.user_namespace* noundef, %struct.dentry* noundef, i64 noundef, i32 noundef, %struct.file* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_write_access(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_writecount = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 34
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %i_writecount) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #18, !srcloc !61
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !62
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mknodat(i32 noundef %dfd, i8* noundef %filename, i16 noundef %mode, i32 noundef %dev) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %filename) #17
  %call1 = call fastcc i32 @do_mknodat(i32 noundef %dfd, %struct.filename* noundef %call, i16 noundef %mode, i32 noundef %dev) #17
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_mknodat(i32 noundef %dfd, %struct.filename* noundef %name, i16 noundef %mode, i32 noundef %dev) unnamed_addr #0 {
entry:
  %path = alloca %struct.path, align 8
  %0 = bitcast %struct.path* %path to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !14
  %call = call fastcc i32 @may_mknod(i16 noundef %mode) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %retry.preheader, label %out1

retry.preheader:                                  ; preds = %entry
  %dentry6 = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 1
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path, i64 0, i32 0
  %and1.i = and i32 %dev, 255
  %shr2.i = lshr i32 %dev, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %1 = shl i32 %dev, 12
  %shl.i = and i32 %1, -1048576
  %or4.i = or i32 %or.i, %shl.i
  br label %retry

retry:                                            ; preds = %retry.preheader, %out2
  %mode.addr.0 = phi i16 [ %mode.addr.1, %out2 ], [ %mode, %retry.preheader ]
  %lookup_flags.0 = phi i32 [ 32, %out2 ], [ 0, %retry.preheader ]
  %call1 = call fastcc %struct.dentry* @filename_create(i32 noundef %dfd, %struct.filename* noundef %name, %struct.path* noundef nonnull %path, i32 noundef %lookup_flags.0) #17
  %2 = bitcast %struct.dentry* %call1 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %2) #17
  br i1 %call3, label %out1.loopexit.split.loop.exit, label %if.end5

if.end5:                                          ; preds = %retry
  %3 = load %struct.dentry*, %struct.dentry** %dentry6, align 8
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %3, i64 0, i32 5
  %4 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %4, i64 0, i32 6
  %5 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i64 0, i32 10
  %6 = load i64, i64* %s_flags, align 16
  %and = and i64 %6, 65536
  %tobool7.not = icmp eq i64 %and, 0
  br i1 %tobool7.not, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end5
  %call9 = call i32 @current_umask() #16
  %7 = trunc i32 %call9 to i16
  %8 = xor i16 %7, -1
  %conv12 = and i16 %mode.addr.0, %8
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end5
  %mode.addr.1 = phi i16 [ %mode.addr.0, %if.end5 ], [ %conv12, %if.then8 ]
  %9 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %call18 = call fastcc %struct.user_namespace* @mnt_user_ns(%struct.vfsmount* noundef %9) #17
  %10 = lshr i16 %mode.addr.1, 12
  %11 = zext i16 %10 to i32
  switch i32 %11, label %out2 [
    i32 0, label %sw.bb
    i32 8, label %sw.bb
    i32 2, label %sw.bb27
    i32 6, label %sw.bb27
    i32 1, label %sw.bb32
    i32 12, label %sw.bb32
  ]

sw.bb:                                            ; preds = %if.end13, %if.end13
  %12 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call23 = call i32 @vfs_create(%struct.user_namespace* noundef %call18, %struct.inode* noundef %12, %struct.dentry* noundef %call1, i16 noundef %mode.addr.1, i1 noundef true) #17
  br label %out2

sw.bb27:                                          ; preds = %if.end13, %if.end13
  %13 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call31 = call i32 @vfs_mknod(%struct.user_namespace* noundef %call18, %struct.inode* noundef %13, %struct.dentry* noundef %call1, i16 noundef %mode.addr.1, i32 noundef %or4.i) #17
  br label %out2

sw.bb32:                                          ; preds = %if.end13, %if.end13
  %14 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %call35 = call i32 @vfs_mknod(%struct.user_namespace* noundef %call18, %struct.inode* noundef %14, %struct.dentry* noundef %call1, i16 noundef %mode.addr.1, i32 noundef 0) #17
  br label %out2

out2:                                             ; preds = %sw.bb, %sw.bb27, %sw.bb32, %if.end13
  %error.0 = phi i32 [ 0, %if.end13 ], [ %call35, %sw.bb32 ], [ %call31, %sw.bb27 ], [ %call23, %sw.bb ]
  call void @done_path_create(%struct.path* noundef nonnull %path, %struct.dentry* noundef %call1) #17
  %conv36 = sext i32 %error.0 to i64
  %call37 = call fastcc i1 @retry_estale(i64 noundef %conv36, i32 noundef %lookup_flags.0) #17
  br i1 %call37, label %retry, label %out1

out1.loopexit.split.loop.exit:                    ; preds = %retry
  %15 = bitcast %struct.dentry* %call1 to i8*
  %call2.le = call fastcc i64 @PTR_ERR(i8* noundef %15) #17
  %conv.le = trunc i64 %call2.le to i32
  br label %out1

out1:                                             ; preds = %out2, %out1.loopexit.split.loop.exit, %entry
  %error.1 = phi i32 [ %call, %entry ], [ %conv.le, %out1.loopexit.split.loop.exit ], [ %error.0, %out2 ]
  call void @putname(%struct.filename* noundef %name) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %error.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @may_mknod(i16 noundef %mode) unnamed_addr #3 {
entry:
  %0 = icmp ult i16 %mode, -12288
  br i1 %0, label %switch.lookup, label %return

switch.lookup:                                    ; preds = %entry
  %1 = lshr i16 %mode, 12
  %2 = zext i16 %1 to i64
  %switch.gep = getelementptr inbounds [13 x i32], [13 x i32]* @switch.table.may_mknod, i64 0, i64 %2
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %return

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mknod(i8* noundef %filename, i16 noundef %mode, i32 noundef %dev) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %filename) #17
  %call1 = call fastcc i32 @do_mknodat(i32 noundef -100, %struct.filename* noundef %call, i16 noundef %mode, i32 noundef %dev) #17
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mkdirat(i32 noundef %dfd, i8* noundef %pathname, i16 noundef %mode) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %pathname) #17
  %call1 = call i32 @do_mkdirat(i32 noundef %dfd, %struct.filename* noundef %call, i16 noundef %mode) #17
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_mkdir(i8* noundef %pathname, i16 noundef %mode) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %pathname) #17
  %call1 = call i32 @do_mkdirat(i32 noundef -100, %struct.filename* noundef %call, i16 noundef %mode) #17
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_sticky(%struct.user_namespace* noundef %mnt_userns, %struct.inode* nocapture noundef readonly %dir, %struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %dir, i64 0, i32 0
  %0 = load i16, i16* %i_mode, align 8
  %1 = and i16 %0, 512
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @__check_sticky(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %dir, %struct.inode* noundef %inode) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_mountpoint(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %d_flags = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 0
  %0 = load i32, i32* %d_flags, align 8
  %and = and i32 %0, 65536
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__is_local_mountpoint(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__detach_mounts(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @path_parentat(%struct.nameidata* noundef %nd, i32 noundef %flags, %struct.path* nocapture noundef writeonly %parent) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @path_init(%struct.nameidata* noundef %nd, i32 noundef %flags) #17
  %call1 = call fastcc i32 @link_path_walk(i8* noundef %call, %struct.nameidata* noundef %nd) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.end7

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @complete_walk(%struct.nameidata* noundef %nd) #17
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %0 = bitcast %struct.path* %parent to i8*
  %1 = bitcast %struct.nameidata* %nd to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %0, i8* noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  %mnt = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 0
  store %struct.vfsmount* null, %struct.vfsmount** %mnt, align 8
  %dentry = getelementptr inbounds %struct.nameidata, %struct.nameidata* %nd, i64 0, i32 0, i32 1
  store %struct.dentry* null, %struct.dentry** %dentry, align 8
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then4, %if.end
  %err.020 = phi i32 [ 0, %if.then4 ], [ %call2, %if.end ], [ %call1, %entry ]
  call fastcc void @terminate_walk(%struct.nameidata* noundef %nd) #17
  ret i32 %err.020
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_rmdir(i8* noundef %pathname) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %pathname) #17
  %call1 = call i32 @do_rmdir(i32 noundef -100, %struct.filename* noundef %call) #17
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @break_deleg(%struct.inode* noundef %inode, i32 noundef %mode) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !63
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %0 = load %struct.file_lock_context*, %struct.file_lock_context** %i_flctx, align 8
  %tobool.not = icmp eq %struct.file_lock_context* %0, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 3
  %call = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %flc_lease) #17
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i32 @__break_lease(%struct.inode* noundef %inode, i32 noundef %mode, i32 noundef 4) #16
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @list_empty_careful(%struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next1) #18, !srcloc !64
  %1 = inttoptr i64 %0 to %struct.list_head*
  %cmp = icmp eq %struct.list_head* %1, %head
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %cmp2 = icmp eq %struct.list_head* %2, %head
  %phi.cast = zext i1 %cmp2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(%struct.inode* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_inode(%struct.inode* nocapture noundef readonly %inode, i32 noundef %mask) unnamed_addr #11 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_miss(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #17
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @d_is_autodir(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @__d_entry_type(%struct.dentry* noundef %dentry) #17
  %cmp = icmp eq i32 %call, 3145728
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_unlinkat(i32 noundef %dfd, i8* noundef %pathname, i32 noundef %flag) unnamed_addr #0 {
entry:
  %and = and i32 %flag, -513
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %and1 = and i32 %flag, 512
  %tobool.not = icmp eq i32 %and1, 0
  %call5 = call %struct.filename* @getname(i8* noundef %pathname) #17
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @do_rmdir(i32 noundef %dfd, %struct.filename* noundef %call5) #17
  %conv = sext i32 %call3 to i64
  br label %return

if.end4:                                          ; preds = %if.end
  %call6 = call i32 @do_unlinkat(i32 noundef %dfd, %struct.filename* noundef %call5) #17
  %conv7 = sext i32 %call6 to i64
  br label %return

return:                                           ; preds = %entry, %if.end4, %if.then2
  %retval.0 = phi i64 [ %conv, %if.then2 ], [ %conv7, %if.end4 ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_unlink(i8* noundef %pathname) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %pathname) #17
  %call1 = call i32 @do_unlinkat(i32 noundef -100, %struct.filename* noundef %call) #17
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_symlinkat(i8* noundef %oldname, i32 noundef %newdfd, i8* noundef %newname) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %oldname) #17
  %call1 = call %struct.filename* @getname(i8* noundef %newname) #17
  %call2 = call i32 @do_symlinkat(%struct.filename* noundef %call, i32 noundef %newdfd, %struct.filename* noundef %call1) #17
  %conv = sext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_symlink(i8* noundef %oldname, i8* noundef %newname) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %oldname) #17
  %call1 = call %struct.filename* @getname(i8* noundef %newname) #17
  %call2 = call i32 @do_symlinkat(%struct.filename* noundef %call, i32 noundef -100, %struct.filename* noundef %call1) #17
  %conv = sext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_linkat(i32 noundef %olddfd, i8* noundef %oldname, i32 noundef %newdfd, i8* noundef %newname, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname_uflags(i8* noundef %oldname, i32 noundef %flags) #17
  %call1 = call %struct.filename* @getname(i8* noundef %newname) #17
  %call2 = call i32 @do_linkat(i32 noundef %olddfd, %struct.filename* noundef %call, i32 noundef %newdfd, %struct.filename* noundef %call1, i32 noundef %flags) #17
  %conv = sext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_link(i8* noundef %oldname, i8* noundef %newname) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %oldname) #17
  %call1 = call %struct.filename* @getname(i8* noundef %newname) #17
  %call2 = call i32 @do_linkat(i32 noundef -100, %struct.filename* noundef %call, i32 noundef -100, %struct.filename* noundef %call1, i32 noundef 0) #17
  %conv = sext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_renameat2(i32 noundef %olddfd, i8* noundef %oldname, i32 noundef %newdfd, i8* noundef %newname, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %oldname) #17
  %call1 = call %struct.filename* @getname(i8* noundef %newname) #17
  %call2 = call i32 @do_renameat2(i32 noundef %olddfd, %struct.filename* noundef %call, i32 noundef %newdfd, %struct.filename* noundef %call1, i32 noundef %flags) #17
  %conv = sext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_renameat(i32 noundef %olddfd, i8* noundef %oldname, i32 noundef %newdfd, i8* noundef %newname) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %oldname) #17
  %call1 = call %struct.filename* @getname(i8* noundef %newname) #17
  %call2 = call i32 @do_renameat2(i32 noundef %olddfd, %struct.filename* noundef %call, i32 noundef %newdfd, %struct.filename* noundef %call1, i32 noundef 0) #17
  %conv = sext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_rename(i8* noundef %oldname, i8* noundef %newname) unnamed_addr #0 {
entry:
  %call = call %struct.filename* @getname(i8* noundef %oldname) #17
  %call1 = call %struct.filename* @getname(i8* noundef %newname) #17
  %call2 = call i32 @do_renameat2(i32 noundef -100, %struct.filename* noundef %call, i32 noundef -100, %struct.filename* noundef %call1, i32 noundef 0) #17
  %conv = sext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #17
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #17
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #16
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #18, !srcloc !65
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #18, !srcloc !66
  call void asm sideeffect "hint #20", "~{memory}"() #18, !srcloc !67
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @pagecache_get_page(%struct.address_space* noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #11 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.12* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  %sub = add i64 %1, -1
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint %struct.page* %page to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub, %if.then ], [ %2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #16
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !68
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @read_cache_page(%struct.address_space* noundef, i64 noundef, i32 (i8*, %struct.page*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(%struct.inode* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree noinline nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly }
attributes #21 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{i64 2155992575}
!9 = !{i64 1402023}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 2000, i32 2002}
!12 = !{i64 2156029156}
!13 = !{i64 8575101, i64 8575121, i64 8575129, i64 8575162, i64 8575177, i64 8575202, i64 8575221, i64 8575244, i64 8575289, i64 8575344, i64 8575355, i64 2156059879, i64 2156059920, i64 2156059942, i64 2156059988}
!14 = !{!"auto-init"}
!15 = !{i64 0, i64 144115188075855872}
!16 = !{i64 0, i64 65}
!17 = !{i64 2156080318}
!18 = !{i64 2156086129}
!19 = !{i64 2156087871}
!20 = !{i64 2156088937}
!21 = !{i64 2156105349}
!22 = !{i64 2151935083}
!23 = !{i64 2156093476}
!24 = !{i64 2156094841}
!25 = !{i64 2154028161}
!26 = !{i64 2154026078}
!27 = !{i64 2148914086}
!28 = !{i64 2156252577}
!29 = !{i64 2150420205}
!30 = !{i64 2156021969}
!31 = !{i64 2156025461}
!32 = !{i64 2156069052}
!33 = !{i64 2156071117}
!34 = !{i64 2156072948}
!35 = !{i64 2156077861}
!36 = !{!"branch_weights", i32 1073205, i32 2146410443}
!37 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!38 = !{i64 1922445}
!39 = !{i64 2149907723}
!40 = !{i64 2150053879}
!41 = !{i64 2156009898}
!42 = !{i64 2156011925}
!43 = !{i8 0, i8 2}
!44 = !{i64 2156034578}
!45 = !{i64 2156001460}
!46 = !{i64 2150054096}
!47 = !{i64 2155998565}
!48 = !{i64 2156000089}
!49 = !{i64 2156053314}
!50 = !{i64 2156050795}
!51 = !{i64 2156021110}
!52 = !{i64 2149926981}
!53 = !{i64 2149588449}
!54 = !{i64 2147963548, i64 2147963581, i64 2147963634, i64 2147963693, i64 2147963727, i64 2147963782, i64 2147963811, i64 2147963831}
!55 = !{i64 2149595730}
!56 = !{i64 2149387960}
!57 = !{i64 2156100738}
!58 = !{i64 2156102854}
!59 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!60 = !{i64 2156098189}
!61 = !{i64 2147980756, i64 2147980789, i64 2147980841, i64 2147980900, i64 2147980934, i64 2147980990, i64 2147981019, i64 2147981046}
!62 = !{i64 2147877407, i64 2147877923, i64 2147877953, i64 2147877980, i64 2147878014, i64 2147878044}
!63 = !{i64 2152019640}
!64 = !{i64 2148800150}
!65 = !{i64 4155847, i64 4155930, i64 4156154, i64 4156374, i64 4156397}
!66 = !{i64 4160549, i64 4160573}
!67 = !{i64 2151709272}
!68 = !{i64 2147878259, i64 2147878907, i64 2147878937, i64 2147878969, i64 2147879003, i64 2147879039, i64 2147879064}
