; ModuleID = 'init/do_mounts.c'
source_filename = "init/do_mounts.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.9, i64, i32 }
%union.anon.9 = type { i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.147, %struct.list_head, %struct.list_head, %union.anon.148 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.164, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.165, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.166, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.167, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.posix_acl_entry = type { i16, i16, %union.anon.163 }
%union.anon.163 = type { %struct.kuid_t }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.26 }
%union.anon.26 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon, %union.anon.162, %struct.atomic_t, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.162 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.20, %union.anon.23 }
%union.anon.20 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.23 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.111, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.69, [0 x i64] }
%struct.anon.69 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.109, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.70 }
%union.anon.70 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.72, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.72 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.73 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.85, %struct.anon.86, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type { %struct.sock_common, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff*, %struct.sk_buff_head, %struct.anon.139, i32, i32, %struct.sk_filter*, %union.anon.140, %struct.dst_entry*, %struct.dst_entry*, %struct.atomic_t, i32, i32, %struct.refcount_struct, i64, %union.anon.141, %struct.sk_buff*, %struct.sk_buff_head, i32, i32, i32, i32, i64, %struct.timer_list, i32, i32, i64, i64, %struct.page_frag, i64, i64, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i64, %struct.proto*, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, %struct.spinlock, %struct.pid*, %struct.cred*, i64, i64, i16, i32, i8, i32, %struct.atomic_t, i8, i8, %struct.socket*, i8*, %struct.sock_cgroup_data, %struct.mem_cgroup*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*)*, %struct.sock_reuseport*, %struct.callback_head }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, %struct.proto*, %struct.possible_net_t, %struct.atomic64_t, %union.anon.135, [0 x i32], %union.anon.136, i16, %union.anon.137, %struct.refcount_struct, [0 x i32], %union.anon.138 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%union.anon.135 = type { i64 }
%union.anon.136 = type { %struct.hlist_node }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.139 = type { %struct.atomic_t, i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_filter = type { %struct.refcount_struct, %struct.callback_head, %struct.bpf_prog* }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], %struct.bpf_prog_stats*, i32*, i32 (i8*, %struct.bpf_insn*)*, %struct.bpf_prog_aux*, %struct.sock_fprog_kern*, [0 x %struct.sock_filter], [0 x %struct.bpf_insn] }
%struct.bpf_prog_stats = type { i64, i64, i64, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_sync = type {}
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, %struct.bpf_ctx_arg_aux*, %struct.mutex, %struct.bpf_prog*, %struct.bpf_trampoline*, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, %struct.btf_type*, i8*, %struct.bpf_prog**, i8*, %struct.bpf_jit_poke_descriptor*, %struct.bpf_kfunc_desc_tab*, i32, %struct.bpf_ksym, %struct.bpf_prog_ops*, %struct.bpf_map**, %struct.mutex, %struct.btf_mod_pair*, %struct.bpf_prog*, %struct.user_struct*, i64, [2 x %struct.bpf_map*], [16 x i8], %struct.bpf_prog_offload*, %struct.btf*, %struct.bpf_func_info*, %struct.bpf_func_info_aux*, %struct.bpf_line_info*, i8**, i32, i32, i32, i32, %struct.exception_table_entry*, %union.anon.112 }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.net_device = type { [16 x i8], %struct.netdev_name_node*, %struct.dev_ifalias*, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.30, i32, i32, %struct.net_device_ops*, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.ethtool_ops*, %struct.header_ops*, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i32, i32, i8, %struct.in_device*, %struct.inet6_dev*, %struct.wireless_dev*, %struct.wpan_dev*, i8*, %struct.netdev_rx_queue*, i32, i32, %struct.bpf_prog*, i64, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], %struct.hlist_node, [40 x i8], %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i32, %struct.spinlock, %struct.xdp_dev_bulk_queue*, %struct.timer_list, i32, i32, %struct.list_head, %struct.refcount_struct, %struct.list_head, i8, i8, i16, i8, void (%struct.net_device*)*, %struct.possible_net_t, i8*, i32, %union.anon.125, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], %struct.phy_device*, %struct.sfp_bus*, %struct.lock_class_key*, %struct.lock_class_key*, i8, i8, %struct.list_head, %struct.udp_tunnel_nic_info*, %struct.udp_tunnel_nic*, [3 x %struct.bpf_xdp_entity] }
%struct.netdev_name_node = type { %struct.hlist_node, %struct.list_head, %struct.net_device*, i8* }
%struct.dev_ifalias = type { %struct.callback_head, [0 x i8] }
%struct.anon.30 = type { %struct.list_head, %struct.list_head }
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.sk_buff*, %struct.net_device*, i64)*, i16 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.if_settings*)*, i32 (%struct.net_device*, %struct.ifreq*, i8*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.rtnl_link_stats64*)*, i1 (%struct.net_device*, i32)*, i32 (i32, %struct.net_device*, i8*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8, i16)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_stats*)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_guid*, %struct.ifla_vf_guid*)*, i32 (%struct.net_device*, i32, i64, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.net_device*)*, %struct.net_device* (%struct.net_device*, %struct.sk_buff*, i1)*, %struct.net_device* (%struct.net_device*, %struct.sock*)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, %struct.neighbour*)*, void (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16, i16, %struct.netlink_ext_ack*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device*, i8*, i16, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, i8*, i64)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.sk_buff*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, %struct.net_device* (%struct.net_device*, %struct.xdp_buff*)*, i32 (%struct.net_device*, i32, i32)*, %struct.devlink_port* (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ip_tunnel_parm*, i32)*, %struct.net_device* (%struct.net_device*)*, i32 (%struct.net_device_path_ctx*, %struct.net_device_path*)* }
%struct.ifreq = type { %union.anon.31, %union.anon.32 }
%union.anon.31 = type { [16 x i8] }
%union.anon.32 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.if_settings = type { i32, i32, %union.anon.33 }
%union.anon.33 = type { %struct.raw_hdlc_proto* }
%struct.raw_hdlc_proto = type { i16, i16 }
%struct.neigh_parms = type { %struct.possible_net_t, %struct.net_device*, %struct.list_head, i32 (%struct.neighbour*)*, %struct.neigh_table*, i8*, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i64] }
%struct.neighbour = type { %struct.neighbour*, %struct.neigh_table*, %struct.neigh_parms*, i64, i64, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i64, %struct.atomic_t, i8, i8, i8, i8, i8, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, i32 (%struct.neighbour*, %struct.sk_buff*)*, %struct.neigh_ops*, %struct.list_head, %struct.callback_head, %struct.net_device*, [0 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [4 x i64] }
%struct.neigh_ops = type { i32, void (%struct.neighbour*, %struct.sk_buff*)*, void (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)* }
%struct.neigh_table = type { i32, i32, i32, i16, i32 (i8*, %struct.net_device*, i32*)*, i1 (%struct.neighbour*, i8*)*, i32 (%struct.neighbour*)*, i32 (%struct.pneigh_entry*)*, void (%struct.pneigh_entry*)*, void (%struct.sk_buff*)*, i32 (i8*)*, i1 (%struct.net_device*, %struct.netlink_ext_ack*)*, i8*, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i64, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.rwlock_t, i64, %struct.neigh_statistics*, %struct.neigh_hash_table*, %struct.pneigh_entry** }
%struct.pneigh_entry = type { %struct.pneigh_entry*, %struct.possible_net_t, %struct.net_device*, i8, i8, [0 x i8] }
%struct.netlink_ext_ack = type { i8*, %struct.nlattr*, %struct.nla_policy*, [20 x i8], i8 }
%struct.nlattr = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.34 }
%union.anon.34 = type { i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.neigh_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.neigh_hash_table = type { %struct.neighbour**, i32, [4 x i32], %struct.callback_head }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_guid = type { i32, i64 }
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.netlink_callback*)*, i8*, %struct.module*, %struct.netlink_ext_ack*, i16, i16, i32, i32, i32, i8, %union.anon.36 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%union.anon.36 = type { [6 x i64] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.netdev_bpf = type { i32, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { i32, %struct.bpf_prog*, %struct.netlink_ext_ack* }
%struct.xdp_frame = type { i8*, i16, i16, i32, %struct.xdp_mem_info, %struct.net_device* }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i8*, %struct.xdp_rxq_info*, %struct.xdp_txq_info*, i32 }
%struct.xdp_rxq_info = type { %struct.net_device*, i32, i32, %struct.xdp_mem_info, i32, [36 x i8] }
%struct.xdp_txq_info = type { %struct.net_device* }
%struct.devlink_port = type opaque
%struct.ip_tunnel_parm = type opaque
%struct.net_device_path_ctx = type { %struct.net_device*, i8*, i32, [2 x %struct.anon.115] }
%struct.anon.115 = type { i16, i16 }
%struct.net_device_path = type { i32, %struct.net_device*, %union.anon.116 }
%union.anon.116 = type { %struct.anon.118, [4 x i8] }
%struct.anon.118 = type { i32, i16, i16 }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_ops = type opaque
%struct.header_ops = type { i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)*, i32 (%struct.sk_buff*, i8*)*, i32 (%struct.neighbour*, %struct.hh_cache*, i16)*, void (%struct.hh_cache*, %struct.net_device*, i8*)*, i1 (i8*, i32)*, i16 (%struct.sk_buff*)* }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.in_device = type opaque
%struct.inet6_dev = type { %struct.net_device*, %struct.list_head, %struct.ifmcaddr6*, %struct.ifmcaddr6*, i8, i8, i8, i8, i64, i64, i64, i64, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.ifacaddr6*, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, %struct.neigh_parms*, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i64, %struct.callback_head, i32 }
%struct.ifmcaddr6 = type { %struct.in6_addr, %struct.inet6_dev*, %struct.ifmcaddr6*, %struct.ip6_sf_list*, %struct.ip6_sf_list*, i32, i8, [2 x i64], %struct.delayed_work, i32, i32, %struct.refcount_struct, i64, i64, %struct.callback_head }
%struct.ip6_sf_list = type { %struct.ip6_sf_list*, %struct.in6_addr, [2 x i64], i8, i8, i8, %struct.callback_head }
%struct.ifacaddr6 = type { %struct.in6_addr, %struct.fib6_info*, %struct.ifacaddr6*, %struct.hlist_node, i32, %struct.refcount_struct, i64, i64, %struct.callback_head }
%struct.fib6_info = type opaque
%struct.in6_addr = type { %union.anon.120 }
%union.anon.120 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.ctl_table_header* }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ctl_table_header = type { %union.anon.12, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.ipv6_devstat = type { %struct.proc_dir_entry*, %struct.ipstats_mib*, %struct.icmpv6_mib_device*, %struct.icmpv6msg_mib_device* }
%struct.proc_dir_entry = type opaque
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.icmpv6_mib_device = type { [6 x %struct.atomic64_t] }
%struct.icmpv6msg_mib_device = type { [512 x %struct.atomic64_t] }
%struct.wireless_dev = type opaque
%struct.wpan_dev = type opaque
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, %struct.kobject, %struct.net_device*, [56 x i8] }
%struct.netdev_queue = type { %struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.kobject, i64, i64, %struct.net_device*, [16 x i8], %struct.spinlock, i32, i64, i64, [40 x i8] }
%struct.Qdisc = type { i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, i32, i32, %struct.Qdisc_ops*, %struct.qdisc_size_table*, %struct.hlist_node, i32, i32, %struct.netdev_queue*, %struct.net_rate_estimator*, %struct.gnet_stats_basic_cpu*, %struct.gnet_stats_queue*, i32, %struct.refcount_struct, [24 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_packed, %struct.seqcount, %struct.gnet_stats_queue, i64, %struct.Qdisc*, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.callback_head, [40 x i8], [0 x i64] }
%struct.Qdisc_ops = type { %struct.Qdisc_ops*, %struct.Qdisc_class_ops*, [16 x i8], i32, i32, i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, %struct.sk_buff*)*, i32 (%struct.Qdisc*, %struct.gnet_dump*)*, void (%struct.Qdisc*, i32)*, void (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)*, %struct.module* }
%struct.Qdisc_class_ops = type { i32, %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)*, %struct.Qdisc* (%struct.Qdisc*, i64)*, void (%struct.Qdisc*, i64)*, i64 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, i32, i32, %struct.nlattr**, i64*, %struct.netlink_ext_ack*)*, i32 (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*, %struct.qdisc_walker*)*, %struct.tcf_block* (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, i64 (%struct.Qdisc*, i64, i32)*, void (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.qdisc_walker = type opaque
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, %struct.net*, %struct.Qdisc*, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.121, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.flow_block = type { %struct.list_head }
%struct.anon.121 = type { %struct.tcf_chain*, %struct.list_head }
%struct.tcf_chain = type { %struct.mutex, %struct.tcf_proto*, %struct.list_head, %struct.tcf_block*, i32, i32, i32, i8, i8, %struct.tcf_proto_ops*, i8*, %struct.callback_head }
%struct.tcf_proto = type { %struct.tcf_proto*, i8*, i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i16, i32, i8*, %struct.tcf_proto_ops*, %struct.tcf_chain*, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.tcf_result = type { %union.anon.122 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i64, i32 }
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
%union.anon.125 = type { %struct.pcpu_lstats* }
%struct.pcpu_lstats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { %struct.local64_t }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
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
%struct.bpf_offload_dev = type opaque
%struct.btf = type opaque
%struct.bpf_func_info = type { i32, i32 }
%struct.bpf_func_info_aux = type { i16, i8 }
%struct.bpf_line_info = type { i32, i32, i32, i32 }
%struct.exception_table_entry = type { i32, i32 }
%union.anon.112 = type { %struct.work_struct }
%struct.sock_fprog_kern = type { i16, %struct.sock_filter* }
%struct.sock_filter = type { i16, i8, i8, i32 }
%union.anon.140 = type { %struct.socket_wq* }
%struct.socket_wq = type { %struct.wait_queue_head, %struct.fasync_struct*, i64, %struct.callback_head, [8 x i8] }
%struct.dst_entry = type { %struct.net_device*, %struct.dst_ops*, i64, i64, i8*, i32 (%struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i16, i16, i16, i16, %struct.atomic_t, i32, i64, %struct.lwtunnel_state*, %struct.callback_head, i16, i16, i32 }
%struct.dst_ops = type { i16, i32, i32 (%struct.dst_ops*)*, %struct.dst_entry* (%struct.dst_entry*, i32)*, i32 (%struct.dst_entry*)*, i32 (%struct.dst_entry*)*, i32* (%struct.dst_entry*, i64)*, void (%struct.dst_entry*)*, void (%struct.dst_entry*, %struct.net_device*, i32)*, %struct.dst_entry* (%struct.dst_entry*)*, void (%struct.sk_buff*)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i32, i1)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, %struct.neighbour* (%struct.dst_entry*, %struct.sk_buff*, i8*)*, void (%struct.dst_entry*, i8*)*, %struct.kmem_cache*, %struct.percpu_counter, [40 x i8] }
%struct.lwtunnel_state = type opaque
%union.anon.141 = type { %struct.sk_buff* }
%struct.sk_buff = type { %union.anon.27, %union.anon.126, %union.anon.127, [48 x i8], %union.anon.128, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, %union.anon.133, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.29 }
%union.anon.29 = type { %struct.net_device* }
%union.anon.126 = type { %struct.sock* }
%union.anon.127 = type { i64 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i64, void (%struct.sk_buff*)* }
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i16 }
%struct.sk_buff_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.proto = type { void (%struct.sock*, i64)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, i32)*, %struct.sock* (%struct.sock*, i32, i32*, i1)*, i32 (%struct.sock*, i32, i64)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, i32, i32, [2 x i64], i32)*, i32 (%struct.sock*, i32, i32, i8*, i32*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sk_buff*)*, i1 (i32, i32)*, void (%struct.sock*)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, i16)*, i32, i1 (%struct.sock*, i32)*, i1 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, %struct.atomic64_t*, %struct.percpu_counter*, i64*, i64*, i32*, i32*, i32, i32, i32, i8, %struct.kmem_cache*, i32, i32, i32, i32, %struct.percpu_counter*, %struct.request_sock_ops*, %struct.timewait_sock_ops*, %union.anon.134, %struct.module*, [32 x i8], %struct.list_head, i32 (%struct.sock*, i32)* }
%struct.msghdr = type { i8*, i32, %struct.iov_iter, %union.anon.25, i8, i64, i32, %struct.kiocb* }
%union.anon.25 = type { i8* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.request_sock_ops = type { i32, i32, %struct.kmem_cache*, i8*, i32 (%struct.sock*, %struct.request_sock*)*, void (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)*, void (%struct.sock*, %struct.sk_buff*)*, void (%struct.request_sock*)*, void (%struct.request_sock*)* }
%struct.request_sock = type { %struct.sock_common, %struct.request_sock*, i16, i8, i8, i32, %struct.timer_list, %struct.request_sock_ops*, %struct.sock*, %struct.saved_syn*, i32, i32 }
%struct.saved_syn = type { i32, i32, i32, [0 x i8] }
%struct.timewait_sock_ops = type { %struct.kmem_cache*, i8*, i32, i32 (%struct.sock*, %struct.sock*, i8*)*, void (%struct.sock*)* }
%union.anon.134 = type { %struct.inet_hashinfo* }
%struct.inet_hashinfo = type opaque
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.21, %struct.qspinlock }
%union.anon.21 = type { %struct.atomic_t }
%struct.socket = type { i32, i16, i64, %struct.file*, %struct.sock*, %struct.proto_ops*, [24 x i8], %struct.socket_wq }
%struct.proto_ops = type { i32, %struct.module*, i32 (%struct.socket*)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.socket*)*, i32 (%struct.socket*, %struct.socket*, i32, i1)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.file*, %struct.socket*, %struct.poll_table_struct*)*, i32 (%struct.socket*, i32, i64)*, i32 (%struct.socket*, i8*, i1, i1)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32, i32, [2 x i64], i32)*, i32 (%struct.socket*, i32, i32, i8*, i32*)*, void (%struct.seq_file*, %struct.socket*)*, i32 (%struct.socket*, %struct.msghdr*, i64)*, i32 (%struct.socket*, %struct.msghdr*, i64, i32)*, i32 (%struct.file*, %struct.socket*, %struct.vm_area_struct*)*, i64 (%struct.socket*, %struct.page*, i32, i64, i32)*, i64 (%struct.socket*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.sock*, i32)*, i32 (%struct.socket*)*, i32 (%struct.sock*, %struct.read_descriptor_t*, i32 (%struct.read_descriptor_t*, %struct.sk_buff*, i32, i64)*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, i32)* }
%struct.read_descriptor_t = type { i64, i64, %union.anon.142, i32 }
%union.anon.142 = type { i8* }
%struct.sock_cgroup_data = type {}
%struct.mem_cgroup = type opaque
%struct.sock_reuseport = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.79, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.79 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
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
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.85 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.86 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.84, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.84 = type { %struct.tty_buffer* }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.87, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.88, %union.anon.89, %union.anon.90, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.93, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.88 = type { %struct.hlist_node }
%union.anon.89 = type { %struct.rb_node }
%union.anon.90 = type { %struct.anon.92 }
%struct.anon.92 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.93 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.94, %union.anon.95, i32 }
%union.anon.94 = type { %struct.list_head }
%union.anon.95 = type { %struct.hlist_node }
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
%union.anon.87 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.96 }
%struct.anon.96 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.100 }
%struct.anon.100 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.108, i32, [12 x i8] }
%union.anon.108 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.110, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.110 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.111 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.80, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.81, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.80 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.81 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.82 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.82 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.164 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.165 = type { %struct.callback_head }
%union.anon.166 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.167 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.146, i32 }
%union.anon.146 = type { %struct.kuid_t }
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
%union.anon.147 = type { %struct.list_head }
%union.anon.148 = type { %struct.hlist_node }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.10 }
%union.anon.10 = type { %struct.anon.11, [48 x i8] }
%struct.anon.11 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
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
%struct.ipv4_devconf = type opaque
%struct.ip_ra_chain = type opaque
%struct.inet_peer_base = type opaque
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.143, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.143 = type { %struct.frag_v6_compare_key }
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
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.144 }
%union.anon.144 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.78 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.78 = type { %struct.callback_head }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.145 }
%union.anon.145 = type { i64 }
%struct.module = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.lock_class_key = type {}
%struct.uuidcmp = type { i8*, i32 }
%struct.nodemask_t = type { [1 x i64] }

@root_mountflags = dso_local local_unnamed_addr global i32 32769, align 4
@__setup_str_load_ramdisk = internal constant [14 x i8] c"load_ramdisk=\00", section ".init.rodata", align 1
@__setup_load_ramdisk = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__setup_str_load_ramdisk, i32 0, i32 0), i32 (i8*)* @load_ramdisk, i32 0 }, section ".init.setup", align 8
@__setup_str_readonly = internal constant [3 x i8] c"ro\00", section ".init.rodata", align 1
@__setup_readonly = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @__setup_str_readonly, i32 0, i32 0), i32 (i8*)* @readonly, i32 0 }, section ".init.setup", align 8
@__setup_str_readwrite = internal constant [3 x i8] c"rw\00", section ".init.rodata", align 1
@__setup_readwrite = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @__setup_str_readwrite, i32 0, i32 0), i32 (i8*)* @readwrite, i32 0 }, section ".init.setup", align 8
@.str = private unnamed_addr constant [9 x i8] c"/dev/nfs\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/cifs\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/dev/ram\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"PARTUUID=\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"PARTLABEL=\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@__setup_str_root_dev_setup = internal constant [6 x i8] c"root=\00", section ".init.rodata", align 1
@__setup_root_dev_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @__setup_str_root_dev_setup, i32 0, i32 0), i32 (i8*)* @root_dev_setup, i32 0 }, section ".init.setup", align 8
@__setup_str_rootwait_setup = internal constant [9 x i8] c"rootwait\00", section ".init.rodata", align 1
@__setup_rootwait_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__setup_str_rootwait_setup, i32 0, i32 0), i32 (i8*)* @rootwait_setup, i32 0 }, section ".init.setup", align 8
@__setup_str_root_data_setup = internal constant [11 x i8] c"rootflags=\00", section ".init.rodata", align 1
@__setup_root_data_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__setup_str_root_data_setup, i32 0, i32 0), i32 (i8*)* @root_data_setup, i32 0 }, section ".init.setup", align 8
@__setup_str_fs_names_setup = internal constant [12 x i8] c"rootfstype=\00", section ".init.rodata", align 1
@__setup_fs_names_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__setup_str_fs_names_setup, i32 0, i32 0), i32 (i8*)* @fs_names_setup, i32 0 }, section ".init.setup", align 8
@__setup_str_root_delay_setup = internal constant [11 x i8] c"rootdelay=\00", section ".init.rodata", align 1
@__setup_root_delay_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__setup_str_root_delay_setup, i32 0, i32 0), i32 (i8*)* @root_delay_setup, i32 0 }, section ".init.setup", align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"unknown-block(%u,%u)\00", align 1
@ROOT_DEV = dso_local local_unnamed_addr global i32 0, align 4
@root_fs_names = internal unnamed_addr global i8* null, section ".init.data", align 8
@root_mount_data = internal unnamed_addr global i8* null, section ".init.data", align 8
@.str.7 = private unnamed_addr constant [51 x i8] c"VFS: Cannot open root device \22%s\22 or %s: error %d\0A\00", align 1
@root_device_name = internal unnamed_addr global i8* null, section ".init.data", align 8
@.str.8 = private unnamed_addr constant [81 x i8] c"Please append a correct \22root=\22 boot option; here are the available partitions:\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"VFS: Unable to mount root fs on %s\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"List of all partitions:\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"No filesystem could mount root, tried: \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"/dev/root\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"\010Failed to create /dev/root: %d\0A\00", align 1
@root_delay = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.16 = private unnamed_addr constant [49 x i8] c"\016Waiting %d sec before mounting root device...\0A\00", align 1
@saved_root_name = internal global [64 x i8] zeroinitializer, section ".init.data", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"mtd\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ubi\00", align 1
@root_wait = internal unnamed_addr global i1 false, align 4
@.str.19 = private unnamed_addr constant [33 x i8] c"\016Waiting for root device %s...\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"rootfs\00", align 1
@rootfs_fs_type = dso_local local_unnamed_addr global %struct.file_system_type { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 (%struct.fs_context*)* @rootfs_init_fs_context, %struct.fs_parameter_spec* null, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* null, void (%struct.super_block*)* @kill_litter_super, %struct.module* null, %struct.file_system_type* null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8
@.str.23 = private unnamed_addr constant [48 x i8] c"\014ignoring the deprecated load_ramdisk= option\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"PARTNROFF=%d%c\00", align 1
@block_class = external dso_local global %struct.class, align 8
@.str.25 = private unnamed_addr constant [80 x i8] c"\013VFS: PARTUUID= is invalid.\0AExpected PARTUUID=<valid-uuid-id>[/PARTNROFF=%%d]\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"\013Disabling rootwait; root= is invalid.\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"%u:%u%c\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"%u:%u:%u:%c\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"/root\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"\016VFS: Mounted root (%s filesystem)%s on device %u:%u.\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c" readonly\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [8 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_fs_names_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_load_ramdisk to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_readonly to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_readwrite to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_root_data_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_root_delay_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_root_dev_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_rootwait_setup to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @load_ramdisk(i8* nocapture noundef readnone %str) #0 section ".init.text" {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i64 0, i64 0)) #15
  ret i32 1
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn
define internal i32 @readonly(i8* nocapture noundef readonly %str) #1 section ".init.text" {
entry:
  %0 = load i8, i8* %str, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @root_mountflags, align 4
  %or = or i32 %1, 1
  store i32 %or, i32* @root_mountflags, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn
define internal i32 @readwrite(i8* nocapture noundef readonly %str) #1 section ".init.text" {
entry:
  %0 = load i8, i8* %str, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @root_mountflags, align 4
  %and = and i32 %1, -2
  store i32 %and, i32* @root_mountflags, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @name_to_dev_t(i8* noundef %name) local_unnamed_addr #2 {
entry:
  %call = call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #16
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #16
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #16
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 noundef 9) #16
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %add.ptr = getelementptr i8, i8* %name, i64 9
  %call12 = call fastcc i32 @devt_from_partuuid(i8* noundef %add.ptr) #17
  br label %return

if.end13:                                         ; preds = %if.end8
  %call14 = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 noundef 10) #16
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end13
  %add.ptr17 = getelementptr i8, i8* %name, i64 10
  %call18 = call fastcc i32 @devt_from_partlabel(i8* noundef %add.ptr17) #17
  br label %return

if.end19:                                         ; preds = %if.end13
  %call20 = call i32 @strncmp(i8* noundef %name, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 noundef 5) #16
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end19
  %add.ptr23 = getelementptr i8, i8* %name, i64 5
  %call24 = call fastcc i32 @devt_from_devname(i8* noundef %add.ptr23) #17
  br label %return

if.end25:                                         ; preds = %if.end19
  %call26 = call fastcc i32 @devt_from_devnum(i8* noundef %name) #17
  br label %return

return:                                           ; preds = %if.end4, %if.end, %entry, %if.end25, %if.then22, %if.then16, %if.then11
  %retval.0 = phi i32 [ %call12, %if.then11 ], [ %call18, %if.then16 ], [ %call24, %if.then22 ], [ %call26, %if.end25 ], [ 255, %entry ], [ 254, %if.end ], [ 1048576, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @devt_from_partuuid(i8* noundef %uuid_str) unnamed_addr #2 {
entry:
  %cmp = alloca %struct.uuidcmp, align 8
  %offset = alloca i32, align 4
  %c = alloca i8, align 4
  %0 = bitcast %struct.uuidcmp* %cmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  %1 = getelementptr inbounds %struct.uuidcmp, %struct.uuidcmp* %cmp, i64 0, i32 1
  %2 = bitcast i32* %1 to i64*, !annotation !8
  store i64 0, i64* %2, align 8, !annotation !8
  %3 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18
  store i32 0, i32* %offset, align 4
  %uuid = getelementptr inbounds %struct.uuidcmp, %struct.uuidcmp* %cmp, i64 0, i32 0
  store i8* %uuid_str, i8** %uuid, align 8
  %call = call i8* @strchr(i8* noundef %uuid_str, i32 noundef 47) #16
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #18
  store i8 0, i8* %c, align 4
  %add.ptr = getelementptr i8, i8* %call, i64 1
  %call1 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %add.ptr, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32* noundef nonnull %offset, i8* noundef nonnull %c) #16
  %cmp2.not = icmp eq i32 %call1, 1
  br i1 %cmp2.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #18
  br label %do.end33

cleanup:                                          ; preds = %if.then
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %uuid_str to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %len = getelementptr inbounds %struct.uuidcmp, %struct.uuidcmp* %cmp, i64 0, i32 1
  store i32 %conv, i32* %len, align 8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #18
  %tobool9.not = icmp eq i32 %conv, 0
  br i1 %tobool9.not, label %do.end33, label %if.end11

if.else:                                          ; preds = %entry
  %call4 = call i64 @strlen(i8* noundef %uuid_str) #16
  %conv5 = trunc i64 %call4 to i32
  %len6 = getelementptr inbounds %struct.uuidcmp, %struct.uuidcmp* %cmp, i64 0, i32 1
  store i32 %conv5, i32* %len6, align 8
  %tobool9.not.old = icmp eq i32 %conv5, 0
  br i1 %tobool9.not.old, label %do.end33, label %if.end11

if.end11:                                         ; preds = %cleanup, %if.else
  %call12 = call %struct.device* @class_find_device(%struct.class* noundef nonnull @block_class, %struct.device* noundef null, i8* noundef nonnull %0, i32 (%struct.device*, i8*)* noundef nonnull @match_dev_by_uuid) #16
  %tobool13.not = icmp eq %struct.device* %call12, null
  br i1 %tobool13.not, label %cleanup44, label %if.end15

if.end15:                                         ; preds = %if.end11
  %4 = load i32, i32* %offset, align 4
  %tobool16.not = icmp eq i32 %4, 0
  br i1 %tobool16.not, label %if.else28, label %if.then17

if.then17:                                        ; preds = %if.end15
  %add.ptr18 = getelementptr %struct.device, %struct.device* %call12, i64 -1, i32 30
  %bd_disk = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr18, i64 35, i32 1
  %5 = bitcast %struct.list_head** %bd_disk to %struct.gendisk**
  %6 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %bd_partno = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr18, i64 35
  %7 = bitcast %struct.list_head* %bd_partno to i8*
  %8 = load i8, i8* %7, align 8
  %9 = trunc i32 %4 to i8
  %conv26 = add i8 %8, %9
  %call27 = call i32 @part_devt(%struct.gendisk* noundef %6, i8 noundef %conv26) #16
  br label %if.end30

if.else28:                                        ; preds = %if.end15
  %devt29 = getelementptr inbounds %struct.device, %struct.device* %call12, i64 0, i32 27
  %10 = load i32, i32* %devt29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then17
  %devt.0 = phi i32 [ %call27, %if.then17 ], [ %10, %if.else28 ]
  call void @put_device(%struct.device* noundef nonnull %call12) #16
  br label %cleanup44

do.end33:                                         ; preds = %cleanup.thread, %cleanup, %if.else
  %call35 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.25, i64 0, i64 0)) #15
  %.b = load i1, i1* @root_wait, align 4
  br i1 %.b, label %do.end40, label %if.end43

do.end40:                                         ; preds = %do.end33
  %call42 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0)) #15
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %do.end33
  store i1 false, i1* @root_wait, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %if.end11, %if.end43, %if.end30
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %devt.0, %if.end30 ], [ 0, %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @devt_from_partlabel(i8* noundef %label) unnamed_addr #2 {
entry:
  %call = call %struct.device* @class_find_device(%struct.class* noundef nonnull @block_class, %struct.device* noundef null, i8* noundef %label, i32 (%struct.device*, i8*)* noundef nonnull @match_dev_by_label) #16
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %devt1 = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 27
  %0 = load i32, i32* %devt1, align 8
  call void @put_device(%struct.device* noundef nonnull %call) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %devt.0 = phi i32 [ %0, %if.then ], [ 0, %entry ]
  ret i32 %devt.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @devt_from_devname(i8* noundef %name) unnamed_addr #2 {
entry:
  %s = alloca [32 x i8], align 1
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %s, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !8
  %call = call i64 @strlen(i8* noundef %name) #16
  %cmp = icmp ugt i64 %call, 31
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i8* @strcpy(i8* noundef nonnull %0, i8* noundef %name) #16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %p.0 = phi i8* [ %0, %if.end ], [ %incdec.ptr, %for.inc ]
  %1 = load i8, i8* %p.0, align 1
  switch i8 %1, label %for.inc [
    i8 0, label %for.end
    i8 47, label %if.then5
  ]

if.then5:                                         ; preds = %for.cond
  store i8 33, i8* %p.0, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.then5
  %incdec.ptr = getelementptr i8, i8* %p.0, i64 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call8 = call i32 @blk_lookup_devt(i8* noundef nonnull %0, i32 noundef 0) #16
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %while.cond, label %cleanup

while.cond:                                       ; preds = %for.end, %land.rhs
  %p.1 = phi i8* [ %arrayidx, %land.rhs ], [ %p.0, %for.end ]
  %cmp13 = icmp ugt i8* %p.1, %0
  br i1 %cmp13, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr i8, i8* %p.1, i64 -1
  %2 = load i8, i8* %arrayidx, align 1
  %conv15 = zext i8 %2 to i32
  %call16 = call fastcc i32 @isdigit(i32 noundef %conv15) #17
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs
  %cmp20 = icmp eq i8* %p.1, %0
  br i1 %cmp20, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %3 = load i8, i8* %p.1, align 1
  switch i8 %3, label %if.end28 [
    i8 0, label %cleanup
    i8 48, label %cleanup
  ]

if.end28:                                         ; preds = %lor.lhs.false
  %call29 = call i64 @simple_strtoul(i8* noundef %p.1, i8** noundef null, i32 noundef 10) #16
  %conv30 = trunc i64 %call29 to i32
  store i8 0, i8* %p.1, align 1
  %call32 = call i32 @blk_lookup_devt(i8* noundef nonnull %0, i32 noundef %conv30) #16
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %cleanup

if.end35:                                         ; preds = %if.end28
  %add.ptr = getelementptr inbounds [32 x i8], [32 x i8]* %s, i64 0, i64 2
  %cmp37 = icmp ult i8* %p.1, %add.ptr
  br i1 %cmp37, label %cleanup, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end35
  %arrayidx40 = getelementptr i8, i8* %p.1, i64 -2
  %4 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %4 to i32
  %call42 = call fastcc i32 @isdigit(i32 noundef %conv41) #17
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false39
  %arrayidx45 = getelementptr i8, i8* %p.1, i64 -1
  %5 = load i8, i8* %arrayidx45, align 1
  %cmp47.not = icmp eq i8 %5, 112
  br i1 %cmp47.not, label %if.end50, label %cleanup

if.end50:                                         ; preds = %lor.lhs.false44
  store i8 0, i8* %arrayidx45, align 1
  %call53 = call i32 @blk_lookup_devt(i8* noundef nonnull %0, i32 noundef %conv30) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %lor.lhs.false39, %lor.lhs.false44, %if.end28, %while.end, %lor.lhs.false, %lor.lhs.false, %for.end, %entry, %if.end50
  %retval.0 = phi i32 [ %call53, %if.end50 ], [ 0, %entry ], [ %call8, %for.end ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false ], [ 0, %while.end ], [ %call32, %if.end28 ], [ 0, %lor.lhs.false44 ], [ 0, %lor.lhs.false39 ], [ 0, %if.end35 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @devt_from_devnum(i8* noundef %name) unnamed_addr #2 {
entry:
  %maj = alloca i32, align 4
  %min = alloca i32, align 4
  %offset = alloca i32, align 4
  %p = alloca i8*, align 8
  %dummy = alloca i8, align 4
  %0 = bitcast i32* %maj to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  store i32 0, i32* %maj, align 4, !annotation !8
  %1 = bitcast i32* %min to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #18
  store i32 0, i32* %min, align 4, !annotation !8
  %2 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #18
  store i32 0, i32* %offset, align 4, !annotation !8
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #18
  store i8* null, i8** %p, align 8, !annotation !8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %dummy) #18
  store i8 0, i8* %dummy, align 4, !annotation !8
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %name, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i32* noundef nonnull %maj, i32* noundef nonnull %min, i8* noundef nonnull %dummy) #16
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 (i8*, i8*, ...) @sscanf(i8* noundef %name, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32* noundef nonnull %maj, i32* noundef nonnull %min, i32* noundef nonnull %offset, i8* noundef nonnull %dummy) #16
  %cmp2 = icmp eq i32 %call1, 3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* %maj, align 4
  %shl = shl i32 %4, 20
  %5 = load i32, i32* %min, align 4
  %or = or i32 %shl, %5
  %shr = lshr i32 %or, 20
  %cmp3.not = icmp eq i32 %4, %shr
  %6 = icmp ult i32 %5, 1048576
  %or.cond = select i1 %cmp3.not, i1 %6, i1 false
  br i1 %or.cond, label %if.end11, label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %call7 = call i64 @simple_strtoul(i8* noundef %name, i8** noundef nonnull %p, i32 noundef 16) #16
  %conv = trunc i64 %call7 to i32
  %and1.i = and i32 %conv, 255
  %shr2.i = lshr i32 %conv, 12
  %and3.i = and i32 %shr2.i, 1048320
  %or.i = or i32 %and3.i, %and1.i
  %7 = shl i32 %conv, 12
  %shl.i = and i32 %7, -1048576
  %or4.i = or i32 %or.i, %shl.i
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end11, label %cleanup

if.end11:                                         ; preds = %if.then, %if.else
  %devt.0 = phi i32 [ %or4.i, %if.else ], [ %or, %if.then ]
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %if.end11
  %retval.0 = phi i32 [ %devt.0, %if.end11 ], [ 0, %if.then ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %dummy) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @root_dev_setup(i8* noundef %line) #0 section ".init.text" {
entry:
  %call = call i64 @strlcpy(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_root_name, i64 0, i64 0), i8* noundef %line, i64 noundef 64) #16
  ret i32 1
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn
define internal i32 @rootwait_setup(i8* nocapture noundef readonly %str) #1 section ".init.text" {
entry:
  %0 = load i8, i8* %str, align 1
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i1 true, i1* @root_wait, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @root_data_setup(i8* noundef %str) #4 section ".init.text" {
entry:
  store i8* %str, i8** @root_mount_data, align 8
  ret i32 1
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @fs_names_setup(i8* noundef %str) #4 section ".init.text" {
entry:
  store i8* %str, i8** @root_fs_names, align 8
  ret i32 1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @root_delay_setup(i8* noundef %str) #0 section ".init.text" {
entry:
  %call = call i64 @simple_strtoul(i8* noundef %str, i8** noundef null, i32 noundef 0) #16
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* @root_delay, align 4
  ret i32 1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @mount_block_root(i8* noundef %name, i32 noundef %flags) local_unnamed_addr #0 section ".init.text" {
entry:
  %b = alloca [32 x i8], align 1
  %call = call fastcc %struct.page* @alloc_pages() #17
  %0 = ptrtoint %struct.page* %call to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %b, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !8
  %3 = load i32, i32* @ROOT_DEV, align 4
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %call2 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef nonnull %2, i64 noundef 32, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef %shr, i32 noundef %and) #16
  %4 = load i8*, i8** @root_fs_names, align 8
  %tobool.not = icmp eq i8* %4, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call fastcc i32 @split_fs_names(i8* noundef %1) #19
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call i32 @list_bdev_fs_names(i8* noundef %1, i64 noundef 4096) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %num_fs.0 = phi i32 [ %call3, %if.then ], [ %call4, %if.else ]
  %cmp80 = icmp sgt i32 %num_fs.0, 0
  %5 = or i32 %flags, 1
  br label %retry

retry:                                            ; preds = %for.end, %if.end
  %flags.addr.0 = phi i32 [ %flags, %if.end ], [ %5, %for.end ]
  br i1 %cmp80, label %for.body, label %for.end

for.body:                                         ; preds = %retry, %for.inc
  %p.082 = phi i8* [ %add.ptr, %for.inc ], [ %1, %retry ]
  %i.081 = phi i32 [ %inc, %for.inc ], [ 0, %retry ]
  %6 = load i8, i8* %p.082, align 1
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %for.inc, label %if.end7

if.end7:                                          ; preds = %for.body
  %7 = load i8*, i8** @root_mount_data, align 8
  %call8 = call fastcc i32 @do_mount_root(i8* noundef %name, i8* noundef %p.082, i32 noundef %flags.addr.0, i8* noundef %7) #19
  switch i32 %call8, label %do.end [
    i32 0, label %out
    i32 -13, label %for.inc
    i32 -22, label %for.inc
  ]

do.end:                                           ; preds = %if.end7
  %8 = load i8*, i8** @root_device_name, align 8
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i8* noundef %8, i8* noundef nonnull %2, i32 noundef %call8) #15
  %call16 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0)) #15
  call void @printk_all_partitions() #16
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %2) #20
  unreachable

for.inc:                                          ; preds = %if.end7, %if.end7, %for.body
  %inc = add nuw nsw i32 %i.081, 1
  %call18 = call i64 @strlen(i8* noundef %p.082) #16
  %add = add i64 %call18, 1
  %add.ptr = getelementptr i8, i8* %p.082, i64 %add
  %exitcond.not = icmp eq i32 %inc, %num_fs.0
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %retry
  %and19 = and i32 %flags.addr.0, 1
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %retry, label %do.end25

do.end25:                                         ; preds = %for.end
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0)) #15
  call void @printk_all_partitions() #16
  %call32 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0)) #15
  br i1 %cmp80, label %do.end38, label %do.end49

do.end38:                                         ; preds = %do.end25, %do.end38
  %p.185 = phi i8* [ %add.ptr45, %do.end38 ], [ %1, %do.end25 ]
  %i.184 = phi i32 [ %inc42, %do.end38 ], [ 0, %do.end25 ]
  %call40 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* noundef %p.185) #15
  %inc42 = add nuw nsw i32 %i.184, 1
  %call43 = call i64 @strlen(i8* noundef %p.185) #16
  %add44 = add i64 %call43, 1
  %add.ptr45 = getelementptr i8, i8* %p.185, i64 %add44
  %exitcond87.not = icmp eq i32 %inc42, %num_fs.0
  br i1 %exitcond87.not, label %do.end49, label %do.end38

do.end49:                                         ; preds = %do.end38, %do.end25
  %call51 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #15
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %2) #20
  unreachable

out:                                              ; preds = %if.end7
  call fastcc void @put_page(%struct.page* noundef %call) #17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages() unnamed_addr #2 {
entry:
  call fastcc void @numa_node_id() #17
  %call1 = call fastcc %struct.page* @alloc_pages_node() #17
  ret %struct.page* %call1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @split_fs_names(i8* noundef %page) unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i8*, i8** @root_fs_names, align 8
  %call = call i64 @strlcpy(i8* noundef %page, i8* noundef %0, i64 noundef 4096) #16
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then, %entry
  %count.0.ph = phi i32 [ %inc, %if.then ], [ 1, %entry ]
  %p.0.ph = phi i8* [ %incdec.ptr, %if.then ], [ %page, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.cond
  %p.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %p.0.ph, %while.cond.outer ]
  %incdec.ptr = getelementptr i8, i8* %p.0, i64 1
  %1 = load i8, i8* %p.0, align 1
  switch i8 %1, label %while.cond [
    i8 0, label %while.end
    i8 44, label %if.then
  ]

if.then:                                          ; preds = %while.cond
  store i8 0, i8* %p.0, align 1
  %inc = add i32 %count.0.ph, 1
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  ret i32 %count.0.ph
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @list_bdev_fs_names(i8* noundef, i64 noundef) local_unnamed_addr #7 section ".init.text"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @do_mount_root(i8* noundef %name, i8* noundef %fs, i32 noundef %flags, i8* noundef %data) unnamed_addr #0 section ".init.text" {
entry:
  %tobool.not = icmp eq i8* %data, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.page* @alloc_pages() #17
  %tobool1.not = icmp eq %struct.page* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %0 = ptrtoint %struct.page* %call to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %call4 = call i8* @strncpy(i8* noundef %1, i8* noundef nonnull %data, i64 noundef 4096) #16
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %p.0 = phi %struct.page* [ %call, %if.end ], [ null, %entry ]
  %data_page.0 = phi i8* [ %1, %if.end ], [ null, %entry ]
  %conv = sext i32 %flags to i64
  %call6 = call i32 @init_mount(i8* noundef %name, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i8* noundef %fs, i64 noundef %conv, i8* noundef %data_page.0) #15
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %out

if.end9:                                          ; preds = %if.end5
  %call10 = call i32 @init_chdir(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #15
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #21, !srcloc !9
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %fs12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 83
  %4 = load %struct.fs_struct*, %struct.fs_struct** %fs12, align 8
  %dentry = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %4, i64 0, i32 6, i32 1
  %5 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %d_sb = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i64 0, i32 9
  %6 = load %struct.super_block*, %struct.super_block** %d_sb, align 8
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 1
  %7 = load i32, i32* %s_dev, align 16
  store i32 %7, i32* @ROOT_DEV, align 4
  %s_type = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i64 0, i32 5
  %8 = load %struct.file_system_type*, %struct.file_system_type** %s_type, align 8
  %name13 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %8, i64 0, i32 0
  %9 = load i8*, i8** %name13, align 8
  %call14 = call fastcc i1 @sb_rdonly(%struct.super_block* noundef %6) #17
  %cond = select i1 %call14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0)
  %shr = lshr i32 %7, 20
  %and = and i32 %7, 1048575
  %call16 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.30, i64 0, i64 0), i8* noundef %9, i8* noundef %cond, i32 noundef %shr, i32 noundef %and) #15
  br label %out

out:                                              ; preds = %if.end5, %if.end9
  %tobool17.not = icmp eq %struct.page* %p.0, null
  br i1 %tobool17.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %out
  call fastcc void @put_page(%struct.page* noundef nonnull %p.0) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then18, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %call6, %if.then18 ], [ %call6, %out ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @printk_all_partitions() local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #2 {
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

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @mount_root() local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i32, i32* @ROOT_DEV, align 4
  %cmp = icmp eq i32 %0, 0
  %1 = load i8*, i8** @root_device_name, align 8
  %tobool = icmp ne i8* %1, null
  %or.cond = select i1 %cmp, i1 %tobool, i1 false
  %2 = load i8*, i8** @root_fs_names, align 8
  %tobool2 = icmp ne i8* %2, null
  %or.cond11 = select i1 %or.cond, i1 %tobool2, i1 false
  br i1 %or.cond11, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @mount_nodev_root() #19
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %return, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  %.pre = load i32, i32* @ROOT_DEV, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry
  %3 = phi i32 [ %.pre, %if.then.if.end5_crit_edge ], [ %0, %entry ]
  %call6 = call fastcc i32 @create_dev(i32 noundef %3) #19
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 noundef %call6) #15
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end5
  %4 = load i32, i32* @root_mountflags, align 4
  call void @mount_block_root(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 noundef %4) #19
  br label %return

return:                                           ; preds = %if.then, %if.end10
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @mount_nodev_root() unnamed_addr #0 section ".init.text" {
entry:
  %call = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #16
  %0 = inttoptr i64 %call to i8*
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @split_fs_names(i8* noundef nonnull %0) #19
  %cmp31 = icmp sgt i32 %call1, 0
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.inc
  %i.034 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  %err.033 = phi i32 [ %err.1, %for.inc ], [ -22, %if.end ]
  %fstype.032 = phi i8* [ %add.ptr, %for.inc ], [ %0, %if.end ]
  %1 = load i8, i8* %fstype.032, align 1
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %for.inc, label %if.end4

if.end4:                                          ; preds = %for.body
  %call5 = call fastcc i1 @fs_is_nodev(i8* noundef %fstype.032) #19
  br i1 %call5, label %if.end7, label %for.inc

if.end7:                                          ; preds = %if.end4
  %2 = load i8*, i8** @root_device_name, align 8
  %3 = load i32, i32* @root_mountflags, align 4
  %4 = load i8*, i8** @root_mount_data, align 8
  %call8 = call fastcc i32 @do_mount_root(i8* noundef %2, i8* noundef %fstype.032, i32 noundef %3, i8* noundef %4) #19
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end7, %if.end4, %for.body
  %err.1 = phi i32 [ %call8, %if.end7 ], [ %err.033, %if.end4 ], [ %err.033, %for.body ]
  %inc = add nuw nsw i32 %i.034, 1
  %call12 = call i64 @strlen(i8* noundef %fstype.032) #16
  %add = add i64 %call12, 1
  %add.ptr = getelementptr i8, i8* %fstype.032, i64 %add
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end7, %if.end
  %err.2 = phi i32 [ -22, %if.end ], [ 0, %if.end7 ], [ %err.1, %for.inc ]
  call void @free_pages(i64 noundef %call, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %err.2, %for.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @create_dev(i32 noundef %dev) unnamed_addr #0 section ".init.text" {
entry:
  %call = call i32 @init_unlink(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #15
  %and1.i = and i32 %dev, 255
  %0 = lshr i32 %dev, 12
  %shl.i = and i32 %0, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %dev, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %call2 = call i32 @init_mknod(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i16 noundef 24960, i32 noundef %or4.i) #15
  ret i32 %call2
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @prepare_namespace() local_unnamed_addr #0 section ".init.text" {
entry:
  %0 = load i32, i32* @root_delay, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i32 noundef %0) #15
  %1 = load i32, i32* @root_delay, align 4
  call fastcc void @ssleep(i32 noundef %1) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  call void @wait_for_device_probe() #16
  %2 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @saved_root_name, i64 0, i64 0), align 1
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end13, label %if.then2

if.then2:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @saved_root_name, i64 0, i64 0), i8** @root_device_name, align 8
  %call3 = call i32 @strncmp(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_root_name, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i64 noundef 3) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %3 = load i8*, i8** @root_device_name, align 8
  %call5 = call i32 @strncmp(i8* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 noundef 3) #16
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.then2
  %4 = load i8*, i8** @root_device_name, align 8
  %5 = load i32, i32* @root_mountflags, align 4
  call void @mount_block_root(i8* noundef %4, i32 noundef %5) #19
  br label %out

if.end8:                                          ; preds = %lor.lhs.false
  %6 = load i8*, i8** @root_device_name, align 8
  %call9 = call i32 @name_to_dev_t(i8* noundef %6) #17
  store i32 %call9, i32* @ROOT_DEV, align 4
  %7 = load i8*, i8** @root_device_name, align 8
  %call10 = call i32 @strncmp(i8* noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 noundef 5) #16
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %8 = load i8*, i8** @root_device_name, align 8
  %add.ptr = getelementptr i8, i8* %8, i64 5
  store i8* %add.ptr, i8** @root_device_name, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end8, %if.then11, %if.end
  %9 = load i32, i32* @ROOT_DEV, align 4
  %cmp17 = icmp eq i32 %9, 0
  %.b = load i1, i1* @root_wait, align 4
  %or.cond = select i1 %cmp17, i1 %.b, i1 false
  br i1 %or.cond, label %do.end21, label %if.end28

do.end21:                                         ; preds = %if.end13
  %call23 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_root_name, i64 0, i64 0)) #15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end21
  %call24 = call i32 @driver_probe_done() #16
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %lor.rhs, label %while.body

lor.rhs:                                          ; preds = %while.cond
  %call26 = call i32 @name_to_dev_t(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @saved_root_name, i64 0, i64 0)) #17
  store i32 %call26, i32* @ROOT_DEV, align 4
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond, %lor.rhs
  call void @msleep(i32 noundef 5) #16
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  call void @async_synchronize_full() #16
  br label %if.end28

if.end28:                                         ; preds = %while.end, %if.end13
  call void @mount_root() #19
  br label %out

out:                                              ; preds = %if.end28, %if.then7
  %call30 = call i32 @init_mount(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* noundef null, i64 noundef 8192, i8* noundef null) #15
  %call31 = call i32 @init_chroot(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ssleep(i32 noundef %seconds) unnamed_addr #2 {
entry:
  %mul = mul i32 %seconds, 1000
  call void @msleep(i32 noundef %mul) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_probe_done() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mount(i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #7 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chroot(i8* noundef) local_unnamed_addr #7 section ".init.text"

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @rootfs_init_fs_context(%struct.fs_context* noundef %fc) #2 {
entry:
  %call = call i32 @ramfs_init_fs_context(%struct.fs_context* noundef %fc) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(%struct.super_block* noundef) #3

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn
define dso_local void @init_rootfs() local_unnamed_addr #9 section ".init.text" {
entry:
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sscanf(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @class_find_device(%struct.class* noundef, %struct.device* noundef, i8* noundef, i32 (%struct.device*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @match_dev_by_uuid(%struct.device* nocapture noundef readonly %dev, i8* nocapture noundef readonly %data) #2 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_meta_info = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 39
  %0 = bitcast %struct.list_head* %bd_meta_info to %struct.partition_meta_info**
  %1 = load %struct.partition_meta_info*, %struct.partition_meta_info** %0, align 8
  %tobool.not = icmp eq %struct.partition_meta_info* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %uuid = bitcast i8* %data to i8**
  %2 = load i8*, i8** %uuid, align 8
  %arraydecay = getelementptr inbounds %struct.partition_meta_info, %struct.partition_meta_info* %1, i64 0, i32 0, i64 0
  %len = getelementptr inbounds i8, i8* %data, i64 8
  %3 = bitcast i8* %len to i32*
  %4 = load i32, i32* %3, align 8
  %conv = sext i32 %4 to i64
  %call = call i32 @strncasecmp(i8* noundef %2, i8* noundef %arraydecay, i64 noundef %conv) #16
  %tobool3.not = icmp eq i32 %call, 0
  %spec.select = zext i1 %tobool3.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @part_devt(%struct.gendisk* noundef, i8 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @match_dev_by_label(%struct.device* nocapture noundef readonly %dev, i8* noundef %data) #2 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 30
  %bd_meta_info = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 39
  %0 = bitcast %struct.list_head* %bd_meta_info to %struct.partition_meta_info**
  %1 = load %struct.partition_meta_info*, %struct.partition_meta_info** %0, align 8
  %tobool.not = icmp eq %struct.partition_meta_info* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.partition_meta_info, %struct.partition_meta_info* %1, i64 0, i32 1, i64 0
  %call = call i32 @strcmp(i8* noundef %data, i8* noundef %arraydecay) #16
  %tobool2.not = icmp eq i32 %call, 0
  %spec.select = zext i1 %tobool2.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_lookup_devt(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isdigit(i32 noundef %c) unnamed_addr #10 {
entry:
  %0 = add i32 %c, -48
  %1 = icmp ult i32 %0, 10
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node() unnamed_addr #2 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef 0) #17
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #11 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid) unnamed_addr #2 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef %nid, %struct.nodemask_t* noundef null) #16
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #11 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #22, !srcloc !10
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_chdir(i8* noundef) local_unnamed_addr #7 section ".init.text"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @sb_rdonly(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #13 {
entry:
  %s_flags = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 10
  %0 = load i64, i64* %s_flags, align 16
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #14 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

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
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #2 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #16
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #2 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !12
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i1 @fs_is_nodev(i8* noundef %fstype) unnamed_addr #0 section ".init.text" {
entry:
  %call = call %struct.file_system_type* @get_fs_type(i8* noundef %fstype) #16
  %tobool.not = icmp eq %struct.file_system_type* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fs_flags = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %call, i64 0, i32 1
  %0 = load i32, i32* %fs_flags, align 8
  %and = and i32 %0, 1
  %tobool1.not = icmp eq i32 %and, 0
  call void @put_filesystem(%struct.file_system_type* noundef nonnull %call) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0.off0 = phi i1 [ %tobool1.not, %if.then ], [ false, %entry ]
  ret i1 %ret.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file_system_type* @get_fs_type(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_unlink(i8* noundef) local_unnamed_addr #7 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mknod(i8* noundef, i16 noundef, i32 noundef) local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ramfs_init_fs_context(%struct.fs_context* noundef) local_unnamed_addr #3

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { cold nobuiltin "no-builtins" }
attributes #20 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind readonly }

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
!8 = !{!"auto-init"}
!9 = !{i64 1453528}
!10 = !{i64 2149015833, i64 2149015880, i64 2149015886, i64 2149015923, i64 2149015941, i64 2149016868, i64 2149016916, i64 2149016964, i64 2149017027, i64 2149017076, i64 2149016019, i64 2149016044, i64 2149016070, i64 2149016076, i64 2149016113, i64 2149016119, i64 2149016169, i64 2149016215, i64 2149016248}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2147803073, i64 2147803721, i64 2147803751, i64 2147803783, i64 2147803817, i64 2147803853, i64 2147803878}
