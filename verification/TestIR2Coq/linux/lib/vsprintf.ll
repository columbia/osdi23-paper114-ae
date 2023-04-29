; ModuleID = 'lib/vsprintf.c'
source_filename = "lib/vsprintf.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init\22, \22a\22\09\09"
module asm "__initcall__kmod_vsprintf__613_792_initialize_ptr_randomearly:\09\09\09"
module asm ".long\09initialize_ptr_random - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.random_ready_callback = type { %struct.list_head, void (%struct.random_ready_callback*)*, %struct.module* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.workqueue_struct = type opaque
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, {}* }
%struct.trace_print_flags = type { i64, i8* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.printf_spec = type { i64 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.va_format = type { i8*, %"struct.std::__va_list"* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.142, %struct.list_head, %struct.list_head, %union.anon.143 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.136, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.137, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.138, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.139, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2, [48 x i8] }
%struct.anon.2 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.3, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.atomic_t }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.9, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.49 }
%union.anon.49 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.11, %union.anon.126, %struct.atomic_t, [8 x i8] }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.126 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.43, %union.anon.46 }
%union.anon.43 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.46 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.25, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.24, [0 x i64] }
%struct.anon.24 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.122, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.28 }
%union.anon.28 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.net_device = type { [16 x i8], %struct.netdev_name_node*, %struct.dev_ifalias*, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.144, i32, i32, %struct.net_device_ops*, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.ethtool_ops*, %struct.header_ops*, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i32, i32, i8, %struct.in_device*, %struct.inet6_dev*, %struct.wireless_dev*, %struct.wpan_dev*, i8*, %struct.netdev_rx_queue*, i32, i32, %struct.bpf_prog*, i64, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], %struct.hlist_node, [40 x i8], %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i32, %struct.spinlock, %struct.xdp_dev_bulk_queue*, %struct.timer_list, i32, i32, %struct.list_head, %struct.refcount_struct, %struct.list_head, i8, i8, i16, i8, void (%struct.net_device*)*, %struct.possible_net_t, i8*, i32, %union.anon.162, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], %struct.phy_device*, %struct.sfp_bus*, %struct.lock_class_key*, %struct.lock_class_key*, i8, i8, %struct.list_head, %struct.udp_tunnel_nic_info*, %struct.udp_tunnel_nic*, [3 x %struct.bpf_xdp_entity] }
%struct.netdev_name_node = type { %struct.hlist_node, %struct.list_head, %struct.net_device*, i8* }
%struct.dev_ifalias = type { %struct.callback_head, [0 x i8] }
%struct.anon.144 = type { %struct.list_head, %struct.list_head }
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.sk_buff*, %struct.net_device*, i64)*, i16 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.if_settings*)*, i32 (%struct.net_device*, %struct.ifreq*, i8*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.rtnl_link_stats64*)*, i1 (%struct.net_device*, i32)*, i32 (i32, %struct.net_device*, i8*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8, i16)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_stats*)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_guid*, %struct.ifla_vf_guid*)*, i32 (%struct.net_device*, i32, i64, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.net_device*)*, %struct.net_device* (%struct.net_device*, %struct.sk_buff*, i1)*, %struct.net_device* (%struct.net_device*, %struct.sock*)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, %struct.neighbour*)*, void (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16, i16, %struct.netlink_ext_ack*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device*, i8*, i16, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, i8*, i64)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.sk_buff*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, %struct.net_device* (%struct.net_device*, %struct.xdp_buff*)*, i32 (%struct.net_device*, i32, i32)*, %struct.devlink_port* (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ip_tunnel_parm*, i32)*, %struct.net_device* (%struct.net_device*)*, i32 (%struct.net_device_path_ctx*, %struct.net_device_path*)* }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.52 }
%union.anon.52 = type { %struct.net_device* }
%union.anon.53 = type { %struct.sock* }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i64, void (%struct.sk_buff*)* }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i16 }
%struct.ifreq = type { %union.anon.145, %union.anon.146 }
%union.anon.145 = type { [16 x i8] }
%union.anon.146 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.if_settings = type { i32, i32, %union.anon.147 }
%union.anon.147 = type { %struct.raw_hdlc_proto* }
%struct.raw_hdlc_proto = type { i16, i16 }
%struct.neigh_parms = type { %struct.possible_net_t, %struct.net_device*, %struct.list_head, i32 (%struct.neighbour*)*, %struct.neigh_table*, i8*, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i64] }
%struct.neighbour = type { %struct.neighbour*, %struct.neigh_table*, %struct.neigh_parms*, i64, i64, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i64, %struct.atomic_t, i8, i8, i8, i8, i8, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, i32 (%struct.neighbour*, %struct.sk_buff*)*, %struct.neigh_ops*, %struct.list_head, %struct.callback_head, %struct.net_device*, [0 x i8] }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.44, %struct.qspinlock }
%union.anon.44 = type { %struct.atomic_t }
%struct.sk_buff_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.hh_cache = type { i32, %struct.seqlock_t, [4 x i64] }
%struct.neigh_ops = type { i32, void (%struct.neighbour*, %struct.sk_buff*)*, void (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)* }
%struct.neigh_table = type { i32, i32, i32, i16, i32 (i8*, %struct.net_device*, i32*)*, i1 (%struct.neighbour*, i8*)*, i32 (%struct.neighbour*)*, i32 (%struct.pneigh_entry*)*, void (%struct.pneigh_entry*)*, void (%struct.sk_buff*)*, i32 (i8*)*, i1 (%struct.net_device*, %struct.netlink_ext_ack*)*, i8*, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i64, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.rwlock_t, i64, %struct.neigh_statistics*, %struct.neigh_hash_table*, %struct.pneigh_entry** }
%struct.pneigh_entry = type { %struct.pneigh_entry*, %struct.possible_net_t, %struct.net_device*, i8, i8, [0 x i8] }
%struct.netlink_ext_ack = type { i8*, %struct.nlattr*, %struct.nla_policy*, [20 x i8], i8 }
%struct.nlattr = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.99 }
%union.anon.99 = type { i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.neigh_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.neigh_hash_table = type { %struct.neighbour**, i32, [4 x i32], %struct.callback_head }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_guid = type { i32, i64 }
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.netlink_callback*)*, i8*, %struct.module*, %struct.netlink_ext_ack*, i16, i16, i32, i32, i32, i8, %union.anon.148 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%union.anon.148 = type { [6 x i64] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.netdev_bpf = type { i32, %union.anon.149 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, %struct.bpf_prog*, %struct.netlink_ext_ack* }
%struct.xdp_frame = type { i8*, i16, i16, i32, %struct.xdp_mem_info, %struct.net_device* }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i8*, %struct.xdp_rxq_info*, %struct.xdp_txq_info*, i32 }
%struct.xdp_rxq_info = type { %struct.net_device*, i32, i32, %struct.xdp_mem_info, i32, [36 x i8] }
%struct.xdp_txq_info = type { %struct.net_device* }
%struct.devlink_port = type opaque
%struct.ip_tunnel_parm = type opaque
%struct.net_device_path_ctx = type { %struct.net_device*, i8*, i32, [2 x %struct.anon.153] }
%struct.anon.153 = type { i16, i16 }
%struct.net_device_path = type { i32, %struct.net_device*, %union.anon.154 }
%union.anon.154 = type { %struct.anon.156, [4 x i8] }
%struct.anon.156 = type { i32, i16, i16 }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_ops = type opaque
%struct.header_ops = type { i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)*, i32 (%struct.sk_buff*, i8*)*, i32 (%struct.neighbour*, %struct.hh_cache*, i16)*, void (%struct.hh_cache*, %struct.net_device*, i8*)*, i1 (i8*, i32)*, i16 (%struct.sk_buff*)* }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.127, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.127 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.in_device = type opaque
%struct.inet6_dev = type { %struct.net_device*, %struct.list_head, %struct.ifmcaddr6*, %struct.ifmcaddr6*, i8, i8, i8, i8, i64, i64, i64, i64, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.ifacaddr6*, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, %struct.neigh_parms*, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i64, %struct.callback_head, i32 }
%struct.ifmcaddr6 = type { %struct.in6_addr, %struct.inet6_dev*, %struct.ifmcaddr6*, %struct.ip6_sf_list*, %struct.ip6_sf_list*, i32, i8, [2 x i64], %struct.delayed_work, i32, i32, %struct.refcount_struct, i64, i64, %struct.callback_head }
%struct.ip6_sf_list = type { %struct.ip6_sf_list*, %struct.in6_addr, [2 x i64], i8, i8, i8, %struct.callback_head }
%struct.ifacaddr6 = type { %struct.in6_addr, %struct.fib6_info*, %struct.ifacaddr6*, %struct.hlist_node, i32, %struct.refcount_struct, i64, i64, %struct.callback_head }
%struct.fib6_info = type opaque
%struct.in6_addr = type { %union.anon.104 }
%union.anon.104 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.ctl_table_header* }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { %struct.proc_dir_entry*, %struct.ipstats_mib*, %struct.icmpv6_mib_device*, %struct.icmpv6msg_mib_device* }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type {}
%struct.icmpv6_mib_device = type { [6 x %struct.atomic64_t] }
%struct.icmpv6msg_mib_device = type { [512 x %struct.atomic64_t] }
%struct.wireless_dev = type opaque
%struct.wpan_dev = type opaque
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, %struct.kobject, %struct.net_device*, [56 x i8] }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], %struct.bpf_prog_stats*, i32*, i32 (i8*, %struct.bpf_insn*)*, %struct.bpf_prog_aux*, %struct.sock_fprog_kern*, [0 x %struct.sock_filter], [0 x %struct.bpf_insn] }
%struct.bpf_prog_stats = type { i64, i64, i64, %struct.u64_stats_sync, [8 x i8] }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, %struct.bpf_ctx_arg_aux*, %struct.mutex, %struct.bpf_prog*, %struct.bpf_trampoline*, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, %struct.btf_type*, i8*, %struct.bpf_prog**, i8*, %struct.bpf_jit_poke_descriptor*, %struct.bpf_kfunc_desc_tab*, i32, %struct.bpf_ksym, %struct.bpf_prog_ops*, %struct.bpf_map**, %struct.mutex, %struct.btf_mod_pair*, %struct.bpf_prog*, %struct.user_struct*, i64, [2 x %struct.bpf_map*], [16 x i8], %struct.bpf_prog_offload*, %struct.btf*, %struct.bpf_func_info*, %struct.bpf_func_info_aux*, %struct.bpf_line_info*, i8**, i32, i32, i32, i32, %struct.exception_table_entry*, %union.anon.97 }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.bpf_trampoline = type { %struct.hlist_node, %struct.mutex, %struct.refcount_struct, i64, %struct.anon.67, %struct.bpf_prog*, [3 x %struct.hlist_head], [3 x i32], %struct.bpf_tramp_image*, i64, %struct.module* }
%struct.anon.67 = type { %struct.btf_func_model, i8*, i8 }
%struct.btf_func_model = type { i8, i8, [12 x i8] }
%struct.bpf_tramp_image = type { i8*, %struct.bpf_ksym, %struct.percpu_ref, i8*, i8*, %union.anon.68 }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%union.anon.68 = type { %struct.work_struct }
%struct.btf_type = type opaque
%struct.bpf_jit_poke_descriptor = type { i8*, i8*, i8*, i8*, %union.anon.69, i8, i8, i16, i32 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.bpf_map*, i32 }
%struct.bpf_map = type { %struct.bpf_map_ops*, %struct.bpf_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, [16 x i8], i32, i8, i8, [34 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, i64, [40 x i8] }
%struct.bpf_map_ops = type { i32 (%union.bpf_attr*)*, %struct.bpf_map* (%union.bpf_attr*)*, void (%struct.bpf_map*, %struct.file*)*, void (%struct.bpf_map*)*, i32 (%struct.bpf_map*, i8*, i8*)*, void (%struct.bpf_map*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*)*, i8* (%struct.bpf_map*, %struct.file*, i32)*, void (i8*)*, i32 (%struct.bpf_map*, %struct.bpf_insn*)*, i32 (i8*)*, void (%struct.bpf_map*, i8*, %struct.seq_file*)*, i32 (%struct.bpf_map*, %struct.btf*, %struct.btf_type*, %struct.btf_type*)*, i32 (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, i32, %struct.bpf_prog*, %struct.bpf_prog*)*, i32 (%struct.bpf_map*, i64*, i32)*, i32 (%struct.bpf_map*, i64, i32*)*, i32 (%struct.bpf_map*, %struct.vm_area_struct*)*, i32 (%struct.bpf_map*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.bpf_local_storage_map*, i8*, i32)*, void (%struct.bpf_local_storage_map*, i8*, i32)*, %struct.bpf_local_storage** (i8*)*, i32 (%struct.bpf_map*, i32, i64)*, i1 (%struct.bpf_map*, %struct.bpf_map*)*, i32 (%struct.bpf_verifier_env*, %struct.bpf_func_state*, %struct.bpf_func_state*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i8*, i32*, %struct.bpf_iter_seq_info* }
%union.bpf_attr = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32, i64, i64, i32, i32, i64, i32, i32, [16 x i8], i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, %union.anon.76, i32, i64 }
%union.anon.76 = type { i32 }
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
%union.anon.97 = type { %struct.work_struct }
%struct.sock_fprog_kern = type { i16, %struct.sock_filter* }
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.netdev_queue = type { %struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.kobject, i64, i64, %struct.net_device*, [16 x i8], %struct.spinlock, i32, i64, i64, [40 x i8] }
%struct.Qdisc = type { i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, i32, i32, %struct.Qdisc_ops*, %struct.qdisc_size_table*, %struct.hlist_node, i32, i32, %struct.netdev_queue*, %struct.net_rate_estimator*, %struct.gnet_stats_basic_cpu*, %struct.gnet_stats_queue*, i32, %struct.refcount_struct, [24 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_packed, %struct.seqcount, %struct.gnet_stats_queue, i64, %struct.Qdisc*, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.callback_head, [40 x i8], [0 x i64] }
%struct.Qdisc_ops = type { %struct.Qdisc_ops*, %struct.Qdisc_class_ops*, [16 x i8], i32, i32, i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, %struct.sk_buff*)*, i32 (%struct.Qdisc*, %struct.gnet_dump*)*, void (%struct.Qdisc*, i32)*, void (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)*, %struct.module* }
%struct.Qdisc_class_ops = type { i32, %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)*, %struct.Qdisc* (%struct.Qdisc*, i64)*, void (%struct.Qdisc*, i64)*, i64 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, i32, i32, %struct.nlattr**, i64*, %struct.netlink_ext_ack*)*, i32 (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*, %struct.qdisc_walker*)*, %struct.tcf_block* (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, i64 (%struct.Qdisc*, i64, i32)*, void (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.qdisc_walker = type opaque
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, %struct.net*, %struct.Qdisc*, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.158, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.flow_block = type { %struct.list_head }
%struct.anon.158 = type { %struct.tcf_chain*, %struct.list_head }
%struct.tcf_chain = type { %struct.mutex, %struct.tcf_proto*, %struct.list_head, %struct.tcf_block*, i32, i32, i32, i8, i8, %struct.tcf_proto_ops*, i8*, %struct.callback_head }
%struct.tcf_proto = type { %struct.tcf_proto*, i8*, i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i16, i32, i8*, %struct.tcf_proto_ops*, %struct.tcf_chain*, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.tcf_result = type { %union.anon.159 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i32 }
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
%struct.xdp_dev_bulk_queue = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.possible_net_t = type {}
%union.anon.162 = type { %struct.pcpu_lstats* }
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
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
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
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
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
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.103, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.103 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type { i32, %struct.list_head, i32 (%struct.net*)*, i32 (%struct.net*, %struct.notifier_block*, %struct.netlink_ext_ack*)*, %struct.module*, %struct.callback_head }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.105 }
%union.anon.105 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.sock = type { %struct.sock_common, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff*, %struct.sk_buff_head, %struct.anon.66, i32, i32, %struct.sk_filter*, %union.anon.98, %struct.dst_entry*, %struct.dst_entry*, %struct.atomic_t, i32, i32, %struct.refcount_struct, i64, %union.anon.101, %struct.sk_buff*, %struct.sk_buff_head, i32, i32, i32, i32, i64, %struct.timer_list, i32, i32, i64, i64, %struct.page_frag, i64, i64, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i64, %struct.proto*, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, %struct.spinlock, %struct.pid*, %struct.cred*, i64, i64, i16, i32, i8, i32, %struct.atomic_t, i8, i8, %struct.socket*, i8*, %struct.sock_cgroup_data, %struct.mem_cgroup*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*)*, %struct.sock_reuseport*, %struct.callback_head }
%struct.sock_common = type { %union.anon.37, %union.anon.39, %union.anon.40, i16, i8, i8, i32, %union.anon.42, %struct.proto*, %struct.possible_net_t, %struct.atomic64_t, %union.anon.62, [0 x i32], %union.anon.63, i16, %union.anon.64, %struct.refcount_struct, [0 x i32], %union.anon.65 }
%union.anon.37 = type { i64 }
%union.anon.39 = type { i32 }
%union.anon.40 = type { i32 }
%union.anon.42 = type { %struct.hlist_node }
%union.anon.62 = type { i64 }
%union.anon.63 = type { %struct.hlist_node }
%union.anon.64 = type { i32 }
%union.anon.65 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.66 = type { %struct.atomic_t, i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_filter = type { %struct.refcount_struct, %struct.callback_head, %struct.bpf_prog* }
%union.anon.98 = type { %struct.socket_wq* }
%struct.socket_wq = type { %struct.wait_queue_head, %struct.fasync_struct*, i64, %struct.callback_head, [8 x i8] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.dst_entry = type { %struct.net_device*, %struct.dst_ops*, i64, i64, i8*, i32 (%struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i16, i16, i16, i16, %struct.atomic_t, i32, i64, %struct.lwtunnel_state*, %struct.callback_head, i16, i16, i32 }
%struct.dst_ops = type { i16, i32, i32 (%struct.dst_ops*)*, %struct.dst_entry* (%struct.dst_entry*, i32)*, i32 (%struct.dst_entry*)*, i32 (%struct.dst_entry*)*, i32* (%struct.dst_entry*, i64)*, void (%struct.dst_entry*)*, void (%struct.dst_entry*, %struct.net_device*, i32)*, %struct.dst_entry* (%struct.dst_entry*)*, void (%struct.sk_buff*)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i32, i1)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, %struct.neighbour* (%struct.dst_entry*, %struct.sk_buff*, i8*)*, void (%struct.dst_entry*, i8*)*, %struct.kmem_cache*, %struct.percpu_counter, [40 x i8] }
%struct.lwtunnel_state = type opaque
%union.anon.101 = type { %struct.sk_buff* }
%struct.proto = type { void (%struct.sock*, i64)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, i32)*, %struct.sock* (%struct.sock*, i32, i32*, i1)*, i32 (%struct.sock*, i32, i64)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, i32, i32, [2 x i64], i32)*, i32 (%struct.sock*, i32, i32, i8*, i32*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sk_buff*)*, i1 (i32, i32)*, void (%struct.sock*)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, i16)*, i32, i1 (%struct.sock*, i32)*, i1 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, %struct.atomic64_t*, %struct.percpu_counter*, i64*, i64*, i32*, i32*, i32, i32, i32, i8, %struct.kmem_cache*, i32, i32, i32, i32, %struct.percpu_counter*, %struct.request_sock_ops*, %struct.timewait_sock_ops*, %union.anon.61, %struct.module*, [32 x i8], %struct.list_head, i32 (%struct.sock*, i32)* }
%struct.msghdr = type { i8*, i32, %struct.iov_iter, %union.anon.48, i8, i64, i32, %struct.kiocb* }
%union.anon.48 = type { i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.request_sock_ops = type { i32, i32, %struct.kmem_cache*, i8*, i32 (%struct.sock*, %struct.request_sock*)*, void (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)*, void (%struct.sock*, %struct.sk_buff*)*, void (%struct.request_sock*)*, void (%struct.request_sock*)* }
%struct.request_sock = type { %struct.sock_common, %struct.request_sock*, i16, i8, i8, i32, %struct.timer_list, %struct.request_sock_ops*, %struct.sock*, %struct.saved_syn*, i32, i32 }
%struct.saved_syn = type { i32, i32, i32, [0 x i8] }
%struct.timewait_sock_ops = type { %struct.kmem_cache*, i8*, i32, i32 (%struct.sock*, %struct.sock*, i8*)*, void (%struct.sock*)* }
%union.anon.61 = type { %struct.inet_hashinfo* }
%struct.socket = type { i32, i16, i64, %struct.file*, %struct.sock*, %struct.proto_ops*, [24 x i8], %struct.socket_wq }
%struct.proto_ops = type { i32, %struct.module*, i32 (%struct.socket*)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.socket*)*, i32 (%struct.socket*, %struct.socket*, i32, i1)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.file*, %struct.socket*, %struct.poll_table_struct*)*, i32 (%struct.socket*, i32, i64)*, i32 (%struct.socket*, i8*, i1, i1)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32, i32, [2 x i64], i32)*, i32 (%struct.socket*, i32, i32, i8*, i32*)*, void (%struct.seq_file*, %struct.socket*)*, i32 (%struct.socket*, %struct.msghdr*, i64)*, i32 (%struct.socket*, %struct.msghdr*, i64, i32)*, i32 (%struct.file*, %struct.socket*, %struct.vm_area_struct*)*, i64 (%struct.socket*, %struct.page*, i32, i64, i32)*, i64 (%struct.socket*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.sock*, i32)*, i32 (%struct.socket*)*, i32 (%struct.sock*, %struct.read_descriptor_t*, i32 (%struct.read_descriptor_t*, %struct.sk_buff*, i32, i64)*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, i32)* }
%struct.read_descriptor_t = type { i64, i64, %union.anon.102, i32 }
%union.anon.102 = type { i8* }
%struct.sock_cgroup_data = type {}
%struct.mem_cgroup = type opaque
%struct.sock_reuseport = type opaque
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
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.106, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.128, %union.anon.129, %union.anon.130, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.133, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { %struct.rb_node }
%union.anon.130 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.133 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.107, %union.anon.108, i32 }
%union.anon.107 = type { %struct.list_head }
%union.anon.108 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.blk_mq_tag_set = type opaque
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.106 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.109 }
%struct.anon.109 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.121, i32, [12 x i8] }
%union.anon.121 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.122 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.123, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.123 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.25 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.26, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.27, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.26 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.27 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.134 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.134 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.36 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.136 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.137 = type { %struct.callback_head }
%union.anon.138 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.139 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.140 }
%union.anon.140 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.10, i32 }
%union.anon.10 = type { %struct.kuid_t }
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
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.142 = type { %struct.list_head }
%union.anon.143 = type { %struct.hlist_node }
%struct.clk = type opaque
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@__setup_str_debug_boot_weak_hash_enable = internal constant [21 x i8] c"debug_boot_weak_hash\00", section ".init.rodata", align 1
@__setup_debug_boot_weak_hash_enable = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__setup_str_debug_boot_weak_hash_enable, i32 0, i32 0), i32 (i8*)* @debug_boot_weak_hash_enable, i32 1 }, section ".init.setup", align 8
@__UNIQUE_ID___addressable_initialize_ptr_random614 = internal global i8* bitcast (i32 ()* @initialize_ptr_random to i8*), section ".discard.addressable", align 8
@no_hash_pointers = dso_local local_unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@.str = private unnamed_addr constant [62 x i8] c"\014**********************************************************\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"\014**   NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE   **\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"\014**                                                      **\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"\014** This system shows unhashed kernel memory addresses   **\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"\014** via the console, logs, and other interfaces. This    **\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"\014** might reduce the security of your system.            **\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"\014** If you see this message and you are not debugging    **\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"\014** the kernel, report this immediately to your system   **\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"\014** administrator!                                       **\0A\00", align 1
@__setup_str_no_hash_pointers_enable = internal constant [17 x i8] c"no_hash_pointers\00", section ".init.rodata", align 1
@__setup_no_hash_pointers_enable = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__setup_str_no_hash_pointers_enable, i32 0, i32 0), i32 (i8*)* @no_hash_pointers_enable, i32 1 }, section ".init.setup", align 8
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kptr_restrict = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@decpair = internal unnamed_addr constant [100 x i16] [i16 12336, i16 12337, i16 12338, i16 12339, i16 12340, i16 12341, i16 12342, i16 12343, i16 12344, i16 12345, i16 12592, i16 12593, i16 12594, i16 12595, i16 12596, i16 12597, i16 12598, i16 12599, i16 12600, i16 12601, i16 12848, i16 12849, i16 12850, i16 12851, i16 12852, i16 12853, i16 12854, i16 12855, i16 12856, i16 12857, i16 13104, i16 13105, i16 13106, i16 13107, i16 13108, i16 13109, i16 13110, i16 13111, i16 13112, i16 13113, i16 13360, i16 13361, i16 13362, i16 13363, i16 13364, i16 13365, i16 13366, i16 13367, i16 13368, i16 13369, i16 13616, i16 13617, i16 13618, i16 13619, i16 13620, i16 13621, i16 13622, i16 13623, i16 13624, i16 13625, i16 13872, i16 13873, i16 13874, i16 13875, i16 13876, i16 13877, i16 13878, i16 13879, i16 13880, i16 13881, i16 14128, i16 14129, i16 14130, i16 14131, i16 14132, i16 14133, i16 14134, i16 14135, i16 14136, i16 14137, i16 14384, i16 14385, i16 14386, i16 14387, i16 14388, i16 14389, i16 14390, i16 14391, i16 14392, i16 14393, i16 14640, i16 14641, i16 14642, i16 14643, i16 14644, i16 14645, i16 14646, i16 14647, i16 14648, i16 14649], align 2
@debug_boot_weak_hash = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"\016debug_boot_weak_hash enabled\0A\00", align 1
@ptr_key = internal global %struct.siphash_key_t zeroinitializer, section ".data..read_mostly", align 8
@not_filled_random_ptr_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@random_ready = internal global %struct.random_ready_callback { %struct.list_head zeroinitializer, void (%struct.random_ready_callback*)* @fill_random_ptr_key, %struct.module* null }, align 8
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@system_unbound_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@enable_ptr_key_work = internal global { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* } { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast ({ %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }* @enable_ptr_key_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast ({ %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }* @enable_ptr_key_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @enable_ptr_key_workfn }, align 8
@format_decode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"Please remove unsupported %%%c in format string\0A\00", align 1
@set_field_width.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"field width %d too large\00", align 1
@set_precision.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"precision %d too large\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"(efault)\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"(einval)\00", align 1
@resource_string.io_spec = internal unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 6, i8 0, i8 0, i8 112, i8 16, i8 -1, i8 -1 }, align 1
@resource_string.mem_spec = internal unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 10, i8 0, i8 0, i8 112, i8 16, i8 -1, i8 -1 }, align 1
@resource_string.bus_spec = internal unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 2, i8 0, i8 0, i8 48, i8 16, i8 -1, i8 -1 }, align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"io  \00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"mem \00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"irq \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"dma \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"bus \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"??? \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"size \00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c" 64bit\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c" pref\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c" window\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c" disabled\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c" flags \00", align 1
@default_dec_spec = internal unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i8 -1, i8 -1 }, align 1
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"(%pi?)\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"(%pI?)\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"I4\00", align 1
@uuid_index = external dso_local local_unnamed_addr constant [16 x i8], align 1
@guid_index = external dso_local local_unnamed_addr constant [16 x i8], align 1
@hex_asc_upper = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"pK-error\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"(%pN?)\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"(%p4?)\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c" big-endian\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c" little-endian\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"(%pt?)\00", align 1
@vmaflag_names = external dso_local constant [0 x %struct.trace_print_flags], align 8
@gfpflag_names = external dso_local constant [0 x %struct.trace_print_flags], align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"(%pG?)\00", align 1
@pageflag_names = external dso_local constant [0 x %struct.trace_print_flags], align 8
@.str.47 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"(%pO?)\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"fnpPFcC\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"(%pf?)\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"(____ptrval____)\00", align 1
@llvm.compiler.used = appending global [3 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_initialize_ptr_random614 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_debug_boot_weak_hash_enable to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_no_hash_pointers_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @simple_strtoull(i8* noundef %cp, i8** noundef %endp, i32 noundef %base) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @simple_strntoull(i8* noundef %cp, i64 noundef 2147483647, i8** noundef %endp, i32 noundef %base) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @simple_strntoull(i8* noundef %startp, i64 noundef %max_chars, i8** noundef writeonly %endp, i32 noundef %base) unnamed_addr #0 {
entry:
  %base.addr = alloca i32, align 4
  %result = alloca i64, align 8
  store i32 %base, i32* %base.addr, align 4
  %0 = bitcast i64* %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %result, align 8
  %call = call i8* @_parse_integer_fixup_radix(i8* noundef %startp, i32* noundef nonnull %base.addr) #19
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %startp to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp ult i64 %sub.ptr.sub, %max_chars
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %base.addr, align 4
  %sub = sub i64 %max_chars, %sub.ptr.sub
  %call1 = call i32 @_parse_integer_limit(i8* noundef %call, i32 noundef %1, i64* noundef nonnull %result, i64 noundef %sub) #19
  %and = and i32 %call1, 2147483647
  %idx.ext = zext i32 %and to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr2 = getelementptr i8, i8* %startp, i64 %max_chars
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cp.0 = phi i8* [ %add.ptr, %if.then ], [ %add.ptr2, %if.else ]
  %tobool.not = icmp eq i8** %endp, null
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i8* %cp.0, i8** %endp, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = load i64, i64* %result, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @simple_strtoul(i8* noundef %cp, i8** noundef %endp, i32 noundef %base) local_unnamed_addr #0 {
entry:
  %call = call i64 @simple_strtoull(i8* noundef %cp, i8** noundef %endp, i32 noundef %base) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @simple_strtol(i8* noundef %cp, i8** noundef %endp, i32 noundef %base) local_unnamed_addr #0 {
entry:
  %0 = load i8, i8* %cp, align 1
  %cmp = icmp eq i8 %0, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, i8* %cp, i64 1
  %call = call i64 @simple_strtoul(i8* noundef %add.ptr, i8** noundef %endp, i32 noundef %base) #17
  %sub = sub i64 0, %call
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @simple_strtoul(i8* noundef %cp, i8** noundef %endp, i32 noundef %base) #17
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub, %if.then ], [ %call2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @simple_strtoll(i8* noundef %cp, i8** noundef %endp, i32 noundef %base) local_unnamed_addr #0 {
entry:
  %call = call fastcc i64 @simple_strntoll(i8* noundef %cp, i64 noundef 2147483647, i8** noundef %endp, i32 noundef %base) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @simple_strntoll(i8* noundef %cp, i64 noundef %max_chars, i8** noundef %endp, i32 noundef %base) unnamed_addr #0 {
entry:
  %0 = load i8, i8* %cp, align 1
  %cmp = icmp eq i8 %0, 45
  %cmp2 = icmp ne i64 %max_chars, 0
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, i8* %cp, i64 1
  %sub = add i64 %max_chars, -1
  %call = call fastcc i64 @simple_strntoull(i8* noundef %add.ptr, i64 noundef %sub, i8** noundef %endp, i32 noundef %base) #17
  %sub4 = sub i64 0, %call
  br label %return

if.end:                                           ; preds = %entry
  %call5 = call fastcc i64 @simple_strntoull(i8* noundef %cp, i64 noundef %max_chars, i8** noundef %endp, i32 noundef %base) #17
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub4, %if.then ], [ %call5, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid writeonly
define dso_local i32 @num_to_str(i8* nocapture noundef writeonly %buf, i32 noundef %size, i64 noundef %num, i32 noundef %width) local_unnamed_addr #1 {
entry:
  %tmp = alloca [24 x i8], align 4
  %0 = getelementptr inbounds [24 x i8], [24 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %cmp = icmp ult i64 %num, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = trunc i64 %num to i8
  %conv = add nuw nsw i8 %1, 48
  store i8 %conv, i8* %0, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call fastcc i8* @put_dec(i8* noundef nonnull %0, i64 noundef %num) #17
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint [24 x i8]* %tmp to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv2 = trunc i64 %sub.ptr.sub to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len.0 = phi i32 [ 1, %if.then ], [ %conv2, %if.else ]
  %cmp3 = icmp sgt i32 %len.0, %size
  %cmp5 = icmp ugt i32 %width, %size
  %or.cond = or i1 %cmp5, %cmp3
  br i1 %or.cond, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp ult i32 %len.0, %width
  br i1 %cmp9, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end8
  %sub = sub i32 %width, %len.0
  switch i32 %sub, label %vector.scevcheck [
    i32 0, label %if.end16
    i32 1, label %for.body.preheader
  ]

vector.scevcheck:                                 ; preds = %if.then11
  %2 = xor i32 %len.0, -1
  %3 = add i32 %2, %width
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %sub, -2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %induction62 = or i32 %index, 1
  %5 = sext i32 %index to i64
  %6 = sext i32 %induction62 to i64
  %7 = getelementptr i8, i8* %buf, i64 %5
  %8 = getelementptr i8, i8* %buf, i64 %6
  store i8 32, i8* %7, align 1
  store i8 32, i8* %8, align 1
  %index.next = add nuw i32 %index, 2
  %9 = icmp eq i32 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %sub, %n.vec
  br i1 %cmp.n, label %if.end16, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then11, %vector.scevcheck, %middle.block
  %idx.057.ph = phi i32 [ 0, %if.then11 ], [ 0, %vector.scevcheck ], [ %n.vec, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %idx.057 = phi i32 [ %inc, %for.body ], [ %idx.057.ph, %for.body.preheader ]
  %idxprom = sext i32 %idx.057 to i64
  %arrayidx14 = getelementptr i8, i8* %buf, i64 %idxprom
  store i8 32, i8* %arrayidx14, align 1
  %inc = add nuw i32 %idx.057, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %if.end16, label %for.body, !llvm.loop !10

if.end16:                                         ; preds = %for.body, %middle.block, %if.then11, %if.end8
  %width.addr.0 = phi i32 [ 0, %if.end8 ], [ %sub, %if.then11 ], [ %sub, %middle.block ], [ %sub, %for.body ]
  %cmp1858 = icmp sgt i32 %len.0, 0
  br i1 %cmp1858, label %for.body20.preheader, label %for.end30

for.body20.preheader:                             ; preds = %if.end16
  %wide.trip.count = zext i32 %len.0 to i64
  %min.iters.check67 = icmp eq i32 %len.0, 1
  br i1 %min.iters.check67, label %for.body20.preheader81, label %vector.scevcheck63

vector.scevcheck63:                               ; preds = %for.body20.preheader
  %10 = add nsw i64 %wide.trip.count, -1
  %11 = add i32 %len.0, -1
  %12 = trunc i64 %10 to i32
  %13 = sub i32 %11, %12
  %14 = icmp sgt i32 %13, %11
  %15 = icmp ugt i64 %10, 4294967295
  %16 = or i1 %14, %15
  %17 = trunc i64 %10 to i32
  %18 = xor i32 %width.addr.0, -1
  %19 = icmp ult i32 %18, %17
  %20 = icmp ugt i64 %10, 4294967295
  %21 = or i1 %19, %20
  %22 = or i1 %16, %21
  br i1 %22, label %for.body20.preheader81, label %vector.ph68

vector.ph68:                                      ; preds = %vector.scevcheck63
  %n.vec70 = and i64 %wide.trip.count, 4294967294
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph68
  %index73 = phi i64 [ 0, %vector.ph68 ], [ %index.next80, %vector.body66 ]
  %23 = trunc i64 %index73 to i32
  %24 = trunc i64 %index73 to i32
  %induction79 = or i32 %24, 1
  %25 = xor i32 %23, -1
  %26 = xor i32 %23, -2
  %27 = add i32 %len.0, %25
  %28 = add i32 %len.0, %26
  %29 = sext i32 %27 to i64
  %30 = sext i32 %28 to i64
  %31 = getelementptr [24 x i8], [24 x i8]* %tmp, i64 0, i64 %29
  %32 = getelementptr [24 x i8], [24 x i8]* %tmp, i64 0, i64 %30
  %33 = load i8, i8* %31, align 1
  %34 = load i8, i8* %32, align 1
  %35 = add i32 %width.addr.0, %24
  %36 = add i32 %width.addr.0, %induction79
  %37 = zext i32 %35 to i64
  %38 = zext i32 %36 to i64
  %39 = getelementptr i8, i8* %buf, i64 %37
  %40 = getelementptr i8, i8* %buf, i64 %38
  store i8 %33, i8* %39, align 1
  store i8 %34, i8* %40, align 1
  %index.next80 = add nuw i64 %index73, 2
  %41 = icmp eq i64 %index.next80, %n.vec70
  br i1 %41, label %middle.block64, label %vector.body66, !llvm.loop !11

middle.block64:                                   ; preds = %vector.body66
  %cmp.n72 = icmp eq i64 %n.vec70, %wide.trip.count
  br i1 %cmp.n72, label %for.end30, label %for.body20.preheader81

for.body20.preheader81:                           ; preds = %vector.scevcheck63, %for.body20.preheader, %middle.block64
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck63 ], [ 0, %for.body20.preheader ], [ %n.vec70, %middle.block64 ]
  br label %for.body20

for.body20:                                       ; preds = %for.body20.preheader81, %for.body20
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body20 ], [ %indvars.iv.ph, %for.body20.preheader81 ]
  %42 = trunc i64 %indvars.iv to i32
  %43 = xor i32 %42, -1
  %sub22 = add i32 %len.0, %43
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr [24 x i8], [24 x i8]* %tmp, i64 0, i64 %idxprom23
  %44 = load i8, i8* %arrayidx24, align 1
  %45 = trunc i64 %indvars.iv to i32
  %add25 = add i32 %width.addr.0, %45
  %idxprom26 = zext i32 %add25 to i64
  %arrayidx27 = getelementptr i8, i8* %buf, i64 %idxprom26
  store i8 %44, i8* %arrayidx27, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond61.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond61.not, label %for.end30, label %for.body20, !llvm.loop !12

for.end30:                                        ; preds = %for.body20, %middle.block64, %if.end16
  %add31 = add i32 %width.addr.0, %len.0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end30
  %retval.0 = phi i32 [ %add31, %for.end30 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i8* @put_dec(i8* noundef %buf, i64 noundef %n) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i64 %n, 99999999
  br i1 %cmp, label %if.end, label %if.end15

if.end:                                           ; preds = %entry
  %div = udiv i64 %n, 100000000
  %0 = mul i64 %div, 100000000
  %rem.decomposed = sub i64 %n, %0
  %conv1 = trunc i64 %rem.decomposed to i32
  %call = call fastcc i8* @put_dec_full8(i8* noundef %buf, i32 noundef %conv1) #17
  %cmp3 = icmp ugt i64 %n, 9999999999999999
  br i1 %cmp3, label %if.then5, label %if.end15

if.then5:                                         ; preds = %if.end
  %rem9 = urem i64 %div, 100000000
  %conv10 = trunc i64 %rem9 to i32
  %div12 = udiv i64 %n, 10000000000000000
  %call14 = call fastcc i8* @put_dec_full8(i8* noundef %call, i32 noundef %conv10) #17
  br label %if.end15

if.end15:                                         ; preds = %entry, %if.then5, %if.end
  %n.addr.1 = phi i64 [ %div12, %if.then5 ], [ %div, %if.end ], [ %n, %entry ]
  %buf.addr.1 = phi i8* [ %call14, %if.then5 ], [ %call, %if.end ], [ %buf, %entry ]
  %conv16 = trunc i64 %n.addr.1 to i32
  %call17 = call fastcc i8* @put_dec_trunc8(i8* noundef %buf.addr.1, i32 noundef %conv16) #17
  ret i8* %call17
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @debug_boot_weak_hash_enable(i8* nocapture noundef readnone %str) #5 section ".init.text" {
entry:
  store i1 true, i1* @debug_boot_weak_hash, align 4
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0)) #20
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @initialize_ptr_random() #5 section ".init.text" {
entry:
  %call = call i32 @get_random_bytes_arch(i8* noundef bitcast (%struct.siphash_key_t* @ptr_key to i8*), i32 noundef 16) #19
  %cmp = icmp eq i32 %call, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @static_key_disable() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @add_random_ready_callback(%struct.random_ready_callback* noundef nonnull @random_ready) #19
  %cond = icmp eq i32 %call1, -114
  br i1 %cond, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  call void @enable_ptr_key_workfn(%struct.work_struct* noundef bitcast ({ %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }* @enable_ptr_key_work to %struct.work_struct*)) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ptr_to_hashval(i8* noundef %ptr, i64* nocapture noundef writeonly %hashval_out) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @__ptr_to_hashval(i8* noundef %ptr, i64* noundef %hashval_out) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ptr_to_hashval(i8* noundef %ptr, i64* nocapture noundef writeonly %hashval_out) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @static_key_count() #17
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end, !prof !13

if.end:                                           ; preds = %entry
  %0 = ptrtoint i8* %ptr to i64
  %call4 = call i64 @siphash_1u64(i64 noundef %0, %struct.siphash_key_t* noundef nonnull @ptr_key) #19
  %and = and i64 %call4, 4294967295
  store i64 %and, i64* %hashval_out, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @no_hash_pointers_enable(i8* nocapture readnone %str) #5 section ".init.text" {
entry:
  %0 = load i8, i8* @no_hash_pointers, align 1, !range !14
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i8 1, i8* @no_hash_pointers, align 1
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0)) #20
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0)) #20
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0)) #20
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0)) #20
  %call16 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0)) #20
  %call20 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0)) #20
  %call24 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0)) #20
  %call28 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0)) #20
  %call32 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0)) #20
  %call36 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0)) #20
  %call40 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0)) #20
  %call44 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0)) #20
  %call48 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0)) #20
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vsnprintf(i8* noundef %buf, i64 noundef %size, i8* noundef %fmt, %"struct.std::__va_list"* noundef %args) local_unnamed_addr #0 {
entry:
  %spec = alloca %struct.printf_spec, align 8
  %0 = bitcast %struct.printf_spec* %spec to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %spec, i64 0, i32 0
  store i64 0, i64* %1, align 8
  %cmp = icmp ugt i64 %size, 2147483647
  br i1 %cmp, label %if.then, label %if.end16, !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/vsprintf.c\22; .popsection; .long 14472b - 14470b; .short 2735; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !15
  br label %cleanup390

if.end16:                                         ; preds = %entry
  %add.ptr = getelementptr i8, i8* %buf, i64 %size
  %cmp17 = icmp ult i8* %add.ptr, %buf
  %sub.ptr.rhs.cast = ptrtoint i8* %buf to i64
  %sub.ptr.sub = xor i64 %sub.ptr.rhs.cast, -1
  %size.addr.0 = select i1 %cmp17, i64 %sub.ptr.sub, i64 %size
  %end.0 = select i1 %cmp17, i8* inttoptr (i64 -1 to i8*), i8* %add.ptr
  %2 = load i8, i8* %fmt, align 1
  %tobool21.not485 = icmp eq i8 %2, 0
  br i1 %tobool21.not485, label %out, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end16
  %gr_offs_p340 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %args, i64 0, i32 3
  %reg_top_p346 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %args, i64 0, i32 1
  %stack_p349 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %args, i64 0, i32 0
  %sub.ptr.lhs.cast27 = ptrtoint i8* %end.0 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %str.0487 = phi i8* [ %buf, %while.body.lr.ph ], [ %str.5, %cleanup ]
  %fmt.addr.0486 = phi i8* [ %fmt, %while.body.lr.ph ], [ %fmt.addr.3, %cleanup ]
  %call = call fastcc i32 @format_decode(i8* noundef %fmt.addr.0486, %struct.printf_spec* noundef nonnull %spec) #17
  %idx.ext = sext i32 %call to i64
  %add.ptr22 = getelementptr i8, i8* %fmt.addr.0486, i64 %idx.ext
  %bf.load = load i64, i64* %1, align 8
  %trunc = trunc i64 %bf.load to i8
  switch i8 %trunc, label %sw.default355 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb43
    i8 2, label %sw.bb44
    i8 3, label %sw.bb59
    i8 4, label %sw.bb122
    i8 5, label %sw.bb138
    i8 6, label %sw.bb164
    i8 7, label %out
    i8 8, label %sw.bb174
    i8 9, label %sw.bb189
    i8 10, label %sw.bb204
    i8 17, label %sw.bb219
    i8 18, label %sw.bb256
    i8 11, label %sw.bb271
    i8 12, label %sw.bb288
    i8 13, label %sw.bb305
    i8 14, label %sw.bb322
    i8 16, label %sw.bb339
  ]

sw.bb:                                            ; preds = %while.body
  %cmp23 = icmp ult i8* %str.0487, %end.0
  br i1 %cmp23, label %if.then25, label %if.end40

if.then25:                                        ; preds = %sw.bb
  %sub.ptr.rhs.cast28 = ptrtoint i8* %str.0487 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %cmp30 = icmp slt i64 %sub.ptr.sub29, %idx.ext
  %conv36 = trunc i64 %sub.ptr.sub29 to i32
  %spec.select = select i1 %cmp30, i32 %conv36, i32 %call
  %conv38 = sext i32 %spec.select to i64
  %call39 = call i8* @memcpy(i8* noundef %str.0487, i8* noundef %fmt.addr.0486, i64 noundef %conv38) #19
  br label %if.end40

if.end40:                                         ; preds = %if.then25, %sw.bb
  %add.ptr42 = getelementptr i8, i8* %str.0487, i64 %idx.ext
  br label %cleanup

sw.bb43:                                          ; preds = %while.body
  %gr_offs = load i32, i32* %gr_offs_p340, align 8
  %3 = icmp sgt i32 %gr_offs, -1
  br i1 %3, label %vaarg.on_stack, label %vaarg.maybe_reg

vaarg.maybe_reg:                                  ; preds = %sw.bb43
  %new_reg_offs = add nsw i32 %gr_offs, 8
  store i32 %new_reg_offs, i32* %gr_offs_p340, align 8
  %inreg = icmp ult i32 %gr_offs, -7
  br i1 %inreg, label %vaarg.in_reg, label %vaarg.on_stack

vaarg.in_reg:                                     ; preds = %vaarg.maybe_reg
  %reg_top = load i8*, i8** %reg_top_p346, align 8
  %4 = sext i32 %gr_offs to i64
  %5 = getelementptr inbounds i8, i8* %reg_top, i64 %4
  br label %vaarg.end

vaarg.on_stack:                                   ; preds = %vaarg.maybe_reg, %sw.bb43
  %stack = load i8*, i8** %stack_p349, align 8
  %new_stack = getelementptr inbounds i8, i8* %stack, i64 8
  store i8* %new_stack, i8** %stack_p349, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.on_stack, %vaarg.in_reg
  %vaargs.addr.in = phi i8* [ %5, %vaarg.in_reg ], [ %stack, %vaarg.on_stack ]
  %vaargs.addr = bitcast i8* %vaargs.addr.in to i32*
  %6 = load i32, i32* %vaargs.addr, align 8
  call fastcc void @set_field_width(%struct.printf_spec* noundef nonnull %spec, i32 noundef %6) #17
  br label %cleanup

sw.bb44:                                          ; preds = %while.body
  %gr_offs46 = load i32, i32* %gr_offs_p340, align 8
  %7 = icmp sgt i32 %gr_offs46, -1
  br i1 %7, label %vaarg.on_stack53, label %vaarg.maybe_reg47

vaarg.maybe_reg47:                                ; preds = %sw.bb44
  %new_reg_offs48 = add nsw i32 %gr_offs46, 8
  store i32 %new_reg_offs48, i32* %gr_offs_p340, align 8
  %inreg49 = icmp ult i32 %gr_offs46, -7
  br i1 %inreg49, label %vaarg.in_reg50, label %vaarg.on_stack53

vaarg.in_reg50:                                   ; preds = %vaarg.maybe_reg47
  %reg_top52 = load i8*, i8** %reg_top_p346, align 8
  %8 = sext i32 %gr_offs46 to i64
  %9 = getelementptr inbounds i8, i8* %reg_top52, i64 %8
  br label %vaarg.end57

vaarg.on_stack53:                                 ; preds = %vaarg.maybe_reg47, %sw.bb44
  %stack55 = load i8*, i8** %stack_p349, align 8
  %new_stack56 = getelementptr inbounds i8, i8* %stack55, i64 8
  store i8* %new_stack56, i8** %stack_p349, align 8
  br label %vaarg.end57

vaarg.end57:                                      ; preds = %vaarg.on_stack53, %vaarg.in_reg50
  %vaargs.addr58.in = phi i8* [ %9, %vaarg.in_reg50 ], [ %stack55, %vaarg.on_stack53 ]
  %vaargs.addr58 = bitcast i8* %vaargs.addr58.in to i32*
  %10 = load i32, i32* %vaargs.addr58, align 8
  call fastcc void @set_precision(%struct.printf_spec* noundef nonnull %spec, i32 noundef %10) #17
  br label %cleanup

sw.bb59:                                          ; preds = %while.body
  %11 = and i64 %bf.load, 8589934592
  %tobool63.not = icmp eq i64 %11, 0
  br i1 %tobool63.not, label %while.cond65.preheader, label %if.end78

while.cond65.preheader:                           ; preds = %sw.bb59
  %12 = lshr i64 %bf.load, 8
  %dec461 = add nuw nsw i64 %12, 16777215
  %bf.value462 = shl nuw i64 %dec461, 8
  %bf.shl69463 = and i64 %bf.value462, 4294967040
  %bf.clear70464 = and i64 %bf.load, -4294967041
  %bf.set465 = or i64 %bf.shl69463, %bf.clear70464
  store i64 %bf.set465, i64* %1, align 8
  %bf.result.shl466 = shl i64 %dec461, 40
  %bf.result.ashr467 = ashr exact i64 %bf.result.shl466, 40
  %bf.result.cast468 = trunc i64 %bf.result.ashr467 to i32
  %cmp71469 = icmp sgt i32 %bf.result.cast468, 0
  br i1 %cmp71469, label %while.body73, label %if.end78

while.body73:                                     ; preds = %while.cond65.preheader, %if.end77
  %bf.load66493 = phi i64 [ %bf.set, %if.end77 ], [ %bf.set465, %while.cond65.preheader ]
  %str.1470 = phi i8* [ %incdec.ptr, %if.end77 ], [ %str.0487, %while.cond65.preheader ]
  %cmp74 = icmp ult i8* %str.1470, %end.0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %while.body73
  store i8 32, i8* %str.1470, align 1
  %bf.load66.pre = load i64, i64* %1, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %while.body73
  %bf.load66 = phi i64 [ %bf.load66.pre, %if.then76 ], [ %bf.load66493, %while.body73 ]
  %incdec.ptr = getelementptr i8, i8* %str.1470, i64 1
  %13 = lshr i64 %bf.load66, 8
  %dec = add nuw nsw i64 %13, 16777215
  %bf.value = shl i64 %dec, 8
  %bf.shl69 = and i64 %bf.value, 4294967040
  %bf.clear70 = and i64 %bf.load66, -4294967041
  %bf.set = or i64 %bf.shl69, %bf.clear70
  store i64 %bf.set, i64* %1, align 8
  %bf.result.shl = shl i64 %dec, 40
  %bf.result.ashr = ashr exact i64 %bf.result.shl, 40
  %bf.result.cast = trunc i64 %bf.result.ashr to i32
  %cmp71 = icmp sgt i32 %bf.result.cast, 0
  br i1 %cmp71, label %while.body73, label %if.end78

if.end78:                                         ; preds = %if.end77, %while.cond65.preheader, %sw.bb59
  %bf.load100473496 = phi i64 [ %bf.load, %sw.bb59 ], [ %bf.set465, %while.cond65.preheader ], [ %bf.set, %if.end77 ]
  %str.2 = phi i8* [ %str.0487, %sw.bb59 ], [ %str.0487, %while.cond65.preheader ], [ %incdec.ptr, %if.end77 ]
  %gr_offs80 = load i32, i32* %gr_offs_p340, align 8
  %14 = icmp sgt i32 %gr_offs80, -1
  br i1 %14, label %vaarg.on_stack87, label %vaarg.maybe_reg81

vaarg.maybe_reg81:                                ; preds = %if.end78
  %new_reg_offs82 = add nsw i32 %gr_offs80, 8
  store i32 %new_reg_offs82, i32* %gr_offs_p340, align 8
  %inreg83 = icmp ult i32 %gr_offs80, -7
  br i1 %inreg83, label %vaarg.in_reg84, label %vaarg.on_stack87

vaarg.in_reg84:                                   ; preds = %vaarg.maybe_reg81
  %reg_top86 = load i8*, i8** %reg_top_p346, align 8
  %15 = sext i32 %gr_offs80 to i64
  %16 = getelementptr inbounds i8, i8* %reg_top86, i64 %15
  br label %vaarg.end91

vaarg.on_stack87:                                 ; preds = %vaarg.maybe_reg81, %if.end78
  %stack89 = load i8*, i8** %stack_p349, align 8
  %new_stack90 = getelementptr inbounds i8, i8* %stack89, i64 8
  store i8* %new_stack90, i8** %stack_p349, align 8
  br label %vaarg.end91

vaarg.end91:                                      ; preds = %vaarg.on_stack87, %vaarg.in_reg84
  %vaargs.addr92.in = phi i8* [ %16, %vaarg.in_reg84 ], [ %stack89, %vaarg.on_stack87 ]
  %cmp94 = icmp ult i8* %str.2, %end.0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %vaarg.end91
  %vaargs.addr92 = bitcast i8* %vaargs.addr92.in to i32*
  %17 = load i32, i32* %vaargs.addr92, align 8
  %conv93 = trunc i32 %17 to i8
  store i8 %conv93, i8* %str.2, align 1
  %bf.load100473.pre = load i64, i64* %1, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %vaarg.end91
  %bf.load100473 = phi i64 [ %bf.load100473.pre, %if.then96 ], [ %bf.load100473496, %vaarg.end91 ]
  %str.3472 = getelementptr i8, i8* %str.2, i64 1
  %18 = lshr i64 %bf.load100473, 8
  %dec104474 = add nuw nsw i64 %18, 16777215
  %bf.value106475 = shl i64 %dec104474, 8
  %bf.shl107476 = and i64 %bf.value106475, 4294967040
  %bf.clear108477 = and i64 %bf.load100473, -4294967041
  %bf.set109478 = or i64 %bf.shl107476, %bf.clear108477
  store i64 %bf.set109478, i64* %1, align 8
  %bf.result.shl110479 = shl i64 %dec104474, 40
  %bf.result.ashr111480 = ashr exact i64 %bf.result.shl110479, 40
  %bf.result.cast112481 = trunc i64 %bf.result.ashr111480 to i32
  %cmp113482 = icmp sgt i32 %bf.result.cast112481, 0
  br i1 %cmp113482, label %while.body115, label %cleanup

while.body115:                                    ; preds = %if.end97, %if.end119
  %bf.load100497 = phi i64 [ %bf.set109, %if.end119 ], [ %bf.set109478, %if.end97 ]
  %str.3483 = phi i8* [ %str.3, %if.end119 ], [ %str.3472, %if.end97 ]
  %cmp116 = icmp ult i8* %str.3483, %end.0
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %while.body115
  store i8 32, i8* %str.3483, align 1
  %bf.load100.pre = load i64, i64* %1, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %while.body115
  %bf.load100 = phi i64 [ %bf.load100.pre, %if.then118 ], [ %bf.load100497, %while.body115 ]
  %str.3 = getelementptr i8, i8* %str.3483, i64 1
  %19 = lshr i64 %bf.load100, 8
  %dec104 = add nuw nsw i64 %19, 16777215
  %bf.value106 = shl i64 %dec104, 8
  %bf.shl107 = and i64 %bf.value106, 4294967040
  %bf.clear108 = and i64 %bf.load100, -4294967041
  %bf.set109 = or i64 %bf.shl107, %bf.clear108
  store i64 %bf.set109, i64* %1, align 8
  %bf.result.shl110 = shl i64 %dec104, 40
  %bf.result.ashr111 = ashr exact i64 %bf.result.shl110, 40
  %bf.result.cast112 = trunc i64 %bf.result.ashr111 to i32
  %cmp113 = icmp sgt i32 %bf.result.cast112, 0
  br i1 %cmp113, label %while.body115, label %cleanup

sw.bb122:                                         ; preds = %while.body
  %gr_offs124 = load i32, i32* %gr_offs_p340, align 8
  %20 = icmp sgt i32 %gr_offs124, -1
  br i1 %20, label %vaarg.on_stack131, label %vaarg.maybe_reg125

vaarg.maybe_reg125:                               ; preds = %sw.bb122
  %new_reg_offs126 = add nsw i32 %gr_offs124, 8
  store i32 %new_reg_offs126, i32* %gr_offs_p340, align 8
  %inreg127 = icmp ult i32 %gr_offs124, -7
  br i1 %inreg127, label %vaarg.in_reg128, label %vaarg.on_stack131

vaarg.in_reg128:                                  ; preds = %vaarg.maybe_reg125
  %reg_top130 = load i8*, i8** %reg_top_p346, align 8
  %21 = sext i32 %gr_offs124 to i64
  %22 = getelementptr inbounds i8, i8* %reg_top130, i64 %21
  br label %vaarg.end135

vaarg.on_stack131:                                ; preds = %vaarg.maybe_reg125, %sw.bb122
  %stack133 = load i8*, i8** %stack_p349, align 8
  %new_stack134 = getelementptr inbounds i8, i8* %stack133, i64 8
  store i8* %new_stack134, i8** %stack_p349, align 8
  br label %vaarg.end135

vaarg.end135:                                     ; preds = %vaarg.on_stack131, %vaarg.in_reg128
  %vaargs.addr136.in = phi i8* [ %22, %vaarg.in_reg128 ], [ %stack133, %vaarg.on_stack131 ]
  %vaargs.addr136 = bitcast i8* %vaargs.addr136.in to i8**
  %23 = load i8*, i8** %vaargs.addr136, align 8
  %call137 = call fastcc i8* @string(i8* noundef %str.0487, i8* noundef %end.0, i8* noundef %23, i64 %bf.load) #17
  br label %cleanup

sw.bb138:                                         ; preds = %while.body
  %gr_offs140 = load i32, i32* %gr_offs_p340, align 8
  %24 = icmp sgt i32 %gr_offs140, -1
  br i1 %24, label %vaarg.on_stack147, label %vaarg.maybe_reg141

vaarg.maybe_reg141:                               ; preds = %sw.bb138
  %new_reg_offs142 = add nsw i32 %gr_offs140, 8
  store i32 %new_reg_offs142, i32* %gr_offs_p340, align 8
  %inreg143 = icmp ult i32 %gr_offs140, -7
  br i1 %inreg143, label %vaarg.in_reg144, label %vaarg.on_stack147

vaarg.in_reg144:                                  ; preds = %vaarg.maybe_reg141
  %reg_top146 = load i8*, i8** %reg_top_p346, align 8
  %25 = sext i32 %gr_offs140 to i64
  %26 = getelementptr inbounds i8, i8* %reg_top146, i64 %25
  br label %vaarg.end151

vaarg.on_stack147:                                ; preds = %vaarg.maybe_reg141, %sw.bb138
  %stack149 = load i8*, i8** %stack_p349, align 8
  %new_stack150 = getelementptr inbounds i8, i8* %stack149, i64 8
  store i8* %new_stack150, i8** %stack_p349, align 8
  br label %vaarg.end151

vaarg.end151:                                     ; preds = %vaarg.on_stack147, %vaarg.in_reg144
  %vaargs.addr152.in = phi i8* [ %26, %vaarg.in_reg144 ], [ %stack149, %vaarg.on_stack147 ]
  %vaargs.addr152 = bitcast i8* %vaargs.addr152.in to i8**
  %27 = load i8*, i8** %vaargs.addr152, align 8
  %call154 = call fastcc i8* @pointer(i8* noundef %add.ptr22, i8* noundef %str.0487, i8* noundef %end.0, i8* noundef %27, i64 %bf.load) #17
  br label %while.cond155

while.cond155:                                    ; preds = %while.cond155, %vaarg.end151
  %fmt.addr.1 = phi i8* [ %add.ptr22, %vaarg.end151 ], [ %incdec.ptr162, %while.cond155 ]
  %28 = load i8, i8* %fmt.addr.1, align 1
  %29 = zext i8 %28 to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %29
  %30 = load i8, i8* %arrayidx, align 1
  %31 = and i8 %30, 7
  %cmp159.not = icmp eq i8 %31, 0
  %incdec.ptr162 = getelementptr i8, i8* %fmt.addr.1, i64 1
  br i1 %cmp159.not, label %cleanup, label %while.cond155

sw.bb164:                                         ; preds = %while.body
  %cmp165 = icmp ult i8* %str.0487, %end.0
  br i1 %cmp165, label %if.then167, label %if.end168

if.then167:                                       ; preds = %sw.bb164
  store i8 37, i8* %str.0487, align 1
  br label %if.end168

if.end168:                                        ; preds = %if.then167, %sw.bb164
  %incdec.ptr169 = getelementptr i8, i8* %str.0487, i64 1
  br label %cleanup

sw.bb174:                                         ; preds = %while.body
  %gr_offs176 = load i32, i32* %gr_offs_p340, align 8
  %32 = icmp sgt i32 %gr_offs176, -1
  br i1 %32, label %vaarg.on_stack183, label %vaarg.maybe_reg177

vaarg.maybe_reg177:                               ; preds = %sw.bb174
  %new_reg_offs178 = add nsw i32 %gr_offs176, 8
  store i32 %new_reg_offs178, i32* %gr_offs_p340, align 8
  %inreg179 = icmp ult i32 %gr_offs176, -7
  br i1 %inreg179, label %vaarg.in_reg180, label %vaarg.on_stack183

vaarg.in_reg180:                                  ; preds = %vaarg.maybe_reg177
  %reg_top182 = load i8*, i8** %reg_top_p346, align 8
  %33 = sext i32 %gr_offs176 to i64
  %34 = getelementptr inbounds i8, i8* %reg_top182, i64 %33
  br label %vaarg.end187

vaarg.on_stack183:                                ; preds = %vaarg.maybe_reg177, %sw.bb174
  %stack185 = load i8*, i8** %stack_p349, align 8
  %new_stack186 = getelementptr inbounds i8, i8* %stack185, i64 8
  store i8* %new_stack186, i8** %stack_p349, align 8
  br label %vaarg.end187

vaarg.end187:                                     ; preds = %vaarg.on_stack183, %vaarg.in_reg180
  %vaargs.addr188.in = phi i8* [ %34, %vaarg.in_reg180 ], [ %stack185, %vaarg.on_stack183 ]
  %vaargs.addr188 = bitcast i8* %vaargs.addr188.in to i64*
  %35 = load i64, i64* %vaargs.addr188, align 8
  br label %sw.epilog

sw.bb189:                                         ; preds = %while.body
  %gr_offs191 = load i32, i32* %gr_offs_p340, align 8
  %36 = icmp sgt i32 %gr_offs191, -1
  br i1 %36, label %vaarg.on_stack198, label %vaarg.maybe_reg192

vaarg.maybe_reg192:                               ; preds = %sw.bb189
  %new_reg_offs193 = add nsw i32 %gr_offs191, 8
  store i32 %new_reg_offs193, i32* %gr_offs_p340, align 8
  %inreg194 = icmp ult i32 %gr_offs191, -7
  br i1 %inreg194, label %vaarg.in_reg195, label %vaarg.on_stack198

vaarg.in_reg195:                                  ; preds = %vaarg.maybe_reg192
  %reg_top197 = load i8*, i8** %reg_top_p346, align 8
  %37 = sext i32 %gr_offs191 to i64
  %38 = getelementptr inbounds i8, i8* %reg_top197, i64 %37
  br label %vaarg.end202

vaarg.on_stack198:                                ; preds = %vaarg.maybe_reg192, %sw.bb189
  %stack200 = load i8*, i8** %stack_p349, align 8
  %new_stack201 = getelementptr inbounds i8, i8* %stack200, i64 8
  store i8* %new_stack201, i8** %stack_p349, align 8
  br label %vaarg.end202

vaarg.end202:                                     ; preds = %vaarg.on_stack198, %vaarg.in_reg195
  %vaargs.addr203.in = phi i8* [ %38, %vaarg.in_reg195 ], [ %stack200, %vaarg.on_stack198 ]
  %vaargs.addr203 = bitcast i8* %vaargs.addr203.in to i64*
  %39 = load i64, i64* %vaargs.addr203, align 8
  br label %sw.epilog

sw.bb204:                                         ; preds = %while.body
  %gr_offs206 = load i32, i32* %gr_offs_p340, align 8
  %40 = icmp sgt i32 %gr_offs206, -1
  br i1 %40, label %vaarg.on_stack213, label %vaarg.maybe_reg207

vaarg.maybe_reg207:                               ; preds = %sw.bb204
  %new_reg_offs208 = add nsw i32 %gr_offs206, 8
  store i32 %new_reg_offs208, i32* %gr_offs_p340, align 8
  %inreg209 = icmp ult i32 %gr_offs206, -7
  br i1 %inreg209, label %vaarg.in_reg210, label %vaarg.on_stack213

vaarg.in_reg210:                                  ; preds = %vaarg.maybe_reg207
  %reg_top212 = load i8*, i8** %reg_top_p346, align 8
  %41 = sext i32 %gr_offs206 to i64
  %42 = getelementptr inbounds i8, i8* %reg_top212, i64 %41
  br label %vaarg.end217

vaarg.on_stack213:                                ; preds = %vaarg.maybe_reg207, %sw.bb204
  %stack215 = load i8*, i8** %stack_p349, align 8
  %new_stack216 = getelementptr inbounds i8, i8* %stack215, i64 8
  store i8* %new_stack216, i8** %stack_p349, align 8
  br label %vaarg.end217

vaarg.end217:                                     ; preds = %vaarg.on_stack213, %vaarg.in_reg210
  %vaargs.addr218.in = phi i8* [ %42, %vaarg.in_reg210 ], [ %stack215, %vaarg.on_stack213 ]
  %vaargs.addr218 = bitcast i8* %vaargs.addr218.in to i64*
  %43 = load i64, i64* %vaargs.addr218, align 8
  br label %sw.epilog

sw.bb219:                                         ; preds = %while.body
  %44 = and i64 %bf.load, 4294967296
  %tobool225.not = icmp eq i64 %44, 0
  %gr_offs242 = load i32, i32* %gr_offs_p340, align 8
  %45 = icmp sgt i32 %gr_offs242, -1
  br i1 %tobool225.not, label %if.else, label %if.then226

if.then226:                                       ; preds = %sw.bb219
  br i1 %45, label %vaarg.on_stack235, label %vaarg.maybe_reg229

vaarg.maybe_reg229:                               ; preds = %if.then226
  %new_reg_offs230 = add nsw i32 %gr_offs242, 8
  store i32 %new_reg_offs230, i32* %gr_offs_p340, align 8
  %inreg231 = icmp ult i32 %gr_offs242, -7
  br i1 %inreg231, label %vaarg.in_reg232, label %vaarg.on_stack235

vaarg.in_reg232:                                  ; preds = %vaarg.maybe_reg229
  %reg_top234 = load i8*, i8** %reg_top_p346, align 8
  %46 = sext i32 %gr_offs242 to i64
  %47 = getelementptr inbounds i8, i8* %reg_top234, i64 %46
  br label %vaarg.end239

vaarg.on_stack235:                                ; preds = %vaarg.maybe_reg229, %if.then226
  %stack237 = load i8*, i8** %stack_p349, align 8
  %new_stack238 = getelementptr inbounds i8, i8* %stack237, i64 8
  store i8* %new_stack238, i8** %stack_p349, align 8
  br label %vaarg.end239

vaarg.end239:                                     ; preds = %vaarg.on_stack235, %vaarg.in_reg232
  %vaargs.addr240.in = phi i8* [ %47, %vaarg.in_reg232 ], [ %stack237, %vaarg.on_stack235 ]
  %vaargs.addr240 = bitcast i8* %vaargs.addr240.in to i64*
  %48 = load i64, i64* %vaargs.addr240, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb219
  br i1 %45, label %vaarg.on_stack249, label %vaarg.maybe_reg243

vaarg.maybe_reg243:                               ; preds = %if.else
  %new_reg_offs244 = add nsw i32 %gr_offs242, 8
  store i32 %new_reg_offs244, i32* %gr_offs_p340, align 8
  %inreg245 = icmp ult i32 %gr_offs242, -7
  br i1 %inreg245, label %vaarg.in_reg246, label %vaarg.on_stack249

vaarg.in_reg246:                                  ; preds = %vaarg.maybe_reg243
  %reg_top248 = load i8*, i8** %reg_top_p346, align 8
  %49 = sext i32 %gr_offs242 to i64
  %50 = getelementptr inbounds i8, i8* %reg_top248, i64 %49
  br label %vaarg.end253

vaarg.on_stack249:                                ; preds = %vaarg.maybe_reg243, %if.else
  %stack251 = load i8*, i8** %stack_p349, align 8
  %new_stack252 = getelementptr inbounds i8, i8* %stack251, i64 8
  store i8* %new_stack252, i8** %stack_p349, align 8
  br label %vaarg.end253

vaarg.end253:                                     ; preds = %vaarg.on_stack249, %vaarg.in_reg246
  %vaargs.addr254.in = phi i8* [ %50, %vaarg.in_reg246 ], [ %stack251, %vaarg.on_stack249 ]
  %vaargs.addr254 = bitcast i8* %vaargs.addr254.in to i64*
  %51 = load i64, i64* %vaargs.addr254, align 8
  br label %sw.epilog

sw.bb256:                                         ; preds = %while.body
  %gr_offs258 = load i32, i32* %gr_offs_p340, align 8
  %52 = icmp sgt i32 %gr_offs258, -1
  br i1 %52, label %vaarg.on_stack265, label %vaarg.maybe_reg259

vaarg.maybe_reg259:                               ; preds = %sw.bb256
  %new_reg_offs260 = add nsw i32 %gr_offs258, 8
  store i32 %new_reg_offs260, i32* %gr_offs_p340, align 8
  %inreg261 = icmp ult i32 %gr_offs258, -7
  br i1 %inreg261, label %vaarg.in_reg262, label %vaarg.on_stack265

vaarg.in_reg262:                                  ; preds = %vaarg.maybe_reg259
  %reg_top264 = load i8*, i8** %reg_top_p346, align 8
  %53 = sext i32 %gr_offs258 to i64
  %54 = getelementptr inbounds i8, i8* %reg_top264, i64 %53
  br label %vaarg.end269

vaarg.on_stack265:                                ; preds = %vaarg.maybe_reg259, %sw.bb256
  %stack267 = load i8*, i8** %stack_p349, align 8
  %new_stack268 = getelementptr inbounds i8, i8* %stack267, i64 8
  store i8* %new_stack268, i8** %stack_p349, align 8
  br label %vaarg.end269

vaarg.end269:                                     ; preds = %vaarg.on_stack265, %vaarg.in_reg262
  %vaargs.addr270.in = phi i8* [ %54, %vaarg.in_reg262 ], [ %stack267, %vaarg.on_stack265 ]
  %vaargs.addr270 = bitcast i8* %vaargs.addr270.in to i64*
  %55 = load i64, i64* %vaargs.addr270, align 8
  br label %sw.epilog

sw.bb271:                                         ; preds = %while.body
  %gr_offs273 = load i32, i32* %gr_offs_p340, align 8
  %56 = icmp sgt i32 %gr_offs273, -1
  br i1 %56, label %vaarg.on_stack280, label %vaarg.maybe_reg274

vaarg.maybe_reg274:                               ; preds = %sw.bb271
  %new_reg_offs275 = add nsw i32 %gr_offs273, 8
  store i32 %new_reg_offs275, i32* %gr_offs_p340, align 8
  %inreg276 = icmp ult i32 %gr_offs273, -7
  br i1 %inreg276, label %vaarg.in_reg277, label %vaarg.on_stack280

vaarg.in_reg277:                                  ; preds = %vaarg.maybe_reg274
  %reg_top279 = load i8*, i8** %reg_top_p346, align 8
  %57 = sext i32 %gr_offs273 to i64
  %58 = getelementptr inbounds i8, i8* %reg_top279, i64 %57
  br label %vaarg.end284

vaarg.on_stack280:                                ; preds = %vaarg.maybe_reg274, %sw.bb271
  %stack282 = load i8*, i8** %stack_p349, align 8
  %new_stack283 = getelementptr inbounds i8, i8* %stack282, i64 8
  store i8* %new_stack283, i8** %stack_p349, align 8
  br label %vaarg.end284

vaarg.end284:                                     ; preds = %vaarg.on_stack280, %vaarg.in_reg277
  %vaargs.addr285.in = phi i8* [ %58, %vaarg.in_reg277 ], [ %stack282, %vaarg.on_stack280 ]
  %vaargs.addr285 = bitcast i8* %vaargs.addr285.in to i32*
  %59 = load i32, i32* %vaargs.addr285, align 8
  %60 = and i32 %59, 255
  %conv287 = zext i32 %60 to i64
  br label %sw.epilog

sw.bb288:                                         ; preds = %while.body
  %gr_offs290 = load i32, i32* %gr_offs_p340, align 8
  %61 = icmp sgt i32 %gr_offs290, -1
  br i1 %61, label %vaarg.on_stack297, label %vaarg.maybe_reg291

vaarg.maybe_reg291:                               ; preds = %sw.bb288
  %new_reg_offs292 = add nsw i32 %gr_offs290, 8
  store i32 %new_reg_offs292, i32* %gr_offs_p340, align 8
  %inreg293 = icmp ult i32 %gr_offs290, -7
  br i1 %inreg293, label %vaarg.in_reg294, label %vaarg.on_stack297

vaarg.in_reg294:                                  ; preds = %vaarg.maybe_reg291
  %reg_top296 = load i8*, i8** %reg_top_p346, align 8
  %62 = sext i32 %gr_offs290 to i64
  %63 = getelementptr inbounds i8, i8* %reg_top296, i64 %62
  br label %vaarg.end301

vaarg.on_stack297:                                ; preds = %vaarg.maybe_reg291, %sw.bb288
  %stack299 = load i8*, i8** %stack_p349, align 8
  %new_stack300 = getelementptr inbounds i8, i8* %stack299, i64 8
  store i8* %new_stack300, i8** %stack_p349, align 8
  br label %vaarg.end301

vaarg.end301:                                     ; preds = %vaarg.on_stack297, %vaarg.in_reg294
  %vaargs.addr302.in = phi i8* [ %63, %vaarg.in_reg294 ], [ %stack299, %vaarg.on_stack297 ]
  %vaargs.addr302 = bitcast i8* %vaargs.addr302.in to i32*
  %64 = load i32, i32* %vaargs.addr302, align 8
  %conv303 = zext i32 %64 to i64
  %sext454 = shl i64 %conv303, 56
  %conv304 = ashr exact i64 %sext454, 56
  br label %sw.epilog

sw.bb305:                                         ; preds = %while.body
  %gr_offs307 = load i32, i32* %gr_offs_p340, align 8
  %65 = icmp sgt i32 %gr_offs307, -1
  br i1 %65, label %vaarg.on_stack314, label %vaarg.maybe_reg308

vaarg.maybe_reg308:                               ; preds = %sw.bb305
  %new_reg_offs309 = add nsw i32 %gr_offs307, 8
  store i32 %new_reg_offs309, i32* %gr_offs_p340, align 8
  %inreg310 = icmp ult i32 %gr_offs307, -7
  br i1 %inreg310, label %vaarg.in_reg311, label %vaarg.on_stack314

vaarg.in_reg311:                                  ; preds = %vaarg.maybe_reg308
  %reg_top313 = load i8*, i8** %reg_top_p346, align 8
  %66 = sext i32 %gr_offs307 to i64
  %67 = getelementptr inbounds i8, i8* %reg_top313, i64 %66
  br label %vaarg.end318

vaarg.on_stack314:                                ; preds = %vaarg.maybe_reg308, %sw.bb305
  %stack316 = load i8*, i8** %stack_p349, align 8
  %new_stack317 = getelementptr inbounds i8, i8* %stack316, i64 8
  store i8* %new_stack317, i8** %stack_p349, align 8
  br label %vaarg.end318

vaarg.end318:                                     ; preds = %vaarg.on_stack314, %vaarg.in_reg311
  %vaargs.addr319.in = phi i8* [ %67, %vaarg.in_reg311 ], [ %stack316, %vaarg.on_stack314 ]
  %vaargs.addr319 = bitcast i8* %vaargs.addr319.in to i32*
  %68 = load i32, i32* %vaargs.addr319, align 8
  %69 = and i32 %68, 65535
  %conv321 = zext i32 %69 to i64
  br label %sw.epilog

sw.bb322:                                         ; preds = %while.body
  %gr_offs324 = load i32, i32* %gr_offs_p340, align 8
  %70 = icmp sgt i32 %gr_offs324, -1
  br i1 %70, label %vaarg.on_stack331, label %vaarg.maybe_reg325

vaarg.maybe_reg325:                               ; preds = %sw.bb322
  %new_reg_offs326 = add nsw i32 %gr_offs324, 8
  store i32 %new_reg_offs326, i32* %gr_offs_p340, align 8
  %inreg327 = icmp ult i32 %gr_offs324, -7
  br i1 %inreg327, label %vaarg.in_reg328, label %vaarg.on_stack331

vaarg.in_reg328:                                  ; preds = %vaarg.maybe_reg325
  %reg_top330 = load i8*, i8** %reg_top_p346, align 8
  %71 = sext i32 %gr_offs324 to i64
  %72 = getelementptr inbounds i8, i8* %reg_top330, i64 %71
  br label %vaarg.end335

vaarg.on_stack331:                                ; preds = %vaarg.maybe_reg325, %sw.bb322
  %stack333 = load i8*, i8** %stack_p349, align 8
  %new_stack334 = getelementptr inbounds i8, i8* %stack333, i64 8
  store i8* %new_stack334, i8** %stack_p349, align 8
  br label %vaarg.end335

vaarg.end335:                                     ; preds = %vaarg.on_stack331, %vaarg.in_reg328
  %vaargs.addr336.in = phi i8* [ %72, %vaarg.in_reg328 ], [ %stack333, %vaarg.on_stack331 ]
  %vaargs.addr336 = bitcast i8* %vaargs.addr336.in to i32*
  %73 = load i32, i32* %vaargs.addr336, align 8
  %conv337 = zext i32 %73 to i64
  %sext = shl i64 %conv337, 48
  %conv338 = ashr exact i64 %sext, 48
  br label %sw.epilog

sw.bb339:                                         ; preds = %while.body
  %gr_offs341 = load i32, i32* %gr_offs_p340, align 8
  %74 = icmp sgt i32 %gr_offs341, -1
  br i1 %74, label %vaarg.on_stack348, label %vaarg.maybe_reg342

vaarg.maybe_reg342:                               ; preds = %sw.bb339
  %new_reg_offs343 = add nsw i32 %gr_offs341, 8
  store i32 %new_reg_offs343, i32* %gr_offs_p340, align 8
  %inreg344 = icmp ult i32 %gr_offs341, -7
  br i1 %inreg344, label %vaarg.in_reg345, label %vaarg.on_stack348

vaarg.in_reg345:                                  ; preds = %vaarg.maybe_reg342
  %reg_top347 = load i8*, i8** %reg_top_p346, align 8
  %75 = sext i32 %gr_offs341 to i64
  %76 = getelementptr inbounds i8, i8* %reg_top347, i64 %75
  br label %vaarg.end352

vaarg.on_stack348:                                ; preds = %vaarg.maybe_reg342, %sw.bb339
  %stack350 = load i8*, i8** %stack_p349, align 8
  %new_stack351 = getelementptr inbounds i8, i8* %stack350, i64 8
  store i8* %new_stack351, i8** %stack_p349, align 8
  br label %vaarg.end352

vaarg.end352:                                     ; preds = %vaarg.on_stack348, %vaarg.in_reg345
  %vaargs.addr353.in = phi i8* [ %76, %vaarg.in_reg345 ], [ %stack350, %vaarg.on_stack348 ]
  %vaargs.addr353 = bitcast i8* %vaargs.addr353.in to i32*
  %77 = load i32, i32* %vaargs.addr353, align 8
  %conv354 = sext i32 %77 to i64
  br label %sw.epilog

sw.default355:                                    ; preds = %while.body
  %gr_offs357 = load i32, i32* %gr_offs_p340, align 8
  %78 = icmp sgt i32 %gr_offs357, -1
  br i1 %78, label %vaarg.on_stack364, label %vaarg.maybe_reg358

vaarg.maybe_reg358:                               ; preds = %sw.default355
  %new_reg_offs359 = add nsw i32 %gr_offs357, 8
  store i32 %new_reg_offs359, i32* %gr_offs_p340, align 8
  %inreg360 = icmp ult i32 %gr_offs357, -7
  br i1 %inreg360, label %vaarg.in_reg361, label %vaarg.on_stack364

vaarg.in_reg361:                                  ; preds = %vaarg.maybe_reg358
  %reg_top363 = load i8*, i8** %reg_top_p346, align 8
  %79 = sext i32 %gr_offs357 to i64
  %80 = getelementptr inbounds i8, i8* %reg_top363, i64 %79
  br label %vaarg.end368

vaarg.on_stack364:                                ; preds = %vaarg.maybe_reg358, %sw.default355
  %stack366 = load i8*, i8** %stack_p349, align 8
  %new_stack367 = getelementptr inbounds i8, i8* %stack366, i64 8
  store i8* %new_stack367, i8** %stack_p349, align 8
  br label %vaarg.end368

vaarg.end368:                                     ; preds = %vaarg.on_stack364, %vaarg.in_reg361
  %vaargs.addr369.in = phi i8* [ %80, %vaarg.in_reg361 ], [ %stack366, %vaarg.on_stack364 ]
  %vaargs.addr369 = bitcast i8* %vaargs.addr369.in to i32*
  %81 = load i32, i32* %vaargs.addr369, align 8
  %conv370 = zext i32 %81 to i64
  br label %sw.epilog

sw.epilog:                                        ; preds = %vaarg.end239, %vaarg.end253, %vaarg.end368, %vaarg.end352, %vaarg.end335, %vaarg.end318, %vaarg.end301, %vaarg.end284, %vaarg.end269, %vaarg.end217, %vaarg.end202, %vaarg.end187
  %num.0 = phi i64 [ %conv370, %vaarg.end368 ], [ %conv354, %vaarg.end352 ], [ %conv338, %vaarg.end335 ], [ %conv321, %vaarg.end318 ], [ %conv304, %vaarg.end301 ], [ %conv287, %vaarg.end284 ], [ %55, %vaarg.end269 ], [ %48, %vaarg.end239 ], [ %51, %vaarg.end253 ], [ %43, %vaarg.end217 ], [ %39, %vaarg.end202 ], [ %35, %vaarg.end187 ]
  %call372 = call fastcc i8* @number(i8* noundef %str.0487, i8* noundef %end.0, i64 noundef %num.0, i64 %bf.load) #17
  br label %cleanup

cleanup:                                          ; preds = %while.cond155, %if.end119, %if.end97, %if.end40, %vaarg.end, %vaarg.end57, %vaarg.end135, %if.end168, %sw.epilog
  %fmt.addr.3 = phi i8* [ %add.ptr22, %sw.epilog ], [ %add.ptr22, %if.end168 ], [ %add.ptr22, %vaarg.end135 ], [ %add.ptr22, %vaarg.end57 ], [ %add.ptr22, %vaarg.end ], [ %add.ptr22, %if.end40 ], [ %add.ptr22, %if.end97 ], [ %add.ptr22, %if.end119 ], [ %fmt.addr.1, %while.cond155 ]
  %str.5 = phi i8* [ %call372, %sw.epilog ], [ %incdec.ptr169, %if.end168 ], [ %call137, %vaarg.end135 ], [ %str.0487, %vaarg.end57 ], [ %str.0487, %vaarg.end ], [ %add.ptr42, %if.end40 ], [ %str.3472, %if.end97 ], [ %str.3, %if.end119 ], [ %call154, %while.cond155 ]
  %82 = load i8, i8* %fmt.addr.3, align 1
  %tobool21.not = icmp eq i8 %82, 0
  br i1 %tobool21.not, label %out, label %while.body

out:                                              ; preds = %cleanup, %while.body, %if.end16
  %str.0.lcssa = phi i8* [ %buf, %if.end16 ], [ %str.0487, %while.body ], [ %str.5, %cleanup ]
  %cmp376.not = icmp eq i64 %size.addr.0, 0
  br i1 %cmp376.not, label %if.end385, label %if.then378

if.then378:                                       ; preds = %out
  %cmp379 = icmp ult i8* %str.0.lcssa, %end.0
  %arrayidx383 = getelementptr i8, i8* %end.0, i64 -1
  %str.0.lcssa.sink = select i1 %cmp379, i8* %str.0.lcssa, i8* %arrayidx383
  store i8 0, i8* %str.0.lcssa.sink, align 1
  br label %if.end385

if.end385:                                        ; preds = %if.then378, %out
  %sub.ptr.lhs.cast386 = ptrtoint i8* %str.0.lcssa to i64
  %sub.ptr.sub388 = sub i64 %sub.ptr.lhs.cast386, %sub.ptr.rhs.cast
  %conv389 = trunc i64 %sub.ptr.sub388 to i32
  br label %cleanup390

cleanup390:                                       ; preds = %if.then, %if.end385
  %retval.0 = phi i32 [ %conv389, %if.end385 ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @format_decode(i8* noundef %fmt, %struct.printf_spec* noundef %spec) unnamed_addr #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  %0 = getelementptr %struct.printf_spec, %struct.printf_spec* %spec, i64 0, i32 0
  %bf.load = load i64, i64* %0, align 1
  %1 = trunc i64 %bf.load to i8
  switch i8 %1, label %if.end42 [
    i8 1, label %if.then
    i8 2, label %if.then29
  ]

if.then:                                          ; preds = %entry
  %bf.shl = shl i64 %bf.load, 32
  %bf.ashr = ashr i64 %bf.shl, 40
  %2 = and i64 %bf.ashr, 2147483648
  %cmp3.not = icmp eq i64 %2, 0
  br i1 %cmp3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %.neg = mul nsw i64 %bf.ashr, -256
  %bf.shl10 = and i64 %.neg, 4294967040
  %bf.set = and i64 %bf.load, -12884901633
  %or = or i64 %bf.set, %bf.shl10
  %bf.set19 = or i64 %or, 8589934592
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %bf.load21 = phi i64 [ %bf.set19, %if.then4 ], [ %bf.load, %if.then ]
  %bf.clear22 = and i64 %bf.load21, -256
  br label %precision

if.then29:                                        ; preds = %entry
  %bf.ashr31 = ashr i64 %bf.load, 48
  %3 = and i64 %bf.ashr31, 2147483648
  %cmp33.not = icmp eq i64 %3, 0
  %bf.clear36 = and i64 %bf.load, 281474976710400
  %spec.select = select i1 %cmp33.not, i64 %bf.load, i64 %bf.clear36
  %bf.clear40 = and i64 %spec.select, -256
  store i64 %bf.clear40, i64* %0, align 1
  br label %qualifier199thread-pre-split

if.end42:                                         ; preds = %entry
  %bf.clear44 = and i64 %bf.load, -256
  store i64 %bf.clear44, i64* %0, align 1
  %fmt.addr.promoted = load i8*, i8** %fmt.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end42
  %incdec.ptr564 = phi i8* [ %incdec.ptr, %for.inc ], [ %fmt.addr.promoted, %if.end42 ]
  %4 = phi i8* [ %incdec.ptr, %for.inc ], [ %fmt, %if.end42 ]
  %5 = load i8, i8* %4, align 1
  switch i8 %5, label %for.inc [
    i8 0, label %for.end
    i8 37, label %for.end
  ]

for.inc:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr i8, i8* %4, i64 1
  br label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond
  store i8* %incdec.ptr564, i8** %fmt.addr, align 8
  %cmp50.not = icmp ne i8* %4, %fmt
  %tobool52.not = icmp eq i8 %5, 0
  %or.cond = select i1 %cmp50.not, i1 true, i1 %tobool52.not
  br i1 %or.cond, label %cleanup473, label %if.end55

if.end55:                                         ; preds = %for.end
  %bf.clear57 = and i64 %bf.load, -1095216660736
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end55
  %bf.set118.sink.sink = phi i64 [ %bf.set118, %while.cond.backedge ], [ %bf.clear57, %if.end55 ]
  %6 = phi i8* [ %incdec.ptr59, %while.cond.backedge ], [ %fmt, %if.end55 ]
  store i64 %bf.set118.sink.sink, i64* %0, align 1
  %incdec.ptr59 = getelementptr i8, i8* %6, i64 1
  %7 = load i8, i8* %incdec.ptr59, align 1
  switch i8 %7, label %while.end [
    i8 45, label %while.cond.backedge
    i8 43, label %sw.bb72
    i8 32, label %sw.bb84
    i8 35, label %sw.bb96
    i8 48, label %sw.bb108
  ]

sw.bb72:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb84:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb96:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb108:                                         ; preds = %while.cond
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond, %sw.bb108, %sw.bb96, %sw.bb84, %sw.bb72
  %.sink = phi i64 [ 68719476736, %sw.bb108 ], [ 274877906944, %sw.bb96 ], [ 34359738368, %sw.bb84 ], [ 17179869184, %sw.bb72 ], [ 8589934592, %while.cond ]
  %bf.set118 = or i64 %bf.set118.sink.sink, %.sink
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* %incdec.ptr59, i8** %fmt.addr, align 8
  %bf.set125 = or i64 %bf.set118.sink.sink, 4294967040
  store i64 %bf.set125, i64* %0, align 1
  %8 = load i8, i8* %incdec.ptr59, align 1
  %conv126 = zext i8 %8 to i32
  %call = call fastcc i32 @isdigit(i32 noundef %conv126) #17
  %tobool127.not = icmp eq i32 %call, 0
  br i1 %tobool127.not, label %if.else, label %if.then128

if.then128:                                       ; preds = %while.end
  %call129 = call fastcc i32 @skip_atoi(i8** noundef nonnull %fmt.addr) #17
  %bf.load130 = load i64, i64* %0, align 1
  %9 = shl i32 %call129, 8
  %bf.shl132 = zext i32 %9 to i64
  %bf.clear133 = and i64 %bf.load130, -4294967041
  %bf.set134 = or i64 %bf.clear133, %bf.shl132
  %.pre = load i8*, i8** %fmt.addr, align 8
  br label %precision

if.else:                                          ; preds = %while.end
  %cmp139 = icmp eq i8 %8, 42
  br i1 %cmp139, label %if.then141, label %precision

if.then141:                                       ; preds = %if.else
  %bf.set144 = or i64 %bf.set118.sink.sink, 4294967041
  store i64 %bf.set144, i64* %0, align 1
  %incdec.ptr145 = getelementptr i8, i8* %6, i64 2
  store i8* %incdec.ptr145, i8** %fmt.addr, align 8
  br label %cleanup473

precision:                                        ; preds = %if.then128, %if.else, %if.end
  %10 = phi i8* [ %.pre, %if.then128 ], [ %incdec.ptr59, %if.else ], [ %fmt, %if.end ]
  %bf.load152 = phi i64 [ %bf.set134, %if.then128 ], [ %bf.set125, %if.else ], [ %bf.clear22, %if.end ]
  %bf.set154 = or i64 %bf.load152, -281474976710656
  store i64 %bf.set154, i64* %0, align 1
  %11 = load i8, i8* %10, align 1
  %cmp156 = icmp eq i8 %11, 46
  br i1 %cmp156, label %if.then158, label %qualifier199

if.then158:                                       ; preds = %precision
  %incdec.ptr159 = getelementptr i8, i8* %10, i64 1
  store i8* %incdec.ptr159, i8** %fmt.addr, align 8
  %12 = load i8, i8* %incdec.ptr159, align 1
  %conv160 = zext i8 %12 to i32
  %call161 = call fastcc i32 @isdigit(i32 noundef %conv160) #17
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.else183, label %if.then163

if.then163:                                       ; preds = %if.then158
  %call164 = call fastcc i32 @skip_atoi(i8** noundef nonnull %fmt.addr) #17
  %bf.load165 = load i64, i64* %0, align 1
  %bf.value166 = zext i32 %call164 to i64
  %bf.shl167 = shl i64 %bf.value166, 48
  %bf.clear168 = and i64 %bf.load165, 281474976710655
  %bf.ashr174 = ashr exact i64 %bf.shl167, 48
  %13 = and i64 %bf.ashr174, 2147483648
  %cmp176.not = icmp eq i64 %13, 0
  %bf.set169 = select i1 %cmp176.not, i64 %bf.shl167, i64 0
  %spec.store.select = or i64 %bf.set169, %bf.clear168
  store i64 %spec.store.select, i64* %0, align 1
  %.pre557 = load i8*, i8** %fmt.addr, align 8
  br label %qualifier199thread-pre-split

if.else183:                                       ; preds = %if.then158
  %cmp185 = icmp eq i8 %12, 42
  br i1 %cmp185, label %if.then187, label %qualifier199thread-pre-split

if.then187:                                       ; preds = %if.else183
  %bf.clear189 = and i64 %bf.set154, -256
  %bf.set190 = or i64 %bf.clear189, 2
  store i64 %bf.set190, i64* %0, align 1
  %incdec.ptr191 = getelementptr i8, i8* %10, i64 2
  store i8* %incdec.ptr191, i8** %fmt.addr, align 8
  br label %cleanup473

qualifier199thread-pre-split:                     ; preds = %if.then29, %if.else183, %if.then163
  %bf.load241.ph = phi i64 [ %bf.clear40, %if.then29 ], [ %bf.set154, %if.else183 ], [ %spec.store.select, %if.then163 ]
  %.ph = phi i8* [ %fmt, %if.then29 ], [ %incdec.ptr159, %if.else183 ], [ %.pre557, %if.then163 ]
  %.pr = load i8, i8* %.ph, align 1
  br label %qualifier199

qualifier199:                                     ; preds = %qualifier199thread-pre-split, %precision
  %14 = phi i8 [ %.pr, %qualifier199thread-pre-split ], [ %11, %precision ]
  %bf.load241 = phi i64 [ %bf.load241.ph, %qualifier199thread-pre-split ], [ %bf.set154, %precision ]
  %15 = phi i8* [ %.ph, %qualifier199thread-pre-split ], [ %10, %precision ]
  %cmp201 = icmp eq i8 %14, 104
  br i1 %cmp201, label %if.then216, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %qualifier199
  %call204 = call fastcc i8 @_tolower(i8 noundef %14) #17
  %cmp206 = icmp eq i8 %call204, 108
  br i1 %cmp206, label %if.then216, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %lor.lhs.false203
  switch i8 %14, label %if.end240 [
    i8 122, label %if.then216
    i8 116, label %if.then216
  ]

if.then216:                                       ; preds = %lor.lhs.false208, %lor.lhs.false208, %lor.lhs.false203, %qualifier199
  %incdec.ptr217 = getelementptr i8, i8* %15, i64 1
  store i8* %incdec.ptr217, i8** %fmt.addr, align 8
  %16 = load i8, i8* %15, align 1
  %17 = load i8, i8* %incdec.ptr217, align 1
  %cmp220 = icmp eq i8 %16, %17
  br i1 %cmp220, label %if.then225, label %if.end240, !prof !13

if.then225:                                       ; preds = %if.then216
  switch i8 %16, label %if.end240 [
    i8 108, label %if.then229
    i8 104, label %if.then235
  ]

if.then229:                                       ; preds = %if.then225
  %incdec.ptr230 = getelementptr i8, i8* %15, i64 2
  store i8* %incdec.ptr230, i8** %fmt.addr, align 8
  br label %if.end240

if.then235:                                       ; preds = %if.then225
  %incdec.ptr236 = getelementptr i8, i8* %15, i64 2
  store i8* %incdec.ptr236, i8** %fmt.addr, align 8
  br label %if.end240

if.end240:                                        ; preds = %if.then225, %lor.lhs.false208, %if.then216, %if.then235, %if.then229
  %18 = phi i8* [ %incdec.ptr230, %if.then229 ], [ %incdec.ptr236, %if.then235 ], [ %incdec.ptr217, %if.then216 ], [ %15, %lor.lhs.false208 ], [ %incdec.ptr217, %if.then225 ]
  %qualifier.0 = phi i8 [ 76, %if.then229 ], [ 72, %if.then235 ], [ %16, %if.then216 ], [ 0, %lor.lhs.false208 ], [ %16, %if.then225 ]
  %bf.clear242 = and i64 %bf.load241, -280375465082881
  %bf.set243 = or i64 %bf.clear242, 10995116277760
  store i64 %bf.set243, i64* %0, align 1
  %19 = load i8, i8* %18, align 1
  switch i8 %19, label %sw.default314 [
    i8 99, label %sw.bb245
    i8 115, label %sw.bb254
    i8 112, label %sw.bb263
    i8 37, label %sw.bb272
    i8 111, label %sw.bb281
    i8 120, label %sw.bb285
    i8 88, label %sw.bb297
    i8 100, label %sw.bb301
    i8 105, label %sw.bb301
    i8 117, label %sw.epilog368
  ]

sw.bb245:                                         ; preds = %if.end240
  %bf.clear247 = and i64 %bf.set243, -269380348805376
  %bf.set248 = or i64 %bf.clear247, 3
  store i64 %bf.set248, i64* %0, align 1
  %incdec.ptr249 = getelementptr i8, i8* %18, i64 1
  store i8* %incdec.ptr249, i8** %fmt.addr, align 8
  br label %cleanup473

sw.bb254:                                         ; preds = %if.end240
  %bf.clear256 = and i64 %bf.set243, -269380348805376
  %bf.set257 = or i64 %bf.clear256, 4
  store i64 %bf.set257, i64* %0, align 1
  %incdec.ptr258 = getelementptr i8, i8* %18, i64 1
  store i8* %incdec.ptr258, i8** %fmt.addr, align 8
  br label %cleanup473

sw.bb263:                                         ; preds = %if.end240
  %bf.clear265 = and i64 %bf.set243, -269380348805376
  %bf.set266 = or i64 %bf.clear265, 5
  store i64 %bf.set266, i64* %0, align 1
  %incdec.ptr267 = getelementptr i8, i8* %18, i64 1
  store i8* %incdec.ptr267, i8** %fmt.addr, align 8
  br label %cleanup473

sw.bb272:                                         ; preds = %if.end240
  %bf.clear274 = and i64 %bf.set243, -269380348805376
  %bf.set275 = or i64 %bf.clear274, 6
  store i64 %bf.set275, i64* %0, align 1
  %incdec.ptr276 = getelementptr i8, i8* %18, i64 1
  store i8* %incdec.ptr276, i8** %fmt.addr, align 8
  br label %cleanup473

sw.bb281:                                         ; preds = %if.end240
  %bf.set284 = or i64 %bf.clear242, 8796093022208
  br label %sw.epilog368

sw.bb285:                                         ; preds = %if.end240
  %bf.cast289 = and i64 %bf.load241, 957777707008
  %bf.clear294 = and i64 %bf.set243, -270475565465601
  %or290 = or i64 %bf.cast289, %bf.clear294
  %bf.set295 = or i64 %or290, 137438953472
  br label %sw.bb297

sw.bb297:                                         ; preds = %if.end240, %sw.bb285
  %bf.load298 = phi i64 [ %bf.set243, %if.end240 ], [ %bf.set295, %sw.bb285 ]
  %bf.clear299 = and i64 %bf.load298, -280375465082881
  %bf.set300 = or i64 %bf.clear299, 17592186044416
  br label %sw.epilog368

sw.bb301:                                         ; preds = %if.end240, %if.end240
  %bf.cast305 = and i64 %bf.load241, 1090921693184
  %bf.clear310 = and i64 %bf.set243, -270475565465601
  %or306 = or i64 %bf.cast305, %bf.clear310
  %bf.set311 = or i64 %or306, 4294967296
  br label %sw.epilog368

sw.default314:                                    ; preds = %if.end240
  %.b542 = load i1, i1* @format_decode.__already_done, align 1
  br i1 %.b542, label %if.end352, label %if.then327, !prof !16

if.then327:                                       ; preds = %sw.default314
  store i1 true, i1* @format_decode.__already_done, align 1
  %20 = load i8, i8* %18, align 1
  %conv338 = zext i8 %20 to i32
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv338) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/vsprintf.c\22; .popsection; .long 14472b - 14470b; .short 2653; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !17
  %bf.load361.pre = load i64, i64* %0, align 1
  br label %if.end352

if.end352:                                        ; preds = %if.then327, %sw.default314
  %bf.load361 = phi i64 [ %bf.load361.pre, %if.then327 ], [ %bf.set243, %sw.default314 ]
  %bf.clear362 = and i64 %bf.load361, -256
  %bf.set363 = or i64 %bf.clear362, 7
  store i64 %bf.set363, i64* %0, align 1
  br label %cleanup473

sw.epilog368:                                     ; preds = %if.end240, %sw.bb301, %sw.bb297, %sw.bb281
  %bf.load451 = phi i64 [ %bf.set243, %if.end240 ], [ %bf.set311, %sw.bb301 ], [ %bf.set300, %sw.bb297 ], [ %bf.set284, %sw.bb281 ]
  switch i8 %qualifier.0, label %do.end450 [
    i8 76, label %if.then372
    i8 108, label %do.end383
    i8 122, label %if.then397
    i8 116, label %if.then405
    i8 72, label %do.end416
    i8 104, label %do.end435
  ]

if.then372:                                       ; preds = %sw.epilog368
  %bf.clear374 = and i64 %bf.load451, -256
  br label %if.end467

do.end383:                                        ; preds = %sw.epilog368
  %bf.lshr385 = lshr i64 %bf.load451, 32
  %and = and i64 %bf.lshr385, 1
  %add = add nuw nsw i64 %and, 9
  %bf.clear390 = and i64 %bf.load451, -256
  br label %if.end467

if.then397:                                       ; preds = %sw.epilog368
  %bf.clear399 = and i64 %bf.load451, -256
  br label %if.end467

if.then405:                                       ; preds = %sw.epilog368
  %bf.clear407 = and i64 %bf.load451, -256
  br label %if.end467

do.end416:                                        ; preds = %sw.epilog368
  %bf.lshr418 = lshr i64 %bf.load451, 32
  %and421 = and i64 %bf.lshr418, 1
  %add422 = add nuw nsw i64 %and421, 11
  %bf.clear425 = and i64 %bf.load451, -256
  br label %if.end467

do.end435:                                        ; preds = %sw.epilog368
  %bf.lshr437 = lshr i64 %bf.load451, 32
  %and440 = and i64 %bf.lshr437, 1
  %add441 = add nuw nsw i64 %and440, 13
  %bf.clear444 = and i64 %bf.load451, -256
  br label %if.end467

do.end450:                                        ; preds = %sw.epilog368
  %bf.lshr452 = lshr i64 %bf.load451, 32
  %and455 = and i64 %bf.lshr452, 1
  %add456 = add nuw nsw i64 %and455, 15
  %bf.clear459 = and i64 %bf.load451, -256
  br label %if.end467

if.end467:                                        ; preds = %do.end383, %if.then405, %do.end435, %do.end450, %do.end416, %if.then397, %if.then372
  %bf.clear390.sink = phi i64 [ %bf.clear390, %do.end383 ], [ 18, %if.then405 ], [ %bf.clear444, %do.end435 ], [ %bf.clear459, %do.end450 ], [ %bf.clear425, %do.end416 ], [ 17, %if.then397 ], [ 8, %if.then372 ]
  %add.sink = phi i64 [ %add, %do.end383 ], [ %bf.clear407, %if.then405 ], [ %add441, %do.end435 ], [ %add456, %do.end450 ], [ %add422, %do.end416 ], [ %bf.clear399, %if.then397 ], [ %bf.clear374, %if.then372 ]
  %bf.set391 = or i64 %add.sink, %bf.clear390.sink
  store i64 %bf.set391, i64* %0, align 1
  %incdec.ptr468 = getelementptr i8, i8* %18, i64 1
  store i8* %incdec.ptr468, i8** %fmt.addr, align 8
  br label %cleanup473

cleanup473:                                       ; preds = %for.end, %if.end467, %if.end352, %sw.bb272, %sw.bb263, %sw.bb254, %sw.bb245, %if.then187, %if.then141
  %incdec.ptr468.sink = phi i8* [ %incdec.ptr468, %if.end467 ], [ %18, %if.end352 ], [ %incdec.ptr276, %sw.bb272 ], [ %incdec.ptr267, %sw.bb263 ], [ %incdec.ptr258, %sw.bb254 ], [ %incdec.ptr249, %sw.bb245 ], [ %incdec.ptr191, %if.then187 ], [ %incdec.ptr145, %if.then141 ], [ %4, %for.end ]
  %sub.ptr.lhs.cast469 = ptrtoint i8* %incdec.ptr468.sink to i64
  %sub.ptr.rhs.cast470 = ptrtoint i8* %fmt to i64
  %sub.ptr.sub471 = sub i64 %sub.ptr.lhs.cast469, %sub.ptr.rhs.cast470
  %retval.0 = trunc i64 %sub.ptr.sub471 to i32
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_field_width(%struct.printf_spec* nocapture noundef %spec, i32 noundef %width) unnamed_addr #0 {
entry:
  %0 = getelementptr %struct.printf_spec, %struct.printf_spec* %spec, i64 0, i32 0
  %bf.load = load i64, i64* %0, align 1
  %1 = shl i32 %width, 8
  %bf.shl = zext i32 %1 to i64
  %bf.clear = and i64 %bf.load, -4294967041
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, i64* %0, align 1
  %bf.shl2 = shl nuw i64 %bf.shl, 32
  %bf.ashr = ashr exact i64 %bf.shl2, 40
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp = icmp ne i32 %bf.cast, %width
  %.b77 = load i1, i1* @set_field_width.__already_done, align 1
  %lnot5 = xor i1 %.b77, true
  %2 = select i1 %cmp, i1 %lnot5, i1 false
  br i1 %2, label %if.then, label %if.end31, !prof !13

if.then:                                          ; preds = %entry
  store i1 true, i1* @set_field_width.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 noundef %width) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/vsprintf.c\22; .popsection; .long 14472b - 14470b; .short 2685; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !18
  br label %if.end31

if.end31:                                         ; preds = %if.then, %entry
  br i1 %cmp, label %if.then41, label %if.end60

if.then41:                                        ; preds = %if.end31
  %cmp43 = icmp sgt i32 %width, -8388607
  %cond = select i1 %cmp43, i32 %width, i32 -8388607
  %cmp46 = icmp slt i32 %cond, 8388607
  %cond51 = select i1 %cmp46, i32 %cond, i32 8388607
  %bf.load52 = load i64, i64* %0, align 1
  %3 = shl nsw i32 %cond51, 8
  %bf.shl54 = zext i32 %3 to i64
  %bf.clear55 = and i64 %bf.load52, -4294967041
  %bf.set56 = or i64 %bf.clear55, %bf.shl54
  store i64 %bf.set56, i64* %0, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then41, %if.end31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_precision(%struct.printf_spec* nocapture noundef %spec, i32 noundef %prec) unnamed_addr #0 {
entry:
  %0 = getelementptr %struct.printf_spec, %struct.printf_spec* %spec, i64 0, i32 0
  %bf.load = load i64, i64* %0, align 1
  %bf.value = zext i32 %prec to i64
  %bf.shl = shl i64 %bf.value, 48
  %bf.clear = and i64 %bf.load, 281474976710655
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, i64* %0, align 1
  %bf.ashr = ashr exact i64 %bf.shl, 48
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp = icmp ne i32 %bf.cast, %prec
  %.b76 = load i1, i1* @set_precision.__already_done, align 1
  %lnot4 = xor i1 %.b76, true
  %1 = select i1 %cmp, i1 %lnot4, i1 false
  br i1 %1, label %if.then, label %if.end30, !prof !13

if.then:                                          ; preds = %entry
  store i1 true, i1* @set_precision.__already_done, align 1
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef %prec) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/vsprintf.c\22; .popsection; .long 14472b - 14470b; .short 2694; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !19
  br label %if.end30

if.end30:                                         ; preds = %if.then, %entry
  br i1 %cmp, label %if.then40, label %if.end59

if.then40:                                        ; preds = %if.end30
  %cmp42 = icmp sgt i32 %prec, 0
  %cond = select i1 %cmp42, i32 %prec, i32 0
  %cmp45 = icmp ult i32 %cond, 32767
  %cond50 = select i1 %cmp45, i32 %cond, i32 32767
  %bf.load51 = load i64, i64* %0, align 1
  %bf.value52 = zext i32 %cond50 to i64
  %bf.shl53 = shl nuw nsw i64 %bf.value52, 48
  %bf.clear54 = and i64 %bf.load51, 281474976710655
  %bf.set55 = or i64 %bf.clear54, %bf.shl53
  store i64 %bf.set55, i64* %0, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then40, %if.end30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @string(i8* noundef %buf, i8* noundef %end, i8* noundef %s, i64 %spec.coerce) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %s, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  %0 = load i8*, i8** %buf.addr, align 8
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call3 = call fastcc i8* @string_nocheck(i8* noundef %0, i8* noundef %end, i8* noundef %s, i64 %spec.coerce) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call3, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @pointer(i8* noundef %fmt, i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) unnamed_addr #0 {
entry:
  %0 = load i8, i8* %fmt, align 1
  switch i8 %0, label %sw.epilog [
    i8 83, label %sw.bb1
    i8 115, label %sw.bb1
    i8 66, label %sw.bb1
    i8 82, label %sw.bb4
    i8 114, label %sw.bb4
    i8 104, label %sw.bb7
    i8 98, label %sw.bb10
    i8 77, label %sw.bb17
    i8 109, label %sw.bb17
    i8 73, label %sw.bb20
    i8 105, label %sw.bb20
    i8 69, label %sw.bb23
    i8 85, label %sw.bb26
    i8 86, label %sw.bb29
    i8 75, label %sw.bb32
    i8 78, label %sw.bb35
    i8 52, label %sw.bb38
    i8 97, label %sw.bb41
    i8 100, label %sw.bb44
    i8 116, label %sw.bb47
    i8 67, label %sw.bb50
    i8 68, label %sw.bb53
    i8 103, label %sw.bb56
    i8 71, label %sw.bb59
    i8 79, label %sw.bb62
    i8 102, label %sw.bb65
    i8 120, label %sw.bb69
    i8 101, label %sw.bb72
    i8 117, label %sw.bb76
    i8 107, label %sw.bb76
  ]

sw.bb1:                                           ; preds = %entry, %entry, %entry
  %call3 = call fastcc i8* @symbol_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb4:                                           ; preds = %entry, %entry
  %1 = bitcast i8* %ptr to %struct.resource*
  %call6 = call fastcc i8* @resource_string(i8* noundef %buf, i8* noundef %end, %struct.resource* noundef %1, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb7:                                           ; preds = %entry
  %call9 = call fastcc i8* @hex_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb10:                                          ; preds = %entry
  %arrayidx = getelementptr i8, i8* %fmt, i64 1
  %2 = load i8, i8* %arrayidx, align 1
  %cond93 = icmp eq i8 %2, 108
  %3 = bitcast i8* %ptr to i64*
  br i1 %cond93, label %sw.bb12, label %sw.default

sw.bb12:                                          ; preds = %sw.bb10
  %call14 = call fastcc i8* @bitmap_list_string(i8* noundef %buf, i8* noundef %end, i64* noundef %3, i64 %spec.coerce) #17
  br label %return

sw.default:                                       ; preds = %sw.bb10
  %call16 = call fastcc i8* @bitmap_string(i8* noundef %buf, i8* noundef %end, i64* noundef %3, i64 %spec.coerce) #17
  br label %return

sw.bb17:                                          ; preds = %entry, %entry
  %call19 = call fastcc i8* @mac_address_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb20:                                          ; preds = %entry, %entry
  %call22 = call fastcc i8* @ip_addr_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb23:                                          ; preds = %entry
  %call25 = call fastcc i8* @escaped_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb26:                                          ; preds = %entry
  %call28 = call fastcc i8* @uuid_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb29:                                          ; preds = %entry
  %4 = bitcast i8* %ptr to %struct.va_format*
  %call31 = call fastcc i8* @va_format(i8* noundef %buf, i8* noundef %end, %struct.va_format* noundef %4, i64 %spec.coerce) #17
  br label %return

sw.bb32:                                          ; preds = %entry
  %call34 = call fastcc i8* @restricted_pointer(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) #17
  br label %return

sw.bb35:                                          ; preds = %entry
  %call37 = call fastcc i8* @netdev_bits(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb38:                                          ; preds = %entry
  %5 = bitcast i8* %ptr to i32*
  %call40 = call fastcc i8* @fourcc_string(i8* noundef %buf, i8* noundef %end, i32* noundef %5, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb41:                                          ; preds = %entry
  %call43 = call fastcc i8* @address_val(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb44:                                          ; preds = %entry
  %6 = bitcast i8* %ptr to %struct.dentry*
  %call46 = call fastcc i8* @dentry_name(i8* noundef %buf, i8* noundef %end, %struct.dentry* noundef %6, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb47:                                          ; preds = %entry
  %call49 = call fastcc i8* @time_and_date(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb50:                                          ; preds = %entry
  %7 = bitcast i8* %ptr to %struct.clk*
  %call52 = call fastcc i8* @clock(i8* noundef %buf, i8* noundef %end, %struct.clk* noundef %7, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb53:                                          ; preds = %entry
  %8 = bitcast i8* %ptr to %struct.file*
  %call55 = call fastcc i8* @file_dentry_name(i8* noundef %buf, i8* noundef %end, %struct.file* noundef %8, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb56:                                          ; preds = %entry
  %9 = bitcast i8* %ptr to %struct.block_device*
  %call58 = call fastcc i8* @bdev_name(i8* noundef %buf, i8* noundef %end, %struct.block_device* noundef %9, i64 %spec.coerce) #17
  br label %return

sw.bb59:                                          ; preds = %entry
  %call61 = call fastcc i8* @flags_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb62:                                          ; preds = %entry
  %10 = bitcast i8* %ptr to %struct.device_node*
  %add.ptr = getelementptr i8, i8* %fmt, i64 1
  %call64 = call fastcc i8* @device_node_string(i8* noundef %buf, i8* noundef %end, %struct.device_node* noundef %10, i64 %spec.coerce, i8* noundef %add.ptr) #17
  br label %return

sw.bb65:                                          ; preds = %entry
  %11 = bitcast i8* %ptr to %struct.fwnode_handle*
  %add.ptr66 = getelementptr i8, i8* %fmt, i64 1
  %call68 = call fastcc i8* @fwnode_string(i8* noundef %buf, i8* noundef %end, %struct.fwnode_handle* noundef %11, i64 %spec.coerce, i8* noundef %add.ptr66) #17
  br label %return

sw.bb69:                                          ; preds = %entry
  %call71 = call fastcc i8* @pointer_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) #17
  br label %return

sw.bb72:                                          ; preds = %entry
  %call73 = call fastcc i1 @IS_ERR(i8* noundef %ptr) #17
  br i1 %call73, label %if.end, label %sw.epilog

if.end:                                           ; preds = %sw.bb72
  %call75 = call fastcc i8* @err_ptr(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) #17
  br label %return

sw.bb76:                                          ; preds = %entry, %entry
  %arrayidx77 = getelementptr i8, i8* %fmt, i64 1
  %12 = load i8, i8* %arrayidx77, align 1
  %cond = icmp eq i8 %12, 115
  br i1 %cond, label %sw.bb79, label %sw.default82

sw.bb79:                                          ; preds = %sw.bb76
  %call81 = call fastcc i8* @string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) #17
  br label %return

sw.default82:                                     ; preds = %sw.bb76
  %call84 = call fastcc i8* @error_string(i8* noundef %buf, i8* noundef %end, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i64 %spec.coerce) #17
  br label %return

sw.epilog:                                        ; preds = %sw.bb72, %entry
  %13 = load i8, i8* @no_hash_pointers, align 1, !range !14
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then88, !prof !16

if.then88:                                        ; preds = %sw.epilog
  %call90 = call fastcc i8* @pointer_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) #17
  br label %return

if.else:                                          ; preds = %sw.epilog
  %call92 = call fastcc i8* @ptr_to_id(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) #17
  br label %return

return:                                           ; preds = %if.else, %if.then88, %sw.default82, %sw.bb79, %if.end, %sw.bb69, %sw.bb65, %sw.bb62, %sw.bb59, %sw.bb56, %sw.bb53, %sw.bb50, %sw.bb47, %sw.bb44, %sw.bb41, %sw.bb38, %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb26, %sw.bb23, %sw.bb20, %sw.bb17, %sw.default, %sw.bb12, %sw.bb7, %sw.bb4, %sw.bb1
  %retval.0 = phi i8* [ %call90, %if.then88 ], [ %call92, %if.else ], [ %call81, %sw.bb79 ], [ %call84, %sw.default82 ], [ %call75, %if.end ], [ %call71, %sw.bb69 ], [ %call68, %sw.bb65 ], [ %call64, %sw.bb62 ], [ %call61, %sw.bb59 ], [ %call58, %sw.bb56 ], [ %call55, %sw.bb53 ], [ %call52, %sw.bb50 ], [ %call49, %sw.bb47 ], [ %call46, %sw.bb44 ], [ %call43, %sw.bb41 ], [ %call40, %sw.bb38 ], [ %call37, %sw.bb35 ], [ %call34, %sw.bb32 ], [ %call31, %sw.bb29 ], [ %call28, %sw.bb26 ], [ %call25, %sw.bb23 ], [ %call22, %sw.bb20 ], [ %call19, %sw.bb17 ], [ %call14, %sw.bb12 ], [ %call16, %sw.default ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb1 ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid writeonly
define internal fastcc i8* @number(i8* noundef writeonly %buf, i8* noundef readnone %end, i64 noundef %num, i64 %spec.coerce) unnamed_addr #1 {
entry:
  %tmp = alloca [24 x i8], align 4
  %0 = getelementptr inbounds [24 x i8], [24 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !7
  %bf.lshr = lshr i64 %spec.coerce, 32
  %1 = trunc i64 %bf.lshr to i32
  %and = and i32 %1, 64
  %tobool = icmp ne i32 %and, 0
  %2 = and i64 %spec.coerce, 280375465082880
  %cmp = icmp ne i64 %2, 10995116277760
  %3 = select i1 %tobool, i1 %cmp, i1 false
  %cmp5 = icmp eq i64 %num, 0
  %bf.shl = shl i64 %spec.coerce, 32
  %bf.ashr = ashr i64 %bf.shl, 40
  %bf.cast7 = trunc i64 %bf.ashr to i32
  %bf.ashr9 = ashr i64 %spec.coerce, 48
  %bf.cast10 = trunc i64 %bf.ashr9 to i32
  %4 = trunc i64 %bf.lshr to i8
  %conv = and i8 %4, 32
  %and20 = and i32 %1, 2
  %tobool21.not = icmp eq i32 %and20, 0
  %bf.set = and i64 %spec.coerce, -68719476737
  %spec.select = select i1 %tobool21.not, i64 %spec.coerce, i64 %bf.set
  %bf.lshr31 = lshr i64 %spec.select, 32
  %5 = trunc i64 %bf.lshr31 to i32
  %and34 = and i32 %5, 1
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end60, label %if.then36

if.then36:                                        ; preds = %entry
  %cmp37 = icmp slt i64 %num, 0
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.then36
  %sub = sub i64 0, %num
  %dec = add nsw i32 %bf.cast7, -1
  br label %if.end60

if.else:                                          ; preds = %if.then36
  %and44 = and i32 %5, 4
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else48, label %if.then46

if.then46:                                        ; preds = %if.else
  %dec47 = add nsw i32 %bf.cast7, -1
  br label %if.end60

if.else48:                                        ; preds = %if.else
  %and53 = and i32 %5, 8
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end60, label %if.then55

if.then55:                                        ; preds = %if.else48
  %dec56 = add nsw i32 %bf.cast7, -1
  br label %if.end60

if.end60:                                         ; preds = %if.then39, %if.else48, %if.then55, %if.then46, %entry
  %num.addr.0 = phi i64 [ %sub, %if.then39 ], [ %num, %if.then46 ], [ %num, %if.then55 ], [ %num, %if.else48 ], [ %num, %entry ]
  %tobool149.not = phi i1 [ false, %if.then39 ], [ false, %if.then46 ], [ false, %if.then55 ], [ true, %if.else48 ], [ true, %entry ]
  %sign.0 = phi i8 [ 45, %if.then39 ], [ 43, %if.then46 ], [ 32, %if.then55 ], [ 0, %if.else48 ], [ 0, %entry ]
  %field_width.0 = phi i32 [ %dec, %if.then39 ], [ %dec47, %if.then46 ], [ %dec56, %if.then55 ], [ %bf.cast7, %if.else48 ], [ %bf.cast7, %entry ]
  br i1 %3, label %if.then62, label %if.end77

if.then62:                                        ; preds = %if.end60
  %6 = and i64 %spec.select, 280375465082880
  %cmp67 = icmp eq i64 %6, 17592186044416
  br i1 %cmp67, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.then62
  %sub70 = add nsw i32 %field_width.0, -2
  br label %if.end77

if.else71:                                        ; preds = %if.then62
  %not.cmp5 = xor i1 %cmp5, true
  %dec74 = sext i1 %not.cmp5 to i32
  %spec.select340 = add nsw i32 %field_width.0, %dec74
  br label %if.end77

if.end77:                                         ; preds = %if.else71, %if.then69, %if.end60
  %field_width.1 = phi i32 [ %sub70, %if.then69 ], [ %field_width.0, %if.end60 ], [ %spec.select340, %if.else71 ]
  %bf.lshr79 = lshr i64 %spec.select, 40
  %7 = trunc i64 %bf.lshr79 to i32
  %bf.cast81 = and i32 %7, 255
  %conv82 = zext i32 %bf.cast81 to i64
  %cmp83 = icmp ult i64 %num.addr.0, %conv82
  br i1 %cmp83, label %if.then85, label %if.else90

if.then85:                                        ; preds = %if.end77
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @hex_asc_upper, i64 0, i64 %num.addr.0
  %8 = load i8, i8* %arrayidx, align 1
  %or338 = or i8 %8, %conv
  store i8 %or338, i8* %0, align 4
  br label %if.end128

if.else90:                                        ; preds = %if.end77
  %cmp95.not = icmp eq i32 %bf.cast81, 10
  br i1 %cmp95.not, label %if.else124, label %if.then97

if.then97:                                        ; preds = %if.else90
  %sub102 = add nuw nsw i64 %bf.lshr79, 255
  %cmp107 = icmp eq i32 %bf.cast81, 16
  %spec.store.select = select i1 %cmp107, i64 4, i64 3
  %conv112 = and i64 %sub102, 255
  br label %do.body

do.body:                                          ; preds = %do.body, %if.then97
  %num.addr.1 = phi i64 [ %num.addr.0, %if.then97 ], [ %shr, %do.body ]
  %i.0 = phi i32 [ 0, %if.then97 ], [ %inc120, %do.body ]
  %and113 = and i64 %conv112, %num.addr.1
  %arrayidx115 = getelementptr [0 x i8], [0 x i8]* @hex_asc_upper, i64 0, i64 %and113
  %9 = load i8, i8* %arrayidx115, align 1
  %or118337 = or i8 %9, %conv
  %inc120 = add i32 %i.0, 1
  %idxprom121 = sext i32 %i.0 to i64
  %arrayidx122 = getelementptr [24 x i8], [24 x i8]* %tmp, i64 0, i64 %idxprom121
  store i8 %or118337, i8* %arrayidx122, align 1
  %shr = lshr i64 %num.addr.1, %spec.store.select
  %tobool123.not = icmp eq i64 %shr, 0
  br i1 %tobool123.not, label %if.end128, label %do.body

if.else124:                                       ; preds = %if.else90
  %call = call fastcc i8* @put_dec(i8* noundef nonnull %0, i64 noundef %num.addr.0) #17
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint [24 x i8]* %tmp to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv126 = trunc i64 %sub.ptr.sub to i32
  br label %if.end128

if.end128:                                        ; preds = %do.body, %if.else124, %if.then85
  %i.1 = phi i32 [ 1, %if.then85 ], [ %conv126, %if.else124 ], [ %inc120, %do.body ]
  %cmp129 = icmp sgt i32 %i.1, %bf.cast10
  %spec.select341 = select i1 %cmp129, i32 %i.1, i32 %bf.cast10
  %sub133 = sub i32 %field_width.1, %spec.select341
  %and138 = and i32 %5, 18
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %while.cond.preheader, label %if.end148

while.cond.preheader:                             ; preds = %if.end128
  %dec141343 = add i32 %sub133, -1
  %cmp142344 = icmp sgt i32 %dec141343, -1
  br i1 %cmp142344, label %while.body.preheader, label %if.end148

while.body.preheader:                             ; preds = %while.cond.preheader
  %10 = zext i32 %dec141343 to i64
  %11 = add nuw nsw i64 %10, 1
  %min.iters.check = icmp eq i32 %dec141343, 0
  br i1 %min.iters.check, label %while.body.preheader430, label %vector.ph

vector.ph:                                        ; preds = %while.body.preheader
  %n.vec = and i64 %11, 8589934590
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end = sub i32 %dec141343, %cast.crd
  %ind.end375 = getelementptr i8, i8* %buf, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue379, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue379 ]
  %next.gep = getelementptr i8, i8* %buf, i64 %index
  %12 = or i64 %index, 1
  %next.gep377 = getelementptr i8, i8* %buf, i64 %12
  %13 = icmp ult i8* %next.gep, %end
  %14 = icmp ult i8* %next.gep377, %end
  br i1 %13, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 32, i8* %next.gep, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  br i1 %14, label %pred.store.if378, label %pred.store.continue379

pred.store.if378:                                 ; preds = %pred.store.continue
  store i8 32, i8* %next.gep377, align 1
  br label %pred.store.continue379

pred.store.continue379:                           ; preds = %pred.store.if378, %pred.store.continue
  %index.next = add nuw i64 %index, 2
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %pred.store.continue379
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %if.end148, label %while.body.preheader430

while.body.preheader430:                          ; preds = %while.body.preheader, %middle.block
  %dec141347.ph = phi i32 [ %dec141343, %while.body.preheader ], [ %ind.end, %middle.block ]
  %buf.addr.0345.ph = phi i8* [ %buf, %while.body.preheader ], [ %ind.end375, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader430, %if.end147
  %dec141347 = phi i32 [ %dec141, %if.end147 ], [ %dec141347.ph, %while.body.preheader430 ]
  %buf.addr.0345 = phi i8* [ %incdec.ptr, %if.end147 ], [ %buf.addr.0345.ph, %while.body.preheader430 ]
  %cmp144 = icmp ult i8* %buf.addr.0345, %end
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %while.body
  store i8 32, i8* %buf.addr.0345, align 1
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %while.body
  %incdec.ptr = getelementptr i8, i8* %buf.addr.0345, i64 1
  %dec141 = add i32 %dec141347, -1
  %cmp142 = icmp sgt i32 %dec141, -1
  br i1 %cmp142, label %while.body, label %if.end148, !llvm.loop !21

if.end148:                                        ; preds = %if.end147, %middle.block, %while.cond.preheader, %if.end128
  %buf.addr.1 = phi i8* [ %buf, %if.end128 ], [ %buf, %while.cond.preheader ], [ %ind.end375, %middle.block ], [ %incdec.ptr, %if.end147 ]
  %field_width.3 = phi i32 [ %sub133, %if.end128 ], [ %dec141343, %while.cond.preheader ], [ -1, %middle.block ], [ -1, %if.end147 ]
  br i1 %tobool149.not, label %if.end156, label %if.then150

if.then150:                                       ; preds = %if.end148
  %cmp151 = icmp ult i8* %buf.addr.1, %end
  br i1 %cmp151, label %if.then153, label %if.end154

if.then153:                                       ; preds = %if.then150
  store i8 %sign.0, i8* %buf.addr.1, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.then153, %if.then150
  %incdec.ptr155 = getelementptr i8, i8* %buf.addr.1, i64 1
  br label %if.end156

if.end156:                                        ; preds = %if.end154, %if.end148
  %buf.addr.2 = phi i8* [ %incdec.ptr155, %if.end154 ], [ %buf.addr.1, %if.end148 ]
  br i1 %3, label %if.then158, label %if.end189

if.then158:                                       ; preds = %if.end156
  %cmp163 = icmp eq i32 %bf.cast81, 16
  %cmp5.not = xor i1 %cmp5, true
  %brmerge = or i1 %cmp163, %cmp5.not
  br i1 %brmerge, label %if.then166, label %if.end172

if.then166:                                       ; preds = %if.then158
  %cmp167 = icmp ult i8* %buf.addr.2, %end
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.then166
  store i8 48, i8* %buf.addr.2, align 1
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %if.then166
  %incdec.ptr171 = getelementptr i8, i8* %buf.addr.2, i64 1
  br label %if.end172

if.end172:                                        ; preds = %if.then158, %if.end170
  %buf.addr.3 = phi i8* [ %incdec.ptr171, %if.end170 ], [ %buf.addr.2, %if.then158 ]
  br i1 %cmp163, label %if.then179, label %if.end189

if.then179:                                       ; preds = %if.end172
  %cmp180 = icmp ult i8* %buf.addr.3, %end
  br i1 %cmp180, label %if.then182, label %if.end186

if.then182:                                       ; preds = %if.then179
  %16 = or i8 %conv, 88
  store i8 %16, i8* %buf.addr.3, align 1
  br label %if.end186

if.end186:                                        ; preds = %if.then182, %if.then179
  %incdec.ptr187 = getelementptr i8, i8* %buf.addr.3, i64 1
  br label %if.end189

if.end189:                                        ; preds = %if.end172, %if.end186, %if.end156
  %buf.addr.4 = phi i8* [ %incdec.ptr187, %if.end186 ], [ %buf.addr.3, %if.end172 ], [ %buf.addr.2, %if.end156 ]
  %and194 = and i32 %5, 2
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.then196, label %if.end214

if.then196:                                       ; preds = %if.end189
  %17 = trunc i64 %bf.lshr31 to i8
  %18 = and i8 %17, 16
  %conv202 = or i8 %18, 32
  %dec204349 = add i32 %field_width.3, -1
  %cmp205350 = icmp sgt i32 %dec204349, -1
  br i1 %cmp205350, label %while.body207.preheader, label %if.end214

while.body207.preheader:                          ; preds = %if.then196
  %19 = zext i32 %dec204349 to i64
  %20 = add nuw nsw i64 %19, 1
  %min.iters.check383 = icmp eq i32 %dec204349, 0
  br i1 %min.iters.check383, label %while.body207.preheader429, label %vector.ph384

vector.ph384:                                     ; preds = %while.body207.preheader
  %n.vec386 = and i64 %20, 8589934590
  %cast.crd388 = trunc i64 %n.vec386 to i32
  %ind.end389 = sub i32 %dec204349, %cast.crd388
  %ind.end391 = getelementptr i8, i8* %buf.addr.4, i64 %n.vec386
  br label %vector.body382

vector.body382:                                   ; preds = %pred.store.continue402, %vector.ph384
  %index393 = phi i64 [ 0, %vector.ph384 ], [ %index.next403, %pred.store.continue402 ]
  %next.gep397 = getelementptr i8, i8* %buf.addr.4, i64 %index393
  %21 = or i64 %index393, 1
  %next.gep398 = getelementptr i8, i8* %buf.addr.4, i64 %21
  %22 = icmp ult i8* %next.gep397, %end
  %23 = icmp ult i8* %next.gep398, %end
  br i1 %22, label %pred.store.if399, label %pred.store.continue400

pred.store.if399:                                 ; preds = %vector.body382
  store i8 %conv202, i8* %next.gep397, align 1
  br label %pred.store.continue400

pred.store.continue400:                           ; preds = %pred.store.if399, %vector.body382
  br i1 %23, label %pred.store.if401, label %pred.store.continue402

pred.store.if401:                                 ; preds = %pred.store.continue400
  store i8 %conv202, i8* %next.gep398, align 1
  br label %pred.store.continue402

pred.store.continue402:                           ; preds = %pred.store.if401, %pred.store.continue400
  %index.next403 = add nuw i64 %index393, 2
  %24 = icmp eq i64 %index.next403, %n.vec386
  br i1 %24, label %middle.block380, label %vector.body382, !llvm.loop !22

middle.block380:                                  ; preds = %pred.store.continue402
  %cmp.n392 = icmp eq i64 %20, %n.vec386
  br i1 %cmp.n392, label %if.end214, label %while.body207.preheader429

while.body207.preheader429:                       ; preds = %while.body207.preheader, %middle.block380
  %dec204353.ph = phi i32 [ %dec204349, %while.body207.preheader ], [ %ind.end389, %middle.block380 ]
  %buf.addr.5351.ph = phi i8* [ %buf.addr.4, %while.body207.preheader ], [ %ind.end391, %middle.block380 ]
  br label %while.body207

while.body207:                                    ; preds = %while.body207.preheader429, %if.end211
  %dec204353 = phi i32 [ %dec204, %if.end211 ], [ %dec204353.ph, %while.body207.preheader429 ]
  %buf.addr.5351 = phi i8* [ %incdec.ptr212, %if.end211 ], [ %buf.addr.5351.ph, %while.body207.preheader429 ]
  %cmp208 = icmp ult i8* %buf.addr.5351, %end
  br i1 %cmp208, label %if.then210, label %if.end211

if.then210:                                       ; preds = %while.body207
  store i8 %conv202, i8* %buf.addr.5351, align 1
  br label %if.end211

if.end211:                                        ; preds = %if.then210, %while.body207
  %incdec.ptr212 = getelementptr i8, i8* %buf.addr.5351, i64 1
  %dec204 = add i32 %dec204353, -1
  %cmp205 = icmp sgt i32 %dec204, -1
  br i1 %cmp205, label %while.body207, label %if.end214, !llvm.loop !23

if.end214:                                        ; preds = %if.end211, %middle.block380, %if.then196, %if.end189
  %buf.addr.6 = phi i8* [ %buf.addr.4, %if.end189 ], [ %buf.addr.4, %if.then196 ], [ %ind.end391, %middle.block380 ], [ %incdec.ptr212, %if.end211 ]
  %field_width.5 = phi i32 [ %field_width.3, %if.end189 ], [ %dec204349, %if.then196 ], [ -1, %middle.block380 ], [ -1, %if.end211 ]
  %dec216356 = add i32 %spec.select341, -1
  %cmp217.not357 = icmp sgt i32 %i.1, %dec216356
  br i1 %cmp217.not357, label %while.cond226.preheader, label %while.body219

while.cond226.preheader:                          ; preds = %if.end223, %if.end214
  %buf.addr.7.lcssa = phi i8* [ %buf.addr.6, %if.end214 ], [ %incdec.ptr224, %if.end223 ]
  %cmp228363 = icmp sgt i32 %i.1, 0
  br i1 %cmp228363, label %while.body230.preheader, label %while.cond239.preheader

while.body230.preheader:                          ; preds = %while.cond226.preheader
  %dec227362 = add nsw i32 %i.1, -1
  br label %while.body230

while.body219:                                    ; preds = %if.end214, %if.end223
  %dec216360 = phi i32 [ %dec216, %if.end223 ], [ %dec216356, %if.end214 ]
  %buf.addr.7358 = phi i8* [ %incdec.ptr224, %if.end223 ], [ %buf.addr.6, %if.end214 ]
  %cmp220 = icmp ult i8* %buf.addr.7358, %end
  br i1 %cmp220, label %if.then222, label %if.end223

if.then222:                                       ; preds = %while.body219
  store i8 48, i8* %buf.addr.7358, align 1
  br label %if.end223

if.end223:                                        ; preds = %if.then222, %while.body219
  %incdec.ptr224 = getelementptr i8, i8* %buf.addr.7358, i64 1
  %dec216 = add i32 %dec216360, -1
  %cmp217.not = icmp sgt i32 %i.1, %dec216
  br i1 %cmp217.not, label %while.cond226.preheader, label %while.body219

while.cond239.preheader:                          ; preds = %if.end236, %while.cond226.preheader
  %buf.addr.8.lcssa = phi i8* [ %buf.addr.7.lcssa, %while.cond226.preheader ], [ %incdec.ptr237, %if.end236 ]
  %dec240368 = add i32 %field_width.5, -1
  %cmp241369 = icmp sgt i32 %dec240368, -1
  br i1 %cmp241369, label %while.body243.preheader, label %while.end249

while.body243.preheader:                          ; preds = %while.cond239.preheader
  %25 = zext i32 %dec240368 to i64
  %26 = add nuw nsw i64 %25, 1
  %min.iters.check407 = icmp eq i32 %dec240368, 0
  br i1 %min.iters.check407, label %while.body243.preheader428, label %vector.ph408

vector.ph408:                                     ; preds = %while.body243.preheader
  %n.vec410 = and i64 %26, 8589934590
  %cast.crd412 = trunc i64 %n.vec410 to i32
  %ind.end413 = sub i32 %dec240368, %cast.crd412
  %ind.end415 = getelementptr i8, i8* %buf.addr.8.lcssa, i64 %n.vec410
  br label %vector.body406

vector.body406:                                   ; preds = %pred.store.continue426, %vector.ph408
  %index417 = phi i64 [ 0, %vector.ph408 ], [ %index.next427, %pred.store.continue426 ]
  %next.gep421 = getelementptr i8, i8* %buf.addr.8.lcssa, i64 %index417
  %27 = or i64 %index417, 1
  %next.gep422 = getelementptr i8, i8* %buf.addr.8.lcssa, i64 %27
  %28 = icmp ult i8* %next.gep421, %end
  %29 = icmp ult i8* %next.gep422, %end
  br i1 %28, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %vector.body406
  store i8 32, i8* %next.gep421, align 1
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %vector.body406
  br i1 %29, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  store i8 32, i8* %next.gep422, align 1
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %index.next427 = add nuw i64 %index417, 2
  %30 = icmp eq i64 %index.next427, %n.vec410
  br i1 %30, label %middle.block404, label %vector.body406, !llvm.loop !24

middle.block404:                                  ; preds = %pred.store.continue426
  %cmp.n416 = icmp eq i64 %26, %n.vec410
  br i1 %cmp.n416, label %while.end249, label %while.body243.preheader428

while.body243.preheader428:                       ; preds = %while.body243.preheader, %middle.block404
  %dec240372.ph = phi i32 [ %dec240368, %while.body243.preheader ], [ %ind.end413, %middle.block404 ]
  %buf.addr.9370.ph = phi i8* [ %buf.addr.8.lcssa, %while.body243.preheader ], [ %ind.end415, %middle.block404 ]
  br label %while.body243

while.body230:                                    ; preds = %while.body230.preheader, %if.end236
  %dec227366 = phi i32 [ %dec227, %if.end236 ], [ %dec227362, %while.body230.preheader ]
  %buf.addr.8364 = phi i8* [ %incdec.ptr237, %if.end236 ], [ %buf.addr.7.lcssa, %while.body230.preheader ]
  %cmp231 = icmp ult i8* %buf.addr.8364, %end
  br i1 %cmp231, label %if.then233, label %if.end236

if.then233:                                       ; preds = %while.body230
  %idxprom234342 = zext i32 %dec227366 to i64
  %arrayidx235 = getelementptr [24 x i8], [24 x i8]* %tmp, i64 0, i64 %idxprom234342
  %31 = load i8, i8* %arrayidx235, align 1
  store i8 %31, i8* %buf.addr.8364, align 1
  br label %if.end236

if.end236:                                        ; preds = %if.then233, %while.body230
  %incdec.ptr237 = getelementptr i8, i8* %buf.addr.8364, i64 1
  %dec227 = add i32 %dec227366, -1
  %cmp228 = icmp sgt i32 %dec227, -1
  br i1 %cmp228, label %while.body230, label %while.cond239.preheader

while.body243:                                    ; preds = %while.body243.preheader428, %if.end247
  %dec240372 = phi i32 [ %dec240, %if.end247 ], [ %dec240372.ph, %while.body243.preheader428 ]
  %buf.addr.9370 = phi i8* [ %incdec.ptr248, %if.end247 ], [ %buf.addr.9370.ph, %while.body243.preheader428 ]
  %cmp244 = icmp ult i8* %buf.addr.9370, %end
  br i1 %cmp244, label %if.then246, label %if.end247

if.then246:                                       ; preds = %while.body243
  store i8 32, i8* %buf.addr.9370, align 1
  br label %if.end247

if.end247:                                        ; preds = %if.then246, %while.body243
  %incdec.ptr248 = getelementptr i8, i8* %buf.addr.9370, i64 1
  %dec240 = add i32 %dec240372, -1
  %cmp241 = icmp sgt i32 %dec240, -1
  br i1 %cmp241, label %while.body243, label %while.end249, !llvm.loop !25

while.end249:                                     ; preds = %if.end247, %middle.block404, %while.cond239.preheader
  %buf.addr.9.lcssa = phi i8* [ %buf.addr.8.lcssa, %while.cond239.preheader ], [ %ind.end415, %middle.block404 ], [ %incdec.ptr248, %if.end247 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #18
  ret i8* %buf.addr.9.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vscnprintf(i8* noundef %buf, i64 noundef %size, i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef readonly %args) local_unnamed_addr #0 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #18
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef align 8 dereferenceable(32) %1, i64 32, i1 false)
  %call = call i32 @vsnprintf(i8* noundef %buf, i64 noundef %size, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #18
  %conv = sext i32 %call to i64
  %cmp = icmp ult i64 %conv, %size
  br i1 %cmp, label %cleanup, label %if.end, !prof !16

if.end:                                           ; preds = %entry
  %cmp4.not = icmp eq i64 %size, 0
  br i1 %cmp4.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end
  %2 = trunc i64 %size to i32
  %conv7 = add i32 %2, -1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then6
  %retval.0 = phi i32 [ %conv7, %if.then6 ], [ %call, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @snprintf(i8* noundef %buf, i64 noundef %size, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vsnprintf(i8* noundef %buf, i64 noundef %size, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #18
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #18
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @scnprintf(i8* noundef %buf, i64 noundef %size, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vscnprintf(i8* noundef %buf, i64 noundef %size, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #18
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vsprintf(i8* noundef %buf, i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef readonly %args) local_unnamed_addr #0 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #18
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef align 8 dereferenceable(32) %1, i64 32, i1 false)
  %call = call i32 @vsnprintf(i8* noundef %buf, i64 noundef 2147483647, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sprintf(i8* noundef %buf, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vsnprintf(i8* noundef %buf, i64 noundef 2147483647, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #18
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #18
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vsscanf(i8* noundef %buf, i8* noundef %fmt, %"struct.std::__va_list"* noundef %args) local_unnamed_addr #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %next = alloca i8*, align 8
  %set = alloca [4 x i64], align 8
  %0 = bitcast i8** %next to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i8* null, i8** %next, align 8, !annotation !7
  %1 = load i8, i8* %fmt, align 1
  %tobool.not717 = icmp eq i8 %1, 0
  br i1 %tobool.not717, label %cleanup563, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %sub.ptr.rhs.cast = ptrtoint i8* %buf to i64
  %gr_offs_p = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %args, i64 0, i32 3
  %reg_top_p = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %args, i64 0, i32 1
  %stack_p = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %args, i64 0, i32 0
  %2 = bitcast [4 x i64]* %set to i8*
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %set, i64 0, i64 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %3 = phi i8 [ %1, %while.body.lr.ph ], [ %39, %while.cond.backedge ]
  %4 = phi i8* [ %fmt, %while.body.lr.ph ], [ %38, %while.cond.backedge ]
  %num.0719 = phi i32 [ 0, %while.body.lr.ph ], [ %num.0.be, %while.cond.backedge ]
  %str.0718 = phi i8* [ %buf, %while.body.lr.ph ], [ %str.0.be, %while.cond.backedge ]
  %5 = zext i8 %3 to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  %7 = and i8 %6, 32
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %incdec.ptr = getelementptr i8, i8* %4, i64 1
  %call = call i8* @skip_spaces(i8* noundef %incdec.ptr) #19
  %call3 = call i8* @skip_spaces(i8* noundef %str.0718) #19
  %.pre744 = load i8, i8* %call, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = phi i8 [ %.pre744, %if.then ], [ %3, %while.body ]
  %9 = phi i8* [ %call, %if.then ], [ %4, %while.body ]
  %str.1 = phi i8* [ %call3, %if.then ], [ %str.0718, %while.body ]
  switch i8 %8, label %if.then9 [
    i8 0, label %cleanup563
    i8 37, label %if.end21
  ]

if.then9:                                         ; preds = %if.end
  %incdec.ptr10 = getelementptr i8, i8* %9, i64 1
  store i8* %incdec.ptr10, i8** %fmt.addr, align 8
  %10 = load i8, i8* %9, align 1
  %incdec.ptr12 = getelementptr i8, i8* %str.1, i64 1
  %11 = load i8, i8* %str.1, align 1
  %cmp14.not = icmp eq i8 %10, %11
  br i1 %cmp14.not, label %while.cond.backedge, label %cleanup563

if.end21:                                         ; preds = %if.end
  %incdec.ptr22 = getelementptr i8, i8* %9, i64 1
  store i8* %incdec.ptr22, i8** %fmt.addr, align 8
  %12 = load i8, i8* %incdec.ptr22, align 1
  %cmp24 = icmp eq i8 %12, 42
  br i1 %cmp24, label %if.then26, label %if.end66

if.then26:                                        ; preds = %if.end21
  %13 = load i8, i8* %str.1, align 1
  %tobool27.not = icmp eq i8 %13, 0
  br i1 %tobool27.not, label %cleanup563, label %while.cond30.preheader

while.cond30.preheader:                           ; preds = %if.then26
  %14 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_ctype, i64 0, i64 42), align 1
  %.fr686714 = freeze i8 %14
  %15 = and i8 %.fr686714, 32
  %cmp36.not.not715 = icmp eq i8 %15, 0
  br i1 %cmp36.not.not715, label %switch.early.test, label %while.cond51.preheader

switch.early.test:                                ; preds = %while.cond30.preheader, %if.end49
  %16 = phi i8 [ %19, %if.end49 ], [ 42, %while.cond30.preheader ]
  %17 = phi i8* [ %incdec.ptr50, %if.end49 ], [ %incdec.ptr22, %while.cond30.preheader ]
  switch i8 %16, label %if.end49 [
    i8 37, label %while.cond51.preheader
    i8 0, label %while.cond51.preheader
    i8 91, label %cleanup563
  ]

while.cond51.preheader:                           ; preds = %switch.early.test, %switch.early.test, %if.end49, %while.cond30.preheader
  %18 = phi i8* [ %incdec.ptr22, %while.cond30.preheader ], [ %17, %switch.early.test ], [ %17, %switch.early.test ], [ %incdec.ptr50, %if.end49 ]
  br label %while.cond51

if.end49:                                         ; preds = %switch.early.test
  %incdec.ptr50 = getelementptr i8, i8* %17, i64 1
  store i8* %incdec.ptr50, i8** %fmt.addr, align 8
  %19 = load i8, i8* %incdec.ptr50, align 1
  %20 = zext i8 %19 to i64
  %arrayidx33 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %20
  %21 = load i8, i8* %arrayidx33, align 1
  %.fr686 = freeze i8 %21
  %22 = and i8 %.fr686, 32
  %cmp36.not.not = icmp eq i8 %22, 0
  br i1 %cmp36.not.not, label %switch.early.test, label %while.cond51.preheader

while.cond51:                                     ; preds = %while.cond51, %while.cond51.preheader
  %str.2 = phi i8* [ %incdec.ptr64, %while.cond51 ], [ %str.1, %while.cond51.preheader ]
  %23 = load i8, i8* %str.2, align 1
  %24 = zext i8 %23 to i64
  %arrayidx54 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %24
  %25 = load i8, i8* %arrayidx54, align 1
  %26 = and i8 %25, 32
  %cmp57.not = icmp ne i8 %26, 0
  %tobool61.not = icmp eq i8 %23, 0
  %or.cond668 = select i1 %cmp57.not, i1 true, i1 %tobool61.not
  %incdec.ptr64 = getelementptr i8, i8* %str.2, i64 1
  br i1 %or.cond668, label %while.cond.backedge, label %while.cond51

if.end66:                                         ; preds = %if.end21
  %conv23 = zext i8 %12 to i32
  %call68 = call fastcc i32 @isdigit(i32 noundef %conv23) #17
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end78, label %if.then70

if.then70:                                        ; preds = %if.end66
  %call71 = call fastcc i32 @skip_atoi(i8** noundef nonnull %fmt.addr) #17
  %sext = shl i32 %call71, 16
  %cmp74 = icmp slt i32 %sext, 65536
  br i1 %cmp74, label %cleanup563, label %if.then70.if.end78_crit_edge

if.then70.if.end78_crit_edge:                     ; preds = %if.then70
  %conv72 = trunc i32 %call71 to i16
  %.pre745 = load i8*, i8** %fmt.addr, align 8
  %.pre746 = load i8, i8* %.pre745, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then70.if.end78_crit_edge, %if.end66
  %27 = phi i8 [ %.pre746, %if.then70.if.end78_crit_edge ], [ %12, %if.end66 ]
  %28 = phi i8* [ %.pre745, %if.then70.if.end78_crit_edge ], [ %incdec.ptr22, %if.end66 ]
  %field_width.0 = phi i16 [ %conv72, %if.then70.if.end78_crit_edge ], [ -1, %if.end66 ]
  %cmp80 = icmp eq i8 %27, 104
  br i1 %cmp80, label %if.then90, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end78
  %call82 = call fastcc i8 @_tolower(i8 noundef %27) #17
  %cmp84 = icmp eq i8 %call82, 108
  %cmp88 = icmp eq i8 %27, 122
  %or.cond683 = select i1 %cmp84, i1 true, i1 %cmp88
  br i1 %or.cond683, label %if.then90, label %if.end113thread-pre-split

if.then90:                                        ; preds = %lor.lhs.false, %if.end78
  %incdec.ptr91 = getelementptr i8, i8* %28, i64 1
  store i8* %incdec.ptr91, i8** %fmt.addr, align 8
  %29 = load i8, i8* %28, align 1
  %30 = load i8, i8* %incdec.ptr91, align 1
  %cmp94 = icmp eq i8 %29, %30
  br i1 %cmp94, label %if.then99, label %if.end113, !prof !13

if.then99:                                        ; preds = %if.then90
  switch i8 %29, label %if.end113 [
    i8 104, label %if.then103
    i8 108, label %if.then108
  ]

if.then103:                                       ; preds = %if.then99
  %incdec.ptr104 = getelementptr i8, i8* %28, i64 2
  store i8* %incdec.ptr104, i8** %fmt.addr, align 8
  br label %if.end113thread-pre-split

if.then108:                                       ; preds = %if.then99
  %incdec.ptr109 = getelementptr i8, i8* %28, i64 2
  store i8* %incdec.ptr109, i8** %fmt.addr, align 8
  br label %if.end113thread-pre-split

if.end113thread-pre-split:                        ; preds = %if.then103, %if.then108, %lor.lhs.false
  %.ph = phi i8* [ %28, %lor.lhs.false ], [ %incdec.ptr109, %if.then108 ], [ %incdec.ptr104, %if.then103 ]
  %qualifier.0.ph = phi i8 [ -1, %lor.lhs.false ], [ 76, %if.then108 ], [ 72, %if.then103 ]
  %.pr = load i8, i8* %.ph, align 1
  br label %if.end113

if.end113:                                        ; preds = %if.end113thread-pre-split, %if.then99, %if.then90
  %31 = phi i8 [ %.pr, %if.end113thread-pre-split ], [ %30, %if.then99 ], [ %30, %if.then90 ]
  %32 = phi i8* [ %.ph, %if.end113thread-pre-split ], [ %incdec.ptr91, %if.then99 ], [ %incdec.ptr91, %if.then90 ]
  %qualifier.0 = phi i8 [ %qualifier.0.ph, %if.end113thread-pre-split ], [ %29, %if.then99 ], [ %29, %if.then90 ]
  switch i8 %31, label %if.end123 [
    i8 0, label %cleanup563
    i8 110, label %if.then120
  ]

if.then120:                                       ; preds = %if.end113
  %sub.ptr.lhs.cast = ptrtoint i8* %str.1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv121 = trunc i64 %sub.ptr.sub to i32
  %gr_offs = load i32, i32* %gr_offs_p, align 8
  %33 = icmp sgt i32 %gr_offs, -1
  br i1 %33, label %vaarg.on_stack, label %vaarg.maybe_reg

vaarg.maybe_reg:                                  ; preds = %if.then120
  %new_reg_offs = add nsw i32 %gr_offs, 8
  store i32 %new_reg_offs, i32* %gr_offs_p, align 8
  %inreg = icmp ult i32 %gr_offs, -7
  br i1 %inreg, label %vaarg.in_reg, label %vaarg.on_stack

vaarg.in_reg:                                     ; preds = %vaarg.maybe_reg
  %reg_top = load i8*, i8** %reg_top_p, align 8
  %34 = sext i32 %gr_offs to i64
  %35 = getelementptr inbounds i8, i8* %reg_top, i64 %34
  br label %vaarg.end

vaarg.on_stack:                                   ; preds = %vaarg.maybe_reg, %if.then120
  %stack = load i8*, i8** %stack_p, align 8
  %new_stack = getelementptr inbounds i8, i8* %stack, i64 8
  store i8* %new_stack, i8** %stack_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.on_stack, %vaarg.in_reg
  %vaargs.addr.in = phi i8* [ %35, %vaarg.in_reg ], [ %stack, %vaarg.on_stack ]
  %vaargs.addr = bitcast i8* %vaargs.addr.in to i32**
  %36 = load i32*, i32** %vaargs.addr, align 8
  store i32 %conv121, i32* %36, align 4
  %37 = load i8*, i8** %fmt.addr, align 8
  %incdec.ptr122 = getelementptr i8, i8* %37, i64 1
  store i8* %incdec.ptr122, i8** %fmt.addr, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond51, %vaarg.end, %do.end, %while.end198, %if.then9, %sw.bb278, %sw.epilog557, %cleanup
  %38 = phi i8* [ %incdec.ptr10, %if.then9 ], [ %incdec.ptr122, %vaarg.end ], [ %incdec.ptr127, %sw.bb278 ], [ %incdec.ptr243, %cleanup ], [ %.pre748, %while.end198 ], [ %incdec.ptr127, %do.end ], [ %incdec.ptr127, %sw.epilog557 ], [ %18, %while.cond51 ]
  %str.0.be = phi i8* [ %incdec.ptr12, %if.then9 ], [ %str.1, %vaarg.end ], [ %incdec.ptr279, %sw.bb278 ], [ %str.5.lcssa, %cleanup ], [ %str.4.lcssa, %while.end198 ], [ %incdec.ptr148, %do.end ], [ %123, %sw.epilog557 ], [ %str.2, %while.cond51 ]
  %num.0.be = phi i32 [ %num.0719, %if.then9 ], [ %num.0719, %vaarg.end ], [ %num.0719, %sw.bb278 ], [ %inc270, %cleanup ], [ %inc199, %while.end198 ], [ %inc, %do.end ], [ %inc558, %sw.epilog557 ], [ %num.0719, %while.cond51 ]
  %39 = load i8, i8* %38, align 1
  %tobool.not = icmp eq i8 %39, 0
  br i1 %tobool.not, label %cleanup563, label %while.body

if.end123:                                        ; preds = %if.end113
  %40 = load i8, i8* %str.1, align 1
  %tobool124.not = icmp eq i8 %40, 0
  br i1 %tobool124.not, label %cleanup563, label %if.end126

if.end126:                                        ; preds = %if.end123
  %incdec.ptr127 = getelementptr i8, i8* %32, i64 1
  store i8* %incdec.ptr127, i8** %fmt.addr, align 8
  %41 = load i8, i8* %32, align 1
  switch i8 %41, label %cleanup563 [
    i8 99, label %sw.bb
    i8 115, label %sw.bb157
    i8 91, label %sw.bb200
    i8 111, label %sw.bb274
    i8 120, label %sw.bb275
    i8 88, label %sw.bb275
    i8 105, label %sw.bb276
    i8 100, label %sw.bb277
    i8 117, label %sw.epilog
    i8 37, label %sw.bb278
  ]

sw.bb:                                            ; preds = %if.end126
  %gr_offs130 = load i32, i32* %gr_offs_p, align 8
  %42 = icmp sgt i32 %gr_offs130, -1
  br i1 %42, label %vaarg.on_stack137, label %vaarg.maybe_reg131

vaarg.maybe_reg131:                               ; preds = %sw.bb
  %new_reg_offs132 = add nsw i32 %gr_offs130, 8
  store i32 %new_reg_offs132, i32* %gr_offs_p, align 8
  %inreg133 = icmp ult i32 %gr_offs130, -7
  br i1 %inreg133, label %vaarg.in_reg134, label %vaarg.on_stack137

vaarg.in_reg134:                                  ; preds = %vaarg.maybe_reg131
  %reg_top136 = load i8*, i8** %reg_top_p, align 8
  %43 = sext i32 %gr_offs130 to i64
  %44 = getelementptr inbounds i8, i8* %reg_top136, i64 %43
  br label %vaarg.end141

vaarg.on_stack137:                                ; preds = %vaarg.maybe_reg131, %sw.bb
  %stack139 = load i8*, i8** %stack_p, align 8
  %new_stack140 = getelementptr inbounds i8, i8* %stack139, i64 8
  store i8* %new_stack140, i8** %stack_p, align 8
  br label %vaarg.end141

vaarg.end141:                                     ; preds = %vaarg.on_stack137, %vaarg.in_reg134
  %vaargs.addr142.in = phi i8* [ %44, %vaarg.in_reg134 ], [ %stack139, %vaarg.on_stack137 ]
  %vaargs.addr142 = bitcast i8* %vaargs.addr142.in to i8**
  %45 = load i8*, i8** %vaargs.addr142, align 8
  %cmp144 = icmp eq i16 %field_width.0, -1
  %spec.select = select i1 %cmp144, i16 1, i16 %field_width.0
  %.pre747 = load i8, i8* %str.1, align 1
  br label %do.body

do.body:                                          ; preds = %land.rhs153, %vaarg.end141
  %46 = phi i8 [ %.pre747, %vaarg.end141 ], [ %47, %land.rhs153 ]
  %str.3 = phi i8* [ %str.1, %vaarg.end141 ], [ %incdec.ptr148, %land.rhs153 ]
  %field_width.2 = phi i16 [ %spec.select, %vaarg.end141 ], [ %dec, %land.rhs153 ]
  %s.0 = phi i8* [ %45, %vaarg.end141 ], [ %incdec.ptr149, %land.rhs153 ]
  %incdec.ptr148 = getelementptr i8, i8* %str.3, i64 1
  store i8 %46, i8* %s.0, align 1
  %dec = add i16 %field_width.2, -1
  %cmp151 = icmp sgt i16 %dec, 0
  br i1 %cmp151, label %land.rhs153, label %do.end

land.rhs153:                                      ; preds = %do.body
  %incdec.ptr149 = getelementptr i8, i8* %s.0, i64 1
  %47 = load i8, i8* %incdec.ptr148, align 1
  %tobool155.not = icmp eq i8 %47, 0
  br i1 %tobool155.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body, %land.rhs153
  %inc = add i32 %num.0719, 1
  br label %while.cond.backedge

sw.bb157:                                         ; preds = %if.end126
  %gr_offs160 = load i32, i32* %gr_offs_p, align 8
  %48 = icmp sgt i32 %gr_offs160, -1
  br i1 %48, label %vaarg.on_stack167, label %vaarg.maybe_reg161

vaarg.maybe_reg161:                               ; preds = %sw.bb157
  %new_reg_offs162 = add nsw i32 %gr_offs160, 8
  store i32 %new_reg_offs162, i32* %gr_offs_p, align 8
  %inreg163 = icmp ult i32 %gr_offs160, -7
  br i1 %inreg163, label %vaarg.in_reg164, label %vaarg.on_stack167

vaarg.in_reg164:                                  ; preds = %vaarg.maybe_reg161
  %reg_top166 = load i8*, i8** %reg_top_p, align 8
  %49 = sext i32 %gr_offs160 to i64
  %50 = getelementptr inbounds i8, i8* %reg_top166, i64 %49
  br label %vaarg.end171

vaarg.on_stack167:                                ; preds = %vaarg.maybe_reg161, %sw.bb157
  %stack169 = load i8*, i8** %stack_p, align 8
  %new_stack170 = getelementptr inbounds i8, i8* %stack169, i64 8
  store i8* %new_stack170, i8** %stack_p, align 8
  br label %vaarg.end171

vaarg.end171:                                     ; preds = %vaarg.on_stack167, %vaarg.in_reg164
  %vaargs.addr172.in = phi i8* [ %50, %vaarg.in_reg164 ], [ %stack169, %vaarg.on_stack167 ]
  %vaargs.addr172 = bitcast i8* %vaargs.addr172.in to i8**
  %51 = load i8*, i8** %vaargs.addr172, align 8
  %call178 = call i8* @skip_spaces(i8* noundef %str.1) #19
  %52 = load i8, i8* %call178, align 1
  %tobool181.not705 = icmp eq i8 %52, 0
  br i1 %tobool181.not705, label %while.end198, label %land.lhs.true182.preheader

land.lhs.true182.preheader:                       ; preds = %vaarg.end171
  %cmp174 = icmp eq i16 %field_width.0, -1
  %spec.select669 = select i1 %cmp174, i16 32767, i16 %field_width.0
  br label %land.lhs.true182

land.lhs.true182:                                 ; preds = %land.lhs.true182.preheader, %while.body195
  %53 = phi i8 [ %56, %while.body195 ], [ %52, %land.lhs.true182.preheader ]
  %s158.0708 = phi i8* [ %incdec.ptr197, %while.body195 ], [ %51, %land.lhs.true182.preheader ]
  %field_width.4707 = phi i16 [ %dec191, %while.body195 ], [ %spec.select669, %land.lhs.true182.preheader ]
  %str.4706 = phi i8* [ %incdec.ptr196, %while.body195 ], [ %call178, %land.lhs.true182.preheader ]
  %idxprom184 = zext i8 %53 to i64
  %arrayidx185 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom184
  %54 = load i8, i8* %arrayidx185, align 1
  %55 = and i8 %54, 32
  %cmp188.not = icmp ne i8 %55, 0
  %tobool193.not = icmp eq i16 %field_width.4707, 0
  %or.cond670 = select i1 %cmp188.not, i1 true, i1 %tobool193.not
  br i1 %or.cond670, label %while.end198, label %while.body195

while.body195:                                    ; preds = %land.lhs.true182
  %dec191 = add i16 %field_width.4707, -1
  %incdec.ptr196 = getelementptr i8, i8* %str.4706, i64 1
  %incdec.ptr197 = getelementptr i8, i8* %s158.0708, i64 1
  store i8 %53, i8* %s158.0708, align 1
  %56 = load i8, i8* %incdec.ptr196, align 1
  %tobool181.not = icmp eq i8 %56, 0
  br i1 %tobool181.not, label %while.end198, label %land.lhs.true182

while.end198:                                     ; preds = %land.lhs.true182, %while.body195, %vaarg.end171
  %str.4.lcssa = phi i8* [ %call178, %vaarg.end171 ], [ %incdec.ptr196, %while.body195 ], [ %str.4706, %land.lhs.true182 ]
  %s158.0.lcssa = phi i8* [ %51, %vaarg.end171 ], [ %incdec.ptr197, %while.body195 ], [ %s158.0708, %land.lhs.true182 ]
  store i8 0, i8* %s158.0.lcssa, align 1
  %inc199 = add i32 %num.0719, 1
  %.pre748 = load i8*, i8** %fmt.addr, align 8
  br label %while.cond.backedge

sw.bb200:                                         ; preds = %if.end126
  %gr_offs203 = load i32, i32* %gr_offs_p, align 8
  %57 = icmp sgt i32 %gr_offs203, -1
  br i1 %57, label %vaarg.on_stack210, label %vaarg.maybe_reg204

vaarg.maybe_reg204:                               ; preds = %sw.bb200
  %new_reg_offs205 = add nsw i32 %gr_offs203, 8
  store i32 %new_reg_offs205, i32* %gr_offs_p, align 8
  %inreg206 = icmp ult i32 %gr_offs203, -7
  br i1 %inreg206, label %vaarg.in_reg207, label %vaarg.on_stack210

vaarg.in_reg207:                                  ; preds = %vaarg.maybe_reg204
  %reg_top209 = load i8*, i8** %reg_top_p, align 8
  %58 = sext i32 %gr_offs203 to i64
  %59 = getelementptr inbounds i8, i8* %reg_top209, i64 %58
  br label %vaarg.end214

vaarg.on_stack210:                                ; preds = %vaarg.maybe_reg204, %sw.bb200
  %stack212 = load i8*, i8** %stack_p, align 8
  %new_stack213 = getelementptr inbounds i8, i8* %stack212, i64 8
  store i8* %new_stack213, i8** %stack_p, align 8
  br label %vaarg.end214

vaarg.end214:                                     ; preds = %vaarg.on_stack210, %vaarg.in_reg207
  %vaargs.addr215.in = phi i8* [ %59, %vaarg.in_reg207 ], [ %stack212, %vaarg.on_stack210 ]
  %vaargs.addr215 = bitcast i8* %vaargs.addr215.in to i8**
  %60 = load i8*, i8** %vaargs.addr215, align 8
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %61 = load i8, i8* %incdec.ptr127, align 1
  %cmp217 = icmp eq i8 %61, 94
  %cmp220 = icmp eq i16 %field_width.0, -1
  br i1 %cmp220, label %cleanup.thread, label %if.end223

if.end223:                                        ; preds = %vaarg.end214
  br i1 %cmp217, label %if.then225, label %for.cond.preheader

if.then225:                                       ; preds = %if.end223
  %incdec.ptr226 = getelementptr i8, i8* %32, i64 2
  store i8* %incdec.ptr226, i8** %fmt.addr, align 8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then225, %if.end223
  %.ph760 = phi i8* [ %incdec.ptr127, %if.end223 ], [ %incdec.ptr226, %if.then225 ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %62 = phi i8* [ %incdec.ptr236, %for.body ], [ %.ph760, %for.cond.preheader ]
  %len.0 = phi i32 [ %inc237, %for.body ], [ 0, %for.cond.preheader ]
  %63 = load i8, i8* %62, align 1
  switch i8 %63, label %for.body [
    i8 0, label %for.end
    i8 93, label %for.end
  ]

for.body:                                         ; preds = %for.cond
  %conv235 = zext i8 %63 to i64
  call fastcc void @set_bit(i64 noundef %conv235, i64* noundef nonnull %arraydecay) #17
  %64 = load i8*, i8** %fmt.addr, align 8
  %incdec.ptr236 = getelementptr i8, i8* %64, i64 1
  store i8* %incdec.ptr236, i8** %fmt.addr, align 8
  %inc237 = add i32 %len.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond
  %tobool238 = icmp ne i8 %63, 0
  %tobool240 = icmp ne i32 %len.0, 0
  %or.cond = select i1 %tobool238, i1 %tobool240, i1 false
  br i1 %or.cond, label %if.end242, label %cleanup.thread

if.end242:                                        ; preds = %for.end
  %incdec.ptr243 = getelementptr i8, i8* %62, i64 1
  store i8* %incdec.ptr243, i8** %fmt.addr, align 8
  br i1 %cmp217, label %if.then245, label %if.end249

if.then245:                                       ; preds = %if.end242
  call fastcc void @bitmap_complement(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #17
  call fastcc void @clear_bit(i64* noundef nonnull %arraydecay) #17
  br label %if.end249

if.end249:                                        ; preds = %if.then245, %if.end242
  %65 = load i8, i8* %str.1, align 1
  %conv250 = zext i8 %65 to i32
  %div.i = lshr i32 %conv250, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr [4 x i64], [4 x i64]* %set, i64 0, i64 %idxprom.i
  %66 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %conv250, 63
  %sh_prom.i = zext i32 %and.i to i64
  %67 = shl nuw i64 1, %sh_prom.i
  %68 = and i64 %67, %66
  %tobool253.not = icmp eq i64 %68, 0
  br i1 %tobool253.not, label %cleanup.thread, label %while.cond256.preheader

while.cond256.preheader:                          ; preds = %if.end249
  %69 = load volatile i64, i64* %arrayidx.i, align 8
  %70 = and i64 %67, %69
  %tobool260.not698 = icmp eq i64 %70, 0
  %tobool264.not699 = icmp eq i16 %field_width.0, 0
  %or.cond671700 = select i1 %tobool260.not698, i1 true, i1 %tobool264.not699
  br i1 %or.cond671700, label %cleanup, label %while.body266

while.body266:                                    ; preds = %while.cond256.preheader, %while.body266
  %71 = phi i8 [ %72, %while.body266 ], [ %65, %while.cond256.preheader ]
  %s201.0703 = phi i8* [ %incdec.ptr268, %while.body266 ], [ %60, %while.cond256.preheader ]
  %field_width.5702 = phi i16 [ %dec262, %while.body266 ], [ %field_width.0, %while.cond256.preheader ]
  %str.5701 = phi i8* [ %incdec.ptr267, %while.body266 ], [ %str.1, %while.cond256.preheader ]
  %dec262 = add i16 %field_width.5702, -1
  %incdec.ptr267 = getelementptr i8, i8* %str.5701, i64 1
  %incdec.ptr268 = getelementptr i8, i8* %s201.0703, i64 1
  store i8 %71, i8* %s201.0703, align 1
  %72 = load i8, i8* %incdec.ptr267, align 1
  %conv257 = zext i8 %72 to i32
  %div.i672 = lshr i32 %conv257, 6
  %idxprom.i673 = zext i32 %div.i672 to i64
  %arrayidx.i674 = getelementptr [4 x i64], [4 x i64]* %set, i64 0, i64 %idxprom.i673
  %73 = load volatile i64, i64* %arrayidx.i674, align 8
  %and.i675 = and i32 %conv257, 63
  %sh_prom.i676 = zext i32 %and.i675 to i64
  %74 = shl nuw i64 1, %sh_prom.i676
  %75 = and i64 %74, %73
  %tobool260.not = icmp eq i64 %75, 0
  %tobool264.not = icmp eq i16 %dec262, 0
  %or.cond671 = select i1 %tobool260.not, i1 true, i1 %tobool264.not
  br i1 %or.cond671, label %cleanup, label %while.body266

cleanup.thread:                                   ; preds = %vaarg.end214, %for.end, %if.end249
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #18
  br label %cleanup563

cleanup:                                          ; preds = %while.body266, %while.cond256.preheader
  %str.5.lcssa = phi i8* [ %str.1, %while.cond256.preheader ], [ %incdec.ptr267, %while.body266 ]
  %s201.0.lcssa = phi i8* [ %60, %while.cond256.preheader ], [ %incdec.ptr268, %while.body266 ]
  store i8 0, i8* %s201.0.lcssa, align 1
  %inc270 = add i32 %num.0719, 1
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #18
  br label %while.cond.backedge

sw.bb274:                                         ; preds = %if.end126
  br label %sw.epilog

sw.bb275:                                         ; preds = %if.end126, %if.end126
  br label %sw.epilog

sw.bb276:                                         ; preds = %if.end126
  br label %sw.bb277

sw.bb277:                                         ; preds = %if.end126, %sw.bb276
  %base.0 = phi i32 [ 10, %if.end126 ], [ 0, %sw.bb276 ]
  br label %sw.epilog

sw.bb278:                                         ; preds = %if.end126
  %incdec.ptr279 = getelementptr i8, i8* %str.1, i64 1
  %76 = load i8, i8* %str.1, align 1
  %cmp281.not = icmp eq i8 %76, 37
  br i1 %cmp281.not, label %while.cond.backedge, label %cleanup563

sw.epilog:                                        ; preds = %sw.bb277, %if.end126, %sw.bb275, %sw.bb274
  %base.1 = phi i32 [ 10, %if.end126 ], [ %base.0, %sw.bb277 ], [ 16, %sw.bb275 ], [ 8, %sw.bb274 ]
  %is_sign.0.off0 = phi i1 [ false, %if.end126 ], [ true, %sw.bb277 ], [ false, %sw.bb275 ], [ false, %sw.bb274 ]
  %call285 = call i8* @skip_spaces(i8* noundef %str.1) #19
  %77 = load i8, i8* %call285, align 1
  %cmp290 = icmp eq i8 %77, 45
  %or.cond575 = select i1 %is_sign.0.off0, i1 %cmp290, i1 false
  br i1 %or.cond575, label %if.then292, label %if.end298

if.then292:                                       ; preds = %sw.epilog
  %cmp294 = icmp eq i16 %field_width.0, 1
  br i1 %cmp294, label %cleanup563, label %if.end297

if.end297:                                        ; preds = %if.then292
  %add.ptr = getelementptr i8, i8* %call285, i64 1
  %78 = load i8, i8* %add.ptr, align 1
  br label %if.end298

if.end298:                                        ; preds = %if.end297, %sw.epilog
  %digit.0 = phi i8 [ %78, %if.end297 ], [ %77, %sw.epilog ]
  %tobool299.not = icmp eq i8 %digit.0, 0
  br i1 %tobool299.not, label %cleanup563, label %lor.lhs.false300

lor.lhs.false300:                                 ; preds = %if.end298
  %79 = lshr i32 %base.1, 1
  switch i32 %79, label %if.end337 [
    i32 8, label %land.lhs.true303
    i32 5, label %land.lhs.true314
    i32 4, label %land.lhs.true321
    i32 0, label %land.lhs.true332
  ]

land.lhs.true303:                                 ; preds = %lor.lhs.false300
  %80 = zext i8 %digit.0 to i64
  %arrayidx306 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %80
  %81 = load i8, i8* %arrayidx306, align 1
  %82 = and i8 %81, 68
  %cmp309.not = icmp eq i8 %82, 0
  br i1 %cmp309.not, label %cleanup563, label %lor.lhs.false311

lor.lhs.false311:                                 ; preds = %land.lhs.true303
  switch i32 %base.1, label %if.end337 [
    i32 10, label %land.lhs.true314
    i32 8, label %land.lhs.true321
    i32 0, label %land.lhs.true332
  ]

land.lhs.true314:                                 ; preds = %lor.lhs.false300, %lor.lhs.false311
  %conv315 = zext i8 %digit.0 to i32
  %call316 = call fastcc i32 @isdigit(i32 noundef %conv315) #17
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %cleanup563, label %lor.lhs.false318

lor.lhs.false318:                                 ; preds = %land.lhs.true314
  switch i32 %base.1, label %if.end337 [
    i32 8, label %land.lhs.true321
    i32 0, label %land.lhs.true332
  ]

land.lhs.true321:                                 ; preds = %lor.lhs.false300, %lor.lhs.false311, %lor.lhs.false318
  %conv322 = zext i8 %digit.0 to i32
  %call323 = call fastcc i32 @isdigit(i32 noundef %conv322) #17
  %tobool324 = icmp eq i32 %call323, 0
  %cmp327 = icmp ugt i8 %digit.0, 55
  %or.cond576 = select i1 %tobool324, i1 true, i1 %cmp327
  br i1 %or.cond576, label %cleanup563, label %lor.lhs.false329

lor.lhs.false329:                                 ; preds = %land.lhs.true321
  %cmp330 = icmp eq i32 %base.1, 0
  br i1 %cmp330, label %land.lhs.true332, label %if.end337

land.lhs.true332:                                 ; preds = %lor.lhs.false300, %lor.lhs.false311, %lor.lhs.false318, %lor.lhs.false329
  %conv333 = zext i8 %digit.0 to i32
  %call334 = call fastcc i32 @isdigit(i32 noundef %conv333) #17
  %tobool335.not = icmp eq i32 %call334, 0
  br i1 %tobool335.not, label %cleanup563, label %if.end337

if.end337:                                        ; preds = %lor.lhs.false300, %lor.lhs.false311, %lor.lhs.false318, %land.lhs.true332, %lor.lhs.false329
  %cmp341 = icmp sgt i16 %field_width.0, -1
  %83 = sext i16 %field_width.0 to i64
  %conv344 = select i1 %cmp341, i64 %83, i64 2147483647
  br i1 %is_sign.0.off0, label %if.then339, label %if.else347

if.then339:                                       ; preds = %if.end337
  %call345 = call fastcc i64 @simple_strntoll(i8* noundef %call285, i64 noundef %conv344, i8** noundef nonnull %next, i32 noundef %base.1) #17
  br label %if.end358

if.else347:                                       ; preds = %if.end337
  %call357 = call fastcc i64 @simple_strntoull(i8* noundef %call285, i64 noundef %conv344, i8** noundef nonnull %next, i32 noundef %base.1) #17
  br label %if.end358

if.end358:                                        ; preds = %if.else347, %if.then339
  %val.sroa.0.0 = phi i64 [ %call345, %if.then339 ], [ %call357, %if.else347 ]
  switch i8 %qualifier.0, label %sw.default520 [
    i8 72, label %sw.bb360
    i8 104, label %sw.bb397
    i8 108, label %sw.bb434
    i8 76, label %sw.bb469
    i8 122, label %sw.bb504
  ]

sw.bb360:                                         ; preds = %if.end358
  %conv364 = trunc i64 %val.sroa.0.0 to i8
  %gr_offs366 = load i32, i32* %gr_offs_p, align 8
  %84 = icmp sgt i32 %gr_offs366, -1
  br i1 %is_sign.0.off0, label %if.then362, label %if.else379

if.then362:                                       ; preds = %sw.bb360
  br i1 %84, label %vaarg.on_stack373, label %vaarg.maybe_reg367

vaarg.maybe_reg367:                               ; preds = %if.then362
  %new_reg_offs368 = add nsw i32 %gr_offs366, 8
  store i32 %new_reg_offs368, i32* %gr_offs_p, align 8
  %inreg369 = icmp ult i32 %gr_offs366, -7
  br i1 %inreg369, label %vaarg.in_reg370, label %vaarg.on_stack373

vaarg.in_reg370:                                  ; preds = %vaarg.maybe_reg367
  %reg_top372 = load i8*, i8** %reg_top_p, align 8
  %85 = sext i32 %gr_offs366 to i64
  %86 = getelementptr inbounds i8, i8* %reg_top372, i64 %85
  br label %vaarg.end377

vaarg.on_stack373:                                ; preds = %vaarg.maybe_reg367, %if.then362
  %stack375 = load i8*, i8** %stack_p, align 8
  %new_stack376 = getelementptr inbounds i8, i8* %stack375, i64 8
  store i8* %new_stack376, i8** %stack_p, align 8
  br label %vaarg.end377

vaarg.end377:                                     ; preds = %vaarg.on_stack373, %vaarg.in_reg370
  %vaargs.addr378.in = phi i8* [ %86, %vaarg.in_reg370 ], [ %stack375, %vaarg.on_stack373 ]
  %vaargs.addr378 = bitcast i8* %vaargs.addr378.in to i8**
  %87 = load i8*, i8** %vaargs.addr378, align 8
  store i8 %conv364, i8* %87, align 1
  br label %sw.epilog557

if.else379:                                       ; preds = %sw.bb360
  br i1 %84, label %vaarg.on_stack390, label %vaarg.maybe_reg384

vaarg.maybe_reg384:                               ; preds = %if.else379
  %new_reg_offs385 = add nsw i32 %gr_offs366, 8
  store i32 %new_reg_offs385, i32* %gr_offs_p, align 8
  %inreg386 = icmp ult i32 %gr_offs366, -7
  br i1 %inreg386, label %vaarg.in_reg387, label %vaarg.on_stack390

vaarg.in_reg387:                                  ; preds = %vaarg.maybe_reg384
  %reg_top389 = load i8*, i8** %reg_top_p, align 8
  %88 = sext i32 %gr_offs366 to i64
  %89 = getelementptr inbounds i8, i8* %reg_top389, i64 %88
  br label %vaarg.end394

vaarg.on_stack390:                                ; preds = %vaarg.maybe_reg384, %if.else379
  %stack392 = load i8*, i8** %stack_p, align 8
  %new_stack393 = getelementptr inbounds i8, i8* %stack392, i64 8
  store i8* %new_stack393, i8** %stack_p, align 8
  br label %vaarg.end394

vaarg.end394:                                     ; preds = %vaarg.on_stack390, %vaarg.in_reg387
  %vaargs.addr395.in = phi i8* [ %89, %vaarg.in_reg387 ], [ %stack392, %vaarg.on_stack390 ]
  %vaargs.addr395 = bitcast i8* %vaargs.addr395.in to i8**
  %90 = load i8*, i8** %vaargs.addr395, align 8
  store i8 %conv364, i8* %90, align 1
  br label %sw.epilog557

sw.bb397:                                         ; preds = %if.end358
  %conv401 = trunc i64 %val.sroa.0.0 to i16
  %gr_offs403 = load i32, i32* %gr_offs_p, align 8
  %91 = icmp sgt i32 %gr_offs403, -1
  br i1 %is_sign.0.off0, label %if.then399, label %if.else416

if.then399:                                       ; preds = %sw.bb397
  br i1 %91, label %vaarg.on_stack410, label %vaarg.maybe_reg404

vaarg.maybe_reg404:                               ; preds = %if.then399
  %new_reg_offs405 = add nsw i32 %gr_offs403, 8
  store i32 %new_reg_offs405, i32* %gr_offs_p, align 8
  %inreg406 = icmp ult i32 %gr_offs403, -7
  br i1 %inreg406, label %vaarg.in_reg407, label %vaarg.on_stack410

vaarg.in_reg407:                                  ; preds = %vaarg.maybe_reg404
  %reg_top409 = load i8*, i8** %reg_top_p, align 8
  %92 = sext i32 %gr_offs403 to i64
  %93 = getelementptr inbounds i8, i8* %reg_top409, i64 %92
  br label %vaarg.end414

vaarg.on_stack410:                                ; preds = %vaarg.maybe_reg404, %if.then399
  %stack412 = load i8*, i8** %stack_p, align 8
  %new_stack413 = getelementptr inbounds i8, i8* %stack412, i64 8
  store i8* %new_stack413, i8** %stack_p, align 8
  br label %vaarg.end414

vaarg.end414:                                     ; preds = %vaarg.on_stack410, %vaarg.in_reg407
  %vaargs.addr415.in = phi i8* [ %93, %vaarg.in_reg407 ], [ %stack412, %vaarg.on_stack410 ]
  %vaargs.addr415 = bitcast i8* %vaargs.addr415.in to i16**
  %94 = load i16*, i16** %vaargs.addr415, align 8
  store i16 %conv401, i16* %94, align 2
  br label %sw.epilog557

if.else416:                                       ; preds = %sw.bb397
  br i1 %91, label %vaarg.on_stack427, label %vaarg.maybe_reg421

vaarg.maybe_reg421:                               ; preds = %if.else416
  %new_reg_offs422 = add nsw i32 %gr_offs403, 8
  store i32 %new_reg_offs422, i32* %gr_offs_p, align 8
  %inreg423 = icmp ult i32 %gr_offs403, -7
  br i1 %inreg423, label %vaarg.in_reg424, label %vaarg.on_stack427

vaarg.in_reg424:                                  ; preds = %vaarg.maybe_reg421
  %reg_top426 = load i8*, i8** %reg_top_p, align 8
  %95 = sext i32 %gr_offs403 to i64
  %96 = getelementptr inbounds i8, i8* %reg_top426, i64 %95
  br label %vaarg.end431

vaarg.on_stack427:                                ; preds = %vaarg.maybe_reg421, %if.else416
  %stack429 = load i8*, i8** %stack_p, align 8
  %new_stack430 = getelementptr inbounds i8, i8* %stack429, i64 8
  store i8* %new_stack430, i8** %stack_p, align 8
  br label %vaarg.end431

vaarg.end431:                                     ; preds = %vaarg.on_stack427, %vaarg.in_reg424
  %vaargs.addr432.in = phi i8* [ %96, %vaarg.in_reg424 ], [ %stack429, %vaarg.on_stack427 ]
  %vaargs.addr432 = bitcast i8* %vaargs.addr432.in to i16**
  %97 = load i16*, i16** %vaargs.addr432, align 8
  store i16 %conv401, i16* %97, align 2
  br label %sw.epilog557

sw.bb434:                                         ; preds = %if.end358
  %gr_offs439 = load i32, i32* %gr_offs_p, align 8
  %98 = icmp sgt i32 %gr_offs439, -1
  br i1 %is_sign.0.off0, label %if.then436, label %if.else452

if.then436:                                       ; preds = %sw.bb434
  br i1 %98, label %vaarg.on_stack446, label %vaarg.maybe_reg440

vaarg.maybe_reg440:                               ; preds = %if.then436
  %new_reg_offs441 = add nsw i32 %gr_offs439, 8
  store i32 %new_reg_offs441, i32* %gr_offs_p, align 8
  %inreg442 = icmp ult i32 %gr_offs439, -7
  br i1 %inreg442, label %vaarg.in_reg443, label %vaarg.on_stack446

vaarg.in_reg443:                                  ; preds = %vaarg.maybe_reg440
  %reg_top445 = load i8*, i8** %reg_top_p, align 8
  %99 = sext i32 %gr_offs439 to i64
  %100 = getelementptr inbounds i8, i8* %reg_top445, i64 %99
  br label %vaarg.end450

vaarg.on_stack446:                                ; preds = %vaarg.maybe_reg440, %if.then436
  %stack448 = load i8*, i8** %stack_p, align 8
  %new_stack449 = getelementptr inbounds i8, i8* %stack448, i64 8
  store i8* %new_stack449, i8** %stack_p, align 8
  br label %vaarg.end450

vaarg.end450:                                     ; preds = %vaarg.on_stack446, %vaarg.in_reg443
  %vaargs.addr451.in = phi i8* [ %100, %vaarg.in_reg443 ], [ %stack448, %vaarg.on_stack446 ]
  %vaargs.addr451 = bitcast i8* %vaargs.addr451.in to i64**
  %101 = load i64*, i64** %vaargs.addr451, align 8
  store i64 %val.sroa.0.0, i64* %101, align 8
  br label %sw.epilog557

if.else452:                                       ; preds = %sw.bb434
  br i1 %98, label %vaarg.on_stack462, label %vaarg.maybe_reg456

vaarg.maybe_reg456:                               ; preds = %if.else452
  %new_reg_offs457 = add nsw i32 %gr_offs439, 8
  store i32 %new_reg_offs457, i32* %gr_offs_p, align 8
  %inreg458 = icmp ult i32 %gr_offs439, -7
  br i1 %inreg458, label %vaarg.in_reg459, label %vaarg.on_stack462

vaarg.in_reg459:                                  ; preds = %vaarg.maybe_reg456
  %reg_top461 = load i8*, i8** %reg_top_p, align 8
  %102 = sext i32 %gr_offs439 to i64
  %103 = getelementptr inbounds i8, i8* %reg_top461, i64 %102
  br label %vaarg.end466

vaarg.on_stack462:                                ; preds = %vaarg.maybe_reg456, %if.else452
  %stack464 = load i8*, i8** %stack_p, align 8
  %new_stack465 = getelementptr inbounds i8, i8* %stack464, i64 8
  store i8* %new_stack465, i8** %stack_p, align 8
  br label %vaarg.end466

vaarg.end466:                                     ; preds = %vaarg.on_stack462, %vaarg.in_reg459
  %vaargs.addr467.in = phi i8* [ %103, %vaarg.in_reg459 ], [ %stack464, %vaarg.on_stack462 ]
  %vaargs.addr467 = bitcast i8* %vaargs.addr467.in to i64**
  %104 = load i64*, i64** %vaargs.addr467, align 8
  store i64 %val.sroa.0.0, i64* %104, align 8
  br label %sw.epilog557

sw.bb469:                                         ; preds = %if.end358
  %gr_offs474 = load i32, i32* %gr_offs_p, align 8
  %105 = icmp sgt i32 %gr_offs474, -1
  br i1 %is_sign.0.off0, label %if.then471, label %if.else487

if.then471:                                       ; preds = %sw.bb469
  br i1 %105, label %vaarg.on_stack481, label %vaarg.maybe_reg475

vaarg.maybe_reg475:                               ; preds = %if.then471
  %new_reg_offs476 = add nsw i32 %gr_offs474, 8
  store i32 %new_reg_offs476, i32* %gr_offs_p, align 8
  %inreg477 = icmp ult i32 %gr_offs474, -7
  br i1 %inreg477, label %vaarg.in_reg478, label %vaarg.on_stack481

vaarg.in_reg478:                                  ; preds = %vaarg.maybe_reg475
  %reg_top480 = load i8*, i8** %reg_top_p, align 8
  %106 = sext i32 %gr_offs474 to i64
  %107 = getelementptr inbounds i8, i8* %reg_top480, i64 %106
  br label %vaarg.end485

vaarg.on_stack481:                                ; preds = %vaarg.maybe_reg475, %if.then471
  %stack483 = load i8*, i8** %stack_p, align 8
  %new_stack484 = getelementptr inbounds i8, i8* %stack483, i64 8
  store i8* %new_stack484, i8** %stack_p, align 8
  br label %vaarg.end485

vaarg.end485:                                     ; preds = %vaarg.on_stack481, %vaarg.in_reg478
  %vaargs.addr486.in = phi i8* [ %107, %vaarg.in_reg478 ], [ %stack483, %vaarg.on_stack481 ]
  %vaargs.addr486 = bitcast i8* %vaargs.addr486.in to i64**
  %108 = load i64*, i64** %vaargs.addr486, align 8
  store i64 %val.sroa.0.0, i64* %108, align 8
  br label %sw.epilog557

if.else487:                                       ; preds = %sw.bb469
  br i1 %105, label %vaarg.on_stack497, label %vaarg.maybe_reg491

vaarg.maybe_reg491:                               ; preds = %if.else487
  %new_reg_offs492 = add nsw i32 %gr_offs474, 8
  store i32 %new_reg_offs492, i32* %gr_offs_p, align 8
  %inreg493 = icmp ult i32 %gr_offs474, -7
  br i1 %inreg493, label %vaarg.in_reg494, label %vaarg.on_stack497

vaarg.in_reg494:                                  ; preds = %vaarg.maybe_reg491
  %reg_top496 = load i8*, i8** %reg_top_p, align 8
  %109 = sext i32 %gr_offs474 to i64
  %110 = getelementptr inbounds i8, i8* %reg_top496, i64 %109
  br label %vaarg.end501

vaarg.on_stack497:                                ; preds = %vaarg.maybe_reg491, %if.else487
  %stack499 = load i8*, i8** %stack_p, align 8
  %new_stack500 = getelementptr inbounds i8, i8* %stack499, i64 8
  store i8* %new_stack500, i8** %stack_p, align 8
  br label %vaarg.end501

vaarg.end501:                                     ; preds = %vaarg.on_stack497, %vaarg.in_reg494
  %vaargs.addr502.in = phi i8* [ %110, %vaarg.in_reg494 ], [ %stack499, %vaarg.on_stack497 ]
  %vaargs.addr502 = bitcast i8* %vaargs.addr502.in to i64**
  %111 = load i64*, i64** %vaargs.addr502, align 8
  store i64 %val.sroa.0.0, i64* %111, align 8
  br label %sw.epilog557

sw.bb504:                                         ; preds = %if.end358
  %gr_offs507 = load i32, i32* %gr_offs_p, align 8
  %112 = icmp sgt i32 %gr_offs507, -1
  br i1 %112, label %vaarg.on_stack514, label %vaarg.maybe_reg508

vaarg.maybe_reg508:                               ; preds = %sw.bb504
  %new_reg_offs509 = add nsw i32 %gr_offs507, 8
  store i32 %new_reg_offs509, i32* %gr_offs_p, align 8
  %inreg510 = icmp ult i32 %gr_offs507, -7
  br i1 %inreg510, label %vaarg.in_reg511, label %vaarg.on_stack514

vaarg.in_reg511:                                  ; preds = %vaarg.maybe_reg508
  %reg_top513 = load i8*, i8** %reg_top_p, align 8
  %113 = sext i32 %gr_offs507 to i64
  %114 = getelementptr inbounds i8, i8* %reg_top513, i64 %113
  br label %vaarg.end518

vaarg.on_stack514:                                ; preds = %vaarg.maybe_reg508, %sw.bb504
  %stack516 = load i8*, i8** %stack_p, align 8
  %new_stack517 = getelementptr inbounds i8, i8* %stack516, i64 8
  store i8* %new_stack517, i8** %stack_p, align 8
  br label %vaarg.end518

vaarg.end518:                                     ; preds = %vaarg.on_stack514, %vaarg.in_reg511
  %vaargs.addr519.in = phi i8* [ %114, %vaarg.in_reg511 ], [ %stack516, %vaarg.on_stack514 ]
  %vaargs.addr519 = bitcast i8* %vaargs.addr519.in to i64**
  %115 = load i64*, i64** %vaargs.addr519, align 8
  store i64 %val.sroa.0.0, i64* %115, align 8
  br label %sw.epilog557

sw.default520:                                    ; preds = %if.end358
  %conv524 = trunc i64 %val.sroa.0.0 to i32
  %gr_offs526 = load i32, i32* %gr_offs_p, align 8
  %116 = icmp sgt i32 %gr_offs526, -1
  br i1 %is_sign.0.off0, label %if.then522, label %if.else539

if.then522:                                       ; preds = %sw.default520
  br i1 %116, label %vaarg.on_stack533, label %vaarg.maybe_reg527

vaarg.maybe_reg527:                               ; preds = %if.then522
  %new_reg_offs528 = add nsw i32 %gr_offs526, 8
  store i32 %new_reg_offs528, i32* %gr_offs_p, align 8
  %inreg529 = icmp ult i32 %gr_offs526, -7
  br i1 %inreg529, label %vaarg.in_reg530, label %vaarg.on_stack533

vaarg.in_reg530:                                  ; preds = %vaarg.maybe_reg527
  %reg_top532 = load i8*, i8** %reg_top_p, align 8
  %117 = sext i32 %gr_offs526 to i64
  %118 = getelementptr inbounds i8, i8* %reg_top532, i64 %117
  br label %vaarg.end537

vaarg.on_stack533:                                ; preds = %vaarg.maybe_reg527, %if.then522
  %stack535 = load i8*, i8** %stack_p, align 8
  %new_stack536 = getelementptr inbounds i8, i8* %stack535, i64 8
  store i8* %new_stack536, i8** %stack_p, align 8
  br label %vaarg.end537

vaarg.end537:                                     ; preds = %vaarg.on_stack533, %vaarg.in_reg530
  %vaargs.addr538.in = phi i8* [ %118, %vaarg.in_reg530 ], [ %stack535, %vaarg.on_stack533 ]
  %vaargs.addr538 = bitcast i8* %vaargs.addr538.in to i32**
  %119 = load i32*, i32** %vaargs.addr538, align 8
  store i32 %conv524, i32* %119, align 4
  br label %sw.epilog557

if.else539:                                       ; preds = %sw.default520
  br i1 %116, label %vaarg.on_stack550, label %vaarg.maybe_reg544

vaarg.maybe_reg544:                               ; preds = %if.else539
  %new_reg_offs545 = add nsw i32 %gr_offs526, 8
  store i32 %new_reg_offs545, i32* %gr_offs_p, align 8
  %inreg546 = icmp ult i32 %gr_offs526, -7
  br i1 %inreg546, label %vaarg.in_reg547, label %vaarg.on_stack550

vaarg.in_reg547:                                  ; preds = %vaarg.maybe_reg544
  %reg_top549 = load i8*, i8** %reg_top_p, align 8
  %120 = sext i32 %gr_offs526 to i64
  %121 = getelementptr inbounds i8, i8* %reg_top549, i64 %120
  br label %vaarg.end554

vaarg.on_stack550:                                ; preds = %vaarg.maybe_reg544, %if.else539
  %stack552 = load i8*, i8** %stack_p, align 8
  %new_stack553 = getelementptr inbounds i8, i8* %stack552, i64 8
  store i8* %new_stack553, i8** %stack_p, align 8
  br label %vaarg.end554

vaarg.end554:                                     ; preds = %vaarg.on_stack550, %vaarg.in_reg547
  %vaargs.addr555.in = phi i8* [ %121, %vaarg.in_reg547 ], [ %stack552, %vaarg.on_stack550 ]
  %vaargs.addr555 = bitcast i8* %vaargs.addr555.in to i32**
  %122 = load i32*, i32** %vaargs.addr555, align 8
  store i32 %conv524, i32* %122, align 4
  br label %sw.epilog557

sw.epilog557:                                     ; preds = %vaarg.end537, %vaarg.end554, %vaarg.end485, %vaarg.end501, %vaarg.end450, %vaarg.end466, %vaarg.end414, %vaarg.end431, %vaarg.end377, %vaarg.end394, %vaarg.end518
  %inc558 = add i32 %num.0719, 1
  %123 = load i8*, i8** %next, align 8
  %tobool559.not = icmp eq i8* %123, null
  br i1 %tobool559.not, label %cleanup563, label %while.cond.backedge

cleanup563:                                       ; preds = %sw.bb278, %if.end126, %if.end113, %sw.epilog557, %if.end298, %land.lhs.true303, %land.lhs.true314, %land.lhs.true321, %land.lhs.true332, %if.then292, %if.end123, %if.then70, %if.then26, %if.then9, %while.cond.backedge, %if.end, %switch.early.test, %entry, %cleanup.thread
  %retval.2 = phi i32 [ %num.0719, %cleanup.thread ], [ 0, %entry ], [ %num.0719, %switch.early.test ], [ %num.0719, %sw.bb278 ], [ %num.0719, %if.end126 ], [ %num.0719, %if.end113 ], [ %inc558, %sw.epilog557 ], [ %num.0719, %if.end298 ], [ %num.0719, %land.lhs.true303 ], [ %num.0719, %land.lhs.true314 ], [ %num.0719, %land.lhs.true321 ], [ %num.0719, %land.lhs.true332 ], [ %num.0719, %if.then292 ], [ %num.0719, %if.end123 ], [ %num.0719, %if.then70 ], [ %num.0719, %if.then26 ], [ %num.0719, %if.then9 ], [ %num.0.be, %while.cond.backedge ], [ %num.0719, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @skip_spaces(i8* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isdigit(i32 noundef %c) unnamed_addr #10 {
entry:
  %0 = add i32 %c, -48
  %1 = icmp ult i32 %0, 10
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i32 @skip_atoi(i8** nocapture noundef %s) unnamed_addr #11 {
entry:
  %.pre = load i8*, i8** %s, align 8
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %0 = phi i8* [ %.pre, %entry ], [ %incdec.ptr, %do.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %sub, %do.body ]
  %mul = mul i32 %i.0, 10
  %incdec.ptr = getelementptr i8, i8* %0, i64 1
  store i8* %incdec.ptr, i8** %s, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %add = add i32 %mul, -48
  %sub = add i32 %add, %conv
  %2 = load i8, i8* %incdec.ptr, align 1
  %conv1 = zext i8 %2 to i32
  %call = call fastcc i32 @isdigit(i32 noundef %conv1) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret i32 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @_tolower(i8 noundef %c) unnamed_addr #10 {
entry:
  %0 = or i8 %c, 32
  ret i8 %0
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
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_complement(i64* noundef %dst, i64* noundef %src) unnamed_addr #0 {
entry:
  call void @__bitmap_complement(i64* noundef %dst, i64* noundef %src, i32 noundef 256) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sscanf(i8* noundef %buf, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @vsscanf(i8* noundef %buf, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #18
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @_parse_integer_fixup_radix(i8* noundef, i32* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_parse_integer_limit(i8* noundef, i32 noundef, i64* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i8* @put_dec_full8(i8* noundef writeonly %buf, i32 noundef %r) unnamed_addr #4 {
entry:
  %conv = zext i32 %r to i64
  %mul = mul nuw nsw i64 %conv, 42949673
  %shr = lshr i64 %mul, 32
  %conv1 = trunc i64 %shr to i32
  %mul2.neg = mul i32 %conv1, -100
  %sub = add i32 %mul2.neg, %r
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr [100 x i16], [100 x i16]* @decpair, i64 0, i64 %idxprom
  %0 = load i16, i16* %arrayidx, align 2
  %1 = bitcast i8* %buf to i16*
  store i16 %0, i16* %1, align 2
  %add.ptr = getelementptr i8, i8* %buf, i64 2
  %mul4 = mul nuw nsw i64 %shr, 42949673
  %shr5 = lshr i64 %mul4, 32
  %conv6 = trunc i64 %shr5 to i32
  %mul7.neg = mul nuw nsw i64 %shr5, 4294967196
  %sub8 = add nuw nsw i64 %mul7.neg, %shr
  %idxprom9 = and i64 %sub8, 4294967295
  %arrayidx10 = getelementptr [100 x i16], [100 x i16]* @decpair, i64 0, i64 %idxprom9
  %2 = load i16, i16* %arrayidx10, align 2
  %3 = bitcast i8* %add.ptr to i16*
  store i16 %2, i16* %3, align 2
  %add.ptr11 = getelementptr i8, i8* %buf, i64 4
  %mul12 = mul nuw i32 %conv6, 5243
  %shr13 = lshr i32 %mul12, 19
  %mul14.neg = mul nsw i32 %shr13, -100
  %sub15 = add nsw i32 %mul14.neg, %conv6
  %idxprom16 = zext i32 %sub15 to i64
  %arrayidx17 = getelementptr [100 x i16], [100 x i16]* @decpair, i64 0, i64 %idxprom16
  %4 = load i16, i16* %arrayidx17, align 2
  %5 = bitcast i8* %add.ptr11 to i16*
  store i16 %4, i16* %5, align 2
  %add.ptr18 = getelementptr i8, i8* %buf, i64 6
  %idxprom19 = zext i32 %shr13 to i64
  %arrayidx20 = getelementptr [100 x i16], [100 x i16]* @decpair, i64 0, i64 %idxprom19
  %6 = load i16, i16* %arrayidx20, align 2
  %7 = bitcast i8* %add.ptr18 to i16*
  store i16 %6, i16* %7, align 2
  %add.ptr21 = getelementptr i8, i8* %buf, i64 8
  ret i8* %add.ptr21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i8* @put_dec_trunc8(i8* noundef writeonly %buf, i32 noundef %r) unnamed_addr #4 {
entry:
  %cmp = icmp ult i32 %r, 100
  br i1 %cmp, label %out_r, label %if.end

if.end:                                           ; preds = %entry
  %conv = zext i32 %r to i64
  %mul = mul nuw nsw i64 %conv, 42949673
  %shr = lshr i64 %mul, 32
  %conv1 = trunc i64 %shr to i32
  %mul2.neg = mul i32 %conv1, -100
  %sub = add i32 %mul2.neg, %r
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr [100 x i16], [100 x i16]* @decpair, i64 0, i64 %idxprom
  %0 = load i16, i16* %arrayidx, align 2
  %1 = bitcast i8* %buf to i16*
  store i16 %0, i16* %1, align 2
  %add.ptr = getelementptr i8, i8* %buf, i64 2
  %cmp3 = icmp ult i32 %conv1, 100
  br i1 %cmp3, label %out_r, label %if.end6

if.end6:                                          ; preds = %if.end
  %mul8 = mul nuw nsw i64 %shr, 42949673
  %shr9 = lshr i64 %mul8, 32
  %conv10 = trunc i64 %shr9 to i32
  %mul11.neg = mul nuw nsw i64 %shr9, 4294967196
  %sub12 = add nuw nsw i64 %mul11.neg, %shr
  %idxprom13 = and i64 %sub12, 4294967295
  %arrayidx14 = getelementptr [100 x i16], [100 x i16]* @decpair, i64 0, i64 %idxprom13
  %2 = load i16, i16* %arrayidx14, align 2
  %3 = bitcast i8* %add.ptr to i16*
  store i16 %2, i16* %3, align 2
  %add.ptr15 = getelementptr i8, i8* %buf, i64 4
  %cmp16 = icmp ult i32 %conv10, 100
  br i1 %cmp16, label %out_r, label %if.end19

if.end19:                                         ; preds = %if.end6
  %mul20 = mul nuw i32 %conv10, 5243
  %shr21 = lshr i32 %mul20, 19
  %mul22.neg = mul nsw i32 %shr21, -100
  %sub23 = add nsw i32 %mul22.neg, %conv10
  %idxprom24 = zext i32 %sub23 to i64
  %arrayidx25 = getelementptr [100 x i16], [100 x i16]* @decpair, i64 0, i64 %idxprom24
  %4 = load i16, i16* %arrayidx25, align 2
  %5 = bitcast i8* %add.ptr15 to i16*
  store i16 %4, i16* %5, align 2
  %add.ptr26 = getelementptr i8, i8* %buf, i64 6
  br label %out_r

out_r:                                            ; preds = %if.end19, %if.end, %if.end6, %entry
  %buf.addr.1 = phi i8* [ %buf, %entry ], [ %add.ptr15, %if.end6 ], [ %add.ptr, %if.end ], [ %add.ptr26, %if.end19 ]
  %r.addr.0 = phi i32 [ %r, %entry ], [ %conv10, %if.end6 ], [ %conv1, %if.end ], [ %shr21, %if.end19 ]
  %idxprom27 = zext i32 %r.addr.0 to i64
  %arrayidx28 = getelementptr [100 x i16], [100 x i16]* @decpair, i64 0, i64 %idxprom27
  %6 = load i16, i16* %arrayidx28, align 2
  %7 = bitcast i8* %buf.addr.1 to i16*
  store i16 %6, i16* %7, align 2
  %cmp29 = icmp ult i32 %r.addr.0, 10
  %cond = select i1 %cmp29, i64 1, i64 2
  %add.ptr31 = getelementptr i8, i8* %buf.addr.1, i64 %cond
  ret i8* %add.ptr31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_bytes_arch(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_disable() unnamed_addr #0 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !14
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !13

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.static_key_disable, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @not_filled_random_ptr_key, i64 0, i32 0)) #19
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 329; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @not_filled_random_ptr_key, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @not_filled_random_ptr_key, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp27.not = icmp eq i32 %2, 0
  br i1 %cmp27.not, label %return, label %if.then41, !prof !16

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 332; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !27
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 0, i32* getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @not_filled_random_ptr_key, i64 0, i32 0, i32 0, i32 0), align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_random_ready_callback(%struct.random_ready_callback* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @enable_ptr_key_workfn(%struct.work_struct* nocapture noundef readnone %work) #0 {
entry:
  call void @get_random_bytes(i8* noundef bitcast (%struct.siphash_key_t* @ptr_key to i8*), i32 noundef 16) #19
  call fastcc void @static_key_disable() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fill_random_ptr_key(%struct.random_ready_callback* nocapture noundef readnone %unused) #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_unbound_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef bitcast ({ %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }* @enable_ptr_key_work to %struct.work_struct*)) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #12 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_true, %struct.static_key_true* @not_filled_random_ptr_key, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_1u64(i64 noundef, %struct.siphash_key_t* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_pointer(i8** nocapture noundef %buf, i8* noundef %end, i8* noundef readonly %ptr, i64 %spec.coerce) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @check_pointer_msg(i8* noundef %ptr) #17
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %buf, align 8
  %call2 = call fastcc i8* @error_string(i8* noundef %0, i8* noundef %end, i8* noundef nonnull %call, i64 %spec.coerce) #17
  store i8* %call2, i8** %buf, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ -14, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @string_nocheck(i8* noundef %buf, i8* noundef %end, i8* nocapture noundef readonly %s, i64 %spec.coerce) unnamed_addr #0 {
entry:
  %bf.ashr = ashr i64 %spec.coerce, 48
  %bf.cast = trunc i64 %bf.ashr to i32
  %tobool.not22 = icmp eq i32 %bf.cast, 0
  br i1 %tobool.not22, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %cleanup
  %dec27.in = phi i32 [ %dec27, %cleanup ], [ %bf.cast, %entry ]
  %len.026 = phi i32 [ %inc, %cleanup ], [ 0, %entry ]
  %s.addr.025 = phi i8* [ %incdec.ptr, %cleanup ], [ %s, %entry ]
  %buf.addr.023 = phi i8* [ %incdec.ptr4, %cleanup ], [ %buf, %entry ]
  %dec27 = add i32 %dec27.in, -1
  %incdec.ptr = getelementptr i8, i8* %s.addr.025, i64 1
  %0 = load i8, i8* %s.addr.025, align 1
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  %cmp = icmp ult i8* %buf.addr.023, %end
  br i1 %cmp, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.end
  store i8 %0, i8* %buf.addr.023, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2
  %incdec.ptr4 = getelementptr i8, i8* %buf.addr.023, i64 1
  %inc = add nuw i32 %len.026, 1
  %tobool.not = icmp eq i32 %dec27, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %while.body, %entry
  %buf.addr.0.lcssa = phi i8* [ %buf, %entry ], [ %buf.addr.023, %while.body ], [ %incdec.ptr4, %cleanup ]
  %len.0.lcssa = phi i32 [ 0, %entry ], [ %len.026, %while.body ], [ %bf.cast, %cleanup ]
  %call = call fastcc i8* @widen_string(i8* noundef %buf.addr.0.lcssa, i32 noundef %len.0.lcssa, i8* noundef %end, i64 %spec.coerce) #17
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @check_pointer_msg(i8* noundef readnone %ptr) unnamed_addr #10 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ult i8* %ptr, inttoptr (i64 4096 to i8*)
  %cmp1 = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %or.cond = or i1 %cmp, %cmp1
  %spec.select = select i1 %or.cond, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* null
  %retval.0 = select i1 %tobool.not, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %spec.select
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @error_string(i8* noundef %buf, i8* noundef %end, i8* nocapture noundef readonly %s, i64 %spec.coerce) unnamed_addr #0 {
entry:
  %bf.ashr = ashr i64 %spec.coerce, 48
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp = icmp eq i32 %bf.cast, -1
  %bf.clear = and i64 %spec.coerce, 281474976710655
  %bf.set = or i64 %bf.clear, 4503599627370496
  %spec.sroa.0.0 = select i1 %cmp, i64 %bf.set, i64 %spec.coerce
  %call = call fastcc i8* @string_nocheck(i8* noundef %buf, i8* noundef %end, i8* noundef %s, i64 %spec.sroa.0.0) #17
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @widen_string(i8* noundef %buf, i32 noundef %n, i8* noundef %end, i64 %spec.coerce) unnamed_addr #0 {
entry:
  %bf.shl = shl i64 %spec.coerce, 32
  %bf.ashr = ashr i64 %bf.shl, 40
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp.not = icmp sgt i32 %bf.cast, %n
  br i1 %cmp.not, label %if.end, label %cleanup, !prof !13

if.end:                                           ; preds = %entry
  %sub = sub i32 %bf.cast, %n
  %0 = and i64 %spec.coerce, 8589934592
  %tobool8.not = icmp eq i64 %0, 0
  br i1 %tobool8.not, label %if.then9, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %tobool13.not35 = icmp eq i32 %sub, 0
  br i1 %tobool13.not35, label %cleanup, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  %1 = xor i32 %n, -1
  %2 = add i32 %1, %bf.cast
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1
  %min.iters.check = icmp eq i32 %2, 0
  br i1 %min.iters.check, label %while.body.preheader45, label %vector.ph

vector.ph:                                        ; preds = %while.body.preheader
  %n.vec = and i64 %4, 8589934590
  %cast.crd = trunc i64 %n.vec to i32
  %ind.end = sub i32 %sub, %cast.crd
  %ind.end40 = getelementptr i8, i8* %buf, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue44, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue44 ]
  %next.gep = getelementptr i8, i8* %buf, i64 %index
  %5 = or i64 %index, 1
  %next.gep42 = getelementptr i8, i8* %buf, i64 %5
  %6 = icmp ult i8* %next.gep, %end
  %7 = icmp ult i8* %next.gep42, %end
  br i1 %6, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 32, i8* %next.gep, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  br i1 %7, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue
  store i8 32, i8* %next.gep42, align 1
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue
  %index.next = add nuw i64 %index, 2
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %pred.store.continue44
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %cleanup, label %while.body.preheader45

while.body.preheader45:                           ; preds = %while.body.preheader, %middle.block
  %dec38.in.ph = phi i32 [ %sub, %while.body.preheader ], [ %ind.end, %middle.block ]
  %buf.addr.036.ph = phi i8* [ %buf, %while.body.preheader ], [ %ind.end40, %middle.block ]
  br label %while.body

if.then9:                                         ; preds = %if.end
  %idx.ext = sext i32 %n to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr i8, i8* %buf, i64 %idx.neg
  call fastcc void @move_right(i8* noundef %add.ptr, i8* noundef %end, i32 noundef %n, i32 noundef %sub) #17
  %idx.ext10 = zext i32 %sub to i64
  %add.ptr11 = getelementptr i8, i8* %buf, i64 %idx.ext10
  br label %cleanup

while.body:                                       ; preds = %while.body.preheader45, %if.end17
  %dec38.in = phi i32 [ %dec38, %if.end17 ], [ %dec38.in.ph, %while.body.preheader45 ]
  %buf.addr.036 = phi i8* [ %incdec.ptr, %if.end17 ], [ %buf.addr.036.ph, %while.body.preheader45 ]
  %dec38 = add i32 %dec38.in, -1
  %cmp14 = icmp ult i8* %buf.addr.036, %end
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.body
  store i8 32, i8* %buf.addr.036, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.body
  %incdec.ptr = getelementptr i8, i8* %buf.addr.036, i64 1
  %tobool13.not = icmp eq i32 %dec38, 0
  br i1 %tobool13.not, label %cleanup, label %while.body, !llvm.loop !29

cleanup:                                          ; preds = %if.end17, %middle.block, %while.cond.preheader, %entry, %if.then9
  %retval.0 = phi i8* [ %add.ptr11, %if.then9 ], [ %buf, %entry ], [ %buf, %while.cond.preheader ], [ %ind.end40, %middle.block ], [ %incdec.ptr, %if.end17 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @move_right(i8* noundef %buf, i8* noundef %end, i32 noundef %len, i32 noundef %spaces) unnamed_addr #0 {
entry:
  %cmp.not = icmp ult i8* %buf, %end
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %end to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %buf to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = zext i32 %spaces to i64
  %cmp1.not = icmp ugt i64 %sub.ptr.sub, %conv
  br i1 %cmp1.not, label %if.end4, label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then5

if.then5:                                         ; preds = %if.end4
  %conv6 = zext i32 %len to i64
  %sub = sub i64 %sub.ptr.sub, %conv
  %cmp8 = icmp ult i64 %sub, %conv6
  %conv13 = trunc i64 %sub to i32
  %spec.select = select i1 %cmp8, i32 %conv13, i32 %len
  %add.ptr = getelementptr i8, i8* %buf, i64 %conv
  %conv15 = zext i32 %spec.select to i64
  %call16 = call i8* @memmove(i8* noundef %add.ptr, i8* noundef %buf, i64 noundef %conv15) #19
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end4, %if.then5, %if.end
  %conv.sink = phi i64 [ %sub.ptr.sub, %if.end ], [ %conv, %if.then5 ], [ %conv, %if.end4 ]
  %call19 = call i8* @memset(i8* noundef %buf, i32 noundef 32, i64 noundef %conv.sink) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @symbol_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %sym = alloca [282 x i8], align 1
  %0 = getelementptr inbounds [282 x i8], [282 x i8]* %sym, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 282, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(282) %0, i8 0, i64 282, i1 false), !annotation !7
  %arrayidx = getelementptr i8, i8* %fmt, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  %2 = ptrtoint i8* %ptr to i64
  %3 = load i8, i8* %fmt, align 1
  switch i8 %3, label %if.then41 [
    i8 66, label %land.lhs.true
    i8 83, label %land.lhs.true20
    i8 115, label %if.else44
  ]

land.lhs.true:                                    ; preds = %entry
  %cmp7 = icmp eq i8 %1, 98
  br i1 %cmp7, label %if.then9, label %if.then13

if.then9:                                         ; preds = %land.lhs.true
  %call = call i32 @sprint_backtrace_build_id(i8* noundef nonnull %0, i64 noundef %2) #19
  br label %if.end50

if.then13:                                        ; preds = %land.lhs.true
  %call15 = call i32 @sprint_backtrace(i8* noundef nonnull %0, i64 noundef %2) #19
  br label %if.end50

land.lhs.true20:                                  ; preds = %entry
  switch i8 %1, label %if.then41 [
    i8 98, label %if.then34
    i8 82, label %land.lhs.true29
  ]

land.lhs.true29:                                  ; preds = %land.lhs.true20
  %arrayidx30 = getelementptr i8, i8* %fmt, i64 2
  %4 = load i8, i8* %arrayidx30, align 1
  %cmp32 = icmp eq i8 %4, 98
  br i1 %cmp32, label %if.then34, label %if.then41

if.then34:                                        ; preds = %land.lhs.true20, %land.lhs.true29
  %call36 = call i32 @sprint_symbol_build_id(i8* noundef nonnull %0, i64 noundef %2) #19
  br label %if.end50

if.then41:                                        ; preds = %entry, %land.lhs.true29, %land.lhs.true20
  %call43 = call i32 @sprint_symbol(i8* noundef nonnull %0, i64 noundef %2) #19
  br label %if.end50

if.else44:                                        ; preds = %entry
  %call46 = call i32 @sprint_symbol_no_offset(i8* noundef nonnull %0, i64 noundef %2) #19
  br label %if.end50

if.end50:                                         ; preds = %if.then13, %if.then41, %if.else44, %if.then34, %if.then9
  %call53 = call fastcc i8* @string_nocheck(i8* noundef %buf, i8* noundef %end, i8* noundef nonnull %0, i64 %spec.coerce) #17
  call void @llvm.lifetime.end.p0i8(i64 282, i8* nonnull %0) #18
  ret i8* %call53
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @resource_string(i8* noundef %buf, i8* noundef %end, %struct.resource* noundef %res, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %sym = alloca [75 x i8], align 4
  store i8* %buf, i8** %buf.addr, align 8
  %0 = getelementptr inbounds [75 x i8], [75 x i8]* %sym, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 75, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(75) %0, i8 0, i64 75, i1 false), !annotation !7
  %add.ptr = getelementptr inbounds [75 x i8], [75 x i8]* %sym, i64 0, i64 75
  %1 = load i8, i8* %fmt, align 1
  %cmp = icmp eq i8 %1, 82
  %2 = bitcast %struct.resource* %res to i8*
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %2, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr inbounds [75 x i8], [75 x i8]* %sym, i64 0, i64 1
  store i8 91, i8* %0, align 4
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 3
  %4 = load i64, i64* %flags, align 8
  %and = and i64 %4, 256
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i8* @string_nocheck(i8* noundef %incdec.ptr, i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 2814762652008192) #17
  br i1 %cmp, label %land.lhs.true, label %if.else46

if.else:                                          ; preds = %if.end
  %and8 = and i64 %4, 512
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else
  %call11 = call fastcc i8* @string_nocheck(i8* noundef %incdec.ptr, i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64 2814762652008192) #17
  br i1 %cmp, label %land.lhs.true, label %if.else46

if.else12:                                        ; preds = %if.else
  %and14 = and i64 %4, 1024
  %tobool15.not = icmp eq i64 %and14, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.else12
  %call17 = call fastcc i8* @string_nocheck(i8* noundef %incdec.ptr, i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i64 2814762652008192) #17
  br i1 %cmp, label %land.lhs.true, label %if.else46

if.else18:                                        ; preds = %if.else12
  %and20 = and i64 %4, 2048
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.else18
  %call23 = call fastcc i8* @string_nocheck(i8* noundef %incdec.ptr, i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i64 2814762652008192) #17
  br i1 %cmp, label %land.lhs.true, label %if.else46

if.else24:                                        ; preds = %if.else18
  %and26 = and i64 %4, 4096
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %if.end36.thread, label %if.end36

if.end36.thread:                                  ; preds = %if.else24
  %call31 = call fastcc i8* @string_nocheck(i8* noundef %incdec.ptr, i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 2814762652008192) #17
  br label %if.else46

if.end36:                                         ; preds = %if.else24
  %call29 = call fastcc i8* @string_nocheck(i8* noundef %incdec.ptr, i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i64 2814762652008192) #17
  br i1 %cmp, label %land.lhs.true, label %if.else46

land.lhs.true:                                    ; preds = %if.then22, %if.then16, %if.then10, %if.then5, %if.end36
  %specp.0167 = phi %struct.printf_spec* [ bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @resource_string.io_spec to %struct.printf_spec*), %if.then5 ], [ bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @resource_string.bus_spec to %struct.printf_spec*), %if.end36 ], [ bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @resource_string.mem_spec to %struct.printf_spec*), %if.then10 ], [ bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @default_dec_spec to %struct.printf_spec*), %if.then16 ], [ bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @default_dec_spec to %struct.printf_spec*), %if.then22 ]
  %p.0165 = phi i8* [ %call6, %if.then5 ], [ %call29, %if.end36 ], [ %call11, %if.then10 ], [ %call17, %if.then16 ], [ %call23, %if.then22 ]
  %5 = load i64, i64* %flags, align 8
  %and39 = and i64 %5, 536870912
  %tobool40.not = icmp eq i64 %and39, 0
  br i1 %tobool40.not, label %if.else46, label %if.end59.thread

if.end59.thread:                                  ; preds = %land.lhs.true
  %call42 = call fastcc i8* @string_nocheck(i8* noundef %p.0165, i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64 2814762652008192) #17
  %call43 = call fastcc i64 @resource_size(%struct.resource* noundef %res) #17
  %coerce.dive44 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %specp.0167, i64 0, i32 0
  %6 = load i64, i64* %coerce.dive44, align 1
  %call45 = call fastcc i8* @number(i8* noundef %call42, i8* noundef %add.ptr, i64 noundef %call43, i64 %6) #17
  br label %if.then61

if.else46:                                        ; preds = %if.then22, %if.then16, %if.then10, %if.then5, %if.end36.thread, %land.lhs.true, %if.end36
  %specp.0164 = phi %struct.printf_spec* [ bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @resource_string.mem_spec to %struct.printf_spec*), %if.end36.thread ], [ %specp.0167, %land.lhs.true ], [ bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @resource_string.bus_spec to %struct.printf_spec*), %if.end36 ], [ bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @resource_string.io_spec to %struct.printf_spec*), %if.then5 ], [ bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @resource_string.mem_spec to %struct.printf_spec*), %if.then10 ], [ bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @default_dec_spec to %struct.printf_spec*), %if.then16 ], [ bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8 }* @default_dec_spec to %struct.printf_spec*), %if.then22 ]
  %decode.0.shrunk163 = phi i1 [ false, %if.end36.thread ], [ true, %land.lhs.true ], [ false, %if.end36 ], [ false, %if.then5 ], [ false, %if.then10 ], [ false, %if.then16 ], [ false, %if.then22 ]
  %p.0161 = phi i8* [ %call31, %if.end36.thread ], [ %p.0165, %land.lhs.true ], [ %call29, %if.end36 ], [ %call6, %if.then5 ], [ %call11, %if.then10 ], [ %call17, %if.then16 ], [ %call23, %if.then22 ]
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %7 = load i64, i64* %start, align 8
  %coerce.dive47 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %specp.0164, i64 0, i32 0
  %8 = load i64, i64* %coerce.dive47, align 1
  %call48 = call fastcc i8* @number(i8* noundef %p.0161, i8* noundef %add.ptr, i64 noundef %7, i64 %8) #17
  %9 = load i64, i64* %start, align 8
  %end50 = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  %10 = load i64, i64* %end50, align 8
  %cmp51.not = icmp eq i64 %9, %10
  br i1 %cmp51.not, label %if.end59, label %if.then53

if.then53:                                        ; preds = %if.else46
  %incdec.ptr54 = getelementptr i8, i8* %call48, i64 1
  store i8 45, i8* %call48, align 1
  %11 = load i64, i64* %end50, align 8
  %12 = load i64, i64* %coerce.dive47, align 1
  %call57 = call fastcc i8* @number(i8* noundef %incdec.ptr54, i8* noundef %add.ptr, i64 noundef %11, i64 %12) #17
  br i1 %decode.0.shrunk163, label %if.then61, label %if.else86

if.end59:                                         ; preds = %if.else46
  br i1 %decode.0.shrunk163, label %if.then61, label %if.else86

if.then61:                                        ; preds = %if.then53, %if.end59.thread, %if.end59
  %p.1170 = phi i8* [ %call45, %if.end59.thread ], [ %call48, %if.end59 ], [ %call57, %if.then53 ]
  %13 = load i64, i64* %flags, align 8
  %and63 = and i64 %13, 1048576
  %tobool64.not = icmp eq i64 %and63, 0
  br i1 %tobool64.not, label %if.end67, label %if.then65

if.then65:                                        ; preds = %if.then61
  %call66 = call fastcc i8* @string_nocheck(i8* noundef %p.1170, i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 2814762652008192) #17
  %.pre = load i64, i64* %flags, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.then61
  %14 = phi i64 [ %.pre, %if.then65 ], [ %13, %if.then61 ]
  %p.2 = phi i8* [ %call66, %if.then65 ], [ %p.1170, %if.then61 ]
  %and69 = and i64 %14, 8192
  %tobool70.not = icmp eq i64 %and69, 0
  br i1 %tobool70.not, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.end67
  %call72 = call fastcc i8* @string_nocheck(i8* noundef %p.2, i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i64 2814762652008192) #17
  %.pre172 = load i64, i64* %flags, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end67
  %15 = phi i64 [ %.pre172, %if.then71 ], [ %14, %if.end67 ]
  %p.3 = phi i8* [ %call72, %if.then71 ], [ %p.2, %if.end67 ]
  %and75 = and i64 %15, 2097152
  %tobool76.not = icmp eq i64 %and75, 0
  br i1 %tobool76.not, label %if.end79, label %if.then77

if.then77:                                        ; preds = %if.end73
  %call78 = call fastcc i8* @string_nocheck(i8* noundef %p.3, i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i64 2814762652008192) #17
  %.pre173 = load i64, i64* %flags, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end73
  %16 = phi i64 [ %.pre173, %if.then77 ], [ %15, %if.end73 ]
  %p.4 = phi i8* [ %call78, %if.then77 ], [ %p.3, %if.end73 ]
  %and81 = and i64 %16, 268435456
  %tobool82.not = icmp eq i64 %and81, 0
  br i1 %tobool82.not, label %if.end90, label %if.then83

if.then83:                                        ; preds = %if.end79
  %call84 = call fastcc i8* @string_nocheck(i8* noundef %p.4, i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i64 2814762652008192) #17
  br label %if.end90

if.else86:                                        ; preds = %if.then53, %if.end59
  %p.1171 = phi i8* [ %call57, %if.then53 ], [ %call48, %if.end59 ]
  %call87 = call fastcc i8* @string_nocheck(i8* noundef %p.1171, i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i64 2814762652008192) #17
  %17 = load i64, i64* %flags, align 8
  %call89 = call fastcc i8* @number(i8* noundef %call87, i8* noundef %add.ptr, i64 noundef %17, i64 -263470473805824) #17
  br label %if.end90

if.end90:                                         ; preds = %if.end79, %if.then83, %if.else86
  %p.5 = phi i8* [ %call84, %if.then83 ], [ %p.4, %if.end79 ], [ %call89, %if.else86 ]
  %incdec.ptr91 = getelementptr i8, i8* %p.5, i64 1
  store i8 93, i8* %p.5, align 1
  store i8 0, i8* %incdec.ptr91, align 1
  %18 = load i8*, i8** %buf.addr, align 8
  %call94 = call fastcc i8* @string_nocheck(i8* noundef %18, i8* noundef %end, i8* noundef nonnull %0, i64 %spec.coerce) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then
  %retval.0 = phi i8* [ %3, %if.then ], [ %call94, %if.end90 ]
  call void @llvm.lifetime.end.p0i8(i64 75, i8* nonnull %0) #18
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @hex_string(i8* noundef %buf, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %bf.shl = shl i64 %spec.coerce, 32
  %bf.ashr = ashr i64 %bf.shl, 40
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp = icmp eq i32 %bf.cast, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %0 = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, i8* %fmt, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  switch i8 %1, label %sw.default [
    i8 67, label %sw.epilog
    i8 68, label %sw.bb4
    i8 78, label %sw.bb5
  ]

sw.bb4:                                           ; preds = %if.end3
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end3, %sw.default, %sw.bb5, %sw.bb4
  %tobool42.not = phi i1 [ false, %sw.default ], [ true, %sw.bb5 ], [ false, %sw.bb4 ], [ false, %if.end3 ]
  %separator.0 = phi i8 [ 32, %sw.default ], [ 0, %sw.bb5 ], [ 45, %sw.bb4 ], [ 58, %if.end3 ]
  %cmp17 = icmp slt i32 %bf.cast, 64
  %cond = select i1 %cmp17, i32 %bf.cast, i32 64
  %2 = icmp sgt i32 %cond, 1
  %len.0 = select i1 %2, i32 %cond, i32 1
  %sub = add nsw i32 %len.0, -1
  %buf.addr.promoted = load i8*, i8** %buf.addr, align 8
  %3 = zext i32 %sub to i64
  %wide.trip.count = zext i32 %len.0 to i64
  br label %for.body

for.body:                                         ; preds = %sw.epilog, %for.inc
  %indvars.iv = phi i64 [ 0, %sw.epilog ], [ %indvars.iv.next, %for.inc ]
  %incdec.ptr507476 = phi i8* [ %buf.addr.promoted, %sw.epilog ], [ %incdec.ptr5075, %for.inc ]
  %cmp22 = icmp ult i8* %incdec.ptr507476, %end
  br i1 %cmp22, label %if.then24, label %if.end29

if.then24:                                        ; preds = %for.body
  %arrayidx25 = getelementptr i8, i8* %addr, i64 %indvars.iv
  %4 = load i8, i8* %arrayidx25, align 1
  %5 = lshr i8 %4, 4
  %6 = zext i8 %5 to i64
  %arrayidx28 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %6
  %7 = load i8, i8* %arrayidx28, align 1
  store i8 %7, i8* %incdec.ptr507476, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %for.body
  %incdec.ptr = getelementptr i8, i8* %incdec.ptr507476, i64 1
  %cmp30 = icmp ult i8* %incdec.ptr, %end
  br i1 %cmp30, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.end29
  %arrayidx34 = getelementptr i8, i8* %addr, i64 %indvars.iv
  %8 = load i8, i8* %arrayidx34, align 1
  %9 = and i8 %8, 15
  %10 = zext i8 %9 to i64
  %arrayidx38 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %10
  %11 = load i8, i8* %arrayidx38, align 1
  store i8 %11, i8* %incdec.ptr, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then32, %if.end29
  %incdec.ptr40 = getelementptr i8, i8* %incdec.ptr507476, i64 2
  %cmp43.not = icmp eq i64 %indvars.iv, %3
  %or.cond = select i1 %tobool42.not, i1 true, i1 %cmp43.not
  br i1 %or.cond, label %for.inc, label %if.then45

if.then45:                                        ; preds = %if.end39
  %cmp46 = icmp ult i8* %incdec.ptr40, %end
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then45
  store i8 %separator.0, i8* %incdec.ptr40, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then45
  %incdec.ptr50 = getelementptr i8, i8* %incdec.ptr507476, i64 3
  br label %for.inc

for.inc:                                          ; preds = %if.end39, %if.end49
  %incdec.ptr5075 = phi i8* [ %incdec.ptr40, %if.end39 ], [ %incdec.ptr50, %if.end49 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  store i8* %incdec.ptr5075, i8** %buf.addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end, %if.then2
  %retval.0 = phi i8* [ %0, %if.then2 ], [ %incdec.ptr5075, %for.end ], [ %buf, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @bitmap_list_string(i8* noundef %buf, i8* noundef %end, i64* noundef %bitmap, i64 %spec.coerce) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %bf.shl = shl i64 %spec.coerce, 32
  %bf.ashr = ashr i64 %bf.shl, 40
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp = icmp sgt i32 %bf.cast, 0
  %cond = select i1 %cmp, i32 %bf.cast, i32 0
  %0 = bitcast i64* %bitmap to i8*
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %0, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  %retval.0.pre = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %cond to i64
  %call2 = call fastcc i64 @find_first_bit(i64* noundef %bitmap, i64 noundef %conv) #17
  %buf.addr.promoted = load i8*, i8** %buf.addr, align 8
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %if.end
  %call352 = phi i8* [ %buf.addr.promoted, %if.end ], [ %call352.be, %while.cond.outer.backedge ]
  %cur.0.ph.in = phi i64 [ %call2, %if.end ], [ %call8, %while.cond.outer.backedge ]
  %first.0.off0.ph = phi i1 [ true, %if.end ], [ false, %while.cond.outer.backedge ]
  %cur.0.ph = trunc i64 %cur.0.ph.in to i32
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %cur.0 = phi i32 [ %conv9, %while.body ], [ %cur.0.ph, %while.cond.outer ]
  %cmp4 = icmp slt i32 %cur.0, %cond
  br i1 %cmp4, label %while.body, label %cleanup.loopexit

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %cur.0, 1
  %conv7 = sext i32 %add to i64
  %call8 = call fastcc i64 @find_next_bit(i64* noundef %bitmap, i64 noundef %conv, i64 noundef %conv7) #17
  %conv9 = trunc i64 %call8 to i32
  %cmp10 = icmp sle i32 %cond, %conv9
  %cmp13.not = icmp slt i32 %add, %conv9
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp13.not
  br i1 %or.cond, label %if.end16, label %while.cond

if.end16:                                         ; preds = %while.body
  br i1 %first.0.off0.ph, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end16
  %cmp19 = icmp ult i8* %call352, %end
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then18
  store i8 44, i8* %call352, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then18
  %incdec.ptr = getelementptr i8, i8* %call352, i64 1
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end16
  %call354 = phi i8* [ %incdec.ptr, %if.end22 ], [ %call352, %if.end16 ]
  %sext = shl i64 %cur.0.ph.in, 32
  %conv24 = ashr exact i64 %sext, 32
  %call25 = call fastcc i8* @number(i8* noundef %call354, i8* noundef %end, i64 noundef %conv24, i64 -270479860432896) #17
  %cmp26 = icmp sgt i32 %cur.0, %cur.0.ph
  br i1 %cmp26, label %if.then28, label %while.cond.outer.backedge

if.then28:                                        ; preds = %if.end23
  %cmp29 = icmp ult i8* %call25, %end
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then28
  store i8 45, i8* %call25, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then28
  %incdec.ptr33 = getelementptr i8, i8* %call25, i64 1
  %conv34 = sext i32 %cur.0 to i64
  %call35 = call fastcc i8* @number(i8* noundef %incdec.ptr33, i8* noundef %end, i64 noundef %conv34, i64 -270479860432896) #17
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end32, %if.end23
  %call352.be = phi i8* [ %call35, %if.end32 ], [ %call25, %if.end23 ]
  br label %while.cond.outer

cleanup.loopexit:                                 ; preds = %while.cond
  store i8* %call352, i8** %buf.addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry.cleanup_crit_edge, %cleanup.loopexit
  %retval.0 = phi i8* [ %retval.0.pre, %entry.cleanup_crit_edge ], [ %call352, %cleanup.loopexit ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @bitmap_string(i8* noundef %buf, i8* noundef %end, i64* noundef %bitmap, i64 %spec.coerce) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %bf.shl = shl i64 %spec.coerce, 32
  %bf.ashr = ashr i64 %bf.shl, 40
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp = icmp sgt i32 %bf.cast, 0
  %cond = select i1 %cmp, i32 %bf.cast, i32 0
  %0 = bitcast i64* %bitmap to i8*
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %0, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  %retval.0.pre = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %cond, 31
  %cmp15 = icmp eq i32 %and, 0
  %spec.store.select = select i1 %cmp15, i32 32, i32 %and
  %1 = add nsw i32 %cond, -1
  %sub = and i32 %1, -32
  %buf.addr.promoted = load i8*, i8** %buf.addr, align 8
  %cmp197 = icmp sgt i32 %sub, -1
  br i1 %cmp197, label %if.end31.peel, label %cleanup.loopexit

if.end31.peel:                                    ; preds = %if.end
  %sh_prom.peel = zext i32 %spec.store.select to i64
  %notmask.peel = shl nsw i64 -1, %sh_prom.peel
  %div1.peel = lshr i32 %1, 6
  %rem2.peel = and i32 %1, 32
  %2 = zext i32 %div1.peel to i64
  %arrayidx.peel = getelementptr i64, i64* %bitmap, i64 %2
  %3 = load i64, i64* %arrayidx.peel, align 8
  %sh_prom21.peel = zext i32 %rem2.peel to i64
  %shr.peel = lshr i64 %3, %sh_prom21.peel
  %div343.lhs.trunc.peel = shl nuw nsw i32 %spec.store.select, 6
  %4 = add nuw nsw i32 %div343.lhs.trunc.peel, 192
  %5 = and i32 %4, 7936
  %bf.shl36.peel = zext i32 %5 to i64
  %bf.set38.peel = or i64 %bf.shl36.peel, 17798344474624
  %conv22.peel = and i64 %notmask.peel, 4294967295
  %and23.peel = xor i64 %conv22.peel, 4294967295
  %conv39.peel = and i64 %and23.peel, %shr.peel
  %call41.peel = call fastcc i8* @number(i8* noundef %buf.addr.promoted, i8* noundef %end, i64 noundef %conv39.peel, i64 %bf.set38.peel) #17
  %cmp19.peel.not = icmp eq i32 %sub, 0
  br i1 %cmp19.peel.not, label %cleanup.loopexit, label %if.then26

if.then26:                                        ; preds = %if.end31.peel, %if.end31
  %spec.sroa.0.013 = phi i64 [ %bf.set38, %if.end31 ], [ %bf.set38.peel, %if.end31.peel ]
  %i.010.in = phi i32 [ %i.010, %if.end31 ], [ %sub, %if.end31.peel ]
  %call4158 = phi i8* [ %call41, %if.end31 ], [ %call41.peel, %if.end31.peel ]
  %i.010 = add nsw i32 %i.010.in, -32
  %div1 = lshr i32 %i.010, 6
  %rem2 = and i32 %i.010, 32
  %6 = zext i32 %div1 to i64
  %arrayidx = getelementptr i64, i64* %bitmap, i64 %6
  %7 = load i64, i64* %arrayidx, align 8
  %sh_prom21 = zext i32 %rem2 to i64
  %shr = lshr i64 %7, %sh_prom21
  %cmp27 = icmp ult i8* %call4158, %end
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then26
  store i8 44, i8* %call4158, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then29
  %incdec.ptr = getelementptr i8, i8* %call4158, i64 1
  %bf.clear37 = and i64 %spec.sroa.0.013, -4294967041
  %bf.set38 = or i64 %bf.clear37, 2048
  %conv39 = and i64 %shr, 4294967295
  %call41 = call fastcc i8* @number(i8* noundef %incdec.ptr, i8* noundef %end, i64 noundef %conv39, i64 %bf.set38) #17
  %cmp19 = icmp ugt i32 %i.010.in, 63
  br i1 %cmp19, label %if.then26, label %cleanup.loopexit, !llvm.loop !30

cleanup.loopexit:                                 ; preds = %if.end31, %if.end31.peel, %if.end
  %call415.lcssa = phi i8* [ %buf.addr.promoted, %if.end ], [ %call41.peel, %if.end31.peel ], [ %call41, %if.end31 ]
  store i8* %call415.lcssa, i8** %buf.addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry.cleanup_crit_edge, %cleanup.loopexit
  %retval.0 = phi i8* [ %retval.0.pre, %entry.cleanup_crit_edge ], [ %call415.lcssa, %cleanup.loopexit ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @mac_address_string(i8* noundef %buf, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %mac_addr = alloca [18 x i8], align 1
  store i8* %buf, i8** %buf.addr, align 8
  %0 = getelementptr inbounds [18 x i8], [18 x i8]* %mac_addr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 18, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(18) %0, i8 0, i64 18, i1 false), !annotation !7
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, i8* %fmt, i64 1
  %2 = load i8, i8* %arrayidx, align 1
  switch i8 %2, label %if.end11 [
    i8 70, label %sw.epilog.thread
    i8 82, label %if.then5
  ]

sw.epilog.thread:                                 ; preds = %if.end
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %arrayidx6 = getelementptr i8, i8* %addr, i64 5
  br label %if.end11

if.end11:                                         ; preds = %sw.epilog.thread, %if.end, %if.then5
  %addr.sink = phi i8* [ %arrayidx6, %if.then5 ], [ %addr, %if.end ], [ %addr, %sw.epilog.thread ]
  %reversed.1.off054 = phi i1 [ true, %if.then5 ], [ false, %if.end ], [ false, %sw.epilog.thread ]
  %separator.048 = phi i8 [ 58, %if.then5 ], [ 58, %if.end ], [ 45, %sw.epilog.thread ]
  %3 = load i8, i8* %addr.sink, align 1
  %call10 = call fastcc i8* @hex_byte_pack(i8* noundef nonnull %0, i8 noundef %3) #17
  %4 = load i8, i8* %fmt, align 1
  %cmp14 = icmp eq i8 %4, 77
  br i1 %cmp14, label %if.then18, label %for.inc

if.then18:                                        ; preds = %if.end11
  %incdec.ptr = getelementptr i8, i8* %call10, i64 1
  store i8 %separator.048, i8* %call10, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %if.then18
  %p.2 = phi i8* [ %incdec.ptr, %if.then18 ], [ %call10, %if.end11 ]
  %. = select i1 %reversed.1.off054, i64 4, i64 1
  %arrayidx6.1 = getelementptr i8, i8* %addr, i64 %.
  %5 = load i8, i8* %arrayidx6.1, align 1
  %call7.1 = call fastcc i8* @hex_byte_pack(i8* noundef %p.2, i8 noundef %5) #17
  %6 = load i8, i8* %fmt, align 1
  %cmp14.1 = icmp eq i8 %6, 77
  br i1 %cmp14.1, label %if.then18.1, label %for.inc.1

if.then18.1:                                      ; preds = %for.inc
  %incdec.ptr.1 = getelementptr i8, i8* %call7.1, i64 1
  store i8 %separator.048, i8* %call7.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then18.1, %for.inc
  %p.2.1 = phi i8* [ %incdec.ptr.1, %if.then18.1 ], [ %call7.1, %for.inc ]
  %.66 = select i1 %reversed.1.off054, i64 3, i64 2
  %arrayidx6.2 = getelementptr i8, i8* %addr, i64 %.66
  %7 = load i8, i8* %arrayidx6.2, align 1
  %call7.2 = call fastcc i8* @hex_byte_pack(i8* noundef %p.2.1, i8 noundef %7) #17
  %8 = load i8, i8* %fmt, align 1
  %cmp14.2 = icmp eq i8 %8, 77
  br i1 %cmp14.2, label %if.then18.2, label %for.inc.2

if.then18.2:                                      ; preds = %for.inc.1
  %incdec.ptr.2 = getelementptr i8, i8* %call7.2, i64 1
  store i8 %separator.048, i8* %call7.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then18.2, %for.inc.1
  %p.2.2 = phi i8* [ %incdec.ptr.2, %if.then18.2 ], [ %call7.2, %for.inc.1 ]
  %.67 = select i1 %reversed.1.off054, i64 2, i64 3
  %arrayidx6.3 = getelementptr i8, i8* %addr, i64 %.67
  %9 = load i8, i8* %arrayidx6.3, align 1
  %call7.3 = call fastcc i8* @hex_byte_pack(i8* noundef %p.2.2, i8 noundef %9) #17
  %10 = load i8, i8* %fmt, align 1
  %cmp14.3 = icmp eq i8 %10, 77
  br i1 %cmp14.3, label %if.then18.3, label %for.inc.3

if.then18.3:                                      ; preds = %for.inc.2
  %incdec.ptr.3 = getelementptr i8, i8* %call7.3, i64 1
  store i8 %separator.048, i8* %call7.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then18.3, %for.inc.2
  %p.2.3 = phi i8* [ %incdec.ptr.3, %if.then18.3 ], [ %call7.3, %for.inc.2 ]
  %.68 = select i1 %reversed.1.off054, i64 1, i64 4
  %arrayidx6.4 = getelementptr i8, i8* %addr, i64 %.68
  %11 = load i8, i8* %arrayidx6.4, align 1
  %call7.4 = call fastcc i8* @hex_byte_pack(i8* noundef %p.2.3, i8 noundef %11) #17
  %12 = load i8, i8* %fmt, align 1
  %cmp14.4 = icmp eq i8 %12, 77
  br i1 %cmp14.4, label %if.then18.4, label %for.inc.4

if.then18.4:                                      ; preds = %for.inc.3
  %incdec.ptr.4 = getelementptr i8, i8* %call7.4, i64 1
  store i8 %separator.048, i8* %call7.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then18.4, %for.inc.3
  %p.2.4 = phi i8* [ %incdec.ptr.4, %if.then18.4 ], [ %call7.4, %for.inc.3 ]
  %arrayidx9.5.sink.idx = select i1 %reversed.1.off054, i64 0, i64 5
  %arrayidx9.5.sink = getelementptr i8, i8* %addr, i64 %arrayidx9.5.sink.idx
  %13 = load i8, i8* %arrayidx9.5.sink, align 1
  %call10.5 = call fastcc i8* @hex_byte_pack(i8* noundef %p.2.4, i8 noundef %13) #17
  store i8 0, i8* %call10.5, align 1
  %14 = load i8*, i8** %buf.addr, align 8
  %call22 = call fastcc i8* @string_nocheck(i8* noundef %14, i8* noundef %end, i8* noundef nonnull %0, i64 %spec.coerce) #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.4, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ %call22, %for.inc.4 ]
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %0) #18
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @ip_addr_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %buf.addr, align 8
  br label %cleanup22

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, i8* %fmt, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  switch i8 %1, label %sw.epilog [
    i8 54, label %sw.bb
    i8 52, label %sw.bb4
    i8 83, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load i8*, i8** %buf.addr, align 8
  %call3 = call fastcc i8* @ip6_addr_string(i8* noundef %2, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %cleanup22

sw.bb4:                                           ; preds = %if.end
  %3 = load i8*, i8** %buf.addr, align 8
  %call6 = call fastcc i8* @ip4_addr_string(i8* noundef %3, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %cleanup22

sw.bb7:                                           ; preds = %if.end
  %sa_family = bitcast i8* %ptr to i16*
  %4 = load i16, i16* %sa_family, align 4
  switch i16 %4, label %sw.default [
    i16 2, label %sw.bb9
    i16 10, label %sw.bb12
  ]

sw.bb9:                                           ; preds = %sw.bb7
  %5 = load i8*, i8** %buf.addr, align 8
  %v4 = bitcast i8* %ptr to %struct.sockaddr_in*
  %call11 = call fastcc i8* @ip4_addr_string_sa(i8* noundef %5, i8* noundef %end, %struct.sockaddr_in* noundef %v4, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %cleanup22

sw.bb12:                                          ; preds = %sw.bb7
  %6 = load i8*, i8** %buf.addr, align 8
  %v6 = bitcast i8* %ptr to %struct.sockaddr_in6*
  %call14 = call fastcc i8* @ip6_addr_string_sa(i8* noundef %6, i8* noundef %end, %struct.sockaddr_in6* noundef %v6, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %cleanup22

sw.default:                                       ; preds = %sw.bb7
  %7 = load i8*, i8** %buf.addr, align 8
  %call16 = call fastcc i8* @error_string(i8* noundef %7, i8* noundef %end, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i64 %spec.coerce) #17
  br label %cleanup22

sw.epilog:                                        ; preds = %if.end
  %8 = load i8, i8* %fmt, align 1
  %cmp = icmp eq i8 %8, 105
  %cond = select i1 %cmp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0)
  %9 = load i8*, i8** %buf.addr, align 8
  %call21 = call fastcc i8* @error_string(i8* noundef %9, i8* noundef %end, i8* noundef %cond, i64 %spec.coerce) #17
  br label %cleanup22

cleanup22:                                        ; preds = %sw.bb9, %sw.bb12, %sw.default, %sw.epilog, %sw.bb4, %sw.bb, %if.then
  %retval.1 = phi i8* [ %0, %if.then ], [ %call21, %sw.epilog ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb ], [ %call16, %sw.default ], [ %call14, %sw.bb12 ], [ %call11, %sw.bb9 ]
  ret i8* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @escaped_string(i8* noundef %buf, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %bf.shl = shl i64 %spec.coerce, 32
  %bf.ashr = ashr i64 %bf.shl, 40
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp = icmp eq i32 %bf.cast, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.then2

if.then2:                                         ; preds = %if.end
  %0 = load i8*, i8** %buf.addr, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end, %do.cond
  %count.0 = phi i32 [ %inc, %do.cond ], [ 1, %if.end ]
  %flags.0 = phi i32 [ %2, %do.cond ], [ 0, %if.end ]
  %inc = add i32 %count.0, 1
  %idxprom = sext i32 %count.0 to i64
  %arrayidx = getelementptr i8, i8* %fmt, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  switch i8 %1, label %do.end [
    i8 97, label %do.cond
    i8 99, label %sw.bb6
    i8 104, label %sw.bb10
    i8 110, label %sw.bb14
    i8 111, label %sw.bb18
    i8 112, label %sw.bb22
    i8 115, label %sw.bb26
  ]

sw.bb6:                                           ; preds = %do.body
  br label %do.cond

sw.bb10:                                          ; preds = %do.body
  br label %do.cond

sw.bb14:                                          ; preds = %do.body
  br label %do.cond

sw.bb18:                                          ; preds = %do.body
  br label %do.cond

sw.bb22:                                          ; preds = %do.body
  br label %do.cond

sw.bb26:                                          ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body, %sw.bb6, %sw.bb10, %sw.bb14, %sw.bb18, %sw.bb22, %sw.bb26
  %.sink = phi i32 [ 2, %sw.bb6 ], [ 32, %sw.bb10 ], [ 4, %sw.bb14 ], [ 8, %sw.bb18 ], [ 16, %sw.bb22 ], [ 1, %sw.bb26 ], [ 15, %do.body ]
  %2 = or i32 %flags.0, %.sink
  br label %do.body

do.end:                                           ; preds = %do.body
  %tobool31.not = icmp eq i32 %flags.0, 0
  %spec.select = select i1 %tobool31.not, i32 31, i32 %flags.0
  %cmp38 = icmp slt i32 %bf.cast, 0
  %cond = select i1 %cmp38, i64 1, i64 %bf.ashr
  %3 = load i8*, i8** %buf.addr, align 8
  %cmp45 = icmp ult i8* %3, %end
  %sub.ptr.lhs.cast = ptrtoint i8* %end to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cond50 = select i1 %cmp45, i64 %sub.ptr.sub, i64 0
  %call51 = call i32 @string_escape_mem(i8* noundef %addr, i64 noundef %cond, i8* noundef %3, i64 noundef %cond50, i32 noundef %spec.select, i8* noundef null) #19
  %idx.ext = sext i32 %call51 to i64
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %buf.addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end, %if.then2
  %retval.0 = phi i8* [ %0, %if.then2 ], [ %add.ptr, %do.end ], [ %buf, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @uuid_string(i8* noundef %buf, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %uuid = alloca [37 x i8], align 1
  store i8* %buf, i8** %buf.addr, align 8
  %0 = getelementptr inbounds [37 x i8], [37 x i8]* %uuid, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 37, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(37) %0, i8 0, i64 37, i1 false), !annotation !7
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr i8, i8* %fmt, i64 1
  %2 = load i8, i8* %incdec.ptr, align 1
  switch i8 %2, label %sw.epilog [
    i8 76, label %sw.bb
    i8 108, label %sw.bb2
    i8 66, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.bb2

sw.bb2:                                           ; preds = %if.end, %sw.bb
  %uc.0 = phi i1 [ false, %if.end ], [ true, %sw.bb ]
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb3, %sw.bb2
  %index.0 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @uuid_index, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @uuid_index, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @guid_index, i64 0, i64 0), %sw.bb2 ]
  %uc.1.off0 = phi i1 [ false, %if.end ], [ true, %sw.bb3 ], [ %uc.0, %sw.bb2 ]
  br label %for.body

for.body:                                         ; preds = %sw.epilog, %for.inc
  %indvars.iv = phi i64 [ 0, %sw.epilog ], [ %indvars.iv.next, %for.inc ]
  %p.041 = phi i8* [ %0, %sw.epilog ], [ %p.2, %for.inc ]
  %arrayidx = getelementptr i8, i8* %index.0, i64 %indvars.iv
  %3 = load i8, i8* %arrayidx, align 1
  %idxprom7 = zext i8 %3 to i64
  %arrayidx8 = getelementptr i8, i8* %addr, i64 %idxprom7
  %4 = load i8, i8* %arrayidx8, align 1
  br i1 %uc.1.off0, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.body
  %call9 = call fastcc i8* @hex_byte_pack_upper(i8* noundef %p.041, i8 noundef %4) #17
  br label %if.end15

if.else:                                          ; preds = %for.body
  %call14 = call fastcc i8* @hex_byte_pack(i8* noundef %p.041, i8 noundef %4) #17
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then6
  %p.1 = phi i8* [ %call9, %if.then6 ], [ %call14, %if.else ]
  %5 = trunc i64 %indvars.iv to i32
  switch i32 %5, label %for.inc [
    i32 3, label %sw.bb16
    i32 5, label %sw.bb16
    i32 7, label %sw.bb16
    i32 9, label %sw.bb16
  ]

sw.bb16:                                          ; preds = %if.end15, %if.end15, %if.end15, %if.end15
  %incdec.ptr17 = getelementptr i8, i8* %p.1, i64 1
  store i8 45, i8* %p.1, align 1
  br label %for.inc

for.inc:                                          ; preds = %sw.bb16, %if.end15
  %p.2 = phi i8* [ %p.1, %if.end15 ], [ %incdec.ptr17, %sw.bb16 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  store i8 0, i8* %p.2, align 1
  %6 = load i8*, i8** %buf.addr, align 8
  %call21 = call fastcc i8* @string_nocheck(i8* noundef %6, i8* noundef %end, i8* noundef nonnull %0, i64 %spec.coerce) #17
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ %call21, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 37, i8* nonnull %0) #18
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @va_format(i8* noundef %buf, i8* noundef %end, %struct.va_format* noundef %va_fmt, i64 %spec.coerce) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %va = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = bitcast %"struct.std::__va_list"* %va to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %1 = bitcast %struct.va_format* %va_fmt to i8*
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %1, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  %retval.0.pre = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %va2 = getelementptr inbounds %struct.va_format, %struct.va_format* %va_fmt, i64 0, i32 1
  %2 = bitcast %"struct.std::__va_list"** %va2 to i8**
  %3 = load i8*, i8** %2, align 8
  call void @llvm.va_copy(i8* nonnull %0, i8* %3)
  %4 = load i8*, i8** %buf.addr, align 8
  %cmp = icmp ult i8* %4, %end
  %sub.ptr.lhs.cast = ptrtoint i8* %end to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cond = select i1 %cmp, i64 %sub.ptr.sub, i64 0
  %fmt3 = getelementptr inbounds %struct.va_format, %struct.va_format* %va_fmt, i64 0, i32 0
  %5 = load i8*, i8** %fmt3, align 8
  %6 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %6, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call4 = call i32 @vsnprintf(i8* noundef %4, i64 noundef %cond, i8* noundef %5, %"struct.std::__va_list"* noundef nonnull %byval-temp) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #18
  %idx.ext = sext i32 %call4 to i64
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %buf.addr, align 8
  call void @llvm.va_end(i8* nonnull %0)
  br label %cleanup

cleanup:                                          ; preds = %entry.cleanup_crit_edge, %if.end
  %retval.0 = phi i8* [ %retval.0.pre, %entry.cleanup_crit_edge ], [ %add.ptr, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #18
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @restricted_pointer(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @kptr_restrict, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i8* @ptr_to_id(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) #17
  br label %return

sw.bb2:                                           ; preds = %entry
  %call3 = call fastcc i32 @preempt_count() #17
  %1 = and i32 %call3, 983040
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb2
  %call4 = call fastcc i32 @preempt_count() #17
  %2 = and i32 %call4, 256
  %tobool8.not = icmp eq i32 %2, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call10 = call fastcc i32 @preempt_count() #17
  %3 = and i32 %call10, 15728640
  %tobool13.not = icmp eq i32 %3, 0
  br i1 %tobool13.not, label %do.end, label %cleanup

do.end:                                           ; preds = %lor.lhs.false9
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !32
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %cred21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 80
  %6 = load %struct.cred*, %struct.cred** %cred21, align 8
  %call23 = call i1 @has_capability_noaudit(%struct.task_struct* noundef %5, i32 noundef 34) #19
  br i1 %call23, label %lor.lhs.false24, label %if.then35

lor.lhs.false24:                                  ; preds = %do.end
  %coerce.dive25 = getelementptr inbounds %struct.cred, %struct.cred* %6, i64 0, i32 5, i32 0
  %7 = load i32, i32* %coerce.dive25, align 4
  %coerce.val.ii = zext i32 %7 to i64
  %coerce.dive26 = getelementptr inbounds %struct.cred, %struct.cred* %6, i64 0, i32 1, i32 0
  %8 = load i32, i32* %coerce.dive26, align 4
  %coerce.val.ii27 = zext i32 %8 to i64
  %call28 = call fastcc i1 @uid_eq(i64 %coerce.val.ii, i64 %coerce.val.ii27) #17
  br i1 %call28, label %lor.lhs.false29, label %if.then35

lor.lhs.false29:                                  ; preds = %lor.lhs.false24
  %coerce.dive30 = getelementptr inbounds %struct.cred, %struct.cred* %6, i64 0, i32 6, i32 0
  %9 = load i32, i32* %coerce.dive30, align 8
  %coerce.val.ii31 = zext i32 %9 to i64
  %coerce.dive32 = getelementptr inbounds %struct.cred, %struct.cred* %6, i64 0, i32 2, i32 0
  %10 = load i32, i32* %coerce.dive32, align 8
  %coerce.val.ii33 = zext i32 %10 to i64
  %call34 = call fastcc i1 @gid_eq(i64 %coerce.val.ii31, i64 %coerce.val.ii33) #17
  br i1 %call34, label %sw.epilog, label %if.then35

if.then35:                                        ; preds = %lor.lhs.false29, %lor.lhs.false24, %do.end
  br label %sw.epilog

cleanup:                                          ; preds = %sw.bb2, %lor.lhs.false, %lor.lhs.false9
  %bf.shl = shl i64 %spec.coerce, 32
  %bf.ashr = ashr i64 %bf.shl, 40
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp = icmp eq i32 %bf.cast, -1
  %bf.clear = and i64 %spec.coerce, -4294967041
  %bf.set = or i64 %bf.clear, 4096
  %spec.sroa.0.0 = select i1 %cmp, i64 %bf.set, i64 %spec.coerce
  %call18 = call fastcc i8* @error_string(i8* noundef %buf, i8* noundef %end, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i64 %spec.sroa.0.0) #17
  br label %return

sw.epilog:                                        ; preds = %lor.lhs.false29, %if.then35, %entry
  %ptr.addr.2 = phi i8* [ null, %entry ], [ null, %if.then35 ], [ %ptr, %lor.lhs.false29 ]
  %call39 = call fastcc i8* @pointer_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr.addr.2, i64 %spec.coerce) #17
  br label %return

return:                                           ; preds = %cleanup, %sw.epilog, %sw.bb
  %retval.1 = phi i8* [ %call39, %sw.epilog ], [ %call18, %cleanup ], [ %call, %sw.bb ]
  ret i8* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @netdev_bits(i8* noundef %buf, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, i8* %fmt, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  %cond = icmp eq i8 %1, 70
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %2 = bitcast i8* %addr to i64*
  %3 = load i64, i64* %2, align 8
  %4 = load i8*, i8** %buf.addr, align 8
  %call4 = call fastcc i8* @special_hex_number(i8* noundef %4, i8* noundef %end, i64 noundef %3, i32 noundef 8) #17
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %5 = load i8*, i8** %buf.addr, align 8
  %call3 = call fastcc i8* @error_string(i8* noundef %5, i8* noundef %end, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i64 %spec.coerce) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.default, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ %call4, %sw.bb ], [ %call3, %sw.default ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @fourcc_string(i8* noundef %buf, i8* noundef %end, i32* noundef %fourcc, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %output = alloca [32 x i8], align 4
  store i8* %buf, i8** %buf.addr, align 8
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %output, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #18
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %output, i64 0, i64 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(32) %1, i8 0, i64 28, i1 false), !annotation !7
  %arrayidx = getelementptr i8, i8* %fmt, i64 1
  %2 = load i8, i8* %arrayidx, align 1
  %cmp.not = icmp eq i8 %2, 99
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, i8* %fmt, i64 2
  %3 = load i8, i8* %arrayidx2, align 1
  %cmp4.not = icmp eq i8 %3, 99
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call fastcc i8* @error_string(i8* noundef %buf, i8* noundef %end, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i64 %spec.coerce) #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = bitcast i32* %fourcc to i8*
  %call8 = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %4, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  %5 = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %6 = load i32, i32* %fourcc, align 4
  %conv17 = and i32 %6, 255
  %cmp18 = icmp ult i32 %conv17, 128
  br i1 %cmp18, label %land.lhs.true, label %cond.end

land.lhs.true:                                    ; preds = %if.end10
  %idxprom = zext i32 %conv17 to i64
  %arrayidx21 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx21, align 1
  %8 = and i8 %7, -105
  %cmp24.not = icmp eq i8 %8, 0
  %9 = trunc i32 %6 to i8
  %phi.cast = select i1 %cmp24.not, i8 46, i8 %9
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %if.end10
  %cond = phi i8 [ 46, %if.end10 ], [ %phi.cast, %land.lhs.true ]
  %incdec.ptr = getelementptr inbounds [32 x i8], [32 x i8]* %output, i64 0, i64 1
  store i8 %cond, i8* %0, align 4
  %shr.1 = lshr i32 %6, 8
  %conv17.1 = and i32 %shr.1, 255
  %cmp18.1 = icmp ult i32 %conv17.1, 128
  br i1 %cmp18.1, label %land.lhs.true.1, label %cond.end.1

land.lhs.true.1:                                  ; preds = %cond.end
  %idxprom.1 = zext i32 %conv17.1 to i64
  %arrayidx21.1 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom.1
  %10 = load i8, i8* %arrayidx21.1, align 1
  %11 = and i8 %10, -105
  %cmp24.not.1 = icmp eq i8 %11, 0
  %12 = trunc i32 %shr.1 to i8
  %phi.cast73 = select i1 %cmp24.not.1, i8 46, i8 %12
  br label %cond.end.1

cond.end.1:                                       ; preds = %land.lhs.true.1, %cond.end
  %cond.1 = phi i8 [ 46, %cond.end ], [ %phi.cast73, %land.lhs.true.1 ]
  %incdec.ptr.1 = getelementptr inbounds [32 x i8], [32 x i8]* %output, i64 0, i64 2
  store i8 %cond.1, i8* %incdec.ptr, align 1
  %shr.2 = lshr i32 %6, 16
  %conv17.2 = and i32 %shr.2, 255
  %cmp18.2 = icmp ult i32 %conv17.2, 128
  br i1 %cmp18.2, label %land.lhs.true.2, label %cond.end.3

land.lhs.true.2:                                  ; preds = %cond.end.1
  %idxprom.2 = zext i32 %conv17.2 to i64
  %arrayidx21.2 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom.2
  %13 = load i8, i8* %arrayidx21.2, align 1
  %14 = and i8 %13, -105
  %cmp24.not.2 = icmp eq i8 %14, 0
  %15 = trunc i32 %shr.2 to i8
  %phi.cast74 = select i1 %cmp24.not.2, i8 46, i8 %15
  br label %cond.end.3

cond.end.3:                                       ; preds = %land.lhs.true.2, %cond.end.1
  %cond.2 = phi i8 [ 46, %cond.end.1 ], [ %phi.cast74, %land.lhs.true.2 ]
  %incdec.ptr.2 = getelementptr inbounds [32 x i8], [32 x i8]* %output, i64 0, i64 3
  store i8 %cond.2, i8* %incdec.ptr.1, align 2
  %16 = lshr i32 %6, 24
  %shr.3 = and i32 %16, 127
  %idxprom.3 = zext i32 %shr.3 to i64
  %arrayidx21.3 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %idxprom.3
  %17 = load i8, i8* %arrayidx21.3, align 1
  %18 = and i8 %17, -105
  %cmp24.not.3 = icmp eq i8 %18, 0
  %19 = trunc i32 %shr.3 to i8
  %phi.cast75 = select i1 %cmp24.not.3, i8 46, i8 %19
  %incdec.ptr.3 = getelementptr inbounds [32 x i8], [32 x i8]* %output, i64 0, i64 4
  store i8 %phi.cast75, i8* %incdec.ptr.2, align 1
  %tobool30.not = icmp sgt i32 %6, -1
  %cond31 = select i1 %tobool30.not, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0)
  %call32 = call i8* @strcpy(i8* noundef %incdec.ptr.3, i8* noundef %cond31) #19
  %call33 = call i64 @strlen(i8* noundef %incdec.ptr.3) #19
  %add.ptr = getelementptr i8, i8* %incdec.ptr.3, i64 %call33
  %incdec.ptr34 = getelementptr i8, i8* %add.ptr, i64 1
  store i8 32, i8* %add.ptr, align 1
  %incdec.ptr35 = getelementptr i8, i8* %incdec.ptr34, i64 1
  store i8 40, i8* %incdec.ptr34, align 1
  %add.ptr38 = getelementptr inbounds [32 x i8], [32 x i8]* %output, i64 0, i64 30
  %20 = load i32, i32* %fourcc, align 4
  %conv39 = zext i32 %20 to i64
  %call40 = call fastcc i8* @special_hex_number(i8* noundef %incdec.ptr35, i8* noundef %add.ptr38, i64 noundef %conv39, i32 noundef 4) #17
  %incdec.ptr41 = getelementptr i8, i8* %call40, i64 1
  store i8 41, i8* %call40, align 1
  store i8 0, i8* %incdec.ptr41, align 1
  %21 = load i8*, i8** %buf.addr, align 8
  %call44 = call fastcc i8* @string(i8* noundef %21, i8* noundef %end, i8* noundef nonnull %0, i64 %spec.coerce) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end.3, %if.then9, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %5, %if.then9 ], [ %call44, %cond.end.3 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #18
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @address_val(i8* noundef %buf, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce, i8* nocapture noundef readnone %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %buf.addr, align 8
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %num.0.in = bitcast i8* %addr to i64*
  %num.0 = load i64, i64* %num.0.in, align 8
  %1 = load i8*, i8** %buf.addr, align 8
  %call3 = call fastcc i8* @special_hex_number(i8* noundef %1, i8* noundef %end, i64 noundef %num.0, i32 noundef 8) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ %call3, %sw.epilog ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @dentry_name(i8* noundef %buf, i8* noundef %end, %struct.dentry* noundef %d, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %array = alloca [4 x i8*], align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = bitcast [4 x i8*]* %array to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %arrayidx = getelementptr i8, i8* %fmt, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  %.off = add i8 %1, -50
  %switch = icmp ult i8 %.off, 3
  %conv2 = zext i8 %1 to i32
  %sub = add nsw i32 %conv2, -48
  %depth.0 = select i1 %switch, i32 %sub, i32 1
  call fastcc void @__rcu_read_lock() #19
  %cmp87 = icmp sgt i32 %depth.0, 0
  br i1 %cmp87, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %depth.0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %d.addr.089 = phi %struct.dentry* [ %d, %for.body.preheader ], [ %4, %for.inc ]
  %2 = bitcast %struct.dentry* %d.addr.089 to i8*
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %2, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %for.body
  call fastcc void @rcu_read_unlock() #17
  %3 = load i8*, i8** %buf.addr, align 8
  br label %cleanup45

do.end:                                           ; preds = %for.body
  %d_parent = getelementptr inbounds %struct.dentry, %struct.dentry* %d.addr.089, i64 0, i32 3
  %4 = load volatile %struct.dentry*, %struct.dentry** %d_parent, align 8
  %name = getelementptr inbounds %struct.dentry, %struct.dentry* %d.addr.089, i64 0, i32 4, i32 1
  %5 = load volatile i8*, i8** %name, align 8
  %arrayidx9 = getelementptr [4 x i8*], [4 x i8*]* %array, i64 0, i64 %indvars.iv
  store i8* %5, i8** %arrayidx9, align 8
  %cmp10 = icmp eq %struct.dentry* %4, %d.addr.089
  br i1 %cmp10, label %if.then12, label %for.inc

if.then12:                                        ; preds = %do.end
  %6 = trunc i64 %indvars.iv to i32
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.then12
  %arrayidx9.le = getelementptr [4 x i8*], [4 x i8*]* %array, i64 0, i64 %indvars.iv
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i64 0, i64 0), i8** %arrayidx9.le, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then12
  %inc = add nsw i32 %6, 1
  br label %for.end

for.inc:                                          ; preds = %do.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry, %if.end17
  %i.1 = phi i32 [ %inc, %if.end17 ], [ 0, %entry ], [ %depth.0, %for.inc ]
  %dec = add i32 %i.1, -1
  %bf.ashr = ashr i64 %spec.coerce, 48
  %bf.cast = trunc i64 %bf.ashr to i32
  %cmp23.not90 = icmp eq i32 %bf.cast, 0
  br i1 %cmp23.not90, label %for.end42, label %for.body25.preheader

for.body25.preheader:                             ; preds = %for.end
  %idxprom20 = sext i32 %dec to i64
  %arrayidx21 = getelementptr [4 x i8*], [4 x i8*]* %array, i64 0, i64 %idxprom20
  %7 = load i8*, i8** %arrayidx21, align 8
  br label %for.body25

for.body25:                                       ; preds = %for.body25.preheader, %for.inc39
  %n.093 = phi i32 [ %inc40, %for.inc39 ], [ 0, %for.body25.preheader ]
  %i.292 = phi i32 [ %i.3, %for.inc39 ], [ %dec, %for.body25.preheader ]
  %s.091 = phi i8* [ %s.1, %for.inc39 ], [ %7, %for.body25.preheader ]
  %incdec.ptr = getelementptr i8, i8* %s.091, i64 1
  %8 = load i8, i8* %s.091, align 1
  %tobool26.not = icmp eq i8 %8, 0
  br i1 %tobool26.not, label %if.then27, label %if.end34

if.then27:                                        ; preds = %for.body25
  %tobool28.not = icmp eq i32 %i.292, 0
  br i1 %tobool28.not, label %for.end42, label %if.end30

if.end30:                                         ; preds = %if.then27
  %dec31 = add i32 %i.292, -1
  %idxprom32 = sext i32 %dec31 to i64
  %arrayidx33 = getelementptr [4 x i8*], [4 x i8*]* %array, i64 0, i64 %idxprom32
  %9 = load i8*, i8** %arrayidx33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %for.body25
  %s.1 = phi i8* [ %incdec.ptr, %for.body25 ], [ %9, %if.end30 ]
  %i.3 = phi i32 [ %i.292, %for.body25 ], [ %dec31, %if.end30 ]
  %c.0 = phi i8 [ %8, %for.body25 ], [ 47, %if.end30 ]
  %10 = load i8*, i8** %buf.addr, align 8
  %cmp35 = icmp ult i8* %10, %end
  br i1 %cmp35, label %if.then37, label %for.inc39

if.then37:                                        ; preds = %if.end34
  store i8 %c.0, i8* %10, align 1
  br label %for.inc39

for.inc39:                                        ; preds = %if.then37, %if.end34
  %inc40 = add nuw i32 %n.093, 1
  %incdec.ptr41 = getelementptr i8, i8* %10, i64 1
  store i8* %incdec.ptr41, i8** %buf.addr, align 8
  %cmp23.not = icmp eq i32 %inc40, %bf.cast
  br i1 %cmp23.not, label %for.end42, label %for.body25

for.end42:                                        ; preds = %for.inc39, %if.then27, %for.end
  %n.0.lcssa = phi i32 [ 0, %for.end ], [ %n.093, %if.then27 ], [ %bf.cast, %for.inc39 ]
  call fastcc void @rcu_read_unlock() #17
  %11 = load i8*, i8** %buf.addr, align 8
  %call44 = call fastcc i8* @widen_string(i8* noundef %11, i32 noundef %n.0.lcssa, i8* noundef %end, i64 %spec.coerce) #17
  br label %cleanup45

cleanup45:                                        ; preds = %for.end42, %if.then
  %retval.0 = phi i8* [ %3, %if.then ], [ %call44, %for.end42 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #18
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @time_and_date(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr i8, i8* %fmt, i64 1
  %0 = load i8, i8* %arrayidx, align 1
  switch i8 %0, label %sw.default [
    i8 82, label %sw.bb
    i8 84, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %1 = bitcast i8* %ptr to %struct.rtc_time*
  %call = call fastcc i8* @rtc_str(i8* noundef %buf, i8* noundef %end, %struct.rtc_time* noundef %1, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.bb2:                                           ; preds = %entry
  %2 = bitcast i8* %ptr to i64*
  %3 = load i64, i64* %2, align 8
  %call4 = call fastcc i8* @time64_str(i8* noundef %buf, i8* noundef %end, i64 noundef %3, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

sw.default:                                       ; preds = %entry
  %call6 = call fastcc i8* @error_string(i8* noundef %buf, i8* noundef %end, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i64 %spec.coerce) #17
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb
  %retval.0 = phi i8* [ %call6, %sw.default ], [ %call4, %sw.bb2 ], [ %call, %sw.bb ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @clock(i8* noundef %buf, i8* noundef %end, %struct.clk* noundef %clk, i64 %spec.coerce, i8* nocapture noundef readnone %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = bitcast %struct.clk* %clk to i8*
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %0, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  %1 = load i8*, i8** %buf.addr, align 8
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @__clk_get_name(%struct.clk* noundef %clk) #19
  %call4 = call fastcc i8* @string(i8* noundef %1, i8* noundef %end, i8* noundef %call2, i64 %spec.coerce) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call4, %if.end ], [ %1, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @file_dentry_name(i8* noundef %buf, i8* noundef %end, %struct.file* noundef %f, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = bitcast %struct.file* %f to i8*
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %0, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  %1 = load i8*, i8** %buf.addr, align 8
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %dentry = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 1, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %call3 = call fastcc i8* @dentry_name(i8* noundef %1, i8* noundef %end, %struct.dentry* noundef %2, i64 %spec.coerce, i8* noundef %fmt) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call3, %if.end ], [ %1, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @bdev_name(i8* noundef %buf, i8* noundef %end, %struct.block_device* noundef %bdev, i64 %spec.coerce) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = bitcast %struct.block_device* %bdev to i8*
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %0, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  %retval.0.pre = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %1 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %1, i64 0, i32 3, i64 0
  %call3 = call fastcc i8* @string(i8* noundef %2, i8* noundef %end, i8* noundef %arraydecay, i64 %spec.coerce) #17
  %bd_partno = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 14
  %3 = load i8, i8* %bd_partno, align 8
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end
  %call9 = call i64 @strlen(i8* noundef %arraydecay) #19
  %sub = add i64 %call9, -1
  %arrayidx = getelementptr %struct.gendisk, %struct.gendisk* %1, i64 0, i32 3, i64 %sub
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call10 = call fastcc i32 @isdigit(i32 noundef %conv) #17
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.then5
  %cmp = icmp ult i8* %call3, %end
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  store i8 112, i8* %call3, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then12
  %incdec.ptr = getelementptr i8, i8* %call3, i64 1
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then5
  %5 = phi i8* [ %incdec.ptr, %if.end15 ], [ %call3, %if.then5 ]
  %6 = load i8, i8* %bd_partno, align 8
  %conv18 = zext i8 %6 to i64
  %call20 = call fastcc i8* @number(i8* noundef %5, i8* noundef %end, i64 noundef %conv18, i64 %spec.coerce) #17
  store i8* %call20, i8** %buf.addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry.cleanup_crit_edge, %if.end, %if.end16
  %retval.0 = phi i8* [ %retval.0.pre, %entry.cleanup_crit_edge ], [ %call3, %if.end ], [ %call20, %if.end16 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @flags_string(i8* noundef %buf, i8* noundef %end, i8* noundef %flags_ptr, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %flags_ptr, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, i8* %fmt, i64 1
  %1 = load i8, i8* %arrayidx, align 1
  switch i8 %1, label %sw.default [
    i8 112, label %sw.bb
    i8 118, label %sw.bb3
    i8 103, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = bitcast i8* %flags_ptr to i64*
  %4 = load i64, i64* %3, align 8
  %call2 = call fastcc i8* @format_page_flags(i8* noundef %2, i8* noundef %end, i64 noundef %4) #17
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %5 = bitcast i8* %flags_ptr to i64*
  %6 = load i64, i64* %5, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %7 = bitcast i8* %flags_ptr to i32*
  %8 = load i32, i32* %7, align 4
  %conv5 = zext i32 %8 to i64
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %9 = load i8*, i8** %buf.addr, align 8
  %call7 = call fastcc i8* @error_string(i8* noundef %9, i8* noundef %end, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 %spec.coerce) #17
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3
  %flags.0 = phi i64 [ %conv5, %sw.bb4 ], [ %6, %sw.bb3 ]
  %names.0 = phi %struct.trace_print_flags* [ getelementptr inbounds ([0 x %struct.trace_print_flags], [0 x %struct.trace_print_flags]* @gfpflag_names, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([0 x %struct.trace_print_flags], [0 x %struct.trace_print_flags]* @vmaflag_names, i64 0, i64 0), %sw.bb3 ]
  %10 = load i8*, i8** %buf.addr, align 8
  %call8 = call fastcc i8* @format_flags(i8* noundef %10, i8* noundef %end, i64 noundef %flags.0, %struct.trace_print_flags* noundef nonnull %names.0) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb, %if.then
  %retval.0 = phi i8* [ %0, %if.then ], [ %call7, %sw.default ], [ %call8, %sw.epilog ], [ %call2, %sw.bb ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @device_node_string(i8* noundef %buf, i8* noundef %end, %struct.device_node* noundef %dn, i64 %spec.coerce, i8* noundef %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %tbuf = alloca [6 x i8], align 4
  %p = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = getelementptr inbounds [6 x i8], [6 x i8]* %tbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %0) #18
  %1 = getelementptr inbounds [6 x i8], [6 x i8]* %tbuf, i64 0, i64 4
  %2 = bitcast i8* %1 to i16*, !annotation !7
  store i16 0, i16* %2, align 4, !annotation !7
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #18
  store i8* null, i8** %p, align 8, !annotation !7
  %bf.set = or i64 %spec.coerce, 4294967040
  %4 = load i8, i8* %fmt, align 1
  %cmp.not = icmp eq i8 %4, 70
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @error_string(i8* noundef %buf, i8* noundef %end, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i64 %spec.coerce) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = bitcast %struct.device_node* %dn to i8*
  %call4 = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %5, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %6 = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %incdec.ptr = getelementptr i8, i8* %fmt, i64 1
  %7 = load i8, i8* %incdec.ptr, align 1
  %cmp9 = icmp eq i8 %7, 0
  br i1 %cmp9, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %call11 = call i64 @strcspn(i8* noundef %incdec.ptr, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0)) #19
  %cmp12.not = icmp eq i64 %call11, 0
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %if.end6
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %lor.lhs.false
  %fmt.addr.0 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), %if.then14 ], [ %incdec.ptr, %lor.lhs.false ]
  %call16196 = call i64 @strspn(i8* noundef %fmt.addr.0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0)) #19
  %tobool17.not197 = icmp eq i64 %call16196, 0
  br i1 %tobool17.not197, label %for.end125, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end15
  %arrayidx84 = getelementptr inbounds [6 x i8], [6 x i8]* %tbuf, i64 0, i64 1
  %arrayidx89 = getelementptr inbounds [6 x i8], [6 x i8]* %tbuf, i64 0, i64 2
  %arrayidx94 = getelementptr inbounds [6 x i8], [6 x i8]* %tbuf, i64 0, i64 3
  %arrayidx95 = getelementptr inbounds [6 x i8], [6 x i8]* %tbuf, i64 0, i64 4
  %tobool61.not = icmp eq %struct.device_node* %dn, null
  %fwnode63 = getelementptr inbounds %struct.device_node, %struct.device_node* %dn, i64 0, i32 3
  %cond66 = select i1 %tobool61.not, %struct.fwnode_handle* null, %struct.fwnode_handle* %fwnode63
  %phandle = getelementptr inbounds %struct.device_node, %struct.device_node* %dn, i64 0, i32 1
  %bf.clear43 = and i64 %bf.set, 281474976710655
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %sw.epilog
  %fmt.addr.1199 = phi i8* [ %fmt.addr.0, %for.body.lr.ph ], [ %incdec.ptr124, %sw.epilog ]
  %pass.0.off0198 = phi i1 [ false, %for.body.lr.ph ], [ true, %sw.epilog ]
  br i1 %pass.0.off0198, label %if.then19, label %if.end25

if.then19:                                        ; preds = %for.body
  %8 = load i8*, i8** %buf.addr, align 8
  %cmp20 = icmp ult i8* %8, %end
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  store i8 58, i8* %8, align 1
  %.pre = load i8*, i8** %buf.addr, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then19
  %9 = phi i8* [ %.pre, %if.then22 ], [ %8, %if.then19 ]
  %incdec.ptr24 = getelementptr i8, i8* %9, i64 1
  store i8* %incdec.ptr24, i8** %buf.addr, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %for.body
  %10 = load i8, i8* %fmt.addr.1199, align 1
  switch i8 %10, label %sw.epilog [
    i8 102, label %sw.bb
    i8 110, label %sw.bb29
    i8 112, label %sw.bb55
    i8 80, label %sw.bb58
    i8 70, label %sw.bb74
    i8 99, label %sw.bb98
    i8 67, label %sw.bb105
  ]

sw.bb:                                            ; preds = %if.end25
  %11 = load i8*, i8** %buf.addr, align 8
  %call28 = call fastcc i8* @fwnode_full_name_string(%struct.fwnode_handle* noundef %cond66, i8* noundef %11, i8* noundef %end) #17
  store i8* %call28, i8** %buf.addr, align 8
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end25
  %call38 = call i8* @fwnode_get_name(%struct.fwnode_handle* noundef %cond66) #19
  store i8* %call38, i8** %p, align 8
  %call40 = call i8* @strchrnul(i8* noundef %call38, i32 noundef 64) #19
  %12 = load i8*, i8** %p, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %bf.shl = shl i64 %sub.ptr.sub, 48
  %bf.set44 = or i64 %bf.shl, %bf.clear43
  %13 = load i8*, i8** %buf.addr, align 8
  %call46 = call fastcc i8* @string(i8* noundef %13, i8* noundef %end, i8* noundef %12, i64 %bf.set44) #17
  store i8* %call46, i8** %buf.addr, align 8
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end25
  %14 = load i8*, i8** %buf.addr, align 8
  %15 = load i32, i32* %phandle, align 8
  %conv56 = zext i32 %15 to i64
  %call57 = call fastcc i8* @number(i8* noundef %14, i8* noundef %end, i64 noundef %conv56, i64 -270479860432896) #17
  store i8* %call57, i8** %buf.addr, align 8
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end25
  %call67 = call i8* @fwnode_get_name(%struct.fwnode_handle* noundef %cond66) #19
  store i8* %call67, i8** %p, align 8
  %arrayidx68 = getelementptr i8, i8* %call67, i64 1
  %16 = load i8, i8* %arrayidx68, align 1
  %tobool69.not = icmp eq i8 %16, 0
  %spec.store.select = select i1 %tobool69.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0), i8* %call67
  store i8* %spec.store.select, i8** %p, align 8
  %17 = load i8*, i8** %buf.addr, align 8
  %call73 = call fastcc i8* @string(i8* noundef %17, i8* noundef %end, i8* noundef %spec.store.select, i64 %bf.set) #17
  store i8* %call73, i8** %buf.addr, align 8
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end25
  %call75 = call fastcc i32 @of_node_check_flag(%struct.device_node* noundef %dn, i64 noundef 1) #17
  %tobool76.not = icmp eq i32 %call75, 0
  %conv78 = select i1 %tobool76.not, i8 45, i8 68
  store i8 %conv78, i8* %0, align 4
  %call80 = call fastcc i32 @of_node_check_flag(%struct.device_node* noundef %dn, i64 noundef 2) #17
  %tobool81.not = icmp eq i32 %call80, 0
  %conv83 = select i1 %tobool81.not, i8 45, i8 100
  store i8 %conv83, i8* %arrayidx84, align 1
  %call85 = call fastcc i32 @of_node_check_flag(%struct.device_node* noundef %dn, i64 noundef 3) #17
  %tobool86.not = icmp eq i32 %call85, 0
  %conv88 = select i1 %tobool86.not, i8 45, i8 80
  store i8 %conv88, i8* %arrayidx89, align 2
  %call90 = call fastcc i32 @of_node_check_flag(%struct.device_node* noundef %dn, i64 noundef 4) #17
  %tobool91.not = icmp eq i32 %call90, 0
  %conv93 = select i1 %tobool91.not, i8 45, i8 66
  store i8 %conv93, i8* %arrayidx94, align 1
  store i8 0, i8* %arrayidx95, align 4
  %18 = load i8*, i8** %buf.addr, align 8
  %call97 = call fastcc i8* @string_nocheck(i8* noundef %18, i8* noundef %end, i8* noundef nonnull %0, i64 %bf.set) #17
  store i8* %call97, i8** %buf.addr, align 8
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end25
  %call99 = call i32 @of_property_read_string(%struct.device_node* noundef %dn, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8** noundef nonnull %p) #19
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then101, label %sw.epilog

if.then101:                                       ; preds = %sw.bb98
  %19 = load i8*, i8** %buf.addr, align 8
  %20 = load i8*, i8** %p, align 8
  %call103 = call fastcc i8* @string(i8* noundef %19, i8* noundef %end, i8* noundef %20, i64 %bf.set) #17
  store i8* %call103, i8** %buf.addr, align 8
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end25
  %call106 = call %struct.property* @of_find_property(%struct.device_node* noundef %dn, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i32* noundef null) #19
  %call107 = call i8* @of_prop_next_string(%struct.property* noundef %call106, i8* noundef null) #19
  store i8* %call107, i8** %p, align 8
  %tobool109.not194 = icmp eq i8* %call107, null
  br i1 %tobool109.not194, label %sw.epilog, label %if.end115.preheader

if.end115.preheader:                              ; preds = %sw.bb105
  %.pre200 = load i8*, i8** %buf.addr, align 8
  br label %if.end115

if.then112.critedge:                              ; preds = %if.end115
  %21 = load i8*, i8** %buf.addr, align 8
  %call114 = call fastcc i8* @string_nocheck(i8* noundef %21, i8* noundef %end, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i64 %bf.set) #17
  store i8* %call114, i8** %buf.addr, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.end115.preheader, %if.then112.critedge
  %22 = phi i8* [ %.pre200, %if.end115.preheader ], [ %call114, %if.then112.critedge ]
  %call117 = call fastcc i8* @string_nocheck(i8* noundef %22, i8* noundef %end, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 %bf.set) #17
  store i8* %call117, i8** %buf.addr, align 8
  %23 = load i8*, i8** %p, align 8
  %call119 = call fastcc i8* @string(i8* noundef %call117, i8* noundef %end, i8* noundef %23, i64 %bf.set) #17
  store i8* %call119, i8** %buf.addr, align 8
  %call121 = call fastcc i8* @string_nocheck(i8* noundef %call119, i8* noundef %end, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i64 %bf.set) #17
  store i8* %call121, i8** %buf.addr, align 8
  %24 = load i8*, i8** %p, align 8
  %call122 = call i8* @of_prop_next_string(%struct.property* noundef %call106, i8* noundef %24) #19
  store i8* %call122, i8** %p, align 8
  %tobool109.not = icmp eq i8* %call122, null
  br i1 %tobool109.not, label %sw.epilog, label %if.then112.critedge

sw.epilog:                                        ; preds = %if.end115, %sw.bb105, %if.end25, %sw.bb98, %if.then101, %sw.bb74, %sw.bb58, %sw.bb55, %sw.bb29, %sw.bb
  %incdec.ptr124 = getelementptr i8, i8* %fmt.addr.1199, i64 1
  %call16 = call i64 @strspn(i8* noundef %incdec.ptr124, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0)) #19
  %tobool17.not = icmp eq i64 %call16, 0
  br i1 %tobool17.not, label %for.end125, label %for.body

for.end125:                                       ; preds = %sw.epilog, %if.end15
  %25 = load i8*, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast126 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast127 = ptrtoint i8* %buf to i64
  %sub.ptr.sub128 = sub i64 %sub.ptr.lhs.cast126, %sub.ptr.rhs.cast127
  %conv129 = trunc i64 %sub.ptr.sub128 to i32
  %call131 = call fastcc i8* @widen_string(i8* noundef %25, i32 noundef %conv129, i8* noundef %end, i64 %spec.coerce) #17
  br label %cleanup

cleanup:                                          ; preds = %for.end125, %if.then5, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %6, %if.then5 ], [ %call131, %for.end125 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #18
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %0) #18
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @fwnode_string(i8* noundef %buf, i8* noundef %end, %struct.fwnode_handle* noundef %fwnode, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %bf.set = or i64 %spec.coerce, 4294967040
  %0 = load i8, i8* %fmt, align 1
  %cmp.not = icmp eq i8 %0, 119
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @error_string(i8* noundef %buf, i8* noundef %end, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0), i64 %spec.coerce) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call4 = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %1, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load i8*, i8** %buf.addr, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %incdec.ptr = getelementptr i8, i8* %fmt, i64 1
  %3 = load i8, i8* %incdec.ptr, align 1
  %cond = icmp eq i8 %3, 80
  %4 = load i8*, i8** %buf.addr, align 8
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end6
  %call8 = call i8* @fwnode_get_name(%struct.fwnode_handle* noundef %fwnode) #19
  %call10 = call fastcc i8* @string(i8* noundef %4, i8* noundef %end, i8* noundef %call8, i64 %bf.set) #17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  %call12 = call fastcc i8* @fwnode_full_name_string(%struct.fwnode_handle* noundef %fwnode, i8* noundef %4, i8* noundef %end) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %storemerge = phi i8* [ %call12, %sw.default ], [ %call10, %sw.bb ]
  store i8* %storemerge, i8** %buf.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %storemerge to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %buf to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv13 = trunc i64 %sub.ptr.sub to i32
  %call15 = call fastcc i8* @widen_string(i8* noundef %storemerge, i32 noundef %conv13, i8* noundef %end, i64 %spec.coerce) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then5, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %2, %if.then5 ], [ %call15, %sw.epilog ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid writeonly
define internal fastcc i8* @pointer_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) unnamed_addr #1 {
entry:
  %or = and i64 %spec.coerce, -280512904036353
  %bf.set5 = or i64 %or, 17729624997888
  %bf.shl7 = shl i64 %spec.coerce, 32
  %bf.ashr = ashr i64 %bf.shl7, 40
  %bf.cast8 = trunc i64 %bf.ashr to i32
  %cmp = icmp eq i32 %bf.cast8, -1
  %or16 = and i64 %bf.set5, -262856293482241
  %bf.set21 = or i64 %or16, 68719480832
  %spec.sroa.0.0 = select i1 %cmp, i64 %bf.set21, i64 %bf.set5
  %0 = ptrtoint i8* %ptr to i64
  %call = call fastcc i8* @number(i8* noundef %buf, i8* noundef %end, i64 noundef %0, i64 %spec.sroa.0.0) #17
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #10 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid writeonly
define internal fastcc i8* @err_ptr(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @PTR_ERR(i8* noundef %ptr) #17
  %bf.set = and i64 %spec.coerce, -280379760050177
  %bf.set8 = or i64 %bf.set, 10999411245056
  %sext = shl i64 %call, 32
  %conv9 = ashr exact i64 %sext, 32
  %call11 = call fastcc i8* @number(i8* noundef %buf, i8* noundef %end, i64 noundef %conv9, i64 %bf.set8) #17
  ret i8* %call11
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @ptr_to_id(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) unnamed_addr #0 {
entry:
  %hashval = alloca i64, align 8
  %0 = bitcast i64* %hashval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %hashval, align 8, !annotation !7
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %ptr) #17
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @pointer_string(i8* noundef %buf, i8* noundef %end, i8* noundef %ptr, i64 %spec.coerce) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %.b = load i1, i1* @debug_boot_weak_hash, align 4
  br i1 %.b, label %if.then5, label %if.end10, !prof !13

if.then5:                                         ; preds = %if.end
  %1 = ptrtoint i8* %ptr to i64
  %mul.i = mul i64 %1, 7046029254386353131
  %shr.i = lshr i64 %mul.i, 32
  %2 = inttoptr i64 %shr.i to i8*
  %call9 = call fastcc i8* @pointer_string(i8* noundef %buf, i8* noundef %end, i8* noundef %2, i64 %spec.coerce) #17
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call fastcc i32 @__ptr_to_hashval(i8* noundef %ptr, i64* noundef nonnull %hashval) #17
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end10
  %bf.clear = and i64 %spec.coerce, -4294967041
  %bf.set = or i64 %bf.clear, 4096
  %call15 = call fastcc i8* @error_string(i8* noundef %buf, i8* noundef %end, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i64 %bf.set) #17
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %3 = load i64, i64* %hashval, align 8
  %4 = inttoptr i64 %3 to i8*
  %call18 = call fastcc i8* @pointer_string(i8* noundef %buf, i8* noundef %end, i8* noundef %4, i64 %spec.coerce) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then13, %if.then5, %if.then
  %retval.0 = phi i8* [ %call2, %if.then ], [ %call9, %if.then5 ], [ %call15, %if.then13 ], [ %call18, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_backtrace_build_id(i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_backtrace(i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_symbol_build_id(i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_symbol(i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_symbol_no_offset(i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @resource_size(%struct.resource* nocapture noundef readonly %res) unnamed_addr #13 {
entry:
  %end = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 1
  %0 = load i64, i64* %end, align 8
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i64 0, i32 0
  %1 = load i64, i64* %start, align 8
  %sub = add i64 %0, 1
  %add = sub i64 %sub, %1
  ret i64 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit(i64* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef %addr, i64 noundef %size) #19
  ret i64 %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #19
  ret i64 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i8* @hex_byte_pack(i8* noundef writeonly %buf, i8 noundef %byte) unnamed_addr #4 {
entry:
  %conv = zext i8 %byte to i32
  %0 = lshr i32 %conv, 4
  %1 = zext i32 %0 to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %incdec.ptr = getelementptr i8, i8* %buf, i64 1
  store i8 %2, i8* %buf, align 1
  %and2 = and i32 %conv, 15
  %3 = zext i32 %and2 to i64
  %arrayidx4 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %3
  %4 = load i8, i8* %arrayidx4, align 1
  %incdec.ptr5 = getelementptr i8, i8* %buf, i64 2
  store i8 %4, i8* %incdec.ptr, align 1
  ret i8* %incdec.ptr5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @ip6_addr_string(i8* noundef %buf, i8* noundef %end, i8* noundef %addr, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %ip6_addr = alloca [46 x i8], align 1
  %0 = getelementptr inbounds [46 x i8], [46 x i8]* %ip6_addr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(46) %0, i8 0, i64 46, i1 false), !annotation !7
  %1 = load i8, i8* %fmt, align 1
  %cmp = icmp eq i8 %1, 73
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, i8* %fmt, i64 2
  %2 = load i8, i8* %arrayidx2, align 1
  %cmp4 = icmp eq i8 %2, 99
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = call fastcc i8* @ip6_compressed_string(i8* noundef nonnull %0, i8* noundef %addr) #17
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call7 = call fastcc i8* @ip6_string(i8* noundef nonnull %0, i8* noundef %addr, i8* noundef %fmt) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call10 = call fastcc i8* @string_nocheck(i8* noundef %buf, i8* noundef %end, i8* noundef nonnull %0, i64 %spec.coerce) #17
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %0) #18
  ret i8* %call10
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @ip4_addr_string(i8* noundef %buf, i8* noundef %end, i8* nocapture noundef readonly %addr, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %ip4_addr = alloca [16 x i8], align 1
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %ip4_addr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call fastcc i8* @ip4_string(i8* noundef nonnull %0, i8* noundef %addr, i8* noundef %fmt) #17
  %call3 = call fastcc i8* @string_nocheck(i8* noundef %buf, i8* noundef %end, i8* noundef nonnull %0, i64 %spec.coerce) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i8* %call3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @ip4_addr_string_sa(i8* noundef %buf, i8* noundef %end, %struct.sockaddr_in* nocapture noundef readonly %sa, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %ip4_addr = alloca [23 x i8], align 1
  %fmt4 = alloca [3 x i8], align 4
  %0 = getelementptr inbounds [23 x i8], [23 x i8]* %ip4_addr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 23, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(23) %0, i8 0, i64 23, i1 false), !annotation !7
  %add.ptr = getelementptr inbounds [23 x i8], [23 x i8]* %ip4_addr, i64 0, i64 23
  %s_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa, i64 0, i32 2, i32 0
  %1 = bitcast i32* %s_addr to i8*
  %2 = getelementptr inbounds [3 x i8], [3 x i8]* %fmt4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %2) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(3) %2, i8 0, i64 3, i1 false), !annotation !7
  %3 = load i8, i8* %fmt, align 1
  store i8 %3, i8* %2, align 4
  %arrayinit.element = getelementptr inbounds [3 x i8], [3 x i8]* %fmt4, i64 0, i64 1
  store i8 52, i8* %arrayinit.element, align 1
  %arrayinit.element1 = getelementptr inbounds [3 x i8], [3 x i8]* %fmt4, i64 0, i64 2
  %incdec.ptr245 = getelementptr i8, i8* %fmt, i64 2
  %4 = load i8, i8* %incdec.ptr245, align 1
  %5 = zext i8 %4 to i64
  %arrayidx346 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %5
  %6 = load i8, i8* %arrayidx346, align 1
  %7 = and i8 %6, 3
  %cmp.not47 = icmp eq i8 %7, 0
  br i1 %cmp.not47, label %while.end.thread, label %while.body

while.end.thread:                                 ; preds = %entry
  %call54 = call fastcc i8* @ip4_string(i8* noundef nonnull %0, i8* noundef %1, i8* noundef nonnull %2) #17
  br label %if.end

while.body:                                       ; preds = %entry, %sw.epilog
  %8 = phi i8 [ %13, %sw.epilog ], [ %4, %entry ]
  %incdec.ptr249 = phi i8* [ %incdec.ptr2, %sw.epilog ], [ %incdec.ptr245, %entry ]
  %have_p.0.off048 = phi i1 [ %have_p.1.off0, %sw.epilog ], [ false, %entry ]
  %9 = phi i8 [ %12, %sw.epilog ], [ 0, %entry ]
  %conv = zext i8 %8 to i32
  %10 = add nsw i32 %conv, -98
  %11 = call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 31)
  switch i32 %11, label %sw.epilog [
    i32 7, label %sw.bb
    i32 3, label %sw.bb7
    i32 5, label %sw.bb7
    i32 6, label %sw.bb7
    i32 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %while.body
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body, %while.body, %while.body, %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb7, %sw.bb
  %12 = phi i8 [ %9, %while.body ], [ %8, %sw.bb7 ], [ %9, %sw.bb ]
  %have_p.1.off0 = phi i1 [ %have_p.0.off048, %while.body ], [ %have_p.0.off048, %sw.bb7 ], [ true, %sw.bb ]
  %incdec.ptr2 = getelementptr i8, i8* %incdec.ptr249, i64 1
  %13 = load i8, i8* %incdec.ptr2, align 1
  %14 = zext i8 %13 to i64
  %arrayidx3 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %14
  %15 = load i8, i8* %arrayidx3, align 1
  %16 = and i8 %15, 3
  %cmp.not = icmp eq i8 %16, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %sw.epilog
  store i8 %12, i8* %arrayinit.element1, align 2
  %call = call fastcc i8* @ip4_string(i8* noundef nonnull %0, i8* noundef %1, i8* noundef nonnull %2) #17
  br i1 %have_p.1.off0, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %incdec.ptr11 = getelementptr i8, i8* %call, i64 1
  store i8 58, i8* %call, align 1
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa, i64 0, i32 1
  %17 = load i16, i16* %sin_port, align 2
  %call21 = call fastcc i16 @__fswab16(i16 noundef %17) #22
  %18 = zext i16 %call21 to i64
  %call25 = call fastcc i8* @number(i8* noundef %incdec.ptr11, i8* noundef %add.ptr, i64 noundef %18, i64 %spec.coerce) #17
  br label %if.end

if.end:                                           ; preds = %while.end.thread, %if.then, %while.end
  %p.0 = phi i8* [ %call25, %if.then ], [ %call, %while.end ], [ %call54, %while.end.thread ]
  store i8 0, i8* %p.0, align 1
  %call28 = call fastcc i8* @string_nocheck(i8* noundef %buf, i8* noundef %end, i8* noundef nonnull %0, i64 %spec.coerce) #17
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 23, i8* nonnull %0) #18
  ret i8* %call28
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @ip6_addr_string_sa(i8* noundef %buf, i8* noundef %end, %struct.sockaddr_in6* noundef %sa, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %ip6_addr = alloca [78 x i8], align 4
  %fmt6 = alloca i16, align 4, !annotation !7
  %0 = getelementptr inbounds [78 x i8], [78 x i8]* %ip6_addr, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 78, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(78) %0, i8 0, i64 78, i1 false), !annotation !7
  %add.ptr = getelementptr inbounds [78 x i8], [78 x i8]* %ip6_addr, i64 0, i64 78
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %sa, i64 0, i32 3
  %1 = bitcast %struct.in6_addr* %sin6_addr to i8*
  %2 = bitcast i16* %fmt6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %2) #18
  %3 = load i8, i8* %fmt, align 1
  store i8 %3, i8* %2, align 4
  %arrayinit.element = getelementptr inbounds i8, i8* %2, i64 1
  store i8 54, i8* %arrayinit.element, align 1
  %incdec.ptr2164 = getelementptr i8, i8* %fmt, i64 2
  %4 = load i8, i8* %incdec.ptr2164, align 1
  %5 = zext i8 %4 to i64
  %arrayidx3165 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %5
  %6 = load i8, i8* %arrayidx3165, align 1
  %7 = and i8 %6, 3
  %cmp.not166 = icmp eq i8 %7, 0
  br i1 %cmp.not166, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %8 = phi i8 [ %9, %sw.epilog ], [ %4, %entry ]
  %incdec.ptr2171 = phi i8* [ %incdec.ptr2, %sw.epilog ], [ %incdec.ptr2164, %entry ]
  %have_c.0.off0170 = phi i1 [ %have_c.1.off0, %sw.epilog ], [ false, %entry ]
  %have_f.0.off0169 = phi i1 [ %have_f.1.off0, %sw.epilog ], [ false, %entry ]
  %have_s.0.off0168 = phi i1 [ %have_s.1.off0, %sw.epilog ], [ false, %entry ]
  %have_p.0.off0167 = phi i1 [ %have_p.1.off0, %sw.epilog ], [ false, %entry ]
  switch i8 %8, label %sw.epilog [
    i8 112, label %sw.bb
    i8 102, label %sw.bb7
    i8 115, label %sw.bb8
    i8 99, label %sw.bb9
  ]

sw.bb:                                            ; preds = %while.body
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb
  %have_p.1.off0 = phi i1 [ %have_p.0.off0167, %while.body ], [ %have_p.0.off0167, %sw.bb9 ], [ %have_p.0.off0167, %sw.bb8 ], [ %have_p.0.off0167, %sw.bb7 ], [ true, %sw.bb ]
  %have_s.1.off0 = phi i1 [ %have_s.0.off0168, %while.body ], [ %have_s.0.off0168, %sw.bb9 ], [ true, %sw.bb8 ], [ %have_s.0.off0168, %sw.bb7 ], [ %have_s.0.off0168, %sw.bb ]
  %have_f.1.off0 = phi i1 [ %have_f.0.off0169, %while.body ], [ %have_f.0.off0169, %sw.bb9 ], [ %have_f.0.off0169, %sw.bb8 ], [ true, %sw.bb7 ], [ %have_f.0.off0169, %sw.bb ]
  %have_c.1.off0 = phi i1 [ %have_c.0.off0170, %while.body ], [ true, %sw.bb9 ], [ %have_c.0.off0170, %sw.bb8 ], [ %have_c.0.off0170, %sw.bb7 ], [ %have_c.0.off0170, %sw.bb ]
  %incdec.ptr2 = getelementptr i8, i8* %incdec.ptr2171, i64 1
  %9 = load i8, i8* %incdec.ptr2, align 1
  %10 = zext i8 %9 to i64
  %arrayidx3 = getelementptr [0 x i8], [0 x i8]* @_ctype, i64 0, i64 %10
  %11 = load i8, i8* %arrayidx3, align 1
  %12 = and i8 %11, 3
  %cmp.not = icmp eq i8 %12, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %sw.epilog, %entry
  %have_p.0.off0.lcssa = phi i1 [ false, %entry ], [ %have_p.1.off0, %sw.epilog ]
  %have_s.0.off0.lcssa = phi i1 [ false, %entry ], [ %have_s.1.off0, %sw.epilog ]
  %have_f.0.off0.lcssa = phi i1 [ false, %entry ], [ %have_f.1.off0, %sw.epilog ]
  %have_c.0.off0.lcssa = phi i1 [ false, %entry ], [ %have_c.1.off0, %sw.epilog ]
  %brmerge = select i1 %have_p.0.off0.lcssa, i1 true, i1 %have_s.0.off0.lcssa
  %brmerge160 = select i1 %brmerge, i1 true, i1 %have_f.0.off0.lcssa
  br i1 %brmerge160, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i8 91, i8* %0, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %off.0 = phi i64 [ 1, %if.then ], [ 0, %while.end ]
  %cmp18 = icmp ne i8 %3, 73
  %have_c.0.off0.not = xor i1 %have_c.0.off0.lcssa, true
  %brmerge161 = select i1 %cmp18, i1 true, i1 %have_c.0.off0.not
  %add.ptr29 = getelementptr [78 x i8], [78 x i8]* %ip6_addr, i64 0, i64 %off.0
  br i1 %brmerge161, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  %call = call fastcc i8* @ip6_compressed_string(i8* noundef %add.ptr29, i8* noundef %1) #17
  br label %if.end32

if.else:                                          ; preds = %if.end
  %call31 = call fastcc i8* @ip6_string(i8* noundef %add.ptr29, i8* noundef %1, i8* noundef nonnull %2) #17
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then22
  %p.0 = phi i8* [ %call, %if.then22 ], [ %call31, %if.else ]
  br i1 %brmerge160, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end32
  %incdec.ptr42 = getelementptr i8, i8* %p.0, i64 1
  store i8 93, i8* %p.0, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.end32, %if.then41
  %p.1 = phi i8* [ %incdec.ptr42, %if.then41 ], [ %p.0, %if.end32 ]
  br i1 %have_p.0.off0.lcssa, label %if.then45, label %if.end61

if.then45:                                        ; preds = %if.end43
  %incdec.ptr46 = getelementptr i8, i8* %p.1, i64 1
  store i8 58, i8* %p.1, align 1
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %sa, i64 0, i32 1
  %13 = load i16, i16* %sin6_port, align 2
  %call56 = call fastcc i16 @__fswab16(i16 noundef %13) #22
  %14 = zext i16 %call56 to i64
  %call60 = call fastcc i8* @number(i8* noundef %incdec.ptr46, i8* noundef %add.ptr, i64 noundef %14, i64 %spec.coerce) #17
  br label %if.end61

if.end61:                                         ; preds = %if.then45, %if.end43
  %p.2 = phi i8* [ %call60, %if.then45 ], [ %p.1, %if.end43 ]
  br i1 %have_f.0.off0.lcssa, label %if.then63, label %if.end95

if.then63:                                        ; preds = %if.end61
  %incdec.ptr64 = getelementptr i8, i8* %p.2, i64 1
  store i8 47, i8* %p.2, align 1
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %sa, i64 0, i32 2
  %15 = load i32, i32* %sin6_flowinfo, align 4
  %and65 = and i32 %15, -241
  %call89 = call fastcc i32 @__fswab32(i32 noundef %and65) #22
  %conv92 = zext i32 %call89 to i64
  %call94 = call fastcc i8* @number(i8* noundef %incdec.ptr64, i8* noundef %add.ptr, i64 noundef %conv92, i64 %spec.coerce) #17
  br label %if.end95

if.end95:                                         ; preds = %if.then63, %if.end61
  %p.3 = phi i8* [ %call94, %if.then63 ], [ %p.2, %if.end61 ]
  br i1 %have_s.0.off0.lcssa, label %if.then97, label %if.end102

if.then97:                                        ; preds = %if.end95
  %incdec.ptr98 = getelementptr i8, i8* %p.3, i64 1
  store i8 37, i8* %p.3, align 1
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %sa, i64 0, i32 4
  %16 = load i32, i32* %sin6_scope_id, align 4
  %conv99 = zext i32 %16 to i64
  %call101 = call fastcc i8* @number(i8* noundef %incdec.ptr98, i8* noundef %add.ptr, i64 noundef %conv99, i64 %spec.coerce) #17
  br label %if.end102

if.end102:                                        ; preds = %if.then97, %if.end95
  %p.4 = phi i8* [ %call101, %if.then97 ], [ %p.3, %if.end95 ]
  store i8 0, i8* %p.4, align 1
  %call105 = call fastcc i8* @string_nocheck(i8* noundef %buf, i8* noundef %end, i8* noundef nonnull %0, i64 %spec.coerce) #17
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 78, i8* nonnull %0) #18
  ret i8* %call105
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @ip6_compressed_string(i8* noundef %p, i8* noundef %addr) unnamed_addr #0 {
entry:
  %zerolength = alloca i64, align 8, !annotation !7
  %tmpcast = bitcast i64* %zerolength to [8 x i8]*, !annotation !7
  %in6 = alloca %struct.in6_addr, align 4
  %0 = bitcast i64* %zerolength to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %zerolength, align 8, !annotation !7
  %1 = bitcast %struct.in6_addr* %in6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !7
  %call = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef %addr, i64 noundef 16) #19
  %call1 = call fastcc i1 @ipv6_addr_v4mapped(%struct.in6_addr* noundef nonnull %in6) #17
  br i1 %call1, label %lor.end.thread, label %lor.end

lor.end.thread:                                   ; preds = %entry
  %call3187 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 8) #19
  br label %2

lor.end:                                          ; preds = %entry
  %call2 = call fastcc i1 @ipv6_addr_is_isatap(%struct.in6_addr* noundef nonnull %in6) #17
  %call3 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 8) #19
  br i1 %call2, label %2, label %for.body6.lr.ph

2:                                                ; preds = %lor.end.thread, %lor.end
  br label %for.body6.lr.ph

for.body6.lr.ph:                                  ; preds = %lor.end, %2
  %3 = phi i1 [ true, %2 ], [ false, %lor.end ]
  %4 = phi i32 [ 6, %2 ], [ 8, %lor.end ]
  %u6_addr16 = bitcast %struct.in6_addr* %in6 to [8 x i16]*
  %wide.trip.count202 = zext i32 %4 to i64
  %arrayidx12 = bitcast i64* %zerolength to i8*
  %arrayidx12.promoted = load i8, i8* %arrayidx12, align 8
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %if.end10
  %5 = phi i8 [ %arrayidx12.promoted, %for.body6.lr.ph ], [ %inc, %if.end10 ]
  %indvars.iv198 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next199, %if.end10 ]
  %arrayidx = getelementptr [8 x i16], [8 x i16]* %u6_addr16, i64 0, i64 %indvars.iv198
  %6 = load i16, i16* %arrayidx, align 2
  %cmp7.not = icmp eq i16 %6, 0
  br i1 %cmp7.not, label %if.end10, label %for.body6.lr.ph.1

if.end10:                                         ; preds = %for.body6
  %inc = add i8 %5, 1
  store i8 %inc, i8* %arrayidx12, align 8
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count202
  br i1 %exitcond.not, label %for.body6.lr.ph.1, label %for.body6

for.body6.lr.ph.1:                                ; preds = %if.end10, %for.body6
  %arrayidx12.1 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 1
  %arrayidx12.1.promoted = load i8, i8* %arrayidx12.1, align 1
  br label %for.body6.1

for.body6.1:                                      ; preds = %if.end10.1, %for.body6.lr.ph.1
  %7 = phi i8 [ %arrayidx12.1.promoted, %for.body6.lr.ph.1 ], [ %inc.1, %if.end10.1 ]
  %indvars.iv198.1 = phi i64 [ 1, %for.body6.lr.ph.1 ], [ %indvars.iv.next199.1, %if.end10.1 ]
  %arrayidx.1 = getelementptr [8 x i16], [8 x i16]* %u6_addr16, i64 0, i64 %indvars.iv198.1
  %8 = load i16, i16* %arrayidx.1, align 2
  %cmp7.not.1 = icmp eq i16 %8, 0
  br i1 %cmp7.not.1, label %if.end10.1, label %for.body6.lr.ph.2

if.end10.1:                                       ; preds = %for.body6.1
  %inc.1 = add i8 %7, 1
  store i8 %inc.1, i8* %arrayidx12.1, align 1
  %indvars.iv.next199.1 = add nuw nsw i64 %indvars.iv198.1, 1
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next199.1, %wide.trip.count202
  br i1 %exitcond.not.1, label %for.body6.lr.ph.2, label %for.body6.1

for.body6.lr.ph.2:                                ; preds = %for.body6.1, %if.end10.1
  %arrayidx12.2 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 2
  %arrayidx12.2.promoted = load i8, i8* %arrayidx12.2, align 2
  br label %for.body6.2

for.body6.2:                                      ; preds = %if.end10.2, %for.body6.lr.ph.2
  %9 = phi i8 [ %arrayidx12.2.promoted, %for.body6.lr.ph.2 ], [ %inc.2, %if.end10.2 ]
  %indvars.iv198.2 = phi i64 [ 2, %for.body6.lr.ph.2 ], [ %indvars.iv.next199.2, %if.end10.2 ]
  %arrayidx.2 = getelementptr [8 x i16], [8 x i16]* %u6_addr16, i64 0, i64 %indvars.iv198.2
  %10 = load i16, i16* %arrayidx.2, align 2
  %cmp7.not.2 = icmp eq i16 %10, 0
  br i1 %cmp7.not.2, label %if.end10.2, label %for.body6.lr.ph.3

if.end10.2:                                       ; preds = %for.body6.2
  %inc.2 = add i8 %9, 1
  store i8 %inc.2, i8* %arrayidx12.2, align 2
  %indvars.iv.next199.2 = add nuw nsw i64 %indvars.iv198.2, 1
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next199.2, %wide.trip.count202
  br i1 %exitcond.not.2, label %for.body6.lr.ph.3, label %for.body6.2

for.body6.lr.ph.3:                                ; preds = %for.body6.2, %if.end10.2
  %arrayidx12.3 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 3
  %arrayidx12.3.promoted = load i8, i8* %arrayidx12.3, align 1
  br label %for.body6.3

for.body6.3:                                      ; preds = %if.end10.3, %for.body6.lr.ph.3
  %11 = phi i8 [ %arrayidx12.3.promoted, %for.body6.lr.ph.3 ], [ %inc.3, %if.end10.3 ]
  %indvars.iv198.3 = phi i64 [ 3, %for.body6.lr.ph.3 ], [ %indvars.iv.next199.3, %if.end10.3 ]
  %arrayidx.3 = getelementptr [8 x i16], [8 x i16]* %u6_addr16, i64 0, i64 %indvars.iv198.3
  %12 = load i16, i16* %arrayidx.3, align 2
  %cmp7.not.3 = icmp eq i16 %12, 0
  br i1 %cmp7.not.3, label %if.end10.3, label %for.body6.lr.ph.4

if.end10.3:                                       ; preds = %for.body6.3
  %inc.3 = add i8 %11, 1
  store i8 %inc.3, i8* %arrayidx12.3, align 1
  %indvars.iv.next199.3 = add nuw nsw i64 %indvars.iv198.3, 1
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next199.3, %wide.trip.count202
  br i1 %exitcond.not.3, label %for.body6.lr.ph.4, label %for.body6.3

for.body6.lr.ph.4:                                ; preds = %for.body6.3, %if.end10.3
  %arrayidx12.4 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 4
  %arrayidx12.4.promoted = load i8, i8* %arrayidx12.4, align 4
  br label %for.body6.4

for.body6.4:                                      ; preds = %if.end10.4, %for.body6.lr.ph.4
  %13 = phi i8 [ %arrayidx12.4.promoted, %for.body6.lr.ph.4 ], [ %inc.4, %if.end10.4 ]
  %indvars.iv198.4 = phi i64 [ 4, %for.body6.lr.ph.4 ], [ %indvars.iv.next199.4, %if.end10.4 ]
  %arrayidx.4 = getelementptr [8 x i16], [8 x i16]* %u6_addr16, i64 0, i64 %indvars.iv198.4
  %14 = load i16, i16* %arrayidx.4, align 2
  %cmp7.not.4 = icmp eq i16 %14, 0
  br i1 %cmp7.not.4, label %if.end10.4, label %for.body6.lr.ph.5

if.end10.4:                                       ; preds = %for.body6.4
  %inc.4 = add i8 %13, 1
  store i8 %inc.4, i8* %arrayidx12.4, align 4
  %indvars.iv.next199.4 = add nuw nsw i64 %indvars.iv198.4, 1
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next199.4, %wide.trip.count202
  br i1 %exitcond.not.4, label %for.body6.lr.ph.5, label %for.body6.4

for.body6.lr.ph.5:                                ; preds = %for.body6.4, %if.end10.4
  %arrayidx12.5 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 5
  %arrayidx12.5.promoted = load i8, i8* %arrayidx12.5, align 1
  br label %for.body6.5

for.body6.5:                                      ; preds = %if.end10.5, %for.body6.lr.ph.5
  %15 = phi i8 [ %arrayidx12.5.promoted, %for.body6.lr.ph.5 ], [ %inc.5, %if.end10.5 ]
  %indvars.iv198.5 = phi i64 [ 5, %for.body6.lr.ph.5 ], [ %indvars.iv.next199.5, %if.end10.5 ]
  %arrayidx.5 = getelementptr [8 x i16], [8 x i16]* %u6_addr16, i64 0, i64 %indvars.iv198.5
  %16 = load i16, i16* %arrayidx.5, align 2
  %cmp7.not.5 = icmp eq i16 %16, 0
  br i1 %cmp7.not.5, label %if.end10.5, label %for.inc14.5

if.end10.5:                                       ; preds = %for.body6.5
  %inc.5 = add i8 %15, 1
  store i8 %inc.5, i8* %arrayidx12.5, align 1
  %indvars.iv.next199.5 = add nuw nsw i64 %indvars.iv198.5, 1
  %exitcond.not.5 = icmp eq i64 %indvars.iv.next199.5, %wide.trip.count202
  br i1 %exitcond.not.5, label %for.inc14.5, label %for.body6.5

for.inc14.5:                                      ; preds = %if.end10.5, %for.body6.5
  br i1 %3, label %for.body20, label %for.body6.lr.ph.6

for.body6.lr.ph.6:                                ; preds = %for.inc14.5
  %arrayidx12.6 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 6
  %arrayidx12.6.promoted = load i8, i8* %arrayidx12.6, align 2
  br label %for.body6.6

for.body6.6:                                      ; preds = %if.end10.6, %for.body6.lr.ph.6
  %17 = phi i8 [ %arrayidx12.6.promoted, %for.body6.lr.ph.6 ], [ %inc.6, %if.end10.6 ]
  %indvars.iv198.6 = phi i64 [ 6, %for.body6.lr.ph.6 ], [ %indvars.iv.next199.6, %if.end10.6 ]
  %arrayidx.6 = getelementptr [8 x i16], [8 x i16]* %u6_addr16, i64 0, i64 %indvars.iv198.6
  %18 = load i16, i16* %arrayidx.6, align 2
  %cmp7.not.6 = icmp eq i16 %18, 0
  br i1 %cmp7.not.6, label %if.end10.6, label %for.body6.lr.ph.7

if.end10.6:                                       ; preds = %for.body6.6
  %inc.6 = add i8 %17, 1
  store i8 %inc.6, i8* %arrayidx12.6, align 2
  %indvars.iv.next199.6 = add nuw nsw i64 %indvars.iv198.6, 1
  %exitcond.not.6 = icmp eq i64 %indvars.iv.next199.6, %wide.trip.count202
  br i1 %exitcond.not.6, label %for.body6.lr.ph.7, label %for.body6.6

for.body6.lr.ph.7:                                ; preds = %for.body6.6, %if.end10.6
  %arrayidx12.7 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 7
  %arrayidx12.7.promoted = load i8, i8* %arrayidx12.7, align 1
  br label %for.body6.7

for.body6.7:                                      ; preds = %if.end10.7, %for.body6.lr.ph.7
  %19 = phi i8 [ %arrayidx12.7.promoted, %for.body6.lr.ph.7 ], [ %inc.7, %if.end10.7 ]
  %indvars.iv198.7 = phi i64 [ 7, %for.body6.lr.ph.7 ], [ %indvars.iv.next199.7, %if.end10.7 ]
  %arrayidx.7 = getelementptr [8 x i16], [8 x i16]* %u6_addr16, i64 0, i64 %indvars.iv198.7
  %20 = load i16, i16* %arrayidx.7, align 2
  %cmp7.not.7 = icmp eq i16 %20, 0
  br i1 %cmp7.not.7, label %if.end10.7, label %for.body20

if.end10.7:                                       ; preds = %for.body6.7
  %inc.7 = add i8 %19, 1
  store i8 %inc.7, i8* %arrayidx12.7, align 1
  %indvars.iv.next199.7 = add nuw nsw i64 %indvars.iv198.7, 1
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next199.7, %wide.trip.count202
  br i1 %exitcond.not.7, label %for.body20, label %for.body6.7

for.body20:                                       ; preds = %for.inc14.5, %if.end10.7, %for.body6.7
  %arrayidx22 = bitcast i64* %zerolength to i8*
  %21 = load i8, i8* %arrayidx22, align 8
  %cmp24 = icmp ugt i8 %21, 1
  %narrow = select i1 %cmp24, i8 %21, i8 1
  %not.cmp24 = xor i1 %cmp24, true
  %spec.select185 = sext i1 %not.cmp24 to i32
  %arrayidx22.1 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 1
  %22 = load i8, i8* %arrayidx22.1, align 1
  %cmp24.1 = icmp ult i8 %narrow, %22
  %23 = icmp ugt i8 %narrow, %22
  %spec.select.1211 = select i1 %23, i8 %narrow, i8 %22
  %spec.select185.1 = select i1 %cmp24.1, i32 1, i32 %spec.select185
  %arrayidx22.2 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 2
  %24 = load i8, i8* %arrayidx22.2, align 2
  %cmp24.2 = icmp ult i8 %spec.select.1211, %24
  %25 = icmp ugt i8 %spec.select.1211, %24
  %spec.select.2212 = select i1 %25, i8 %spec.select.1211, i8 %24
  %spec.select185.2 = select i1 %cmp24.2, i32 2, i32 %spec.select185.1
  %arrayidx22.3 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 3
  %26 = load i8, i8* %arrayidx22.3, align 1
  %cmp24.3 = icmp ult i8 %spec.select.2212, %26
  %27 = icmp ugt i8 %spec.select.2212, %26
  %spec.select.3213 = select i1 %27, i8 %spec.select.2212, i8 %26
  %spec.select185.3 = select i1 %cmp24.3, i32 3, i32 %spec.select185.2
  %arrayidx22.4 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 4
  %28 = load i8, i8* %arrayidx22.4, align 4
  %cmp24.4 = icmp ult i8 %spec.select.3213, %28
  %29 = icmp ugt i8 %spec.select.3213, %28
  %spec.select.4214 = select i1 %29, i8 %spec.select.3213, i8 %28
  %spec.select185.4 = select i1 %cmp24.4, i32 4, i32 %spec.select185.3
  %arrayidx22.5 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 5
  %30 = load i8, i8* %arrayidx22.5, align 1
  %cmp24.5 = icmp ult i8 %spec.select.4214, %30
  %31 = icmp ugt i8 %spec.select.4214, %30
  %spec.select.5215 = select i1 %31, i8 %spec.select.4214, i8 %30
  %spec.select185.5 = select i1 %cmp24.5, i32 5, i32 %spec.select185.4
  br i1 %3, label %for.end33, label %for.body20.6

for.body20.6:                                     ; preds = %for.body20
  %arrayidx22.6 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 6
  %32 = load i8, i8* %arrayidx22.6, align 2
  %cmp24.6 = icmp ult i8 %spec.select.5215, %32
  %33 = icmp ugt i8 %spec.select.5215, %32
  %spec.select.6216 = select i1 %33, i8 %spec.select.5215, i8 %32
  %spec.select185.6 = select i1 %cmp24.6, i32 6, i32 %spec.select185.5
  %arrayidx22.7 = getelementptr inbounds [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 7
  %34 = load i8, i8* %arrayidx22.7, align 1
  %cmp24.7 = icmp ult i8 %spec.select.6216, %34
  %35 = icmp ugt i8 %spec.select.6216, %34
  %spec.select.7217 = select i1 %35, i8 %spec.select.6216, i8 %34
  %spec.select185.7 = select i1 %cmp24.7, i32 7, i32 %spec.select185.6
  br label %for.end33

for.end33:                                        ; preds = %for.body20.6, %for.body20
  %spec.select.lcssa.in = phi i8 [ %spec.select.5215, %for.body20 ], [ %spec.select.7217, %for.body20.6 ]
  %spec.select185.lcssa = phi i32 [ %spec.select185.5, %for.body20 ], [ %spec.select185.7, %for.body20.6 ]
  %spec.select.lcssa = zext i8 %spec.select.lcssa.in to i32
  %cmp34 = icmp eq i8 %spec.select.lcssa.in, 1
  %spec.select186 = select i1 %cmp34, i32 -1, i32 %spec.select185.lcssa
  %sub = add nsw i32 %spec.select.lcssa, -1
  %cmp47 = icmp eq i32 %spec.select186, 0
  %add = add i32 %sub, %spec.select186
  br label %for.body41

for.body41:                                       ; preds = %for.end33, %for.inc116
  %needcolon.0.off0197 = phi i1 [ false, %for.end33 ], [ %41, %for.inc116 ]
  %i.2196 = phi i32 [ 0, %for.end33 ], [ %inc117, %for.inc116 ]
  %p.addr.0195 = phi i8* [ %p, %for.end33 ], [ %p.addr.5, %for.inc116 ]
  %cmp42 = icmp eq i32 %i.2196, %spec.select186
  br i1 %cmp42, label %if.then44, label %if.end52

if.then44:                                        ; preds = %for.body41
  %or.cond = select i1 %needcolon.0.off0197, i1 true, i1 %cmp47
  br i1 %or.cond, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then44
  %incdec.ptr = getelementptr i8, i8* %p.addr.0195, i64 1
  store i8 58, i8* %p.addr.0195, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %if.then49
  %p.addr.1 = phi i8* [ %incdec.ptr, %if.then49 ], [ %p.addr.0195, %if.then44 ]
  %incdec.ptr51 = getelementptr i8, i8* %p.addr.1, i64 1
  store i8 58, i8* %p.addr.1, align 1
  br label %for.inc116

if.end52:                                         ; preds = %for.body41
  br i1 %needcolon.0.off0197, label %if.then54, label %cond.false

if.then54:                                        ; preds = %if.end52
  %incdec.ptr55 = getelementptr i8, i8* %p.addr.0195, i64 1
  store i8 58, i8* %p.addr.0195, align 1
  br label %cond.false

cond.false:                                       ; preds = %if.end52, %if.then54
  %p.addr.2 = phi i8* [ %incdec.ptr55, %if.then54 ], [ %p.addr.0195, %if.end52 ]
  %idxprom59 = sext i32 %i.2196 to i64
  %arrayidx60 = getelementptr [8 x i16], [8 x i16]* %u6_addr16, i64 0, i64 %idxprom59
  %36 = load i16, i16* %arrayidx60, align 2
  %call78 = call fastcc i16 @__fswab16(i16 noundef %36) #22
  %extract.t180 = trunc i16 %call78 to i8
  %extract182 = lshr i16 %call78, 8
  %extract.t209 = trunc i16 %extract182 to i8
  %tobool87.not = icmp eq i8 %extract.t209, 0
  br i1 %tobool87.not, label %if.else102, label %if.then88

if.then88:                                        ; preds = %cond.false
  %cmp90 = icmp ugt i8 %extract.t209, 15
  br i1 %cmp90, label %if.then92, label %if.else94

if.then92:                                        ; preds = %if.then88
  %call93 = call fastcc i8* @hex_byte_pack(i8* noundef %p.addr.2, i8 noundef %extract.t209) #17
  br label %if.end100

if.else94:                                        ; preds = %if.then88
  %37 = zext i16 %extract182 to i64
  %arrayidx98 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %37
  %38 = load i8, i8* %arrayidx98, align 1
  %incdec.ptr99 = getelementptr i8, i8* %p.addr.2, i64 1
  store i8 %38, i8* %p.addr.2, align 1
  br label %if.end100

if.end100:                                        ; preds = %if.else94, %if.then92
  %p.addr.3 = phi i8* [ %call93, %if.then92 ], [ %incdec.ptr99, %if.else94 ]
  %call101 = call fastcc i8* @hex_byte_pack(i8* noundef %p.addr.3, i8 noundef %extract.t180) #17
  br label %for.inc116

if.else102:                                       ; preds = %cond.false
  %cmp104 = icmp ugt i8 %extract.t180, 15
  br i1 %cmp104, label %if.then106, label %if.else108

if.then106:                                       ; preds = %if.else102
  %call107 = call fastcc i8* @hex_byte_pack(i8* noundef %p.addr.2, i8 noundef %extract.t180) #17
  br label %for.inc116

if.else108:                                       ; preds = %if.else102
  %extract.t180.mask = and i16 %call78, 255
  %39 = zext i16 %extract.t180.mask to i64
  %arrayidx112 = getelementptr [0 x i8], [0 x i8]* @hex_asc, i64 0, i64 %39
  %40 = load i8, i8* %arrayidx112, align 1
  %incdec.ptr113 = getelementptr i8, i8* %p.addr.2, i64 1
  store i8 %40, i8* %p.addr.2, align 1
  br label %for.inc116

for.inc116:                                       ; preds = %if.end100, %if.else108, %if.then106, %if.end50
  %p.addr.5 = phi i8* [ %incdec.ptr51, %if.end50 ], [ %call101, %if.end100 ], [ %call107, %if.then106 ], [ %incdec.ptr113, %if.else108 ]
  %i.3 = phi i32 [ %add, %if.end50 ], [ %i.2196, %if.end100 ], [ %i.2196, %if.then106 ], [ %i.2196, %if.else108 ]
  %41 = xor i1 %cmp42, true
  %inc117 = add i32 %i.3, 1
  %cmp39 = icmp slt i32 %inc117, %4
  br i1 %cmp39, label %for.body41, label %for.end118

for.end118:                                       ; preds = %for.inc116
  br i1 %3, label %if.then120, label %if.end128

if.then120:                                       ; preds = %for.end118
  br i1 %cmp42, label %if.end124, label %if.then122

if.then122:                                       ; preds = %if.then120
  %incdec.ptr123 = getelementptr i8, i8* %p.addr.5, i64 1
  store i8 58, i8* %p.addr.5, align 1
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.then120
  %p.addr.6 = phi i8* [ %incdec.ptr123, %if.then122 ], [ %p.addr.5, %if.then120 ]
  %arrayidx126 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %in6, i64 0, i32 0, i32 0, i64 3
  %42 = bitcast i32* %arrayidx126 to i8*
  %call127 = call fastcc i8* @ip4_string(i8* noundef %p.addr.6, i8* noundef %42, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0)) #17
  br label %if.end128

if.end128:                                        ; preds = %if.end124, %for.end118
  %p.addr.7 = phi i8* [ %call127, %if.end124 ], [ %p.addr.5, %for.end118 ]
  store i8 0, i8* %p.addr.7, align 1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i8* %p.addr.7
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i8* @ip6_string(i8* noundef %p, i8* nocapture noundef readonly %addr, i8* nocapture noundef readonly %fmt) unnamed_addr #11 {
entry:
  %incdec.ptr = getelementptr i8, i8* %addr, i64 1
  %0 = load i8, i8* %addr, align 1
  %call = call fastcc i8* @hex_byte_pack(i8* noundef %p, i8 noundef %0) #17
  %incdec.ptr1 = getelementptr i8, i8* %addr, i64 2
  %1 = load i8, i8* %incdec.ptr, align 1
  %call2 = call fastcc i8* @hex_byte_pack(i8* noundef %call, i8 noundef %1) #17
  %2 = load i8, i8* %fmt, align 1
  %cmp3 = icmp eq i8 %2, 73
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %entry
  %incdec.ptr7 = getelementptr i8, i8* %call2, i64 1
  store i8 58, i8* %call2, align 1
  br label %for.inc

for.inc:                                          ; preds = %entry, %if.then
  %p.addr.1 = phi i8* [ %incdec.ptr7, %if.then ], [ %call2, %entry ]
  %incdec.ptr.1 = getelementptr i8, i8* %addr, i64 3
  %3 = load i8, i8* %incdec.ptr1, align 1
  %call.1 = call fastcc i8* @hex_byte_pack(i8* noundef %p.addr.1, i8 noundef %3) #17
  %incdec.ptr1.1 = getelementptr i8, i8* %addr, i64 4
  %4 = load i8, i8* %incdec.ptr.1, align 1
  %call2.1 = call fastcc i8* @hex_byte_pack(i8* noundef %call.1, i8 noundef %4) #17
  %5 = load i8, i8* %fmt, align 1
  %cmp3.1 = icmp eq i8 %5, 73
  br i1 %cmp3.1, label %if.then.1, label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %incdec.ptr7.1 = getelementptr i8, i8* %call2.1, i64 1
  store i8 58, i8* %call2.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %p.addr.1.1 = phi i8* [ %incdec.ptr7.1, %if.then.1 ], [ %call2.1, %for.inc ]
  %incdec.ptr.2 = getelementptr i8, i8* %addr, i64 5
  %6 = load i8, i8* %incdec.ptr1.1, align 1
  %call.2 = call fastcc i8* @hex_byte_pack(i8* noundef %p.addr.1.1, i8 noundef %6) #17
  %incdec.ptr1.2 = getelementptr i8, i8* %addr, i64 6
  %7 = load i8, i8* %incdec.ptr.2, align 1
  %call2.2 = call fastcc i8* @hex_byte_pack(i8* noundef %call.2, i8 noundef %7) #17
  %8 = load i8, i8* %fmt, align 1
  %cmp3.2 = icmp eq i8 %8, 73
  br i1 %cmp3.2, label %if.then.2, label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %incdec.ptr7.2 = getelementptr i8, i8* %call2.2, i64 1
  store i8 58, i8* %call2.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %p.addr.1.2 = phi i8* [ %incdec.ptr7.2, %if.then.2 ], [ %call2.2, %for.inc.1 ]
  %incdec.ptr.3 = getelementptr i8, i8* %addr, i64 7
  %9 = load i8, i8* %incdec.ptr1.2, align 1
  %call.3 = call fastcc i8* @hex_byte_pack(i8* noundef %p.addr.1.2, i8 noundef %9) #17
  %incdec.ptr1.3 = getelementptr i8, i8* %addr, i64 8
  %10 = load i8, i8* %incdec.ptr.3, align 1
  %call2.3 = call fastcc i8* @hex_byte_pack(i8* noundef %call.3, i8 noundef %10) #17
  %11 = load i8, i8* %fmt, align 1
  %cmp3.3 = icmp eq i8 %11, 73
  br i1 %cmp3.3, label %if.then.3, label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %incdec.ptr7.3 = getelementptr i8, i8* %call2.3, i64 1
  store i8 58, i8* %call2.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %p.addr.1.3 = phi i8* [ %incdec.ptr7.3, %if.then.3 ], [ %call2.3, %for.inc.2 ]
  %incdec.ptr.4 = getelementptr i8, i8* %addr, i64 9
  %12 = load i8, i8* %incdec.ptr1.3, align 1
  %call.4 = call fastcc i8* @hex_byte_pack(i8* noundef %p.addr.1.3, i8 noundef %12) #17
  %incdec.ptr1.4 = getelementptr i8, i8* %addr, i64 10
  %13 = load i8, i8* %incdec.ptr.4, align 1
  %call2.4 = call fastcc i8* @hex_byte_pack(i8* noundef %call.4, i8 noundef %13) #17
  %14 = load i8, i8* %fmt, align 1
  %cmp3.4 = icmp eq i8 %14, 73
  br i1 %cmp3.4, label %if.then.4, label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %incdec.ptr7.4 = getelementptr i8, i8* %call2.4, i64 1
  store i8 58, i8* %call2.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3
  %p.addr.1.4 = phi i8* [ %incdec.ptr7.4, %if.then.4 ], [ %call2.4, %for.inc.3 ]
  %incdec.ptr.5 = getelementptr i8, i8* %addr, i64 11
  %15 = load i8, i8* %incdec.ptr1.4, align 1
  %call.5 = call fastcc i8* @hex_byte_pack(i8* noundef %p.addr.1.4, i8 noundef %15) #17
  %incdec.ptr1.5 = getelementptr i8, i8* %addr, i64 12
  %16 = load i8, i8* %incdec.ptr.5, align 1
  %call2.5 = call fastcc i8* @hex_byte_pack(i8* noundef %call.5, i8 noundef %16) #17
  %17 = load i8, i8* %fmt, align 1
  %cmp3.5 = icmp eq i8 %17, 73
  br i1 %cmp3.5, label %if.then.5, label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  %incdec.ptr7.5 = getelementptr i8, i8* %call2.5, i64 1
  store i8 58, i8* %call2.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4
  %p.addr.1.5 = phi i8* [ %incdec.ptr7.5, %if.then.5 ], [ %call2.5, %for.inc.4 ]
  %incdec.ptr.6 = getelementptr i8, i8* %addr, i64 13
  %18 = load i8, i8* %incdec.ptr1.5, align 1
  %call.6 = call fastcc i8* @hex_byte_pack(i8* noundef %p.addr.1.5, i8 noundef %18) #17
  %19 = load i8, i8* %incdec.ptr.6, align 1
  %call2.6 = call fastcc i8* @hex_byte_pack(i8* noundef %call.6, i8 noundef %19) #17
  %20 = load i8, i8* %fmt, align 1
  %cmp3.6 = icmp eq i8 %20, 73
  br i1 %cmp3.6, label %if.then.6, label %for.inc.7

if.then.6:                                        ; preds = %for.inc.5
  %incdec.ptr7.6 = getelementptr i8, i8* %call2.6, i64 1
  store i8 58, i8* %call2.6, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.5, %if.then.6
  %p.addr.1.6 = phi i8* [ %incdec.ptr7.6, %if.then.6 ], [ %call2.6, %for.inc.5 ]
  %incdec.ptr1.6 = getelementptr i8, i8* %addr, i64 14
  %incdec.ptr.7 = getelementptr i8, i8* %addr, i64 15
  %21 = load i8, i8* %incdec.ptr1.6, align 1
  %call.7 = call fastcc i8* @hex_byte_pack(i8* noundef %p.addr.1.6, i8 noundef %21) #17
  %22 = load i8, i8* %incdec.ptr.7, align 1
  %call2.7 = call fastcc i8* @hex_byte_pack(i8* noundef %call.7, i8 noundef %22) #17
  store i8 0, i8* %call2.7, align 1
  ret i8* %call2.7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @ipv6_addr_v4mapped(%struct.in6_addr* nocapture noundef readonly %a) unnamed_addr #13 {
entry:
  %0 = bitcast %struct.in6_addr* %a to i64*
  %1 = load i64, i64* %0, align 8
  %arrayidx = getelementptr %struct.in6_addr, %struct.in6_addr* %a, i64 0, i32 0, i32 0, i64 2
  %2 = load i32, i32* %arrayidx, align 4
  %xor = xor i32 %2, -65536
  %conv = zext i32 %xor to i64
  %or = or i64 %1, %conv
  %cmp = icmp eq i64 %or, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @ipv6_addr_is_isatap(%struct.in6_addr* nocapture noundef readonly %addr) unnamed_addr #13 {
entry:
  %arrayidx = getelementptr %struct.in6_addr, %struct.in6_addr* %addr, i64 0, i32 0, i32 0, i64 2
  %0 = load i32, i32* %arrayidx, align 4
  %1 = and i32 %0, -3
  %cmp = icmp eq i32 %1, -27394048
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i16 @__fswab16(i16 noundef %val) unnamed_addr #14 {
entry:
  %rev = call i16 @llvm.bswap.i16(i16 %val)
  ret i16 %rev
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc i8* @ip4_string(i8* noundef writeonly %p, i8* nocapture noundef readonly %addr, i8* nocapture noundef readonly %fmt) unnamed_addr #15 {
entry:
  %temp = alloca i32, align 4, !annotation !7
  %tmpcast = bitcast i32* %temp to [4 x i8]*, !annotation !7
  %0 = load i8, i8* %fmt, align 1
  %cmp = icmp eq i8 %0, 105
  %arrayidx2 = getelementptr i8, i8* %fmt, i64 2
  %1 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %1 to i32
  %2 = add nsw i32 %conv3, -98
  %3 = call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 31)
  switch i32 %3, label %sw.default [
    i32 3, label %sw.epilog
    i32 5, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %entry, %sw.default
  %index.0 = phi i64 [ 0, %sw.default ], [ 3, %entry ], [ 3, %entry ]
  %step.0 = phi i64 [ 1, %sw.default ], [ -1, %entry ], [ -1, %entry ]
  %4 = bitcast i32* %temp to i8*
  %sub.ptr.rhs.cast = ptrtoint i32* %temp to i64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18
  store i32 0, i32* %temp, align 4, !annotation !7
  %arrayidx8 = getelementptr i8, i8* %addr, i64 %index.0
  %5 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %5 to i32
  %call = call fastcc i8* @put_dec_trunc8(i8* noundef nonnull %4, i32 noundef %conv9) #17
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv11 = trunc i64 %sub.ptr.sub to i32
  %cmp12 = icmp slt i32 %conv11, 3
  %or.cond = select i1 %cmp, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.end, label %if.end20

if.end:                                           ; preds = %sw.epilog
  %incdec.ptr = getelementptr i8, i8* %p, i64 1
  store i8 48, i8* %p, align 1
  %cmp15 = icmp slt i32 %conv11, 2
  br i1 %cmp15, label %if.then17, label %while.body.preheader

if.then17:                                        ; preds = %if.end
  %incdec.ptr18 = getelementptr i8, i8* %p, i64 2
  store i8 48, i8* %incdec.ptr, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %sw.epilog
  %p.addr.2 = phi i8* [ %incdec.ptr18, %if.then17 ], [ %p, %sw.epilog ]
  %tobool21.not49 = icmp eq i32 %conv11, 0
  br i1 %tobool21.not49, label %if.end29, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end, %if.end20
  %p.addr.350.ph = phi i8* [ %p.addr.2, %if.end20 ], [ %incdec.ptr, %if.end ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %dec51.in = phi i32 [ %dec51, %while.body ], [ %conv11, %while.body.preheader ]
  %p.addr.350 = phi i8* [ %incdec.ptr24, %while.body ], [ %p.addr.350.ph, %while.body.preheader ]
  %dec51 = add i32 %dec51.in, -1
  %idxprom22 = sext i32 %dec51 to i64
  %arrayidx23 = getelementptr [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 %idxprom22
  %6 = load i8, i8* %arrayidx23, align 1
  %incdec.ptr24 = getelementptr i8, i8* %p.addr.350, i64 1
  store i8 %6, i8* %p.addr.350, align 1
  %tobool21.not = icmp eq i32 %dec51, 0
  br i1 %tobool21.not, label %if.end29, label %while.body

if.end29:                                         ; preds = %while.body, %if.end20
  %p.addr.3.lcssa = phi i8* [ %p.addr.2, %if.end20 ], [ %incdec.ptr24, %while.body ]
  %incdec.ptr28 = getelementptr i8, i8* %p.addr.3.lcssa, i64 1
  store i8 46, i8* %p.addr.3.lcssa, align 1
  %indvars.iv.next = add nsw i64 %index.0, %step.0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18
  store i32 0, i32* %temp, align 4, !annotation !7
  %arrayidx8.1 = getelementptr i8, i8* %addr, i64 %indvars.iv.next
  %7 = load i8, i8* %arrayidx8.1, align 1
  %conv9.1 = zext i8 %7 to i32
  %call.1 = call fastcc i8* @put_dec_trunc8(i8* noundef nonnull %4, i32 noundef %conv9.1) #17
  %sub.ptr.lhs.cast.1 = ptrtoint i8* %call.1 to i64
  %sub.ptr.sub.1 = sub i64 %sub.ptr.lhs.cast.1, %sub.ptr.rhs.cast
  %conv11.1 = trunc i64 %sub.ptr.sub.1 to i32
  %cmp12.1 = icmp slt i32 %conv11.1, 3
  %or.cond.1 = select i1 %cmp, i1 %cmp12.1, i1 false
  br i1 %or.cond.1, label %if.end.1, label %if.end20.1

if.end.1:                                         ; preds = %if.end29
  %incdec.ptr.1 = getelementptr i8, i8* %p.addr.3.lcssa, i64 2
  store i8 48, i8* %incdec.ptr28, align 1
  %cmp15.1 = icmp slt i32 %conv11.1, 2
  br i1 %cmp15.1, label %if.then17.1, label %while.body.1.preheader

if.then17.1:                                      ; preds = %if.end.1
  %incdec.ptr18.1 = getelementptr i8, i8* %p.addr.3.lcssa, i64 3
  store i8 48, i8* %incdec.ptr.1, align 1
  br label %if.end20.1

if.end20.1:                                       ; preds = %if.then17.1, %if.end29
  %p.addr.2.1 = phi i8* [ %incdec.ptr18.1, %if.then17.1 ], [ %incdec.ptr28, %if.end29 ]
  %tobool21.not49.1 = icmp eq i32 %conv11.1, 0
  br i1 %tobool21.not49.1, label %if.end29.1, label %while.body.1.preheader

while.body.1.preheader:                           ; preds = %if.end.1, %if.end20.1
  %p.addr.350.1.ph = phi i8* [ %p.addr.2.1, %if.end20.1 ], [ %incdec.ptr.1, %if.end.1 ]
  br label %while.body.1

while.body.1:                                     ; preds = %while.body.1.preheader, %while.body.1
  %dec51.in.1 = phi i32 [ %dec51.1, %while.body.1 ], [ %conv11.1, %while.body.1.preheader ]
  %p.addr.350.1 = phi i8* [ %incdec.ptr24.1, %while.body.1 ], [ %p.addr.350.1.ph, %while.body.1.preheader ]
  %dec51.1 = add i32 %dec51.in.1, -1
  %idxprom22.1 = sext i32 %dec51.1 to i64
  %arrayidx23.1 = getelementptr [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 %idxprom22.1
  %8 = load i8, i8* %arrayidx23.1, align 1
  %incdec.ptr24.1 = getelementptr i8, i8* %p.addr.350.1, i64 1
  store i8 %8, i8* %p.addr.350.1, align 1
  %tobool21.not.1 = icmp eq i32 %dec51.1, 0
  br i1 %tobool21.not.1, label %if.end29.1, label %while.body.1

if.end29.1:                                       ; preds = %while.body.1, %if.end20.1
  %p.addr.3.lcssa.1 = phi i8* [ %p.addr.2.1, %if.end20.1 ], [ %incdec.ptr24.1, %while.body.1 ]
  %incdec.ptr28.1 = getelementptr i8, i8* %p.addr.3.lcssa.1, i64 1
  store i8 46, i8* %p.addr.3.lcssa.1, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %step.0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18
  store i32 0, i32* %temp, align 4, !annotation !7
  %arrayidx8.2 = getelementptr i8, i8* %addr, i64 %indvars.iv.next.1
  %9 = load i8, i8* %arrayidx8.2, align 1
  %conv9.2 = zext i8 %9 to i32
  %call.2 = call fastcc i8* @put_dec_trunc8(i8* noundef nonnull %4, i32 noundef %conv9.2) #17
  %sub.ptr.lhs.cast.2 = ptrtoint i8* %call.2 to i64
  %sub.ptr.sub.2 = sub i64 %sub.ptr.lhs.cast.2, %sub.ptr.rhs.cast
  %conv11.2 = trunc i64 %sub.ptr.sub.2 to i32
  %cmp12.2 = icmp slt i32 %conv11.2, 3
  %or.cond.2 = select i1 %cmp, i1 %cmp12.2, i1 false
  br i1 %or.cond.2, label %if.end.2, label %if.end20.2

if.end.2:                                         ; preds = %if.end29.1
  %incdec.ptr.2 = getelementptr i8, i8* %p.addr.3.lcssa.1, i64 2
  store i8 48, i8* %incdec.ptr28.1, align 1
  %cmp15.2 = icmp slt i32 %conv11.2, 2
  br i1 %cmp15.2, label %if.then17.2, label %while.body.2.preheader

if.then17.2:                                      ; preds = %if.end.2
  %incdec.ptr18.2 = getelementptr i8, i8* %p.addr.3.lcssa.1, i64 3
  store i8 48, i8* %incdec.ptr.2, align 1
  br label %if.end20.2

if.end20.2:                                       ; preds = %if.then17.2, %if.end29.1
  %p.addr.2.2 = phi i8* [ %incdec.ptr18.2, %if.then17.2 ], [ %incdec.ptr28.1, %if.end29.1 ]
  %tobool21.not49.2 = icmp eq i32 %conv11.2, 0
  br i1 %tobool21.not49.2, label %if.end29.2, label %while.body.2.preheader

while.body.2.preheader:                           ; preds = %if.end.2, %if.end20.2
  %p.addr.350.2.ph = phi i8* [ %p.addr.2.2, %if.end20.2 ], [ %incdec.ptr.2, %if.end.2 ]
  br label %while.body.2

while.body.2:                                     ; preds = %while.body.2.preheader, %while.body.2
  %dec51.in.2 = phi i32 [ %dec51.2, %while.body.2 ], [ %conv11.2, %while.body.2.preheader ]
  %p.addr.350.2 = phi i8* [ %incdec.ptr24.2, %while.body.2 ], [ %p.addr.350.2.ph, %while.body.2.preheader ]
  %dec51.2 = add i32 %dec51.in.2, -1
  %idxprom22.2 = sext i32 %dec51.2 to i64
  %arrayidx23.2 = getelementptr [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 %idxprom22.2
  %10 = load i8, i8* %arrayidx23.2, align 1
  %incdec.ptr24.2 = getelementptr i8, i8* %p.addr.350.2, i64 1
  store i8 %10, i8* %p.addr.350.2, align 1
  %tobool21.not.2 = icmp eq i32 %dec51.2, 0
  br i1 %tobool21.not.2, label %if.end29.2, label %while.body.2

if.end29.2:                                       ; preds = %while.body.2, %if.end20.2
  %p.addr.3.lcssa.2 = phi i8* [ %p.addr.2.2, %if.end20.2 ], [ %incdec.ptr24.2, %while.body.2 ]
  %incdec.ptr28.2 = getelementptr i8, i8* %p.addr.3.lcssa.2, i64 1
  store i8 46, i8* %p.addr.3.lcssa.2, align 1
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.next.1, %step.0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18
  store i32 0, i32* %temp, align 4, !annotation !7
  %arrayidx8.3 = getelementptr i8, i8* %addr, i64 %indvars.iv.next.2
  %11 = load i8, i8* %arrayidx8.3, align 1
  %conv9.3 = zext i8 %11 to i32
  %call.3 = call fastcc i8* @put_dec_trunc8(i8* noundef nonnull %4, i32 noundef %conv9.3) #17
  %sub.ptr.lhs.cast.3 = ptrtoint i8* %call.3 to i64
  %sub.ptr.sub.3 = sub i64 %sub.ptr.lhs.cast.3, %sub.ptr.rhs.cast
  %conv11.3 = trunc i64 %sub.ptr.sub.3 to i32
  %cmp12.3 = icmp slt i32 %conv11.3, 3
  %or.cond.3 = select i1 %cmp, i1 %cmp12.3, i1 false
  br i1 %or.cond.3, label %if.end.3, label %if.end20.3

if.end.3:                                         ; preds = %if.end29.2
  %incdec.ptr.3 = getelementptr i8, i8* %p.addr.3.lcssa.2, i64 2
  store i8 48, i8* %incdec.ptr28.2, align 1
  %cmp15.3 = icmp slt i32 %conv11.3, 2
  br i1 %cmp15.3, label %if.then17.3, label %while.body.3.preheader

if.then17.3:                                      ; preds = %if.end.3
  %incdec.ptr18.3 = getelementptr i8, i8* %p.addr.3.lcssa.2, i64 3
  store i8 48, i8* %incdec.ptr.3, align 1
  br label %if.end20.3

if.end20.3:                                       ; preds = %if.then17.3, %if.end29.2
  %p.addr.2.3 = phi i8* [ %incdec.ptr18.3, %if.then17.3 ], [ %incdec.ptr28.2, %if.end29.2 ]
  %tobool21.not49.3 = icmp eq i32 %conv11.3, 0
  br i1 %tobool21.not49.3, label %if.end29.3, label %while.body.3.preheader

while.body.3.preheader:                           ; preds = %if.end.3, %if.end20.3
  %p.addr.350.3.ph = phi i8* [ %p.addr.2.3, %if.end20.3 ], [ %incdec.ptr.3, %if.end.3 ]
  br label %while.body.3

while.body.3:                                     ; preds = %while.body.3.preheader, %while.body.3
  %dec51.in.3 = phi i32 [ %dec51.3, %while.body.3 ], [ %conv11.3, %while.body.3.preheader ]
  %p.addr.350.3 = phi i8* [ %incdec.ptr24.3, %while.body.3 ], [ %p.addr.350.3.ph, %while.body.3.preheader ]
  %dec51.3 = add i32 %dec51.in.3, -1
  %idxprom22.3 = sext i32 %dec51.3 to i64
  %arrayidx23.3 = getelementptr [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 %idxprom22.3
  %12 = load i8, i8* %arrayidx23.3, align 1
  %incdec.ptr24.3 = getelementptr i8, i8* %p.addr.350.3, i64 1
  store i8 %12, i8* %p.addr.350.3, align 1
  %tobool21.not.3 = icmp eq i32 %dec51.3, 0
  br i1 %tobool21.not.3, label %if.end29.3, label %while.body.3

if.end29.3:                                       ; preds = %while.body.3, %if.end20.3
  %p.addr.3.lcssa.3 = phi i8* [ %p.addr.2.3, %if.end20.3 ], [ %incdec.ptr24.3, %while.body.3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18
  store i8 0, i8* %p.addr.3.lcssa.3, align 1
  ret i8* %p.addr.3.lcssa.3
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__fswab32(i32 noundef %val) unnamed_addr #14 {
entry:
  %or7 = call i32 @llvm.bswap.i32(i32 %val)
  ret i32 %or7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @string_escape_mem(i8* noundef, i64 noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc i8* @hex_byte_pack_upper(i8* noundef writeonly %buf, i8 noundef %byte) unnamed_addr #4 {
entry:
  %conv = zext i8 %byte to i32
  %0 = lshr i32 %conv, 4
  %1 = zext i32 %0 to i64
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @hex_asc_upper, i64 0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %incdec.ptr = getelementptr i8, i8* %buf, i64 1
  store i8 %2, i8* %buf, align 1
  %and2 = and i32 %conv, 15
  %3 = zext i32 %and2 to i64
  %arrayidx4 = getelementptr [0 x i8], [0 x i8]* @hex_asc_upper, i64 0, i64 %3
  %4 = load i8, i8* %arrayidx4, align 1
  %incdec.ptr5 = getelementptr i8, i8* %buf, i64 2
  store i8 %4, i8* %incdec.ptr, align 1
  ret i8* %incdec.ptr5
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @preempt_count() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !32
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.28* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @has_capability_noaudit(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #10 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #17
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #17
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #10 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #17
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kgid_val(i64 %coerce.val.ii6) #17
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #10 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #10 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid writeonly
define internal fastcc i8* @special_hex_number(i8* noundef %buf, i8* noundef %end, i64 noundef %num, i32 noundef %size) unnamed_addr #1 {
entry:
  %mul = shl i32 %size, 9
  %0 = add i32 %mul, 512
  %bf.set3 = zext i32 %0 to i64
  %bf.set12 = or i64 %bf.set3, -263401754329083
  %call = call fastcc i8* @number(i8* noundef %buf, i8* noundef %end, i64 noundef %num, i64 %bf.set12) #17
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !34
  call void @rcu_read_unlock_strict() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @rtc_str(i8* noundef %buf, i8* noundef %end, %struct.rtc_time* noundef %tm, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %buf.addr = alloca i8*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = bitcast %struct.rtc_time* %tm to i8*
  %call = call fastcc i32 @check_pointer(i8** noundef nonnull %buf.addr, i8* noundef %end, i8* noundef %0, i64 %spec.coerce) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, i8* %fmt, i64 2
  %1 = load i8, i8* %arrayidx, align 1
  switch i8 %1, label %sw.epilog [
    i8 100, label %sw.bb
    i8 116, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  %have_t.0.off0 = phi i1 [ true, %if.end ], [ true, %sw.bb2 ], [ false, %sw.bb ]
  %have_d.0.off0 = phi i1 [ true, %if.end ], [ false, %sw.bb2 ], [ true, %sw.bb ]
  %count.0 = phi i32 [ 2, %if.end ], [ 3, %sw.bb2 ], [ 3, %sw.bb ]
  br label %do.body.outer

do.body.outer:                                    ; preds = %do.body, %sw.epilog
  %raw.0.off0.ph = phi i1 [ false, %sw.epilog ], [ true, %do.body ]
  %iso8601_separator.0.off0.ph = phi i1 [ true, %sw.epilog ], [ %iso8601_separator.0.off0, %do.body ]
  %count.1.ph = phi i32 [ %count.0, %sw.epilog ], [ %inc4, %do.body ]
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.outer
  %iso8601_separator.0.off0 = phi i1 [ %iso8601_separator.0.off0.ph, %do.body.outer ], [ false, %do.body ]
  %count.1 = phi i32 [ %count.1.ph, %do.body.outer ], [ %inc4, %do.body ]
  %inc4 = add i32 %count.1, 1
  %idxprom5 = sext i32 %count.1 to i64
  %arrayidx6 = getelementptr i8, i8* %fmt, i64 %idxprom5
  %2 = load i8, i8* %arrayidx6, align 1
  switch i8 %2, label %do.end [
    i8 114, label %do.body.outer
    i8 115, label %do.body
  ]

do.end:                                           ; preds = %do.body
  br i1 %have_d.0.off0, label %if.then13, label %if.end28

if.then13:                                        ; preds = %do.end
  %3 = load i8*, i8** %buf.addr, align 8
  %call15 = call fastcc i8* @date_str(i8* noundef %3, i8* noundef %end, %struct.rtc_time* noundef %tm, i1 noundef %raw.0.off0.ph) #17
  store i8* %call15, i8** %buf.addr, align 8
  br i1 %have_t.0.off0, label %if.then21, label %cleanup

if.then21:                                        ; preds = %if.then13
  %cmp = icmp ult i8* %call15, %end
  br i1 %cmp, label %if.then23, label %if.end28.thread

if.then23:                                        ; preds = %if.then21
  %conv26 = select i1 %iso8601_separator.0.off0, i8 84, i8 32
  store i8 %conv26, i8* %call15, align 1
  br label %if.end28.thread

if.end28.thread:                                  ; preds = %if.then21, %if.then23
  %incdec.ptr = getelementptr i8, i8* %call15, i64 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  br label %if.then30

if.end28:                                         ; preds = %do.end
  br i1 %have_t.0.off0, label %if.then30, label %cleanup

if.then30:                                        ; preds = %if.end28.thread, %if.end28
  %4 = load i8*, i8** %buf.addr, align 8
  %call32 = call fastcc i8* @time_str(i8* noundef %4, i8* noundef %end, %struct.rtc_time* noundef %tm) #17
  store i8* %call32, i8** %buf.addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end28, %if.then30, %entry
  %retval.0 = load i8*, i8** %buf.addr, align 8
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @time64_str(i8* noundef %buf, i8* noundef %end, i64 noundef %time, i64 %spec.coerce, i8* nocapture noundef readonly %fmt) unnamed_addr #0 {
entry:
  %rtc_time = alloca %struct.rtc_time, align 4
  %tm = alloca %struct.tm, align 8
  %0 = bitcast %struct.rtc_time* %rtc_time to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #18
  %1 = bitcast %struct.tm* %tm to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !7
  call void @time64_to_tm(i64 noundef %time, i32 noundef 0, %struct.tm* noundef nonnull %tm) #19
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 0
  %2 = load i32, i32* %tm_sec, align 8
  %tm_sec1 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %rtc_time, i64 0, i32 0
  store i32 %2, i32* %tm_sec1, align 4
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 1
  %3 = load i32, i32* %tm_min, align 4
  %tm_min2 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %rtc_time, i64 0, i32 1
  store i32 %3, i32* %tm_min2, align 4
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 2
  %4 = load i32, i32* %tm_hour, align 8
  %tm_hour3 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %rtc_time, i64 0, i32 2
  store i32 %4, i32* %tm_hour3, align 4
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 3
  %5 = load i32, i32* %tm_mday, align 4
  %tm_mday4 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %rtc_time, i64 0, i32 3
  store i32 %5, i32* %tm_mday4, align 4
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 4
  %6 = load i32, i32* %tm_mon, align 8
  %tm_mon5 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %rtc_time, i64 0, i32 4
  store i32 %6, i32* %tm_mon5, align 4
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 5
  %7 = load i64, i64* %tm_year, align 8
  %conv = trunc i64 %7 to i32
  %tm_year6 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %rtc_time, i64 0, i32 5
  store i32 %conv, i32* %tm_year6, align 4
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 6
  %8 = load i32, i32* %tm_wday, align 8
  %tm_wday7 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %rtc_time, i64 0, i32 6
  store i32 %8, i32* %tm_wday7, align 4
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %tm, i64 0, i32 7
  %9 = load i32, i32* %tm_yday, align 4
  %tm_yday8 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %rtc_time, i64 0, i32 7
  store i32 %9, i32* %tm_yday8, align 4
  %tm_isdst = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %rtc_time, i64 0, i32 8
  store i32 0, i32* %tm_isdst, align 4
  %call = call fastcc i8* @rtc_str(i8* noundef %buf, i8* noundef %end, %struct.rtc_time* noundef nonnull %rtc_time, i64 %spec.coerce, i8* noundef %fmt) #17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #18
  ret i8* %call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc i8* @date_str(i8* noundef %buf, i8* noundef %end, %struct.rtc_time* nocapture noundef readonly %tm, i1 noundef %r) unnamed_addr #15 {
entry:
  %tm_year = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %tm, i64 0, i32 5
  %0 = load i32, i32* %tm_year, align 4
  %cond = select i1 %r, i32 0, i32 1900
  %add = add i32 %0, %cond
  %tm_mon = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %tm, i64 0, i32 4
  %1 = load i32, i32* %tm_mon, align 4
  %not.r = xor i1 %r, true
  %cond2 = zext i1 %not.r to i32
  %add3 = add i32 %1, %cond2
  %conv = sext i32 %add to i64
  %call = call fastcc i8* @number(i8* noundef %buf, i8* noundef %end, i64 noundef %conv, i64 -270411140955136) #17
  %cmp = icmp ult i8* %call, %end
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 45, i8* %call, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %incdec.ptr = getelementptr i8, i8* %call, i64 1
  %conv5 = sext i32 %add3 to i64
  %call6 = call fastcc i8* @number(i8* noundef %incdec.ptr, i8* noundef %end, i64 noundef %conv5, i64 -270411140955648) #17
  %cmp7 = icmp ult i8* %call6, %end
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i8 45, i8* %call6, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %incdec.ptr11 = getelementptr i8, i8* %call6, i64 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %tm, i64 0, i32 3
  %2 = load i32, i32* %tm_mday, align 4
  %conv12 = sext i32 %2 to i64
  %call13 = call fastcc i8* @number(i8* noundef %incdec.ptr11, i8* noundef %end, i64 noundef %conv12, i64 -270411140955648) #17
  ret i8* %call13
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc i8* @time_str(i8* noundef %buf, i8* noundef %end, %struct.rtc_time* nocapture noundef readonly %tm) unnamed_addr #15 {
entry:
  %tm_hour = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %tm, i64 0, i32 2
  %0 = load i32, i32* %tm_hour, align 4
  %conv = sext i32 %0 to i64
  %call = call fastcc i8* @number(i8* noundef %buf, i8* noundef %end, i64 noundef %conv, i64 -270411140955648) #17
  %cmp = icmp ult i8* %call, %end
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 58, i8* %call, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %incdec.ptr = getelementptr i8, i8* %call, i64 1
  %tm_min = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %tm, i64 0, i32 1
  %1 = load i32, i32* %tm_min, align 4
  %conv2 = sext i32 %1 to i64
  %call3 = call fastcc i8* @number(i8* noundef %incdec.ptr, i8* noundef %end, i64 noundef %conv2, i64 -270411140955648) #17
  %cmp4 = icmp ult i8* %call3, %end
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i8 58, i8* %call3, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %incdec.ptr8 = getelementptr i8, i8* %call3, i64 1
  %tm_sec = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %tm, i64 0, i32 0
  %2 = load i32, i32* %tm_sec, align 4
  %conv9 = sext i32 %2 to i64
  %call10 = call fastcc i8* @number(i8* noundef %incdec.ptr8, i8* noundef %end, i64 noundef %conv9, i64 -270411140955648) #17
  ret i8* %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, %struct.tm* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__clk_get_name(%struct.clk* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @format_page_flags(i8* noundef %buf, i8* noundef %end, i64 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i64 %flags, 8388607
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end11.peel99, label %if.then6.peel94

if.then6.peel94:                                  ; preds = %entry
  %call = call fastcc i8* @format_flags(i8* noundef %buf, i8* noundef %end, i64 noundef %and, %struct.trace_print_flags* noundef getelementptr inbounds ([0 x %struct.trace_print_flags], [0 x %struct.trace_print_flags]* @pageflag_names, i64 0, i64 0)) #17
  %cmp7.peel95 = icmp ult i8* %call, %end
  br i1 %cmp7.peel95, label %if.then9.peel96, label %if.end10.peel97

if.then9.peel96:                                  ; preds = %if.then6.peel94
  store i8 124, i8* %call, align 1
  br label %if.end10.peel97

if.end10.peel97:                                  ; preds = %if.then9.peel96, %if.then6.peel94
  %incdec.ptr.peel98 = getelementptr i8, i8* %call, i64 1
  br label %if.end11.peel99

if.end11.peel99:                                  ; preds = %entry, %if.end10.peel97
  %buf.addr.2.peel100 = phi i8* [ %incdec.ptr.peel98, %if.end10.peel97 ], [ %buf, %entry ]
  %call14.peel102 = call fastcc i8* @string(i8* noundef %buf.addr.2.peel100, i8* noundef %end, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i64 -281470681743616) #17
  %cmp15.peel103 = icmp ult i8* %call14.peel102, %end
  br i1 %cmp15.peel103, label %if.then17.peel104, label %for.body.peel.next90

if.then17.peel104:                                ; preds = %if.end11.peel99
  store i8 61, i8* %call14.peel102, align 1
  br label %for.body.peel.next90

for.body.peel.next90:                             ; preds = %if.then17.peel104, %if.end11.peel99
  %incdec.ptr19.peel106 = getelementptr i8, i8* %call14.peel102, i64 1
  %shr.peel109 = lshr i64 %flags, 62
  %call28.peel115 = call fastcc i8* @number(i8* noundef %incdec.ptr19.peel106, i8* noundef %end, i64 noundef %shr.peel109, i64 -270479860432896) #17
  ret i8* %call28.peel115
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @format_flags(i8* noundef %buf, i8* noundef %end, i64 noundef %flags, %struct.trace_print_flags* nocapture noundef readonly %names) unnamed_addr #0 {
entry:
  %tobool.not37 = icmp eq i64 %flags, 0
  br i1 %tobool.not37, label %if.end15, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %name52 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %names, i64 0, i32 1
  %0 = load i8*, i8** %name52, align 8
  %tobool1.not53 = icmp eq i8* %0, null
  br i1 %tobool1.not53, label %if.then13, label %for.body

for.body:                                         ; preds = %land.rhs.preheader, %for.inc
  %1 = phi i8* [ %3, %for.inc ], [ %0, %land.rhs.preheader ]
  %buf.addr.03856 = phi i8* [ %buf.addr.1, %for.inc ], [ %buf, %land.rhs.preheader ]
  %flags.addr.03955 = phi i64 [ %flags.addr.1, %for.inc ], [ %flags, %land.rhs.preheader ]
  %names.addr.04054 = phi %struct.trace_print_flags* [ %incdec.ptr11, %for.inc ], [ %names, %land.rhs.preheader ]
  %mask2 = getelementptr inbounds %struct.trace_print_flags, %struct.trace_print_flags* %names.addr.04054, i64 0, i32 0
  %2 = load i64, i64* %mask2, align 8
  %and = and i64 %2, %flags.addr.03955
  %cmp.not = icmp eq i64 %and, %2
  br i1 %cmp.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %call = call fastcc i8* @string(i8* noundef %buf.addr.03856, i8* noundef %end, i8* noundef nonnull %1, i64 -281470681743616) #17
  %neg = xor i64 %2, -1
  %and4 = and i64 %flags.addr.03955, %neg
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.end15, label %if.then6

if.then6:                                         ; preds = %if.end
  %cmp7 = icmp ult i8* %call, %end
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then6
  store i8 124, i8* %call, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then6
  %incdec.ptr = getelementptr i8, i8* %call, i64 1
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %for.body
  %buf.addr.1 = phi i8* [ %buf.addr.03856, %for.body ], [ %incdec.ptr, %if.end9 ]
  %flags.addr.1 = phi i64 [ %flags.addr.03955, %for.body ], [ %and4, %if.end9 ]
  %incdec.ptr11 = getelementptr %struct.trace_print_flags, %struct.trace_print_flags* %names.addr.04054, i64 1
  %name = getelementptr %struct.trace_print_flags, %struct.trace_print_flags* %names.addr.04054, i64 1, i32 1
  %3 = load i8*, i8** %name, align 8
  %tobool1.not = icmp eq i8* %3, null
  br i1 %tobool1.not, label %if.then13, label %for.body

if.then13:                                        ; preds = %for.inc, %land.rhs.preheader
  %flags.addr.039.lcssa = phi i64 [ %flags, %land.rhs.preheader ], [ %flags.addr.1, %for.inc ]
  %buf.addr.038.lcssa = phi i8* [ %buf, %land.rhs.preheader ], [ %buf.addr.1, %for.inc ]
  %call14 = call fastcc i8* @number(i8* noundef %buf.addr.038.lcssa, i8* noundef %end, i64 noundef %flags.addr.039.lcssa, i64 -263470473805824) #17
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry, %if.then13
  %buf.addr.2 = phi i8* [ %call14, %if.then13 ], [ %buf, %entry ], [ %call, %if.end ]
  ret i8* %buf.addr.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strcspn(i8* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strspn(i8* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @fwnode_full_name_string(%struct.fwnode_handle* noundef %fwnode, i8* noundef %buf, i8* noundef %end) unnamed_addr #0 {
entry:
  %call = call i32 @fwnode_count_parents(%struct.fwnode_handle* noundef %fwnode) #19
  %cmp16 = icmp sgt i32 %call, -1
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %buf.addr.018 = phi i8* [ %call5, %for.body ], [ %buf, %entry ]
  %depth.017 = phi i32 [ %dec, %for.body ], [ %call, %entry ]
  %call1 = call %struct.fwnode_handle* @fwnode_get_nth_parent(%struct.fwnode_handle* noundef %fwnode, i32 noundef %depth.017) #19
  %call2 = call i8* @fwnode_get_name_prefix(%struct.fwnode_handle* noundef %call1) #19
  %call3 = call fastcc i8* @string(i8* noundef %buf.addr.018, i8* noundef %end, i8* noundef %call2, i64 -281470681743616) #17
  %call4 = call i8* @fwnode_get_name(%struct.fwnode_handle* noundef %call1) #19
  %call5 = call fastcc i8* @string(i8* noundef %call3, i8* noundef %end, i8* noundef %call4, i64 -281470681743616) #17
  call void @fwnode_handle_put(%struct.fwnode_handle* noundef %call1) #19
  %dec = add nsw i32 %depth.017, -1
  %cmp.not = icmp eq i32 %depth.017, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %buf.addr.0.lcssa = phi i8* [ %buf, %entry ], [ %call5, %for.body ]
  ret i8* %buf.addr.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fwnode_get_name(%struct.fwnode_handle* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchrnul(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @of_node_check_flag(%struct.device_node* noundef %n, i64 noundef %flag) unnamed_addr #12 {
entry:
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %n, i64 0, i32 10
  %div.i = lshr i64 %flag, 6
  %idxprom.i = and i64 %div.i, 67108863
  %arrayidx.i = getelementptr i64, i64* %_flags, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i64 %flag, 63
  %shr.i = lshr i64 %0, %and.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(%struct.device_node* noundef, i8* noundef, i8** noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.property* @of_find_property(%struct.device_node* noundef, i8* noundef, i32* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @of_prop_next_string(%struct.property* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_count_parents(%struct.fwnode_handle* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fwnode_handle* @fwnode_get_nth_parent(%struct.fwnode_handle* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @fwnode_get_name_prefix(%struct.fwnode_handle* noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(%struct.fwnode_handle* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #10 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #10 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #18, !srcloc !35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_complement(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #18, !srcloc !36
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #16

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #16

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { nofree noinline nosync nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { mustprogress nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { nobuiltin nounwind "no-builtins" }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }
attributes #21 = { nounwind readnone }
attributes #22 = { nobuiltin nounwind readnone willreturn "no-builtins" }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i8 0, i8 2}
!15 = !{i64 2158098920}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2158067537}
!18 = !{i64 2158074691}
!19 = !{i64 2158087973}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = !{i64 2149171275}
!27 = !{i64 2149173021}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.peeled.count", i32 1}
!32 = !{i64 1137454}
!33 = !{i64 2149683490}
!34 = !{i64 2149683707}
!35 = !{i64 2147918390, i64 2147918901, i64 2147918931, i64 2147918957, i64 2147918989, i64 2147919018}
!36 = !{i64 2147928960, i64 2147929481, i64 2147929511, i64 2147929537, i64 2147929569, i64 2147929598}
