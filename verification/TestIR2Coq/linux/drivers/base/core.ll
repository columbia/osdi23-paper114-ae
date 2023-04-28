; ModuleID = 'drivers/base/core.c'
source_filename = "drivers/base/core.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall2.init\22, \22a\22\09\09"
module asm "__initcall__kmod_core__471_618_devlink_class_init2:\09\09\09"
module asm ".long\09devlink_class_init - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall7.init\22, \22a\22\09\09"
module asm "__initcall__kmod_core__494_1154_sync_state_resume_initcall7:\09\09\09"
module asm ".long\09sync_state_resume_initcall - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.lockdep_map = type {}
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.130, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.131, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.132, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.133, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.20, i8* }
%union.anon.20 = type { i64 }
%struct.lockref = type { %union.anon.22 }
%union.anon.22 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34, [48 x i8] }
%struct.anon.34 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.73 }
%union.anon.73 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.74, %union.anon.75 }
%union.anon.74 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.75 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.67, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.25 }
%union.anon.25 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.net_device = type { [16 x i8], %struct.netdev_name_node*, %struct.dev_ifalias*, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.84, i32, i32, %struct.net_device_ops*, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.ethtool_ops*, %struct.header_ops*, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i32, i32, i8, %struct.in_device*, %struct.inet6_dev*, %struct.wireless_dev*, %struct.wpan_dev*, i8*, %struct.netdev_rx_queue*, i32, i32, %struct.bpf_prog*, i64, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], %struct.hlist_node, [40 x i8], %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i32, %struct.spinlock, %struct.xdp_dev_bulk_queue*, %struct.timer_list, i32, i32, %struct.list_head, %struct.refcount_struct, %struct.list_head, i8, i8, i16, i8, void (%struct.net_device*)*, %struct.possible_net_t, i8*, i32, %union.anon.129, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], %struct.phy_device*, %struct.sfp_bus*, %struct.lock_class_key*, %struct.lock_class_key*, i8, i8, %struct.list_head, %struct.udp_tunnel_nic_info*, %struct.udp_tunnel_nic*, [3 x %struct.bpf_xdp_entity] }
%struct.netdev_name_node = type { %struct.hlist_node, %struct.list_head, %struct.net_device*, i8* }
%struct.dev_ifalias = type { %struct.callback_head, [0 x i8] }
%struct.anon.84 = type { %struct.list_head, %struct.list_head }
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.sk_buff*, %struct.net_device*, i64)*, i16 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.if_settings*)*, i32 (%struct.net_device*, %struct.ifreq*, i8*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.rtnl_link_stats64*)*, i1 (%struct.net_device*, i32)*, i32 (i32, %struct.net_device*, i8*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8, i16)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_stats*)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_guid*, %struct.ifla_vf_guid*)*, i32 (%struct.net_device*, i32, i64, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.net_device*)*, %struct.net_device* (%struct.net_device*, %struct.sk_buff*, i1)*, %struct.net_device* (%struct.net_device*, %struct.sock*)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, %struct.neighbour*)*, void (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16, i16, %struct.netlink_ext_ack*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device*, i8*, i16, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, i8*, i64)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.sk_buff*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, %struct.net_device* (%struct.net_device*, %struct.xdp_buff*)*, i32 (%struct.net_device*, i32, i32)*, %struct.devlink_port* (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ip_tunnel_parm*, i32)*, %struct.net_device* (%struct.net_device*)*, i32 (%struct.net_device_path_ctx*, %struct.net_device_path*)* }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.47, i32, i32, i32, i16, i16, %union.anon.49, %union.anon.50, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.42 }
%union.anon.42 = type { %struct.net_device* }
%union.anon.43 = type { %struct.sock* }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i64, void (%struct.sk_buff*)* }
%union.anon.47 = type { i32 }
%union.anon.49 = type { i32 }
%union.anon.50 = type { i16 }
%struct.ifreq = type { %union.anon.85, %union.anon.86 }
%union.anon.85 = type { [16 x i8] }
%union.anon.86 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.if_settings = type { i32, i32, %union.anon.87 }
%union.anon.87 = type { %struct.raw_hdlc_proto* }
%struct.raw_hdlc_proto = type { i16, i16 }
%struct.neigh_parms = type opaque
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.nlattr = type { i16, i16 }
%struct.ifla_vf_guid = type { i32, i64 }
%struct.netlink_ext_ack = type { i8*, %struct.nlattr*, %struct.nla_policy*, [20 x i8], i8 }
%struct.nla_policy = type opaque
%struct.neighbour = type opaque
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.netlink_callback*)*, i8*, %struct.module*, %struct.netlink_ext_ack*, i16, i16, i32, i32, i32, i8, %union.anon.88 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%union.anon.88 = type { [6 x i64] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.netdev_bpf = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, %struct.bpf_prog*, %struct.netlink_ext_ack* }
%struct.xdp_frame = type { i8*, i16, i16, i32, %struct.xdp_mem_info, %struct.net_device* }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i8*, %struct.xdp_rxq_info*, %struct.xdp_txq_info*, i32 }
%struct.xdp_rxq_info = type { %struct.net_device*, i32, i32, %struct.xdp_mem_info, i32, [36 x i8] }
%struct.xdp_txq_info = type { %struct.net_device* }
%struct.devlink_port = type opaque
%struct.ip_tunnel_parm = type opaque
%struct.net_device_path_ctx = type { %struct.net_device*, i8*, i32, [2 x %struct.anon.124] }
%struct.anon.124 = type { i16, i16 }
%struct.net_device_path = type { i32, %struct.net_device*, %union.anon.125 }
%union.anon.125 = type { %struct.anon.127, [4 x i8] }
%struct.anon.127 = type { i32, i16, i16 }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_ops = type opaque
%struct.header_ops = type { i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)*, i32 (%struct.sk_buff*, i8*)*, i32 (%struct.neighbour*, %struct.hh_cache*, i16)*, void (%struct.hh_cache*, %struct.net_device*, i8*)*, i1 (i8*, i32)*, i16 (%struct.sk_buff*)* }
%struct.hh_cache = type { i32, %struct.seqlock_t, [4 x i64] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.82, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.82 = type { %struct.kernfs_elem_dir }
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
%struct.inet6_dev = type opaque
%struct.wireless_dev = type opaque
%struct.wpan_dev = type opaque
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, %struct.kobject, %struct.net_device*, [56 x i8] }
%struct.bpf_prog = type opaque
%struct.netdev_queue = type { %struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.kobject, i64, i64, %struct.net_device*, [16 x i8], %struct.spinlock, i32, i64, i64, [40 x i8] }
%struct.Qdisc = type opaque
%struct.xdp_dev_bulk_queue = type opaque
%struct.possible_net_t = type {}
%union.anon.129 = type { %struct.pcpu_lstats* }
%struct.pcpu_lstats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { %struct.local64_t }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.u64_stats_sync = type {}
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, %struct.device_driver*, i8*, %struct.device*, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, %struct.module_kobject*, %struct.device_driver* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, i8, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32 }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.83, %struct.device* }
%union.anon.83 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, %struct.xarray, %struct.mutex, [0 x %struct.irq_data*] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, %struct.cpumask*, %struct.irq_affinity_notify*, i64, %struct.atomic_t, %struct.wait_queue_head, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8*, [8 x i8] }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry*, [32 x i8] }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, void (%struct.irq_affinity_notify*, %struct.cpumask*)*, void (%struct.kref*)* }
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.dma_coherent_mem = type opaque
%struct.io_tlb_mem = type { i64, i64, i64, i64, i32, %struct.spinlock, %struct.dentry*, i8, i8, i8, %struct.io_tlb_slot* }
%struct.io_tlb_slot = type { i64, i64, i32 }
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.rtnl_link_ops = type opaque
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
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ipv4_devconf*, %struct.ipv4_devconf*, %struct.ip_ra_chain*, %struct.mutex, i8, i8, %struct.hlist_head*, %struct.sock*, %struct.sock**, %struct.sock*, %struct.inet_peer_base*, %struct.sock**, %struct.fqdir*, i8, i8, i8, i8, i8, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i64, i64, i32, i32, %struct.tcp_congestion_ops*, %struct.tcp_fastopen_context*, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i64*, i32, %struct.fib_notifier_ops*, i32, %struct.fib_notifier_ops*, i32, %struct.atomic_t, %struct.siphash_key_t, [48 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], %struct.inet_hashinfo*, i32 }
%struct.inet_hashinfo = type opaque
%struct.ipv4_devconf = type opaque
%struct.ip_ra_chain = type opaque
%struct.inet_peer_base = type opaque
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.38, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.38 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.39 }
%union.anon.39 = type { [4 x i32] }
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
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.51 }
%union.anon.51 = type { [2 x %struct.bpf_cgroup_storage*] }
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
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.52, %union.anon.53, i32 }
%struct.request_queue = type opaque
%union.anon.52 = type { %struct.list_head }
%union.anon.53 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.54 }
%struct.anon.54 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.58 }
%struct.anon.58 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.66, i32, [12 x i8] }
%union.anon.66 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.67 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.page = type { i64, %union.anon.2, %union.anon.81, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.81 = type { %struct.atomic_t }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.68, %struct.qspinlock }
%union.anon.68 = type { %struct.atomic_t }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.70, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.70 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.17, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.18, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.17 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.18 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.77 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.77 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.37 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.24, i32 }
%union.anon.24 = type { %struct.kuid_t }
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
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
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
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.130 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.131 = type { %struct.callback_head }
%union.anon.132 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.133 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.subsys_private = type { %struct.kset, %struct.kset*, %struct.list_head, %struct.mutex, %struct.kset*, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, %struct.bus_type*, %struct.kset, %struct.class* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.class_interface = type { %struct.list_head, %struct.class*, i32 (%struct.device*, %struct.class_interface*)*, void (%struct.device*, %struct.class_interface*)* }
%struct.fwnode_link = type { %struct.fwnode_handle*, %struct.list_head, %struct.fwnode_handle*, %struct.list_head }
%struct.klist_iter = type { %struct.klist*, %struct.klist_node* }
%struct.device_link = type { %struct.device*, %struct.list_head, %struct.device*, %struct.list_head, %struct.device, i32, i32, %struct.refcount_struct, %struct.kref, %struct.work_struct, i8 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.va_format = type { i8*, %"struct.std::__va_list"* }
%struct.root_device = type { %struct.device, %struct.module* }
%struct.dev_printk_info = type { [16 x i8], [48 x i8] }

@fwnode_link_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @fwnode_link_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @fwnode_link_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@device_links_srcu = internal global %struct.srcu_struct { [17 x %struct.srcu_node] zeroinitializer, [3 x %struct.srcu_node*] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock zeroinitializer, %struct.mutex zeroinitializer, i32 0, i64 0, i64 -1, i64 0, i64 0, %struct.srcu_data* @device_links_srcu_srcu_data, i64 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.srcu_struct* @device_links_srcu to i8*), i64 1864) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.srcu_struct* @device_links_srcu to i8*), i64 1864) to %struct.list_head*) }, void (%struct.work_struct*)* null }, %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @delayed_work_timer_fn, i32 2097152 }, %struct.workqueue_struct* null, i32 0 }, %struct.lockdep_map zeroinitializer }, align 8
@__UNIQUE_ID___addressable_devlink_class_init472 = internal global i8* bitcast (i32 ()* @devlink_class_init to i8*), section ".discard.addressable", align 8
@devlink_class = internal global %struct.class { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), %struct.module* null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @devlink_groups, i32 0, i32 0), %struct.kobject* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*)* null, void (%struct.class*)* null, void (%struct.device*)* @devlink_dev_release, i32 (%struct.device*)* null, %struct.kobj_ns_type_operations* null, i8* (%struct.device*)* null, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)* null, %struct.dev_pm_ops* null, %struct.subsys_private* null }, align 8
@.str = private unnamed_addr constant [13 x i8] c"%s:%s--%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"wait for supplier %pfwP\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"supplier %s not ready\0A\00", align 1
@defer_sync_state_count = internal unnamed_addr global i32 1, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Unmatched sync_state pause/resume!\00", align 1
@deferred_sync = internal global %struct.list_head { %struct.list_head* @deferred_sync, %struct.list_head* @deferred_sync }, align 8
@__UNIQUE_ID___addressable_sync_state_resume_initcall495 = internal global i8* bitcast (i32 ()* @sync_state_resume_initcall to i8*), section ".discard.addressable", align 8
@dev_attr_waiting_for_supplier = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @waiting_for_supplier_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@__setup_str_fw_devlink_setup = internal constant [11 x i8] c"fw_devlink\00", section ".init.rodata", align 1
@__setup_fw_devlink_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__setup_str_fw_devlink_setup, i32 0, i32 0), i32 (i8*)* @fw_devlink_setup, i32 1 }, section ".init.setup", align 8
@__setup_str_fw_devlink_strict_setup = internal constant [18 x i8] c"fw_devlink.strict\00", section ".init.rodata", align 1
@__setup_fw_devlink_strict_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__setup_str_fw_devlink_strict_setup, i32 0, i32 0), i32 (i8*)* @fw_devlink_strict_setup, i32 1 }, section ".init.setup", align 8
@fw_devlink_flags = internal unnamed_addr global i32 288, align 4
@fw_devlink_strict = internal global i8 0, align 4
@fw_devlink_drv_reg_done = internal unnamed_addr global i1 false, align 1
@platform_notify = dso_local local_unnamed_addr global i32 (%struct.device*)* null, align 8
@platform_notify_remove = dso_local local_unnamed_addr global i32 (%struct.device*)* null, align 8
@device_hotplug_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @device_hotplug_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @device_hotplug_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"devm_attr_group_remove\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"devm_attr_groups_remove\00", align 1
@devices_kset = dso_local local_unnamed_addr global %struct.kset* null, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"Attribute %s: write permission without 'store'\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Attribute %s: read permission without 'show'\0A\00", align 1
@device_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @device_release, %struct.sysfs_ops* @dev_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* @device_namespace, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* @device_get_ownership }, align 8
@device_initialize.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"&dev->mutex\00", align 1
@dma_default_coherent = external dso_local local_unnamed_addr global i8, align 1
@io_tlb_default_mem = external dso_local global %struct.io_tlb_mem, align 8
@virtual_device_parent.virtual_dir = internal unnamed_addr global %struct.kobject* null, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@dev_attr_uevent = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @uevent_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @uevent_store }, align 8
@dev_attr_dev = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @dev_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@device_uevent_ops = internal constant %struct.kset_uevent_ops { i32 (%struct.kset*, %struct.kobject*)* @dev_uevent_filter, i8* (%struct.kset*, %struct.kobject*)* @dev_uevent_name, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* @dev_uevent }, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@dev_kobj = internal unnamed_addr global %struct.kobject* null, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@sysfs_dev_block_kobj = dso_local local_unnamed_addr global %struct.kobject* null, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@sysfs_dev_char_kobj = dso_local local_unnamed_addr global %struct.kobject* null, align 8
@.str.18 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@initcall_debug = external dso_local local_unnamed_addr global i8, align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"shutdown_pre\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"shutdown\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\010\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\011\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\012\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\015\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"error %pe: %pV\00", align 1
@device_links_srcu_srcu_data = internal global %struct.srcu_data zeroinitializer, section ".data..percpu", align 64
@devlink_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@devlink_class_intf = internal global %struct.class_interface { %struct.list_head zeroinitializer, %struct.class* @devlink_class, i32 (%struct.device*, %struct.class_interface*)* @devlink_add_symlinks, void (%struct.device*, %struct.class_interface*)* @devlink_remove_symlinks }, align 8
@.str.29 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"supplier:\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"supplier\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"consumer\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"consumer:%s:%s\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"supplier:%s:%s\00", align 1
@.str.35 = private unnamed_addr constant [47 x i8] c"Unable to properly free device link symlinks!\0A\00", align 1
@device_links_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @device_links_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @device_links_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@.str.36 = private unnamed_addr constant [8 x i8] c"devlink\00", align 1
@devlink_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @devlink_group, %struct.attribute_group* null], align 8
@devlink_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([5 x %struct.attribute*], [5 x %struct.attribute*]* @devlink_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@devlink_attrs = internal global [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_status, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_auto_remove_on, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_runtime_pm, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_sync_state_only, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_status = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @status_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_auto_remove_on = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @auto_remove_on_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_runtime_pm = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @runtime_pm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@dev_attr_sync_state_only = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @sync_state_only_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.37 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"not tracked\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"dormant\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"consumer probing\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"supplier unbinding\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"auto_remove_on\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"supplier unbind\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"consumer unbind\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"runtime_pm\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"sync_state_only\00", align 1
@system_long_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"Unable to drop a managed device link reference\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"waiting_for_supplier\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"permissive\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"rpm\00", align 1
@dev_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @dev_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @dev_attr_store }, align 8
@.str.60 = private unnamed_addr constant [123 x i8] c"\013Device '%s' does not have a release() function, it is broken and must be fixed. See Documentation/core-api/kobject.rst.\0A\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"dev_attr_show: %pS returned bad count\0A\00", align 1
@gdp_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @gdp_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @gdp_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@class_dir_ktype = internal global %struct.kobj_type { void (%struct.kobject*)* @class_dir_release, %struct.sysfs_ops* @kobj_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* @class_dir_child_ns_type, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 8
@.str.62 = private unnamed_addr constant [7 x i8] c"uevent\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"uevent: failed to send synthetic uevent\0A\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"of_node\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"Error %d creating of_node link\0A\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@part_type = external dso_local global %struct.device_type, align 8
@dev_attr_online = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @online_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @online_store }, align 8
@dev_attr_removable = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @removable_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.68 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"removable\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"%u:%u\0A\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"Fixing up cyclic dependency with %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [45 x i8] c"Fixing up cyclic dependency with %pfwP (%s)\0A\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"MAJOR=%u\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"MINOR=%u\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"DEVNAME=%s\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"DEVMODE=%#o\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"DEVUID=%u\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"DEVGID=%u\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"DEVTYPE=%s\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"DRIVER=%s\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"%c%u:%u\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"n%u\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"+%s:%s\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"%s %s: %pV\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"%s(NULL device *): %pV\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 8
@llvm.compiler.used = appending global [4 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_devlink_class_init472 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_sync_state_resume_initcall495 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_fw_devlink_setup to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_fw_devlink_strict_setup to i8*)], section "llvm.metadata"
@switch.table.status_show = private unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0)], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @fwnode_link_add(%struct.fwnode_handle* noundef %con, %struct.fwnode_handle* noundef %sup) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @fwnode_link_lock) #15
  %consumers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %sup, i64 0, i32 4
  %0 = bitcast %struct.list_head* %consumers to i8**
  %.pn37 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn37 to %struct.list_head*
  %cmp.not38 = icmp eq %struct.list_head* %consumers, %1
  br i1 %cmp.not38, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn39 = phi i8* [ %.pn, %for.inc ], [ %.pn37, %entry ]
  %consumer = getelementptr i8, i8* %.pn39, i64 16
  %2 = bitcast i8* %consumer to %struct.fwnode_handle**
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %2, align 8
  %cmp2 = icmp eq %struct.fwnode_handle* %3, %con
  br i1 %cmp2, label %out, label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = bitcast i8* %.pn39 to i8**
  %.pn = load i8*, i8** %4, align 8
  %5 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %consumers, %5
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %call = call fastcc i8* @kzalloc(i64 noundef 48) #16
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %out, label %if.end12

if.end12:                                         ; preds = %for.end
  %supplier = bitcast i8* %call to %struct.fwnode_handle**
  store %struct.fwnode_handle* %sup, %struct.fwnode_handle** %supplier, align 8
  %s_hook13 = getelementptr inbounds i8, i8* %call, i64 8
  %6 = bitcast i8* %s_hook13 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %6) #16
  %consumer14 = getelementptr inbounds i8, i8* %call, i64 24
  %7 = bitcast i8* %consumer14 to %struct.fwnode_handle**
  store %struct.fwnode_handle* %con, %struct.fwnode_handle** %7, align 8
  %c_hook = getelementptr inbounds i8, i8* %call, i64 32
  %8 = bitcast i8* %c_hook to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %8) #16
  call fastcc void @list_add(%struct.list_head* noundef %6, %struct.list_head* noundef %consumers) #16
  %suppliers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %con, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %8, %struct.list_head* noundef %suppliers) #16
  br label %out

out:                                              ; preds = %for.body, %for.end, %if.end12
  %ret.0 = phi i32 [ 0, %if.end12 ], [ -12, %for.end ], [ 0, %for.body ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @fwnode_link_lock) #15
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #15
  ret i8* %call10.i
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fwnode_links_purge(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #0 {
entry:
  call fastcc void @fwnode_links_purge_suppliers(%struct.fwnode_handle* noundef %fwnode) #16
  call fastcc void @fwnode_links_purge_consumers(%struct.fwnode_handle* noundef %fwnode) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fwnode_links_purge_suppliers(%struct.fwnode_handle* noundef readonly %fwnode) unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @fwnode_link_lock) #15
  %suppliers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 3
  %0 = bitcast %struct.list_head* %suppliers to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not29 = icmp eq %struct.list_head* %suppliers, %2
  br i1 %cmp.not29, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn.in.in30 = phi i8* [ %.pn, %for.body ], [ %1, %entry ]
  %link.0.in = getelementptr i8, i8* %.pn.in.in30, i64 -32
  %link.0 = bitcast i8* %link.0.in to %struct.fwnode_link*
  %.pn.in = bitcast i8* %.pn.in.in30 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  call fastcc void @__fwnode_link_del(%struct.fwnode_link* noundef %link.0) #16
  %3 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %suppliers, %3
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @fwnode_link_lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fwnode_links_purge_consumers(%struct.fwnode_handle* noundef readonly %fwnode) unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @fwnode_link_lock) #15
  %consumers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 4
  %0 = bitcast %struct.list_head* %consumers to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not29 = icmp eq %struct.list_head* %consumers, %2
  br i1 %cmp.not29, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %.pn.in.in30 = phi i8* [ %.pn, %for.body ], [ %1, %entry ]
  %link.0.in = getelementptr i8, i8* %.pn.in.in30, i64 -8
  %link.0 = bitcast i8* %link.0.in to %struct.fwnode_link*
  %.pn.in = bitcast i8* %.pn.in.in30 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  call fastcc void @__fwnode_link_del(%struct.fwnode_link* noundef %link.0) #16
  %3 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %consumers, %3
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @fwnode_link_lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fw_devlink_purge_absent_suppliers(%struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #0 {
entry:
  %dev = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 2
  %0 = load %struct.device*, %struct.device** %dev, align 8
  %tobool.not = icmp eq %struct.device* %0, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 5
  %1 = load i8, i8* %flags, align 8
  %2 = or i8 %1, 2
  store i8 %2, i8* %flags, align 8
  call fastcc void @fwnode_links_purge_consumers(%struct.fwnode_handle* noundef %fwnode) #16
  %call = call %struct.fwnode_handle* @fwnode_get_next_available_child_node(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef null) #15
  %tobool2.not11 = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool2.not11, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %child.012 = phi %struct.fwnode_handle* [ %call3, %for.body ], [ %call, %if.end ]
  call void @fw_devlink_purge_absent_suppliers(%struct.fwnode_handle* noundef nonnull %child.012) #16
  %call3 = call %struct.fwnode_handle* @fwnode_get_next_available_child_node(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef nonnull %child.012) #15
  %tobool2.not = icmp eq %struct.fwnode_handle* %call3, null
  br i1 %tobool2.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fwnode_handle* @fwnode_get_next_available_child_node(%struct.fwnode_handle* noundef, %struct.fwnode_handle* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_links_read_lock() local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @srcu_read_lock() #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @srcu_read_lock() unnamed_addr #0 {
entry:
  %call = call i32 @__srcu_read_lock(%struct.srcu_struct* noundef nonnull @device_links_srcu) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_links_read_unlock(i32 noundef %idx) local_unnamed_addr #0 {
entry:
  call fastcc void @srcu_read_unlock(i32 noundef %idx) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_read_unlock(i32 noundef %idx) unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %idx, 2
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/srcu.h\22; .popsection; .long 14472b - 14470b; .short 188; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @__srcu_read_unlock(%struct.srcu_struct* noundef nonnull @device_links_srcu, i32 noundef %idx) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @device_links_read_lock_held() local_unnamed_addr #4 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_is_dependent(%struct.device* noundef %dev, i8* noundef %target) #0 {
entry:
  %0 = bitcast i8* %target to %struct.device*
  %cmp = icmp eq %struct.device* %0, %dev
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @device_is_ancestor(%struct.device* noundef %dev, %struct.device* noundef %0) #16
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call i32 @device_for_each_child(%struct.device* noundef %dev, i8* noundef %target, i32 (%struct.device*, i8*)* noundef nonnull @device_is_dependent) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %consumers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 1
  %1 = bitcast %struct.list_head* %consumers to i8**
  %.pn49 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn49 to %struct.list_head*
  %cmp6.not50 = icmp eq %struct.list_head* %consumers, %2
  br i1 %cmp6.not50, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end3, %for.inc
  %.pn51 = phi i8* [ %.pn, %for.inc ], [ %.pn49, %if.end3 ]
  %flags = getelementptr i8, i8* %.pn51, i64 516
  %3 = bitcast i8* %flags to i32*
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, -257
  %cmp7 = icmp eq i32 %5, 192
  br i1 %cmp7, label %for.inc, label %if.end10

if.end10:                                         ; preds = %for.body
  %consumer = getelementptr i8, i8* %.pn51, i64 16
  %6 = bitcast i8* %consumer to %struct.device**
  %7 = load %struct.device*, %struct.device** %6, align 8
  %cmp11 = icmp eq %struct.device* %7, %0
  br i1 %cmp11, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end10
  %call16 = call i32 @device_is_dependent(%struct.device* noundef %7, i8* noundef %target) #16
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.end14, %for.body
  %8 = bitcast i8* %.pn51 to i8**
  %.pn = load i8*, i8** %8, align 8
  %9 = bitcast i8* %.pn to %struct.list_head*
  %cmp6.not = icmp eq %struct.list_head* %consumers, %9
  br i1 %cmp6.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %if.end10, %if.end14, %for.inc, %if.end3, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ %call1, %if.end ], [ 0, %if.end3 ], [ 1, %if.end10 ], [ %call16, %if.end14 ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc i1 @device_is_ancestor(%struct.device* noundef readnone %dev, %struct.device* nocapture noundef readonly %target) unnamed_addr #5 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %target.addr.0 = phi %struct.device* [ %target, %entry ], [ %0, %while.cond ]
  %parent = getelementptr inbounds %struct.device, %struct.device* %target.addr.0, i64 0, i32 1
  %0 = load %struct.device*, %struct.device** %parent, align 8
  %tobool.not = icmp eq %struct.device* %0, null
  %cmp = icmp eq %struct.device* %0, %dev
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %return, label %while.cond

return:                                           ; preds = %while.cond
  %1 = xor i1 %tobool.not, true
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_for_each_child(%struct.device* nocapture noundef readonly %parent, i8* noundef %data, i32 (%struct.device*, i8*)* nocapture noundef readonly %fn) local_unnamed_addr #0 {
entry:
  %i = alloca %struct.klist_iter, align 8
  %0 = bitcast %struct.klist_iter* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %p = getelementptr inbounds %struct.device, %struct.device* %parent, i64 0, i32 2
  %1 = load %struct.device_private*, %struct.device_private** %p, align 8
  %tobool.not = icmp eq %struct.device_private* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %klist_children = getelementptr inbounds %struct.device_private, %struct.device_private* %1, i64 0, i32 0
  call void @klist_iter_init(%struct.klist* noundef %klist_children, %struct.klist_iter* noundef nonnull %i) #15
  br label %land.rhs

land.rhs:                                         ; preds = %if.end, %while.body
  %call = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #16
  %tobool3.not = icmp eq %struct.device* %call, null
  br i1 %tobool3.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %call4 = call i32 %fn(%struct.device* noundef nonnull %call, i8* noundef %data) #15
  %tobool2.not = icmp eq i32 %call4, 0
  br i1 %tobool2.not, label %land.rhs, label %while.end

while.end:                                        ; preds = %while.body, %land.rhs
  %error.0.lcssa = phi i32 [ %call4, %while.body ], [ 0, %land.rhs ]
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %i) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %error.0.lcssa, %while.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_pm_move_to_tail(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call = call i32 @device_links_read_lock() #16
  %call1 = call i32 @device_reorder_to_tail(%struct.device* noundef %dev, i8* noundef null) #16
  call void @device_links_read_unlock(i32 noundef %call) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @device_reorder_to_tail(%struct.device* noundef %dev, i8* nocapture noundef readnone %not_used) #0 {
entry:
  %call = call fastcc i32 @device_is_registered(%struct.device* noundef %dev) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  call void @devices_kset_move_last(%struct.device* noundef %dev) #16
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then
  %call4 = call i32 @device_for_each_child(%struct.device* noundef %dev, i8* noundef null, i32 (%struct.device*, i8*)* noundef nonnull @device_reorder_to_tail) #16
  %consumers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 1
  %0 = bitcast %struct.list_head* %consumers to i8**
  %.pn32 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn32 to %struct.list_head*
  %cmp.not33 = icmp eq %struct.list_head* %consumers, %1
  br i1 %cmp.not33, label %for.end, label %for.body

for.body:                                         ; preds = %if.end3, %for.inc
  %.pn34 = phi i8* [ %.pn, %for.inc ], [ %.pn32, %if.end3 ]
  %flags = getelementptr i8, i8* %.pn34, i64 516
  %2 = bitcast i8* %flags to i32*
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, -257
  %cmp7 = icmp eq i32 %4, 192
  br i1 %cmp7, label %for.inc, label %if.end10

if.end10:                                         ; preds = %for.body
  %consumer = getelementptr i8, i8* %.pn34, i64 16
  %5 = bitcast i8* %consumer to %struct.device**
  %6 = load %struct.device*, %struct.device** %5, align 8
  %call11 = call i32 @device_reorder_to_tail(%struct.device* noundef %6, i8* noundef null) #16
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end10
  %7 = bitcast i8* %.pn34 to i8**
  %.pn = load i8*, i8** %7, align 8
  %8 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %consumers, %8
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end3
  ret i32 0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @devlink_class_init() #6 section ".init.text" {
entry:
  %call = call i32 @__class_register(%struct.class* noundef nonnull @devlink_class, %struct.lock_class_key* noundef nonnull @devlink_class_init.__key) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @class_interface_register(%struct.class_interface* noundef nonnull @devlink_class_intf) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @class_unregister(%struct.class* noundef nonnull @devlink_class) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call1, %if.then3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device_link* @device_link_add(%struct.device* noundef %consumer, %struct.device* noundef %supplier, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %tobool = icmp eq %struct.device* %consumer, null
  %tobool1 = icmp eq %struct.device* %supplier, null
  %or.cond.not = or i1 %tobool, %tobool1
  %cmp = icmp eq %struct.device* %consumer, %supplier
  %or.cond400 = or i1 %cmp, %or.cond.not
  br i1 %or.cond400, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %entry
  %conv = zext i32 %flags to i64
  %and = and i64 %conv, 4294966848
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %and7 = and i64 %conv, 1
  %tobool8.not = icmp eq i64 %and7, 0
  %and10 = and i64 %conv, 434
  %tobool11.not = icmp eq i64 %and10, 0
  %or.cond401 = or i1 %tobool8.not, %tobool11.not
  br i1 %or.cond401, label %lor.lhs.false12, label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false5
  %and14 = and i64 %conv, 128
  %tobool15.not = icmp eq i64 %and14, 0
  %and18 = and i64 %conv, 4294967039
  %cmp19.not = icmp eq i64 %and18, 128
  %or.cond402 = or i1 %tobool15.not, %cmp19.not
  br i1 %or.cond402, label %lor.lhs.false21, label %cleanup

lor.lhs.false21:                                  ; preds = %lor.lhs.false12
  %and23 = and i64 %conv, 32
  %tobool24.not = icmp eq i64 %and23, 0
  %and27 = and i64 %conv, 18
  %tobool28.not = icmp eq i64 %and27, 0
  %or.cond403 = or i1 %tobool24.not, %tobool28.not
  br i1 %or.cond403, label %if.end41, label %cleanup

if.end41:                                         ; preds = %lor.lhs.false21
  %or = or i32 %flags, 64
  %spec.select = select i1 %tobool8.not, i32 %or, i32 %flags
  call fastcc void @device_links_write_lock() #16
  %call49 = call fastcc i1 @device_pm_initialized(%struct.device* noundef nonnull %supplier) #16
  br i1 %call49, label %lor.lhs.false50, label %do.end277

lor.lhs.false50:                                  ; preds = %if.end41
  %conv51 = zext i32 %spec.select to i64
  %and52 = and i64 %conv51, 128
  %tobool53.not = icmp eq i64 %and52, 0
  br i1 %tobool53.not, label %land.lhs.true54, label %land.lhs.true62

land.lhs.true54:                                  ; preds = %lor.lhs.false50
  %0 = bitcast %struct.device* %supplier to i8*
  %call55 = call i32 @device_is_dependent(%struct.device* noundef nonnull %consumer, i8* noundef nonnull %0) #16
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end71, label %do.end277

land.lhs.true62:                                  ; preds = %lor.lhs.false50
  %status = getelementptr inbounds %struct.device, %struct.device* %consumer, i64 0, i32 10, i32 3
  %1 = load i32, i32* %status, align 8
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %if.end71, label %do.end277

if.end71:                                         ; preds = %land.lhs.true54, %land.lhs.true62
  %and73 = and i64 %conv51, 16
  %tobool74.not = icmp eq i64 %and73, 0
  %and77 = and i32 %spec.select, -3
  %spec.select405 = select i1 %tobool74.not, i32 %spec.select, i32 %and77
  %consumers = getelementptr inbounds %struct.device, %struct.device* %supplier, i64 0, i32 10, i32 1
  %2 = bitcast %struct.list_head* %consumers to i8**
  %.pn412 = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn412 to %struct.list_head*
  %cmp86.not413 = icmp eq %struct.list_head* %consumers, %3
  br i1 %cmp86.not413, label %for.end, label %for.body

for.body:                                         ; preds = %if.end71, %for.inc
  %.pn414 = phi i8* [ %.pn, %for.inc ], [ %.pn412, %if.end71 ]
  %consumer88 = getelementptr i8, i8* %.pn414, i64 16
  %4 = bitcast i8* %consumer88 to %struct.device**
  %5 = load %struct.device*, %struct.device** %4, align 8
  %cmp89.not = icmp eq %struct.device* %5, %consumer
  br i1 %cmp89.not, label %if.end92, label %for.inc

if.end92:                                         ; preds = %for.body
  %link.0.in.le = getelementptr i8, i8* %.pn414, i64 -8
  %link.0.le = bitcast i8* %link.0.in.le to %struct.device_link*
  %flags93 = getelementptr i8, i8* %.pn414, i64 516
  %6 = bitcast i8* %flags93 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 256
  %tobool96.not = icmp ne i32 %8, 0
  %9 = and i32 %spec.select405, 256
  %tobool100.not = icmp eq i32 %9, 0
  %or.cond406 = select i1 %tobool96.not, i1 %tobool100.not, i1 false
  br i1 %or.cond406, label %if.then101, label %if.end106

if.then101:                                       ; preds = %if.end92
  %and104 = and i32 %7, -257
  store i32 %and104, i32* %6, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then101, %if.end92
  %10 = phi i32 [ %and104, %if.then101 ], [ %7, %if.end92 ]
  %conv107 = zext i32 %spec.select405 to i64
  %and108 = and i64 %conv107, 4
  %tobool109.not = icmp eq i64 %and108, 0
  br i1 %tobool109.not, label %if.end126, label %if.then110

if.then110:                                       ; preds = %if.end106
  %11 = and i32 %10, 4
  %tobool114.not = icmp eq i32 %11, 0
  br i1 %tobool114.not, label %if.then115, label %if.end120

if.then115:                                       ; preds = %if.then110
  %12 = or i32 %10, 4
  store i32 %12, i32* %6, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.then110
  %and122 = and i64 %conv107, 8
  %tobool123.not = icmp eq i64 %and122, 0
  br i1 %tobool123.not, label %if.end126, label %if.then124

if.then124:                                       ; preds = %if.end120
  %rpm_active = getelementptr i8, i8* %.pn414, i64 520
  %13 = bitcast i8* %rpm_active to %struct.refcount_struct*
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %13) #16
  br label %if.end126

if.end126:                                        ; preds = %if.end120, %if.then124, %if.end106
  %and128 = and i64 %conv107, 1
  %tobool129.not = icmp eq i64 %and128, 0
  br i1 %tobool129.not, label %if.end149, label %if.then130

if.then130:                                       ; preds = %if.end126
  %kref = getelementptr i8, i8* %.pn414, i64 524
  %14 = bitcast i8* %kref to %struct.kref*
  call fastcc void @kref_get(%struct.kref* noundef %14) #16
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 129
  %17 = icmp eq i32 %16, 128
  %or143 = or i32 %15, 1
  store i32 %or143, i32* %6, align 4
  br i1 %17, label %reorder, label %do.end277

if.end149:                                        ; preds = %if.end126
  %and151 = and i64 %conv107, 16
  %tobool152.not = icmp eq i64 %and151, 0
  br i1 %tobool152.not, label %if.else168, label %if.then153

if.then153:                                       ; preds = %if.end149
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 2
  %tobool157.not = icmp eq i32 %19, 0
  br i1 %tobool157.not, label %if.end178, label %if.then158

if.then158:                                       ; preds = %if.then153
  %and161 = and i32 %18, -19
  %20 = or i32 %and161, 16
  br label %if.end178.sink.split

if.else168:                                       ; preds = %if.end149
  %and170 = and i64 %conv107, 2
  %tobool171.not = icmp eq i64 %and170, 0
  %21 = load i32, i32* %6, align 4
  br i1 %tobool171.not, label %if.then172, label %if.end178

if.then172:                                       ; preds = %if.else168
  %22 = and i32 %21, -19
  br label %if.end178.sink.split

if.end178.sink.split:                             ; preds = %if.then158, %if.then172
  %.sink = phi i32 [ %22, %if.then172 ], [ %20, %if.then158 ]
  store i32 %.sink, i32* %6, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.end178.sink.split, %if.else168, %if.then153
  %23 = phi i32 [ %18, %if.then153 ], [ %21, %if.else168 ], [ %.sink, %if.end178.sink.split ]
  %24 = and i32 %23, 64
  %tobool182.not = icmp eq i32 %24, 0
  br i1 %tobool182.not, label %if.then183, label %if.end189

if.then183:                                       ; preds = %if.end178
  %kref184 = getelementptr i8, i8* %.pn414, i64 524
  %25 = bitcast i8* %kref184 to %struct.kref*
  call fastcc void @kref_get(%struct.kref* noundef %25) #16
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, 64
  store i32 %27, i32* %6, align 4
  call fastcc void @device_link_init_status(%struct.device_link* noundef %link.0.le, %struct.device* noundef nonnull %consumer, %struct.device* noundef nonnull %supplier) #16
  %.pre417 = load i32, i32* %6, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then183, %if.end178
  %28 = phi i32 [ %.pre417, %if.then183 ], [ %23, %if.end178 ]
  %29 = and i32 %28, 128
  %tobool193.not = icmp ne i32 %29, 0
  %and196 = and i64 %conv107, 128
  %tobool197.not = icmp eq i64 %and196, 0
  %or.cond408 = select i1 %tobool193.not, i1 %tobool197.not, i1 false
  br i1 %or.cond408, label %if.then198, label %do.end277

if.then198:                                       ; preds = %if.end189
  %and201 = and i32 %28, -129
  store i32 %and201, i32* %6, align 4
  br label %reorder

for.inc:                                          ; preds = %for.body
  %30 = bitcast i8* %.pn414 to i8**
  %.pn = load i8*, i8** %30, align 8
  %31 = bitcast i8* %.pn to %struct.list_head*
  %cmp86.not = icmp eq %struct.list_head* %consumers, %31
  br i1 %cmp86.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end71
  %call212 = call fastcc i8* @kzalloc(i64 noundef 576) #16
  %32 = bitcast i8* %call212 to %struct.device_link*
  %tobool213.not = icmp eq i8* %call212, null
  br i1 %tobool213.not, label %do.end277, label %if.end215

if.end215:                                        ; preds = %for.end
  %rpm_active216 = getelementptr inbounds i8, i8* %call212, i64 528
  %33 = bitcast i8* %rpm_active216 to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %33) #16
  %call217 = call %struct.device* @get_device(%struct.device* noundef nonnull %supplier) #16
  %supplier218 = bitcast i8* %call212 to %struct.device**
  store %struct.device* %supplier, %struct.device** %supplier218, align 8
  %s_node219 = getelementptr inbounds i8, i8* %call212, i64 8
  %34 = bitcast i8* %s_node219 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %34) #16
  %call220 = call %struct.device* @get_device(%struct.device* noundef nonnull %consumer) #16
  %consumer221 = getelementptr inbounds i8, i8* %call212, i64 24
  %35 = bitcast i8* %consumer221 to %struct.device**
  store %struct.device* %consumer, %struct.device** %35, align 8
  %c_node = getelementptr inbounds i8, i8* %call212, i64 32
  %36 = bitcast i8* %c_node to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %36) #16
  %flags222 = getelementptr inbounds i8, i8* %call212, i64 524
  %37 = bitcast i8* %flags222 to i32*
  store i32 %spec.select405, i32* %37, align 4
  %kref223 = getelementptr inbounds i8, i8* %call212, i64 532
  %38 = bitcast i8* %kref223 to %struct.kref*
  call fastcc void @kref_init(%struct.kref* noundef %38) #16
  %link_dev = getelementptr inbounds i8, i8* %call212, i64 48
  %39 = bitcast i8* %link_dev to %struct.device*
  %class = getelementptr inbounds i8, i8* %call212, i64 472
  %40 = bitcast i8* %class to %struct.class**
  store %struct.class* @devlink_class, %struct.class** %40, align 8
  call fastcc void @device_set_pm_not_required(%struct.device* noundef %39) #16
  %call226 = call fastcc i8* @dev_bus_name(%struct.device* noundef nonnull %supplier) #16
  %call227 = call fastcc i8* @dev_name(%struct.device* noundef nonnull %supplier) #16
  %call228 = call fastcc i8* @dev_bus_name(%struct.device* noundef nonnull %consumer) #16
  %call229 = call fastcc i8* @dev_name(%struct.device* noundef nonnull %consumer) #16
  %call230 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef %39, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef %call226, i8* noundef %call227, i8* noundef %call228, i8* noundef %call229) #16
  %call232 = call i32 @device_register(%struct.device* noundef %39) #16
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.end235, label %if.then234

if.then234:                                       ; preds = %if.end215
  call void @put_device(%struct.device* noundef nonnull %consumer) #16
  call void @put_device(%struct.device* noundef nonnull %supplier) #16
  call void @kfree(i8* noundef nonnull %call212) #15
  br label %do.end277

if.end235:                                        ; preds = %if.end215
  %conv236 = zext i32 %spec.select405 to i64
  %41 = and i64 %conv236, 12
  %.not = icmp eq i64 %41, 12
  br i1 %.not, label %if.then243, label %if.end246

if.then243:                                       ; preds = %if.end235
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %33) #16
  br label %if.end246

if.end246:                                        ; preds = %if.then243, %if.end235
  %and248 = and i64 %conv236, 1
  %tobool249.not = icmp eq i64 %and248, 0
  br i1 %tobool249.not, label %if.else252, label %if.then250

if.then250:                                       ; preds = %if.end246
  %status251 = getelementptr inbounds i8, i8* %call212, i64 520
  %42 = bitcast i8* %status251 to i32*
  store i32 -1, i32* %42, align 8
  br label %if.end263

if.else252:                                       ; preds = %if.end246
  call fastcc void @device_link_init_status(%struct.device_link* noundef nonnull %32, %struct.device* noundef nonnull %consumer, %struct.device* noundef nonnull %supplier) #16
  br label %if.end263

if.end263:                                        ; preds = %if.then250, %if.else252
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %34, %struct.list_head* noundef %consumers) #16
  %suppliers = getelementptr inbounds %struct.device, %struct.device* %consumer, i64 0, i32 10, i32 0
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %36, %struct.list_head* noundef %suppliers) #16
  %and270 = and i64 %conv236, 128
  %tobool271.not = icmp eq i64 %and270, 0
  br i1 %tobool271.not, label %reorder, label %do.end277

reorder:                                          ; preds = %if.then130, %if.end263, %if.then198
  %link.1 = phi %struct.device_link* [ %link.0.le, %if.then198 ], [ %32, %if.end263 ], [ %link.0.le, %if.then130 ]
  %call274 = call i32 @device_reorder_to_tail(%struct.device* noundef nonnull %consumer, i8* noundef null) #16
  br label %do.end277

do.end277:                                        ; preds = %if.then130, %land.lhs.true62, %if.end41, %land.lhs.true54, %if.then234, %reorder, %if.end189, %for.end, %if.end263
  %link.2 = phi %struct.device_link* [ %link.1, %reorder ], [ %link.0.le, %if.end189 ], [ null, %if.then234 ], [ %32, %if.end263 ], [ null, %for.end ], [ null, %land.lhs.true54 ], [ null, %if.end41 ], [ null, %land.lhs.true62 ], [ %link.0.le, %if.then130 ]
  call fastcc void @device_links_write_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %do.end277, %entry, %lor.lhs.false3, %lor.lhs.false5, %lor.lhs.false12, %lor.lhs.false21
  %retval.0 = phi %struct.device_link* [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false3 ], [ null, %entry ], [ %link.2, %do.end277 ]
  ret %struct.device_link* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_links_write_lock() unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @device_links_lock) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @device_pm_initialized(%struct.device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @device_is_registered(%struct.device* noundef %dev) #16
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_get(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcount) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @device_link_init_status(%struct.device_link* nocapture noundef writeonly %link, %struct.device* nocapture noundef readonly %consumer, %struct.device* nocapture noundef readonly %supplier) unnamed_addr #8 {
entry:
  %status = getelementptr inbounds %struct.device, %struct.device* %supplier, i64 0, i32 10, i32 3
  %0 = load i32, i32* %status, align 8
  switch i32 %0, label %sw.default18 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  %status2 = getelementptr inbounds %struct.device, %struct.device* %consumer, i64 0, i32 10, i32 3
  %1 = load i32, i32* %status2, align 8
  %cond = icmp eq i32 %1, 1
  %status4 = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 5
  br i1 %cond, label %sw.bb3, label %sw.default

sw.bb3:                                           ; preds = %sw.bb
  store i32 2, i32* %status4, align 8
  br label %sw.epilog20

sw.default:                                       ; preds = %sw.bb
  store i32 0, i32* %status4, align 8
  br label %sw.epilog20

sw.bb6:                                           ; preds = %entry
  %status8 = getelementptr inbounds %struct.device, %struct.device* %consumer, i64 0, i32 10, i32 3
  %2 = load i32, i32* %status8, align 8
  switch i32 %2, label %sw.default13 [
    i32 1, label %sw.bb9
    i32 2, label %sw.bb11
  ]

sw.bb9:                                           ; preds = %sw.bb6
  %status10 = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 5
  store i32 2, i32* %status10, align 8
  br label %sw.epilog20

sw.bb11:                                          ; preds = %sw.bb6
  %status12 = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 5
  store i32 3, i32* %status12, align 8
  br label %sw.epilog20

sw.default13:                                     ; preds = %sw.bb6
  %status14 = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 5
  store i32 1, i32* %status14, align 8
  br label %sw.epilog20

sw.bb16:                                          ; preds = %entry
  %status17 = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 5
  store i32 4, i32* %status17, align 8
  br label %sw.epilog20

sw.default18:                                     ; preds = %entry
  %status19 = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 5
  store i32 0, i32* %status19, align 8
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.bb9, %sw.bb11, %sw.default13, %sw.bb3, %sw.default, %sw.default18, %sw.bb16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #3 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @get_device(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj) #15
  %call1 = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %call) #16
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.device* [ %call1, %cond.true ], [ null, %entry ]
  ret %struct.device* %cond
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @kref_init(%struct.kref* noundef %kref) unnamed_addr #3 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %refcount) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @device_set_pm_not_required(%struct.device* nocapture noundef %dev) unnamed_addr #8 {
entry:
  %no_pm = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 11, i32 1
  %bf.load = load i16, i16* %no_pm, align 4
  %bf.set = or i16 %bf.load, 128
  store i16 %bf.set, i16* %no_pm, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dev_set_name(%struct.device* noundef %dev, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %vargs = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %vargs to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %0)
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @kobject_set_name_vargs(%struct.kobject* noundef %kobj, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #15
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_bus_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool.not = icmp eq %struct.bus_type* %0, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %name = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 0
  br label %cond.end7.sink.split

cond.false:                                       ; preds = %entry
  %class = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %1 = load %struct.class*, %struct.class** %class, align 8
  %tobool2.not = icmp eq %struct.class* %1, null
  br i1 %tobool2.not, label %cond.end7, label %cond.true3

cond.true3:                                       ; preds = %cond.false
  %name5 = getelementptr inbounds %struct.class, %struct.class* %1, i64 0, i32 0
  br label %cond.end7.sink.split

cond.end7.sink.split:                             ; preds = %cond.true, %cond.true3
  %name5.sink = phi i8** [ %name5, %cond.true3 ], [ %name, %cond.true ]
  %2 = load i8*, i8** %name5.sink, align 8
  br label %cond.end7

cond.end7:                                        ; preds = %cond.end7.sink.split, %cond.false
  %cond8 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.52, i64 0, i64 0), %cond.false ], [ %2, %cond.end7.sink.split ]
  ret i8* %cond8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_name(%struct.device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %init_name = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 3
  %0 = load i8*, i8** %init_name, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ %0, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_register(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call void @device_initialize(%struct.device* noundef %dev) #16
  %call = call i32 @device_add(%struct.device* noundef %dev) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @put_device(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @kobject_put(%struct.kobject* noundef %kobj) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_links_write_unlock() unnamed_addr #0 {
entry:
  call void @mutex_unlock(%struct.mutex* noundef nonnull @device_links_lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_link_del(%struct.device_link* noundef %link) local_unnamed_addr #0 {
entry:
  call fastcc void @device_links_write_lock() #16
  call fastcc void @device_link_put_kref(%struct.device_link* noundef %link) #16
  call fastcc void @device_links_write_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_link_put_kref(%struct.device_link* noundef %link) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 6
  %0 = load i32, i32* %flags, align 4
  %1 = and i32 %0, 1
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 8
  call fastcc void @kref_put(%struct.kref* noundef %kref) #16
  br label %if.end25

if.else:                                          ; preds = %entry
  %consumer = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 2
  %2 = load %struct.device*, %struct.device** %consumer, align 8
  %call1 = call fastcc i32 @device_is_registered(%struct.device* noundef %2) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %do.end

if.then3:                                         ; preds = %if.else
  %kref4 = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 8
  call fastcc void @__device_link_del(%struct.kref* noundef %kref4) #16
  br label %if.end25

do.end:                                           ; preds = %if.else
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.53, i64 0, i64 0)) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 905; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !10
  br label %if.end25

if.end25:                                         ; preds = %if.then3, %do.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_link_remove(i8* noundef readnone %consumer, %struct.device* noundef readonly %supplier) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.device* %supplier to i8*
  %cmp = icmp eq i8* %0, %consumer
  br i1 %cmp, label %if.then, label %if.end16, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 937; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !12
  br label %cleanup

if.end16:                                         ; preds = %entry
  call fastcc void @device_links_write_lock() #16
  %consumers = getelementptr inbounds %struct.device, %struct.device* %supplier, i64 0, i32 10, i32 1
  %1 = bitcast %struct.list_head* %consumers to i8**
  %.pn49 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn49 to %struct.list_head*
  %cmp20.not50 = icmp eq %struct.list_head* %consumers, %2
  br i1 %cmp20.not50, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end16
  %3 = bitcast i8* %consumer to %struct.device*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn51 = phi i8* [ %.pn49, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %consumer24 = getelementptr i8, i8* %.pn51, i64 16
  %4 = bitcast i8* %consumer24 to %struct.device**
  %5 = load %struct.device*, %struct.device** %4, align 8
  %cmp25 = icmp eq %struct.device* %5, %3
  br i1 %cmp25, label %if.then27, label %for.inc

if.then27:                                        ; preds = %for.body
  %link.0.in.le = getelementptr i8, i8* %.pn51, i64 -8
  %link.0.le = bitcast i8* %link.0.in.le to %struct.device_link*
  call fastcc void @device_link_put_kref(%struct.device_link* noundef %link.0.le) #16
  br label %for.end

for.inc:                                          ; preds = %for.body
  %6 = bitcast i8* %.pn51 to i8**
  %.pn = load i8*, i8** %6, align 8
  %7 = bitcast i8* %.pn to %struct.list_head*
  %cmp20.not = icmp eq %struct.list_head* %consumers, %7
  br i1 %cmp20.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end16, %if.then27
  call fastcc void @device_links_write_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_links_check_suppliers(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @fwnode_link_lock) #15
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %tobool.not = icmp eq %struct.fwnode_handle* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %suppliers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %0, i64 0, i32 3
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %suppliers) #16
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = call fastcc i1 @fw_devlink_is_permissive() #16
  br i1 %call4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %next = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %1, i64 0, i32 3, i32 0
  %2 = bitcast %struct.list_head** %next to i8**
  %3 = load i8*, i8** %2, align 8
  %add.ptr = getelementptr i8, i8* %3, i64 -32
  %supplier = bitcast i8* %add.ptr to %struct.fwnode_handle**
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %supplier, align 8
  %call7 = call i32 (%struct.device*, i32, i8*, ...) @dev_err_probe(%struct.device* noundef %dev, i32 noundef -517, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.fwnode_handle* noundef %4) #16
  call void @mutex_unlock(%struct.mutex* noundef nonnull @fwnode_link_lock) #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3, %land.lhs.true, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @fwnode_link_lock) #15
  call fastcc void @device_links_write_lock() #16
  %links = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10
  %suppliers9 = getelementptr inbounds %struct.dev_links_info, %struct.dev_links_info* %links, i64 0, i32 0
  %5 = bitcast %struct.dev_links_info* %links to i8**
  %.pn76 = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn76 to %struct.list_head*
  %cmp.not77 = icmp eq %struct.list_head* %suppliers9, %6
  br i1 %cmp.not77, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %.pn78 = phi i8* [ %.pn, %for.inc ], [ %.pn76, %if.end ]
  %flags = getelementptr i8, i8* %.pn78, i64 492
  %7 = bitcast i8* %flags to i32*
  %8 = load i32, i32* %7, align 4
  %conv = zext i32 %8 to i64
  %and = and i64 %conv, 64
  %tobool18.not = icmp eq i64 %and, 0
  br i1 %tobool18.not, label %for.inc, label %if.end20

if.end20:                                         ; preds = %for.body
  %status = getelementptr i8, i8* %.pn78, i64 488
  %9 = bitcast i8* %status to i32*
  %10 = load i32, i32* %9, align 8
  %cmp21.not = icmp ne i32 %10, 1
  %and26 = and i64 %conv, 128
  %tobool27.not = icmp eq i64 %and26, 0
  %or.cond = select i1 %cmp21.not, i1 %tobool27.not, i1 false
  br i1 %or.cond, label %if.then28, label %do.body37

if.then28:                                        ; preds = %if.end20
  %link.0.in.le = getelementptr i8, i8* %.pn78, i64 -32
  call fastcc void @device_links_missing_supplier(%struct.device* noundef %dev) #16
  %supplier29 = bitcast i8* %link.0.in.le to %struct.device**
  %11 = load %struct.device*, %struct.device** %supplier29, align 8
  %call30 = call fastcc i8* @dev_name(%struct.device* noundef %11) #16
  %call31 = call i32 (%struct.device*, i32, i8*, ...) @dev_err_probe(%struct.device* noundef %dev, i32 noundef -517, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call30) #16
  br label %for.end

do.body37:                                        ; preds = %if.end20
  store volatile i32 2, i32* %9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %do.body37
  %12 = bitcast i8* %.pn78 to i8**
  %.pn = load i8*, i8** %12, align 8
  %13 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %suppliers9, %13
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end, %if.then28
  %ret.0 = phi i32 [ -517, %if.then28 ], [ 0, %if.end ], [ 0, %for.inc ]
  %status52 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 3
  store i32 1, i32* %status52, align 8
  call fastcc void @device_links_write_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ -517, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @fw_devlink_is_permissive() unnamed_addr #7 {
entry:
  %0 = load i32, i32* @fw_devlink_flags, align 4
  %cmp = icmp eq i32 %0, 384
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @dev_err_probe(%struct.device* noundef %dev, i32 noundef returned %err, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %1)
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt2, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  %cmp.not = icmp eq i32 %err, -517
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  %conv = sext i32 %err to i64
  %call = call fastcc i8* @ERR_PTR(i64 noundef %conv) #16
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8* noundef %call, %struct.va_format* noundef nonnull %vaf) #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @device_set_deferred_probe_reason(%struct.device* noundef %dev, %struct.va_format* noundef nonnull %vaf) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret i32 %err
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_links_missing_supplier(%struct.device* noundef readonly %dev) unnamed_addr #0 {
entry:
  %suppliers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 0
  %0 = bitcast %struct.list_head* %suppliers to i8**
  %.pn69 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn69 to %struct.list_head*
  %cmp.not71 = icmp eq %struct.list_head* %suppliers, %1
  br i1 %cmp.not71, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn72 = phi i8* [ %.pn, %for.inc ], [ %.pn69, %entry ]
  %status = getelementptr i8, i8* %.pn72, i64 488
  %2 = bitcast i8* %status to i32*
  %3 = load i32, i32* %2, align 8
  %cmp3.not = icmp eq i32 %3, 2
  br i1 %cmp3.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %link.0.in74 = getelementptr i8, i8* %.pn72, i64 -32
  %supplier = bitcast i8* %link.0.in74 to %struct.device**
  %4 = load %struct.device*, %struct.device** %supplier, align 8
  %status5 = getelementptr inbounds %struct.device, %struct.device* %4, i64 0, i32 10, i32 3
  %5 = load i32, i32* %status5, align 8
  %cmp6 = icmp eq i32 %5, 2
  br i1 %cmp6, label %for.inc.sink.split, label %if.else

if.else:                                          ; preds = %if.end
  %flags = getelementptr i8, i8* %.pn72, i64 492
  %6 = bitcast i8* %flags to i32*
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 128
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then28, label %for.inc.sink.split, !prof !11

if.then28:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 964; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !13
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else, %if.then28, %if.end
  %.sink = phi i32 [ 1, %if.end ], [ 0, %if.then28 ], [ 0, %if.else ]
  store volatile i32 %.sink, i32* %2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body
  %9 = bitcast i8* %.pn72 to i8**
  %.pn = load i8*, i8** %9, align 8
  %10 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %suppliers, %10
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_links_supplier_sync_state_pause() local_unnamed_addr #0 {
entry:
  call fastcc void @device_links_write_lock() #16
  %0 = load i32, i32* @defer_sync_state_count, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @defer_sync_state_count, align 4
  call fastcc void @device_links_write_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_links_supplier_sync_state_resume() local_unnamed_addr #0 {
entry:
  %sync_list = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %sync_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %sync_list, i64 0, i32 0
  store %struct.list_head* %sync_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %sync_list, i64 0, i32 1
  store %struct.list_head* %sync_list, %struct.list_head** %prev, align 8
  call fastcc void @device_links_write_lock() #16
  %1 = load i32, i32* @defer_sync_state_count, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end19

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0)) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 1128; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !14
  br label %out

if.end19:                                         ; preds = %entry
  %dec = add i32 %1, -1
  store i32 %dec, i32* @defer_sync_state_count, align 4
  %tobool20.not = icmp ne i32 %dec, 0
  %2 = load i8*, i8** bitcast (%struct.list_head* @deferred_sync to i8**), align 8
  %cmp.not62 = icmp eq i8* %2, bitcast (%struct.list_head* @deferred_sync to i8*)
  %or.cond = select i1 %tobool20.not, i1 true, i1 %cmp.not62
  br i1 %or.cond, label %out, label %for.body

for.body:                                         ; preds = %if.end19, %for.body
  %.pn.in.in63 = phi i8* [ %.pn, %for.body ], [ %2, %if.end19 ]
  %3 = bitcast i8* %.pn.in.in63 to %struct.list_head*
  %dev.0.in = getelementptr i8, i8* %.pn.in.in63, i64 -192
  %dev.0 = bitcast i8* %dev.0.in to %struct.device*
  %.pn.in = bitcast i8* %.pn.in.in63 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  call fastcc void @list_del_init(%struct.list_head* noundef %3) #16
  call fastcc void @__device_links_queue_sync_state(%struct.device* noundef %dev.0, %struct.list_head* noundef nonnull %sync_list) #16
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @deferred_sync to i8*)
  br i1 %cmp.not, label %out, label %for.body

out:                                              ; preds = %for.body, %if.end19, %do.end
  call fastcc void @device_links_write_unlock() #16
  call fastcc void @device_links_flush_sync_list(%struct.list_head* noundef nonnull %sync_list, %struct.device* noundef null) #16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__device_links_queue_sync_state(%struct.device* noundef %dev, %struct.list_head* noundef %list) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @dev_has_sync_state(%struct.device* noundef %dev) #16
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %state_synced = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %state_synced, align 4
  %0 = and i8 %bf.load, 8
  %bf.cast.not = icmp eq i8 %0, 0
  br i1 %bf.cast.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %consumers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 1
  %1 = bitcast %struct.list_head* %consumers to i8**
  %.pn66 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn66 to %struct.list_head*
  %cmp.not67 = icmp eq %struct.list_head* %consumers, %2
  br i1 %cmp.not67, label %for.end, label %for.body

for.body:                                         ; preds = %if.end2, %for.inc
  %.pn68 = phi i8* [ %.pn, %for.inc ], [ %.pn66, %if.end2 ]
  %flags = getelementptr i8, i8* %.pn68, i64 516
  %3 = bitcast i8* %flags to i32*
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 64
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.inc, label %if.end6

if.end6:                                          ; preds = %for.body
  %status = getelementptr i8, i8* %.pn68, i64 512
  %6 = bitcast i8* %status to i32*
  %7 = load i32, i32* %6, align 8
  %cmp7.not = icmp eq i32 %7, 3
  br i1 %cmp7.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.end6, %for.body
  %8 = bitcast i8* %.pn68 to i8**
  %.pn = load i8*, i8** %8, align 8
  %9 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %consumers, %9
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end2
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, i8* %state_synced, align 4
  %defer_sync = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 2
  %call23 = call fastcc i32 @list_empty(%struct.list_head* noundef %defer_sync) #16
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then35, label %if.end47, !prof !11

if.then35:                                        ; preds = %for.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 1074; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !15
  br label %cleanup

if.end47:                                         ; preds = %for.end
  %call48 = call %struct.device* @get_device(%struct.device* noundef %dev) #16
  call fastcc void @list_add_tail(%struct.list_head* noundef %defer_sync, %struct.list_head* noundef %list) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then35, %if.end, %entry, %if.end47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_links_flush_sync_list(%struct.list_head* noundef readonly %list, %struct.device* noundef readnone %dont_lock_dev) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.list_head* %list to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not67 = icmp eq %struct.list_head* %2, %list
  br i1 %cmp.not67, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %if.end28
  %3 = phi %struct.list_head* [ %10, %if.end28 ], [ %2, %entry ]
  %.pn.in.in68 = phi i8* [ %.pn71, %if.end28 ], [ %1, %entry ]
  %dev.069.in = getelementptr i8, i8* %.pn.in.in68, i64 -192
  %dev.069 = bitcast i8* %dev.069.in to %struct.device*
  %.pn71.in = bitcast i8* %.pn.in.in68 to i8**
  %.pn71 = load i8*, i8** %.pn71.in, align 8
  call fastcc void @list_del_init(%struct.list_head* noundef %3) #16
  %cmp13.not = icmp eq %struct.device* %dev.069, %dont_lock_dev
  br i1 %cmp13.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call fastcc void @device_lock(%struct.device* noundef %dev.069) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %bus = getelementptr i8, i8* %.pn.in.in68, i64 -96
  %4 = bitcast i8* %bus to %struct.bus_type**
  %5 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %sync_state = getelementptr inbounds %struct.bus_type, %struct.bus_type* %5, i64 0, i32 9
  %6 = load void (%struct.device*)*, void (%struct.device*)** %sync_state, align 8
  %tobool.not = icmp eq void (%struct.device*)* %6, null
  br i1 %tobool.not, label %if.else, label %if.end25.sink.split

if.else:                                          ; preds = %if.end
  %driver = getelementptr i8, i8* %.pn.in.in68, i64 -88
  %7 = bitcast i8* %driver to %struct.device_driver**
  %8 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %tobool17.not = icmp eq %struct.device_driver* %8, null
  br i1 %tobool17.not, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %sync_state19 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %8, i64 0, i32 9
  %9 = load void (%struct.device*)*, void (%struct.device*)** %sync_state19, align 8
  %tobool20.not = icmp eq void (%struct.device*)* %9, null
  br i1 %tobool20.not, label %if.end25, label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %land.lhs.true, %if.end
  %.sink = phi void (%struct.device*)* [ %6, %if.end ], [ %9, %land.lhs.true ]
  call void %.sink(%struct.device* noundef %dev.069) #15
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.else, %land.lhs.true
  br i1 %cmp13.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end25
  call fastcc void @device_unlock(%struct.device* noundef %dev.069) #16
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25
  call void @put_device(%struct.device* noundef %dev.069) #16
  %10 = bitcast i8* %.pn71 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %10, %list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end28, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @sync_state_resume_initcall() #0 {
entry:
  call void @device_links_supplier_sync_state_resume() #16
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_links_force_bind(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call fastcc void @device_links_write_lock() #16
  %links = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10
  %suppliers = getelementptr inbounds %struct.dev_links_info, %struct.dev_links_info* %links, i64 0, i32 0
  %0 = bitcast %struct.dev_links_info* %links to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not53 = icmp eq %struct.list_head* %suppliers, %2
  br i1 %cmp.not53, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn.in.in54 = phi i8* [ %.pn56, %for.inc ], [ %1, %entry ]
  %link.055.in = getelementptr i8, i8* %.pn.in.in54, i64 -32
  %link.055 = bitcast i8* %link.055.in to %struct.device_link*
  %.pn56.in = bitcast i8* %.pn.in.in54 to i8**
  %.pn56 = load i8*, i8** %.pn56.in, align 8
  %flags = getelementptr i8, i8* %.pn.in.in54, i64 492
  %3 = bitcast i8* %flags to i32*
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 64
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %status = getelementptr i8, i8* %.pn.in.in54, i64 488
  %6 = bitcast i8* %status to i32*
  %7 = load i32, i32* %6, align 8
  %cmp11.not = icmp eq i32 %7, 1
  br i1 %cmp11.not, label %do.body19, label %if.then13

if.then13:                                        ; preds = %if.end
  call fastcc void @device_link_drop_managed(%struct.device_link* noundef %link.055) #16
  br label %for.inc

do.body19:                                        ; preds = %if.end
  store volatile i32 2, i32* %6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %do.body19, %if.then13
  %8 = bitcast i8* %.pn56 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %suppliers, %8
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %status34 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 3
  store i32 1, i32* %status34, align 8
  call fastcc void @device_links_write_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_link_drop_managed(%struct.device_link* noundef %link) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 6
  %0 = load i32, i32* %flags, align 4
  %1 = and i32 %0, -65
  store i32 %1, i32* %flags, align 4
  %status = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 5
  store volatile i32 -1, i32* %status, align 8
  %kref = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 8
  call fastcc void @kref_put(%struct.kref* noundef %kref) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_links_driver_bound(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %sync_list = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %sync_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %sync_list, i64 0, i32 0
  store %struct.list_head* %sync_list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %sync_list, i64 0, i32 1
  store %struct.list_head* %sync_list, %struct.list_head** %prev, align 8
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %tobool.not = icmp eq %struct.fwnode_handle* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %dev2 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %1, i64 0, i32 2
  %2 = load %struct.device*, %struct.device** %dev2, align 8
  %cmp = icmp eq %struct.device* %2, %dev
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @fwnode_links_purge_suppliers(%struct.fwnode_handle* noundef nonnull %1) #16
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call = call %struct.fwnode_handle* @fwnode_get_next_available_child_node(%struct.fwnode_handle* noundef %3, %struct.fwnode_handle* noundef null) #15
  %tobool5.not215 = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool5.not215, label %if.end, label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %child.0216 = phi %struct.fwnode_handle* [ %call7, %for.body ], [ %call, %if.then ]
  call void @fw_devlink_purge_absent_suppliers(%struct.fwnode_handle* noundef nonnull %child.0216) #16
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call7 = call %struct.fwnode_handle* @fwnode_get_next_available_child_node(%struct.fwnode_handle* noundef %4, %struct.fwnode_handle* noundef nonnull %child.0216) #15
  %tobool5.not = icmp eq %struct.fwnode_handle* %call7, null
  br i1 %tobool5.not, label %if.end, label %for.body

if.end:                                           ; preds = %for.body, %if.then, %land.lhs.true, %entry
  call void @device_remove_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_waiting_for_supplier) #16
  call fastcc void @device_links_write_lock() #16
  %links = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10
  %consumers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 1
  %5 = bitcast %struct.list_head* %consumers to i8**
  %.pn217 = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn217 to %struct.list_head*
  %cmp12.not218 = icmp eq %struct.list_head* %consumers, %6
  br i1 %cmp12.not218, label %for.end71, label %for.body13

for.body13:                                       ; preds = %if.end, %for.inc62
  %.pn219 = phi i8* [ %.pn, %for.inc62 ], [ %.pn217, %if.end ]
  %flags = getelementptr i8, i8* %.pn219, i64 516
  %7 = bitcast i8* %flags to i32*
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 64
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %for.inc62, label %if.end16

if.end16:                                         ; preds = %for.body13
  %status = getelementptr i8, i8* %.pn219, i64 512
  %10 = bitcast i8* %status to i32*
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %if.then36 [
    i32 2, label %for.inc62
    i32 3, label %for.inc62
    i32 0, label %if.end37
  ], !prof !16

if.then36:                                        ; preds = %if.end16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 1268; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !17
  br label %if.end37

if.end37:                                         ; preds = %if.end16, %if.then36
  store volatile i32 1, i32* %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 32
  %tobool59.not = icmp eq i32 %13, 0
  br i1 %tobool59.not, label %for.inc62, label %if.then60

if.then60:                                        ; preds = %if.end37
  %consumer = getelementptr i8, i8* %.pn219, i64 16
  %14 = bitcast i8* %consumer to %struct.device**
  %15 = load %struct.device*, %struct.device** %14, align 8
  call void @driver_deferred_probe_add(%struct.device* noundef %15) #15
  br label %for.inc62

for.inc62:                                        ; preds = %if.end16, %if.end16, %if.end37, %if.then60, %for.body13
  %16 = bitcast i8* %.pn219 to i8**
  %.pn = load i8*, i8** %16, align 8
  %17 = bitcast i8* %.pn to %struct.list_head*
  %cmp12.not = icmp eq %struct.list_head* %consumers, %17
  br i1 %cmp12.not, label %for.end71, label %for.body13

for.end71:                                        ; preds = %for.inc62, %if.end
  %18 = load i32, i32* @defer_sync_state_count, align 4
  %tobool72.not = icmp eq i32 %18, 0
  br i1 %tobool72.not, label %if.else, label %if.then73

if.then73:                                        ; preds = %for.end71
  call fastcc void @__device_links_supplier_defer_sync(%struct.device* noundef %dev) #16
  br label %if.end74

if.else:                                          ; preds = %for.end71
  call fastcc void @__device_links_queue_sync_state(%struct.device* noundef %dev, %struct.list_head* noundef nonnull %sync_list) #16
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.then73
  %suppliers = getelementptr inbounds %struct.dev_links_info, %struct.dev_links_info* %links, i64 0, i32 0
  %19 = bitcast %struct.dev_links_info* %links to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to %struct.list_head*
  %cmp94.not225 = icmp eq %struct.list_head* %suppliers, %21
  br i1 %cmp94.not225, label %for.end162, label %for.body98

for.body98:                                       ; preds = %if.end74, %cleanup
  %.pn213.in.in226 = phi i8* [ %.pn213229, %cleanup ], [ %20, %if.end74 ]
  %link.1.in227 = getelementptr i8, i8* %.pn213.in.in226, i64 -32
  %link.1228 = bitcast i8* %link.1.in227 to %struct.device_link*
  %.pn213229.in = bitcast i8* %.pn213.in.in226 to i8**
  %.pn213229 = load i8*, i8** %.pn213229.in, align 8
  %flags99 = getelementptr i8, i8* %.pn213.in.in226, i64 492
  %22 = bitcast i8* %flags99 to i32*
  %23 = load i32, i32* %22, align 4
  %conv100 = zext i32 %23 to i64
  %and101 = and i64 %conv100, 64
  %tobool102.not = icmp eq i64 %and101, 0
  br i1 %tobool102.not, label %cleanup, label %if.end104

if.end104:                                        ; preds = %for.body98
  %supplier105 = bitcast i8* %link.1.in227 to %struct.device**
  %24 = load %struct.device*, %struct.device** %supplier105, align 8
  %and108 = and i64 %conv100, 128
  %tobool109.not = icmp eq i64 %and108, 0
  br i1 %tobool109.not, label %if.else111, label %if.then110

if.then110:                                       ; preds = %if.end104
  call fastcc void @device_link_drop_managed(%struct.device_link* noundef %link.1228) #16
  br label %if.end148

if.else111:                                       ; preds = %if.end104
  %status113 = getelementptr i8, i8* %.pn213.in.in226, i64 488
  %25 = bitcast i8* %status113 to i32*
  %26 = load i32, i32* %25, align 8
  %cmp114.not = icmp eq i32 %26, 2
  br i1 %cmp114.not, label %if.end129, label %if.then128, !prof !7

if.then128:                                       ; preds = %if.else111
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 1295; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !18
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.else111
  store volatile i32 3, i32* %25, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.end129, %if.then110
  %27 = load i32, i32* @defer_sync_state_count, align 4
  %tobool149.not = icmp eq i32 %27, 0
  br i1 %tobool149.not, label %if.else151, label %if.then150

if.then150:                                       ; preds = %if.end148
  call fastcc void @__device_links_supplier_defer_sync(%struct.device* noundef %24) #16
  br label %cleanup

if.else151:                                       ; preds = %if.end148
  call fastcc void @__device_links_queue_sync_state(%struct.device* noundef %24, %struct.list_head* noundef nonnull %sync_list) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then150, %if.else151, %for.body98
  %28 = bitcast i8* %.pn213229 to %struct.list_head*
  %cmp94.not = icmp eq %struct.list_head* %suppliers, %28
  br i1 %cmp94.not, label %for.end162, label %for.body98

for.end162:                                       ; preds = %cleanup, %if.end74
  %status164 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 3
  store i32 2, i32* %status164, align 8
  call fastcc void @device_links_write_unlock() #16
  call fastcc void @device_links_flush_sync_list(%struct.list_head* noundef nonnull %sync_list, %struct.device* noundef %dev) #16
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_remove_file(%struct.device* noundef %dev, %struct.device_attribute* noundef %attr) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %attr1 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 0, i32 0
  call fastcc void @sysfs_remove_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_deferred_probe_add(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__device_links_supplier_defer_sync(%struct.device* noundef %sup) unnamed_addr #3 {
entry:
  %defer_sync = getelementptr inbounds %struct.device, %struct.device* %sup, i64 0, i32 10, i32 2
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %defer_sync) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i1 @dev_has_sync_state(%struct.device* noundef %sup) #16
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @list_add_tail(%struct.list_head* noundef %defer_sync, %struct.list_head* noundef nonnull @deferred_sync) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_links_no_driver(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call fastcc void @device_links_write_lock() #16
  %consumers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 1
  %0 = bitcast %struct.list_head* %consumers to i8**
  %.pn38 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn38 to %struct.list_head*
  %cmp.not39 = icmp eq %struct.list_head* %consumers, %1
  br i1 %cmp.not39, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn40 = phi i8* [ %.pn, %for.inc ], [ %.pn38, %entry ]
  %flags = getelementptr i8, i8* %.pn40, i64 516
  %2 = bitcast i8* %flags to i32*
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 64
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %status = getelementptr i8, i8* %.pn40, i64 512
  %5 = bitcast i8* %status to i32*
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, -2
  %switch = icmp eq i32 %7, 2
  br i1 %switch, label %do.body13, label %for.inc

do.body13:                                        ; preds = %if.end
  store volatile i32 0, i32* %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %do.body13, %for.body
  %8 = bitcast i8* %.pn40 to i8**
  %.pn = load i8*, i8** %8, align 8
  %9 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %consumers, %9
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  call fastcc void @__device_links_no_driver(%struct.device* noundef %dev) #16
  call fastcc void @device_links_write_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__device_links_no_driver(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %suppliers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 0
  %prev = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 0, i32 1
  %0 = bitcast %struct.list_head** %prev to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not111 = icmp eq %struct.list_head* %suppliers, %2
  br i1 %cmp.not111, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn104112 = phi i8* [ %.pn115, %for.inc ], [ %1, %entry ]
  %link.0.in113 = getelementptr i8, i8* %.pn104112, i64 -32
  %link.0114 = bitcast i8* %link.0.in113 to %struct.device_link*
  %.pn115.in.in = getelementptr inbounds i8, i8* %.pn104112, i64 8
  %.pn115.in = bitcast i8* %.pn115.in.in to i8**
  %.pn115 = load i8*, i8** %.pn115.in, align 8
  %flags = getelementptr i8, i8* %.pn104112, i64 492
  %3 = bitcast i8* %flags to i32*
  %4 = load i32, i32* %3, align 4
  %conv = zext i32 %4 to i64
  %and = and i64 %conv, 64
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %and13 = and i64 %conv, 2
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end
  call fastcc void @device_link_drop_managed(%struct.device_link* noundef %link.0114) #16
  br label %for.inc

if.end16:                                         ; preds = %if.end
  %status = getelementptr i8, i8* %.pn104112, i64 488
  %5 = bitcast i8* %status to i32*
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, -2
  %switch = icmp eq i32 %7, 2
  br i1 %switch, label %if.end23, label %for.inc

if.end23:                                         ; preds = %if.end16
  %supplier = bitcast i8* %link.0.in113 to %struct.device**
  %8 = load %struct.device*, %struct.device** %supplier, align 8
  %status25 = getelementptr inbounds %struct.device, %struct.device* %8, i64 0, i32 10, i32 3
  %9 = load i32, i32* %status25, align 8
  %cmp26 = icmp eq i32 %9, 2
  br i1 %cmp26, label %do.body33, label %if.else

do.body33:                                        ; preds = %if.end23
  store volatile i32 1, i32* %5, align 8
  br label %for.inc

if.else:                                          ; preds = %if.end23
  %10 = and i32 %4, 128
  %tobool42.not = icmp eq i32 %10, 0
  br i1 %tobool42.not, label %if.then53, label %if.end54, !prof !11

if.then53:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 1350; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !19
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.else
  store volatile i32 0, i32* %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %do.body33, %if.end54, %for.body, %if.then15
  %11 = bitcast i8* %.pn115 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %suppliers, %11
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %status83 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 3
  store i32 0, i32* %status83, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_links_driver_cleanup(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call fastcc void @device_links_write_lock() #16
  %consumers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 1
  %0 = bitcast %struct.list_head* %consumers to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.list_head*
  %cmp.not114 = icmp eq %struct.list_head* %consumers, %2
  br i1 %cmp.not114, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn.in.in115 = phi i8* [ %.pn117, %for.inc ], [ %1, %entry ]
  %link.0116.in = getelementptr i8, i8* %.pn.in.in115, i64 -8
  %link.0116 = bitcast i8* %link.0116.in to %struct.device_link*
  %.pn117.in = bitcast i8* %.pn.in.in115 to i8**
  %.pn117 = load i8*, i8** %.pn117.in, align 8
  %flags = getelementptr i8, i8* %.pn.in.in115, i64 516
  %3 = bitcast i8* %flags to i32*
  %4 = load i32, i32* %3, align 4
  %conv = zext i32 %4 to i64
  %and = and i64 %conv, 64
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %and13 = and i64 %conv, 2
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.end25, label %if.then24, !prof !7

if.then24:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 1415; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !20
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end
  %status = getelementptr i8, i8* %.pn.in.in115, i64 512
  %5 = bitcast i8* %status to i32*
  %6 = load i32, i32* %5, align 8
  %cmp35.not = icmp eq i32 %6, 4
  br i1 %cmp35.not, label %land.lhs.true, label %if.end50, !prof !7

if.end50:                                         ; preds = %if.end25
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 1416; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !21
  %.pr = load i32, i32* %5, align 8
  %cmp60 = icmp eq i32 %.pr, 4
  br i1 %cmp60, label %land.lhs.true, label %do.body72

land.lhs.true:                                    ; preds = %if.end25, %if.end50
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 16
  %tobool65.not = icmp eq i32 %8, 0
  br i1 %tobool65.not, label %do.body72, label %if.then66

if.then66:                                        ; preds = %land.lhs.true
  call fastcc void @device_link_drop_managed(%struct.device_link* noundef %link.0116) #16
  br label %do.body72

do.body72:                                        ; preds = %if.end50, %land.lhs.true, %if.then66
  store volatile i32 0, i32* %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %do.body72
  %9 = bitcast i8* %.pn117 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %consumers, %9
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %defer_sync = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 2
  call fastcc void @list_del_init(%struct.list_head* noundef %defer_sync) #16
  call fastcc void @__device_links_no_driver(%struct.device* noundef %dev) #16
  call fastcc void @device_links_write_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @device_links_busy(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call fastcc void @device_links_write_lock() #16
  %consumers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 1
  %0 = bitcast %struct.list_head* %consumers to i8**
  %.pn41 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn41 to %struct.list_head*
  %cmp.not42 = icmp eq %struct.list_head* %consumers, %1
  br i1 %cmp.not42, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn43 = phi i8* [ %.pn, %for.inc ], [ %.pn41, %entry ]
  %flags = getelementptr i8, i8* %.pn43, i64 516
  %2 = bitcast i8* %flags to i32*
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 64
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %status = getelementptr i8, i8* %.pn43, i64 512
  %5 = bitcast i8* %status to i32*
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, -2
  %switch = icmp eq i32 %7, 2
  br i1 %switch, label %for.end, label %do.body14

do.body14:                                        ; preds = %if.end
  store volatile i32 4, i32* %5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %do.body14
  %8 = bitcast i8* %.pn43 to i8**
  %.pn = load i8*, i8** %8, align 8
  %9 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %consumers, %9
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end, %entry
  %cmp.not.lcssa = phi i1 [ false, %entry ], [ true, %if.end ], [ false, %for.inc ]
  %status29 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 3
  store i32 3, i32* %status29, align 8
  call fastcc void @device_links_write_unlock() #16
  ret i1 %cmp.not.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_links_unbind_consumers(%struct.device* noundef readonly %dev) local_unnamed_addr #0 {
entry:
  call fastcc void @device_links_write_lock() #16
  %consumers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 1
  %0 = bitcast %struct.list_head* %consumers to i8**
  %.pn5660 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn5660 to %struct.list_head*
  %cmp.not5761 = icmp eq %struct.list_head* %consumers, %1
  br i1 %cmp.not5761, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body.backedge
  %.pn58 = phi i8* [ %.pn58.be, %for.body.backedge ], [ %.pn5660, %entry ]
  %flags = getelementptr i8, i8* %.pn58, i64 516
  %2 = bitcast i8* %flags to i32*
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 192
  %5 = icmp eq i32 %4, 64
  br i1 %5, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %status7 = getelementptr i8, i8* %.pn58, i64 512
  %6 = bitcast i8* %status7 to i32*
  %7 = load i32, i32* %6, align 8
  %cmp8 = icmp eq i32 %7, 2
  br i1 %cmp8, label %if.then10, label %do.body16

if.then10:                                        ; preds = %if.end
  call fastcc void @device_links_write_unlock() #16
  call void @wait_for_device_probe() #15
  br label %cleanup

do.body16:                                        ; preds = %if.end
  store volatile i32 4, i32* %6, align 8
  %cmp22 = icmp eq i32 %7, 3
  br i1 %cmp22, label %if.then24, label %for.inc

if.then24:                                        ; preds = %do.body16
  %consumer25 = getelementptr i8, i8* %.pn58, i64 16
  %8 = bitcast i8* %consumer25 to %struct.device**
  %9 = load %struct.device*, %struct.device** %8, align 8
  %call = call %struct.device* @get_device(%struct.device* noundef %9) #16
  call fastcc void @device_links_write_unlock() #16
  %parent = getelementptr inbounds %struct.device, %struct.device* %9, i64 0, i32 1
  %10 = load %struct.device*, %struct.device** %parent, align 8
  call void @device_release_driver_internal(%struct.device* noundef %9, %struct.device_driver* noundef null, %struct.device* noundef %10) #15
  call void @put_device(%struct.device* noundef %9) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.then10
  call fastcc void @device_links_write_lock() #16
  %.pn56 = load i8*, i8** %0, align 8
  %11 = bitcast i8* %.pn56 to %struct.list_head*
  %cmp.not57 = icmp eq %struct.list_head* %consumers, %11
  br i1 %cmp.not57, label %for.end, label %for.body.backedge

for.inc:                                          ; preds = %for.body, %do.body16
  %12 = bitcast i8* %.pn58 to i8**
  %.pn = load i8*, i8** %12, align 8
  %13 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %consumers, %13
  br i1 %cmp.not, label %for.end, label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc, %cleanup
  %.pn58.be = phi i8* [ %.pn, %for.inc ], [ %.pn56, %cleanup ]
  br label %for.body

for.end:                                          ; preds = %cleanup, %for.inc, %entry
  call fastcc void @device_links_write_unlock() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver_internal(%struct.device* noundef, %struct.device_driver* noundef, %struct.device* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @fw_devlink_setup(i8* noundef %arg) #6 section ".init.text" {
entry:
  %tobool.not = icmp eq i8* %arg, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @strcmp(i8* noundef nonnull %arg, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return.sink.split, label %if.else

if.else:                                          ; preds = %if.end
  %call2 = call i32 @strcmp(i8* noundef nonnull %arg, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0)) #15
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %return.sink.split, label %if.else5

if.else5:                                         ; preds = %if.else
  %call6 = call i32 @strcmp(i8* noundef nonnull %arg, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0)) #15
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %return.sink.split, label %if.else9

if.else9:                                         ; preds = %if.else5
  %call10 = call i32 @strcmp(i8* noundef nonnull %arg, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0)) #15
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.else9, %if.else5, %if.else, %if.end
  %.sink = phi i32 [ 0, %if.end ], [ 384, %if.else ], [ 288, %if.else5 ], [ 292, %if.else9 ]
  store i32 %.sink, i32* @fw_devlink_flags, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.else9, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ 0, %if.else9 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @fw_devlink_strict_setup(i8* noundef %arg) #6 section ".init.text" {
entry:
  %call = call fastcc i32 @strtobool(i8* noundef %arg, i8* noundef nonnull @fw_devlink_strict) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @fw_devlink_get_flags() local_unnamed_addr #7 {
entry:
  %0 = load i32, i32* @fw_devlink_flags, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @fw_devlink_is_strict() local_unnamed_addr #7 {
entry:
  %0 = load i8, i8* @fw_devlink_strict, align 4, !range !22
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call fastcc i1 @fw_devlink_is_permissive() #16
  %lnot = xor i1 %call, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @fw_devlink_drivers_done() local_unnamed_addr #0 {
entry:
  store i1 true, i1* @fw_devlink_drv_reg_done, align 1
  call fastcc void @device_links_write_lock() #16
  %call = call i32 @class_for_each_device(%struct.class* noundef nonnull @devlink_class, %struct.device* noundef null, i8* noundef null, i32 (%struct.device*, i8*)* noundef nonnull @fw_devlink_no_driver) #15
  call fastcc void @device_links_write_unlock() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(%struct.class* noundef, %struct.device* noundef, i8* noundef, i32 (%struct.device*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal i32 @fw_devlink_no_driver(%struct.device* nocapture noundef %dev, i8* nocapture noundef readnone %data) #8 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 31
  %supplier = bitcast %struct.class** %add.ptr to %struct.device**
  %0 = load %struct.device*, %struct.device** %supplier, align 8
  %can_match = getelementptr inbounds %struct.device, %struct.device* %0, i64 0, i32 37
  %bf.load = load i8, i8* %can_match, align 4
  %1 = and i8 %bf.load, 16
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.class** %add.ptr to %struct.device_link*
  call fastcc void @fw_devlink_relax_link(%struct.device_link* noundef %2) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lock_device_hotplug() local_unnamed_addr #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @device_hotplug_lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @unlock_device_hotplug() local_unnamed_addr #0 {
entry:
  call void @mutex_unlock(%struct.mutex* noundef nonnull @device_hotplug_lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lock_device_hotplug_sysfs() local_unnamed_addr #0 {
entry:
  %call = call i32 @mutex_trylock(%struct.mutex* noundef nonnull @device_hotplug_lock) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  call void @msleep(i32 noundef 5) #15
  call fastcc void @restart_syscall() #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ -513, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restart_syscall() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !23
  %1 = inttoptr i64 %0 to %struct.task_struct*
  call fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i8* @dev_driver_string(%struct.device* noundef %dev) local_unnamed_addr #9 {
entry:
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %0 = load volatile %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool.not = icmp eq %struct.device_driver* %0, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i64 0, i32 0
  %1 = load i8*, i8** %name, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call fastcc i8* @dev_bus_name(%struct.device* noundef %dev) #16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ %call, %cond.false ]
  ret i8* %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @device_store_ulong(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readonly %attr, i8* noundef %buf, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %new = alloca i64, align 8
  %0 = bitcast i64* %new to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %new, align 8, !annotation !9
  %call = call fastcc i32 @kstrtoul(i8* noundef %buf, i64* noundef nonnull %new) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %new, align 8
  %2 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 1, i32 0, i32 0
  %3 = bitcast i8** %2 to i64**
  %4 = load i64*, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %size, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtoul(i8* noundef %s, i64* noundef %res) unnamed_addr #0 {
entry:
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef 0, i64* noundef %res) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @device_show_ulong(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readonly %attr, i8* noundef %buf) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 1, i32 0, i32 0
  %1 = bitcast i8** %0 to i64**
  %2 = load i64*, i64** %1, align 8
  %3 = load i64, i64* %2, align 8
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 noundef %3) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @device_store_int(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readonly %attr, i8* noundef %buf, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %new = alloca i64, align 8
  %0 = bitcast i64* %new to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %new, align 8, !annotation !9
  %call = call fastcc i32 @kstrtol(i8* noundef %buf, i64* noundef nonnull %new) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %new, align 8
  %2 = add i64 %1, -2147483648
  %3 = icmp ult i64 %2, -4294967296
  br i1 %3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %conv6 = trunc i64 %1 to i32
  %4 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 1, i32 0, i32 0
  %5 = bitcast i8** %4 to i32**
  %6 = load i32*, i32** %5, align 8
  store i32 %conv6, i32* %6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %size, %if.end5 ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtol(i8* noundef %s, i64* noundef %res) unnamed_addr #0 {
entry:
  %call = call i32 @kstrtoll(i8* noundef %s, i32 noundef 0, i64* noundef %res) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @device_show_int(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readonly %attr, i8* noundef %buf) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 1, i32 0, i32 0
  %1 = bitcast i8** %0 to i32**
  %2 = load i32*, i32** %1, align 8
  %3 = load i32, i32* %2, align 4
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %3) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @device_store_bool(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readonly %attr, i8* noundef %buf, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 1, i32 0, i32 0
  %1 = load i8*, i8** %0, align 8
  %call = call fastcc i32 @strtobool(i8* noundef %buf, i8* noundef %1) #16
  %cmp = icmp slt i32 %call, 0
  %.size = select i1 %cmp, i64 -22, i64 %size
  ret i64 %.size
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @strtobool(i8* noundef %s, i8* noundef %res) unnamed_addr #0 {
entry:
  %call = call i32 @kstrtobool(i8* noundef %s, i8* noundef %res) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @device_show_bool(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readonly %attr, i8* noundef %buf) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 1, i32 0, i32 0
  %1 = load i8*, i8** %0, align 8
  %2 = load i8, i8* %1, align 1, !range !22
  %3 = zext i8 %2 to i32
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %3) #15
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_add_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %groups) local_unnamed_addr #0 {
entry:
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call i32 @sysfs_create_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %groups) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(%struct.kobject* noundef, %struct.attribute_group** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_remove_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %groups) local_unnamed_addr #0 {
entry:
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %groups) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(%struct.kobject* noundef, %struct.attribute_group** noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devm_device_add_group(%struct.device* noundef %dev, %struct.attribute_group* noundef %grp) local_unnamed_addr #0 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_attr_group_remove, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0)) #15
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call1 = call i32 @sysfs_create_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef %grp) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %group = bitcast i8* %call to %struct.attribute_group**
  store %struct.attribute_group* %grp, %struct.attribute_group** %group, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_attr_group_remove(%struct.device* noundef %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %group1 = bitcast i8* %res to %struct.attribute_group**
  %0 = load %struct.attribute_group*, %struct.attribute_group** %group1, align 8
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(%struct.device* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_device_remove_group(%struct.device* noundef %dev, %struct.attribute_group* noundef %grp) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.attribute_group* %grp to i8*
  %call = call i32 @devres_release(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_attr_group_remove, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_attr_group_match, i8* noundef %0) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 2559; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(%struct.device* noundef, void (%struct.device*, i8*)* noundef, i32 (%struct.device*, i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @devm_attr_group_match(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readonly %res, i8* noundef readnone %data) #7 {
entry:
  %group = bitcast i8* %res to %struct.attribute_group**
  %0 = load %struct.attribute_group*, %struct.attribute_group** %group, align 8
  %1 = bitcast i8* %data to %struct.attribute_group*
  %cmp = icmp eq %struct.attribute_group* %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @devm_device_add_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %groups) local_unnamed_addr #0 {
entry:
  %call = call noalias i8* @__devres_alloc_node(void (%struct.device*, i8*)* noundef nonnull @devm_attr_groups_remove, i64 noundef 8, i32 noundef 3264, i32 noundef -1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #15
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call1 = call i32 @sysfs_create_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %groups) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @devres_free(i8* noundef nonnull %call) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %groups5 = bitcast i8* %call to %struct.attribute_group***
  store %struct.attribute_group** %groups, %struct.attribute_group*** %groups5, align 8
  call void @devres_add(%struct.device* noundef %dev, i8* noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devm_attr_groups_remove(%struct.device* noundef %dev, i8* nocapture noundef readonly %res) #0 {
entry:
  %groups1 = bitcast i8* %res to %struct.attribute_group***
  %0 = load %struct.attribute_group**, %struct.attribute_group*** %groups1, align 8
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devm_device_remove_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %groups) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.attribute_group** %groups to i8*
  %call = call i32 @devres_release(%struct.device* noundef %dev, void (%struct.device*, i8*)* noundef nonnull @devm_attr_groups_remove, i32 (%struct.device*, i8*, i8*)* noundef nonnull @devm_attr_group_match, i8* noundef %0) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 2612; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @devices_kset_move_last(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %tobool.not = icmp eq %struct.kset* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.kset, %struct.kset* %0, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %entry1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0, i32 1
  %1 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %list = getelementptr inbounds %struct.kset, %struct.kset* %1, i64 0, i32 0
  call fastcc void @list_move_tail(%struct.list_head* noundef %entry1, %struct.list_head* noundef %list) #16
  %2 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %rlock.i3 = getelementptr inbounds %struct.kset, %struct.kset* %2, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i3) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #16
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_create_file(%struct.device* noundef %dev, %struct.device_attribute* noundef %attr) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %if.end73, label %if.then

if.then:                                          ; preds = %entry
  %attr1 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 0, i32 0
  %mode = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 0, i32 0, i32 1
  %0 = load i16, i16* %mode, align 8
  %1 = and i16 %0, 146
  %tobool2.not = icmp eq i16 %1, 0
  br i1 %tobool2.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %store = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 0, i32 2
  %2 = load i64 (%struct.device*, %struct.device_attribute*, i8*, i64)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)** %store, align 8
  %tobool3.not = icmp eq i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* %2, null
  br i1 %tobool3.not, label %do.end, label %if.end, !prof !11

do.end:                                           ; preds = %land.rhs
  %name = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 0, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* noundef %3) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 2760; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !26
  %.pre = load i16, i16* %mode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end, %land.rhs
  %4 = phi i16 [ %0, %if.then ], [ %.pre, %do.end ], [ %0, %land.rhs ]
  %5 = and i16 %4, 292
  %tobool33.not = icmp eq i16 %5, 0
  br i1 %tobool33.not, label %if.end63, label %land.rhs34

land.rhs34:                                       ; preds = %if.end
  %show = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 0, i32 1
  %6 = load i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*)** %show, align 8
  %tobool35.not = icmp eq i64 (%struct.device*, %struct.device_attribute*, i8*)* %6, null
  br i1 %tobool35.not, label %do.end55, label %if.end63, !prof !11

do.end55:                                         ; preds = %land.rhs34
  %name57 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %name57, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* noundef %7) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 2763; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !27
  br label %if.end63

if.end63:                                         ; preds = %if.end, %do.end55, %land.rhs34
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr1) #16
  br label %if.end73

if.end73:                                         ; preds = %if.end63, %entry
  %error.0 = phi i32 [ %call, %if.end63 ], [ 0, %entry ]
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr) unnamed_addr #0 {
entry:
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef null) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sysfs_remove_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr) unnamed_addr #0 {
entry:
  call void @sysfs_remove_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef null) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @device_remove_file_self(%struct.device* noundef %dev, %struct.device_attribute* noundef %attr) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %attr1 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %attr, i64 0, i32 0
  %call = call i1 @sysfs_remove_file_self(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr1) #15
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i1 [ %call, %if.then ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @sysfs_remove_file_self(%struct.kobject* noundef, %struct.attribute* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_create_bin_file(%struct.device* noundef %dev, %struct.bin_attribute* noundef %attr) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call i32 @sysfs_create_bin_file(%struct.kobject* noundef %kobj, %struct.bin_attribute* noundef %attr) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %error.0 = phi i32 [ %call, %if.then ], [ -22, %entry ]
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(%struct.kobject* noundef, %struct.bin_attribute* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_remove_bin_file(%struct.device* noundef %dev, %struct.bin_attribute* noundef %attr) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_bin_file(%struct.kobject* noundef %kobj, %struct.bin_attribute* noundef %attr) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(%struct.kobject* noundef, %struct.bin_attribute* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_initialize(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %kset = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0, i32 3
  store %struct.kset* %0, %struct.kset** %kset, align 8
  call void @kobject_init(%struct.kobject* noundef %kobj, %struct.kobj_type* noundef nonnull @device_ktype) #15
  %dma_pools = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 21
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %dma_pools) #16
  %mutex = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 9
  call void @__mutex_init(%struct.mutex* noundef %mutex, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @device_initialize.__key) #15
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 29, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %devres_head = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 30
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %devres_head) #16
  call fastcc void @device_pm_init(%struct.device* noundef %dev) #16
  %.compoundliteral8.sroa.0.0..sroa_idx = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 14, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral8.sroa.0.0..sroa_idx, align 8
  %msi_list = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 15
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %msi_list) #16
  %consumers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %consumers) #16
  %suppliers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %suppliers) #16
  %defer_sync = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 2
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %defer_sync) #16
  %status = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 3
  store i32 0, i32* %status, align 8
  %1 = load i8, i8* @dma_default_coherent, align 1, !range !22
  %dma_coherent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %dma_coherent, align 4
  %bf.shl = shl nuw nsw i8 %1, 5
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %dma_coherent, align 4
  %dma_io_tlb_mem = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 23
  store %struct.io_tlb_mem* @io_tlb_default_mem, %struct.io_tlb_mem** %dma_io_tlb_mem, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(%struct.kobject* noundef, %struct.kobj_type* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @device_pm_init(%struct.device* nocapture noundef %dev) unnamed_addr #8 {
entry:
  call fastcc void @device_pm_init_common(%struct.device* noundef %dev) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kobject* @virtual_device_parent(%struct.device* nocapture readnone %dev) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kobject*, %struct.kobject** @virtual_device_parent.virtual_dir, align 8
  %tobool.not = icmp eq %struct.kobject* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %1, i64 0, i32 2
  %call = call %struct.kobject* @kobject_create_and_add(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), %struct.kobject* noundef %kobj) #15
  store %struct.kobject* %call, %struct.kobject** @virtual_device_parent.virtual_dir, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi %struct.kobject* [ %call, %if.then ], [ %0, %entry ]
  ret %struct.kobject* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_create_and_add(i8* noundef, %struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name_vargs(%struct.kobject* noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_add(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call = call %struct.device* @get_device(%struct.device* noundef %dev) #16
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 2
  %0 = load %struct.device_private*, %struct.device_private** %p, align 8
  %tobool1.not = icmp eq %struct.device_private* %0, null
  br i1 %tobool1.not, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @device_private_init(%struct.device* noundef nonnull %call) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %done

if.end7:                                          ; preds = %if.then2, %if.end
  %init_name = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 3
  %1 = load i8*, i8** %init_name, align 8
  %tobool8.not = icmp eq i8* %1, null
  br i1 %tobool8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call11 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef nonnull %call, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* noundef nonnull %1) #16
  store i8* null, i8** %init_name, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7
  %call14 = call fastcc i8* @dev_name(%struct.device* noundef nonnull %call) #16
  %tobool15.not = icmp eq i8* %call14, null
  br i1 %tobool15.not, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end13
  %bus = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 5
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool16.not = icmp eq %struct.bus_type* %2, null
  br i1 %tobool16.not, label %if.end24, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true
  %dev_name = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i64 0, i32 1
  %3 = load i8*, i8** %dev_name, align 8
  %tobool19.not = icmp eq i8* %3, null
  br i1 %tobool19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %land.lhs.true17
  %id = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 28
  %4 = load i32, i32* %id, align 4
  %call23 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef nonnull %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %3, i32 noundef %4) #16
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true17, %land.lhs.true, %if.end13
  %call25 = call fastcc i8* @dev_name(%struct.device* noundef nonnull %call) #16
  %tobool26.not = icmp eq i8* %call25, null
  br i1 %tobool26.not, label %name_error, label %if.end28

if.end28:                                         ; preds = %if.end24
  %parent29 = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 1
  %5 = load %struct.device*, %struct.device** %parent29, align 8
  %call30 = call %struct.device* @get_device(%struct.device* noundef %5) #16
  %call31 = call fastcc %struct.kobject* @get_device_parent(%struct.device* noundef nonnull %call, %struct.device* noundef %call30) #16
  %6 = bitcast %struct.kobject* %call31 to i8*
  %call32 = call fastcc i1 @IS_ERR(i8* noundef %6) #16
  br i1 %call32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end28
  %call34 = call fastcc i64 @PTR_ERR(i8* noundef %6) #16
  %conv = trunc i64 %call34 to i32
  br label %parent_error

if.end35:                                         ; preds = %if.end28
  %tobool36.not = icmp eq %struct.kobject* %call31, null
  %parent50.phi.trans.insert = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 0, i32 2
  br i1 %tobool36.not, label %if.end35.if.end40_crit_edge, label %if.then37

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  %.pre = load %struct.kobject*, %struct.kobject** %parent50.phi.trans.insert, align 8
  br label %if.end40

if.then37:                                        ; preds = %if.end35
  store %struct.kobject* %call31, %struct.kobject** %parent50.phi.trans.insert, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end35.if.end40_crit_edge, %if.then37
  %7 = phi %struct.kobject* [ %.pre, %if.end35.if.end40_crit_edge ], [ %call31, %if.then37 ]
  %tobool41.not = icmp eq %struct.device* %call30, null
  %kobj48 = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 0
  %call51 = call i32 (%struct.kobject*, %struct.kobject*, i8*, ...) @kobject_add(%struct.kobject* noundef %kobj48, %struct.kobject* noundef %7, i8* noundef null) #15
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end40
  %call54 = call fastcc %struct.kobject* @get_glue_dir(%struct.device* noundef nonnull %call) #16
  br label %Error

if.end55:                                         ; preds = %if.end40
  call fastcc void @device_platform_notify(%struct.device* noundef nonnull %call) #16
  %call56 = call i32 @device_create_file(%struct.device* noundef nonnull %call, %struct.device_attribute* noundef nonnull @dev_attr_uevent) #16
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %attrError

if.end59:                                         ; preds = %if.end55
  %call60 = call fastcc i32 @device_add_class_symlinks(%struct.device* noundef nonnull %call) #16
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %SymlinkError

if.end63:                                         ; preds = %if.end59
  %call64 = call fastcc i32 @device_add_attrs(%struct.device* noundef nonnull %call) #16
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %AttrsError

if.end67:                                         ; preds = %if.end63
  %call68 = call i32 @bus_add_device(%struct.device* noundef nonnull %call) #15
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %BusError

if.end71:                                         ; preds = %if.end67
  %devt = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 27
  %8 = load i32, i32* %devt, align 8
  %tobool76.not = icmp ult i32 %8, 1048576
  br i1 %tobool76.not, label %if.end87, label %if.then77

if.then77:                                        ; preds = %if.end71
  %call78 = call i32 @device_create_file(%struct.device* noundef nonnull %call, %struct.device_attribute* noundef nonnull @dev_attr_dev) #16
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %DevAttrError

if.end81:                                         ; preds = %if.then77
  %call82 = call fastcc i32 @device_create_sys_dev_entry(%struct.device* noundef nonnull %call) #16
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end87, label %SysEntryError

if.end87:                                         ; preds = %if.end81, %if.end71
  %bus88 = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 5
  %9 = load %struct.bus_type*, %struct.bus_type** %bus88, align 8
  %tobool89.not = icmp eq %struct.bus_type* %9, null
  br i1 %tobool89.not, label %if.end94, label %if.then90

if.then90:                                        ; preds = %if.end87
  %p92 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %9, i64 0, i32 20
  %10 = load %struct.subsys_private*, %struct.subsys_private** %p92, align 8
  %bus_notifier = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %10, i64 0, i32 7
  %11 = bitcast %struct.device* %call to i8*
  %call93 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef %bus_notifier, i64 noundef 1, i8* noundef %11) #15
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.end87
  %call96 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj48, i32 noundef 0) #15
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 26
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %tobool97.not = icmp eq %struct.fwnode_handle* %12, null
  br i1 %tobool97.not, label %if.end105, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %if.end94
  %dev100 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %12, i64 0, i32 2
  %13 = load %struct.device*, %struct.device** %dev100, align 8
  %tobool101.not = icmp eq %struct.device* %13, null
  br i1 %tobool101.not, label %if.then102, label %if.end105

if.then102:                                       ; preds = %land.lhs.true98
  store %struct.device* %call, %struct.device** %dev100, align 8
  call fastcc void @fw_devlink_link_device(%struct.device* noundef nonnull %call) #16
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %land.lhs.true98, %if.end94
  call void @bus_probe_device(%struct.device* noundef nonnull %call) #15
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %tobool107.not = icmp eq %struct.fwnode_handle* %14, null
  br i1 %tobool107.not, label %if.end113, label %land.lhs.true108

land.lhs.true108:                                 ; preds = %if.end105
  %.b267 = load i1, i1* @fw_devlink_drv_reg_done, align 1
  br i1 %.b267, label %land.lhs.true111, label %if.end113

land.lhs.true111:                                 ; preds = %land.lhs.true108
  %can_match = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 37
  %bf.load = load i8, i8* %can_match, align 4
  %15 = and i8 %bf.load, 16
  %bf.cast.not = icmp eq i8 %15, 0
  br i1 %bf.cast.not, label %if.then112, label %if.end113

if.then112:                                       ; preds = %land.lhs.true111
  call fastcc void @fw_devlink_unblock_consumers(%struct.device* noundef nonnull %call) #16
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %land.lhs.true111, %land.lhs.true108, %if.end105
  br i1 %tobool41.not, label %if.end118, label %if.then115

if.then115:                                       ; preds = %if.end113
  %16 = load %struct.device_private*, %struct.device_private** %p, align 8
  %knode_parent = getelementptr inbounds %struct.device_private, %struct.device_private* %16, i64 0, i32 1
  %p117 = getelementptr inbounds %struct.device, %struct.device* %call30, i64 0, i32 2
  %17 = load %struct.device_private*, %struct.device_private** %p117, align 8
  %klist_children = getelementptr inbounds %struct.device_private, %struct.device_private* %17, i64 0, i32 0
  call void @klist_add_tail(%struct.klist_node* noundef %knode_parent, %struct.klist* noundef %klist_children) #15
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end113
  %class = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 31
  %18 = load %struct.class*, %struct.class** %class, align 8
  %tobool119.not = icmp eq %struct.class* %18, null
  br i1 %tobool119.not, label %done, label %if.then120

if.then120:                                       ; preds = %if.end118
  %p122 = getelementptr inbounds %struct.class, %struct.class* %18, i64 0, i32 14
  %19 = load %struct.subsys_private*, %struct.subsys_private** %p122, align 8
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %19, i64 0, i32 3
  call void @mutex_lock(%struct.mutex* noundef %mutex) #15
  %20 = load %struct.device_private*, %struct.device_private** %p, align 8
  %knode_class = getelementptr inbounds %struct.device_private, %struct.device_private* %20, i64 0, i32 4
  %21 = load %struct.class*, %struct.class** %class, align 8
  %p125 = getelementptr inbounds %struct.class, %struct.class* %21, i64 0, i32 14
  %22 = load %struct.subsys_private*, %struct.subsys_private** %p125, align 8
  %klist_devices = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %22, i64 0, i32 5
  call void @klist_add_tail(%struct.klist_node* noundef %knode_class, %struct.klist* noundef %klist_devices) #15
  %23 = load %struct.class*, %struct.class** %class, align 8
  %p127 = getelementptr inbounds %struct.class, %struct.class* %23, i64 0, i32 14
  %24 = load %struct.subsys_private*, %struct.subsys_private** %p127, align 8
  %next = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %24, i64 0, i32 2, i32 0
  %25 = bitcast %struct.list_head** %next to %struct.class_interface**
  %class_intf.0268 = load %struct.class_interface*, %struct.class_interface** %25, align 8
  %node269 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %class_intf.0268, i64 0, i32 0
  %interfaces131271 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %24, i64 0, i32 2
  %cmp132.not272 = icmp eq %struct.list_head* %node269, %interfaces131271
  br i1 %cmp132.not272, label %for.end, label %for.body

for.body:                                         ; preds = %if.then120, %for.inc
  %26 = phi %struct.class* [ %28, %for.inc ], [ %23, %if.then120 ]
  %class_intf.0273 = phi %struct.class_interface* [ %class_intf.0, %for.inc ], [ %class_intf.0268, %if.then120 ]
  %add_dev = getelementptr inbounds %struct.class_interface, %struct.class_interface* %class_intf.0273, i64 0, i32 2
  %27 = load i32 (%struct.device*, %struct.class_interface*)*, i32 (%struct.device*, %struct.class_interface*)** %add_dev, align 8
  %tobool134.not = icmp eq i32 (%struct.device*, %struct.class_interface*)* %27, null
  br i1 %tobool134.not, label %for.inc, label %if.then135

if.then135:                                       ; preds = %for.body
  %call137 = call i32 %27(%struct.device* noundef %call, %struct.class_interface* noundef %class_intf.0273) #15
  %.pre276 = load %struct.class*, %struct.class** %class, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then135
  %28 = phi %struct.class* [ %26, %for.body ], [ %.pre276, %if.then135 ]
  %29 = bitcast %struct.class_interface* %class_intf.0273 to %struct.class_interface**
  %class_intf.0 = load %struct.class_interface*, %struct.class_interface** %29, align 8
  %node = getelementptr inbounds %struct.class_interface, %struct.class_interface* %class_intf.0, i64 0, i32 0
  %p130 = getelementptr inbounds %struct.class, %struct.class* %28, i64 0, i32 14
  %30 = load %struct.subsys_private*, %struct.subsys_private** %p130, align 8
  %interfaces131 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %30, i64 0, i32 2
  %cmp132.not = icmp eq %struct.list_head* %node, %interfaces131
  br i1 %cmp132.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.then120
  %.lcssa = phi %struct.subsys_private* [ %24, %if.then120 ], [ %30, %for.inc ]
  %mutex149 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %.lcssa, i64 0, i32 3
  call void @mutex_unlock(%struct.mutex* noundef %mutex149) #15
  br label %done

done:                                             ; preds = %if.end118, %for.end, %if.then2, %entry, %name_error
  %error.1 = phi i32 [ %error.10, %name_error ], [ 0, %for.end ], [ 0, %if.end118 ], [ %call3, %if.then2 ], [ -22, %entry ]
  call void @put_device(%struct.device* noundef %call) #16
  ret i32 %error.1

SysEntryError:                                    ; preds = %if.end81
  %31 = load i32, i32* %devt, align 8
  %tobool153.not = icmp ult i32 %31, 1048576
  br i1 %tobool153.not, label %DevAttrError, label %if.then154

if.then154:                                       ; preds = %SysEntryError
  call void @device_remove_file(%struct.device* noundef nonnull %call, %struct.device_attribute* noundef nonnull @dev_attr_dev) #16
  br label %DevAttrError

DevAttrError:                                     ; preds = %SysEntryError, %if.then154, %if.then77
  %error.2 = phi i32 [ %call78, %if.then77 ], [ %call82, %if.then154 ], [ %call82, %SysEntryError ]
  call void @bus_remove_device(%struct.device* noundef nonnull %call) #15
  br label %BusError

BusError:                                         ; preds = %if.end67, %DevAttrError
  %error.4 = phi i32 [ %call68, %if.end67 ], [ %error.2, %DevAttrError ]
  call fastcc void @device_remove_attrs(%struct.device* noundef nonnull %call) #16
  br label %AttrsError

AttrsError:                                       ; preds = %if.end63, %BusError
  %error.5 = phi i32 [ %call64, %if.end63 ], [ %error.4, %BusError ]
  call fastcc void @device_remove_class_symlinks(%struct.device* noundef nonnull %call) #16
  br label %SymlinkError

SymlinkError:                                     ; preds = %if.end59, %AttrsError
  %error.6 = phi i32 [ %call60, %if.end59 ], [ %error.5, %AttrsError ]
  call void @device_remove_file(%struct.device* noundef nonnull %call, %struct.device_attribute* noundef nonnull @dev_attr_uevent) #16
  br label %attrError

attrError:                                        ; preds = %if.end55, %SymlinkError
  %error.7 = phi i32 [ %call56, %if.end55 ], [ %error.6, %SymlinkError ]
  call fastcc void @device_platform_notify_remove(%struct.device* noundef nonnull %call) #16
  %call157 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj48, i32 noundef 1) #15
  %call158 = call fastcc %struct.kobject* @get_glue_dir(%struct.device* noundef nonnull %call) #16
  call void @kobject_del(%struct.kobject* noundef %kobj48) #15
  br label %Error

Error:                                            ; preds = %attrError, %if.then53
  %glue_dir.0 = phi %struct.kobject* [ %call54, %if.then53 ], [ %call158, %attrError ]
  %error.8 = phi i32 [ %call51, %if.then53 ], [ %error.7, %attrError ]
  call fastcc void @cleanup_glue_dir(%struct.device* noundef nonnull %call, %struct.kobject* noundef %glue_dir.0) #16
  br label %parent_error

parent_error:                                     ; preds = %Error, %if.then33
  %error.9 = phi i32 [ %conv, %if.then33 ], [ %error.8, %Error ]
  call void @put_device(%struct.device* noundef %call30) #16
  br label %name_error

name_error:                                       ; preds = %if.end24, %parent_error
  %error.10 = phi i32 [ %error.9, %parent_error ], [ -22, %if.end24 ]
  %32 = bitcast %struct.device_private** %p to i8**
  %33 = load i8*, i8** %32, align 8
  call void @kfree(i8* noundef %33) #15
  store %struct.device_private* null, %struct.device_private** %p, align 8
  br label %done
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @device_private_init(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 216) #16
  %p = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %0 = bitcast %struct.device_private** %p to i8**
  store i8* %call, i8** %0, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds i8, i8* %call, i64 200
  %1 = bitcast i8* %device to %struct.device**
  store %struct.device* %dev, %struct.device** %1, align 8
  %2 = load %struct.device_private*, %struct.device_private** %p, align 8
  %klist_children = getelementptr inbounds %struct.device_private, %struct.device_private* %2, i64 0, i32 0
  call void @klist_init(%struct.klist* noundef %klist_children, void (%struct.klist_node*)* noundef nonnull @klist_children_get, void (%struct.klist_node*)* noundef nonnull @klist_children_put) #15
  %3 = load %struct.device_private*, %struct.device_private** %p, align 8
  %deferred_probe = getelementptr inbounds %struct.device_private, %struct.device_private* %3, i64 0, i32 5
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %deferred_probe) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kobject* @get_device_parent(%struct.device* nocapture noundef readonly %dev, %struct.device* noundef %parent) unnamed_addr #0 {
entry:
  %class = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %0 = load %struct.class*, %struct.class** %class, align 8
  %tobool.not = icmp eq %struct.class* %0, null
  %tobool46.not = icmp eq %struct.device* %parent, null
  br i1 %tobool.not, label %if.end45, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool46.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %call = call %struct.kobject* @virtual_device_parent(%struct.device* undef) #16
  br label %if.end10

if.else:                                          ; preds = %if.then
  %class2 = getelementptr inbounds %struct.device, %struct.device* %parent, i64 0, i32 31
  %1 = load %struct.class*, %struct.class** %class2, align 8
  %tobool3.not = icmp eq %struct.class* %1, null
  br i1 %tobool3.not, label %if.else8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %ns_type = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 10
  %2 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %ns_type, align 8
  %tobool5.not = icmp eq %struct.kobj_ns_type_operations* %2, null
  br i1 %tobool5.not, label %if.then6, label %if.else8

if.then6:                                         ; preds = %land.lhs.true
  %kobj7 = getelementptr inbounds %struct.device, %struct.device* %parent, i64 0, i32 0
  br label %return

if.else8:                                         ; preds = %land.lhs.true, %if.else
  %kobj9 = getelementptr inbounds %struct.device, %struct.device* %parent, i64 0, i32 0
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then1
  %parent_kobj.0 = phi %struct.kobject* [ %call, %if.then1 ], [ %kobj9, %if.else8 ]
  call void @mutex_lock(%struct.mutex* noundef nonnull @gdp_mutex) #15
  %3 = load %struct.class*, %struct.class** %class, align 8
  %p = getelementptr inbounds %struct.class, %struct.class* %3, i64 0, i32 14
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %rlock.i = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i64 0, i32 10, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %5 = load %struct.class*, %struct.class** %class, align 8
  %p13 = getelementptr inbounds %struct.class, %struct.class* %5, i64 0, i32 14
  %6 = load %struct.subsys_private*, %struct.subsys_private** %p13, align 8
  %next = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %6, i64 0, i32 10, i32 0, i32 0
  %7 = bitcast %struct.list_head** %next to i8**
  %list19 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %6, i64 0, i32 10, i32 0
  %.pn92 = load i8*, i8** %7, align 8
  %8 = bitcast i8* %.pn92 to %struct.list_head*
  %cmp20.not93 = icmp eq %struct.list_head* %list19, %8
  br i1 %cmp20.not93, label %for.end.thread, label %for.body

for.body:                                         ; preds = %if.end10, %for.inc
  %.pn94 = phi i8* [ %.pn, %for.inc ], [ %.pn92, %if.end10 ]
  %parent21 = getelementptr i8, i8* %.pn94, i64 16
  %9 = bitcast i8* %parent21 to %struct.kobject**
  %10 = load %struct.kobject*, %struct.kobject** %9, align 8
  %cmp22 = icmp eq %struct.kobject* %10, %parent_kobj.0
  br i1 %cmp22, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = bitcast i8* %.pn94 to i8**
  %.pn = load i8*, i8** %11, align 8
  %12 = bitcast i8* %.pn to %struct.list_head*
  %cmp20.not = icmp eq %struct.list_head* %list19, %12
  br i1 %cmp20.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.inc, %if.end10
  %rlock.i9098 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %6, i64 0, i32 10, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i9098) #15
  br label %if.end40

for.end:                                          ; preds = %for.body
  %k.0.in.le = getelementptr i8, i8* %.pn94, i64 -8
  %k.0.le = bitcast i8* %k.0.in.le to %struct.kobject*
  %call24 = call %struct.kobject* @kobject_get(%struct.kobject* noundef %k.0.le) #15
  %.pre = load %struct.class*, %struct.class** %class, align 8
  %p35.phi.trans.insert = getelementptr inbounds %struct.class, %struct.class* %.pre, i64 0, i32 14
  %.pre96 = load %struct.subsys_private*, %struct.subsys_private** %p35.phi.trans.insert, align 8
  %rlock.i90 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %.pre96, i64 0, i32 10, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i90) #15
  %tobool38.not = icmp eq %struct.kobject* %call24, null
  br i1 %tobool38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %for.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @gdp_mutex) #15
  br label %return

if.end40:                                         ; preds = %for.end.thread, %for.end
  %13 = load %struct.class*, %struct.class** %class, align 8
  %call42 = call fastcc %struct.kobject* @class_dir_create_and_add(%struct.class* noundef %13, %struct.kobject* noundef %parent_kobj.0) #16
  call void @mutex_unlock(%struct.mutex* noundef nonnull @gdp_mutex) #15
  br label %return

if.end45:                                         ; preds = %entry
  br i1 %tobool46.not, label %land.lhs.true47, label %if.then58

land.lhs.true47:                                  ; preds = %if.end45
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %14 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool48.not = icmp eq %struct.bus_type* %14, null
  br i1 %tobool48.not, label %return, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %land.lhs.true47
  %dev_root = getelementptr inbounds %struct.bus_type, %struct.bus_type* %14, i64 0, i32 2
  %15 = load %struct.device*, %struct.device** %dev_root, align 8
  %kobj55 = getelementptr %struct.device, %struct.device* %15, i64 0, i32 0
  br label %return

if.then58:                                        ; preds = %if.end45
  %kobj59 = getelementptr inbounds %struct.device, %struct.device* %parent, i64 0, i32 0
  br label %return

return:                                           ; preds = %land.lhs.true49, %land.lhs.true47, %if.then6, %if.then39, %if.end40, %if.then58
  %retval.1 = phi %struct.kobject* [ %kobj59, %if.then58 ], [ %call24, %if.then39 ], [ %call42, %if.end40 ], [ %kobj7, %if.then6 ], [ null, %land.lhs.true47 ], [ %kobj55, %land.lhs.true49 ]
  ret %struct.kobject* %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #4 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kobject* @get_glue_dir(%struct.device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0, i32 2
  %0 = load %struct.kobject*, %struct.kobject** %parent, align 8
  ret %struct.kobject* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_platform_notify(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  call void @software_node_notify(%struct.device* noundef %dev) #15
  %0 = load i32 (%struct.device*)*, i32 (%struct.device*)** @platform_notify, align 8
  %tobool.not = icmp eq i32 (%struct.device*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %0(%struct.device* noundef %dev) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @device_add_class_symlinks(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.device_node* @dev_of_node(%struct.device* noundef %dev) #16
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %kobj1 = getelementptr inbounds %struct.device_node, %struct.device_node* %call, i64 0, i32 9
  %call2 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj, %struct.kobject* noundef %kobj1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0)) #15
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.then
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.65, i64 0, i64 0), i32 noundef %call2) #18
  br label %if.end5

if.end5:                                          ; preds = %if.then, %do.end, %entry
  %class = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %0 = load %struct.class*, %struct.class** %class, align 8
  %tobool6.not = icmp eq %struct.class* %0, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %kobj9 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %p = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 14
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj11 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 0, i32 2
  %call12 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj9, %struct.kobject* noundef %kobj11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0)) #15
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %out_devnode

if.end15:                                         ; preds = %if.end8
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 1
  %2 = load %struct.device*, %struct.device** %parent, align 8
  %tobool16.not = icmp eq %struct.device* %2, null
  br i1 %tobool16.not, label %if.end27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15
  %call17 = call fastcc i32 @device_is_not_partition(%struct.device* noundef %dev) #16
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end27, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %kobj22 = getelementptr inbounds %struct.device, %struct.device* %2, i64 0, i32 0
  %call23 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj9, %struct.kobject* noundef %kobj22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0)) #15
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %out_subsys

if.end27:                                         ; preds = %if.then19, %land.lhs.true, %if.end15
  %3 = load %struct.class*, %struct.class** %class, align 8
  %p29 = getelementptr inbounds %struct.class, %struct.class* %3, i64 0, i32 14
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p29, align 8
  %kobj31 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i64 0, i32 0, i32 2
  %call33 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #16
  %call34 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj31, %struct.kobject* noundef %kobj9, i8* noundef %call33) #15
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %out_device

out_device:                                       ; preds = %if.end27
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj9, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0)) #15
  br label %out_subsys

out_subsys:                                       ; preds = %if.then19, %out_device
  %error.0 = phi i32 [ %call23, %if.then19 ], [ %call34, %out_device ]
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj9, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0)) #15
  br label %out_devnode

out_devnode:                                      ; preds = %if.end8, %out_subsys
  %error.1 = phi i32 [ %call12, %if.end8 ], [ %error.0, %out_subsys ]
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj9, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0)) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end5, %out_devnode
  %retval.0 = phi i32 [ %error.1, %out_devnode ], [ 0, %if.end5 ], [ 0, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @device_add_attrs(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %class1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %0 = load %struct.class*, %struct.class** %class1, align 8
  %type2 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 4
  %1 = load %struct.device_type*, %struct.device_type** %type2, align 8
  %tobool.not = icmp eq %struct.class* %0, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %dev_groups = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 3
  %2 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups, align 8
  %call = call i32 @device_add_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %2) #16
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.then, %entry
  %tobool6.not = icmp eq %struct.device_type* %1, null
  br i1 %tobool6.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end5
  %groups = getelementptr inbounds %struct.device_type, %struct.device_type* %1, i64 0, i32 1
  %3 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8
  %call8 = call i32 @device_add_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %3) #16
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %err_remove_class_groups

if.end12:                                         ; preds = %if.then7, %if.end5
  %groups13 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 32
  %4 = load %struct.attribute_group**, %struct.attribute_group*** %groups13, align 8
  %call14 = call i32 @device_add_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %4) #16
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %err_remove_type_groups

if.end17:                                         ; preds = %if.end12
  %call18 = call fastcc i1 @device_supports_offline(%struct.device* noundef %dev) #16
  br i1 %call18, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end17
  %offline_disabled = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %offline_disabled, align 4
  %5 = and i8 %bf.load, 1
  %bf.cast.not = icmp eq i8 %5, 0
  br i1 %bf.cast.not, label %if.then19, label %if.end24

if.then19:                                        ; preds = %land.lhs.true
  %call20 = call i32 @device_create_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_online) #16
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %err_remove_dev_groups

if.end24:                                         ; preds = %if.then19, %land.lhs.true, %if.end17
  %6 = load i32, i32* @fw_devlink_flags, align 4
  %tobool25.not = icmp eq i32 %6, 0
  br i1 %tobool25.not, label %if.end35, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end24
  %call27 = call fastcc i1 @fw_devlink_is_permissive() #16
  br i1 %call27, label %if.end35, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true26
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %tobool29.not = icmp eq %struct.fwnode_handle* %7, null
  br i1 %tobool29.not, label %if.end35, label %if.then30

if.then30:                                        ; preds = %land.lhs.true28
  %call31 = call i32 @device_create_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_waiting_for_supplier) #16
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end35, label %err_remove_dev_online

if.end35:                                         ; preds = %if.then30, %land.lhs.true28, %land.lhs.true26, %if.end24
  %call36 = call fastcc i1 @dev_removable_is_valid(%struct.device* noundef %dev) #16
  br i1 %call36, label %if.then37, label %cleanup

if.then37:                                        ; preds = %if.end35
  %call38 = call i32 @device_create_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_removable) #16
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %err_remove_dev_waiting_for_supplier

err_remove_dev_waiting_for_supplier:              ; preds = %if.then37
  call void @device_remove_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_waiting_for_supplier) #16
  br label %err_remove_dev_online

err_remove_dev_online:                            ; preds = %if.then30, %err_remove_dev_waiting_for_supplier
  %error.0 = phi i32 [ %call38, %err_remove_dev_waiting_for_supplier ], [ %call31, %if.then30 ]
  call void @device_remove_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_online) #16
  br label %err_remove_dev_groups

err_remove_dev_groups:                            ; preds = %if.then19, %err_remove_dev_online
  %error.1 = phi i32 [ %error.0, %err_remove_dev_online ], [ %call20, %if.then19 ]
  %8 = load %struct.attribute_group**, %struct.attribute_group*** %groups13, align 8
  call void @device_remove_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %8) #16
  br label %err_remove_type_groups

err_remove_type_groups:                           ; preds = %if.end12, %err_remove_dev_groups
  %error.2 = phi i32 [ %call14, %if.end12 ], [ %error.1, %err_remove_dev_groups ]
  br i1 %tobool6.not, label %err_remove_class_groups, label %if.then45

if.then45:                                        ; preds = %err_remove_type_groups
  %groups46 = getelementptr inbounds %struct.device_type, %struct.device_type* %1, i64 0, i32 1
  %9 = load %struct.attribute_group**, %struct.attribute_group*** %groups46, align 8
  call void @device_remove_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %9) #16
  br label %err_remove_class_groups

err_remove_class_groups:                          ; preds = %err_remove_type_groups, %if.then45, %if.then7
  %error.3 = phi i32 [ %call8, %if.then7 ], [ %error.2, %if.then45 ], [ %error.2, %err_remove_type_groups ]
  br i1 %tobool.not, label %cleanup, label %if.then49

if.then49:                                        ; preds = %err_remove_class_groups
  %dev_groups50 = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 3
  %10 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups50, align 8
  call void @device_remove_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %10) #16
  br label %cleanup

cleanup:                                          ; preds = %err_remove_class_groups, %if.then49, %if.end35, %if.then37, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.then37 ], [ 0, %if.end35 ], [ %error.3, %if.then49 ], [ %error.3, %err_remove_class_groups ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_add_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @device_create_sys_dev_entry(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %devt_str = alloca [15 x i8], align 1
  %call = call fastcc %struct.kobject* @device_to_dev_kobj(%struct.device* noundef %dev) #16
  %0 = getelementptr inbounds [15 x i8], [15 x i8]* %devt_str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 15, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(15) %0, i8 0, i64 15, i1 false), !annotation !9
  %tobool.not = icmp eq %struct.kobject* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 27
  %1 = load i32, i32* %devt, align 8
  %shr = lshr i32 %1, 20
  %and = and i32 %1, 1048575
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i32 noundef %shr, i32 noundef %and) #15
  %kobj4 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call6 = call i32 @sysfs_create_link(%struct.kobject* noundef nonnull %call, %struct.kobject* noundef %kobj4, i8* noundef nonnull %0) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %error.0 = phi i32 [ %call6, %if.then ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 15, i8* nonnull %0) #17
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fw_devlink_link_device(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %fwnode1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode1, align 8
  %1 = load i32, i32* @fw_devlink_flags, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @fw_devlink_parse_fwtree(%struct.fwnode_handle* noundef %0) #16
  call void @mutex_lock(%struct.mutex* noundef nonnull @fwnode_link_lock) #15
  call fastcc void @__fw_devlink_link_to_consumers(%struct.device* noundef %dev) #16
  call fastcc void @__fw_devlink_link_to_suppliers(%struct.device* noundef %dev, %struct.fwnode_handle* noundef %0) #16
  call void @mutex_unlock(%struct.mutex* noundef nonnull @fwnode_link_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_probe_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fw_devlink_unblock_consumers(%struct.device* noundef readonly %dev) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @fw_devlink_flags, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call fastcc i1 @fw_devlink_is_permissive() #16
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  call fastcc void @device_links_write_lock() #16
  %consumers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 1
  %1 = bitcast %struct.list_head* %consumers to i8**
  %.pn17 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn17 to %struct.list_head*
  %cmp.not18 = icmp eq %struct.list_head* %consumers, %2
  br i1 %cmp.not18, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %.pn19 = phi i8* [ %.pn, %for.body ], [ %.pn17, %if.end ]
  %link.0.in = getelementptr i8, i8* %.pn19, i64 -8
  %link.0 = bitcast i8* %link.0.in to %struct.device_link*
  call fastcc void @fw_devlink_relax_link(%struct.device_link* noundef %link.0) #16
  %3 = bitcast i8* %.pn19 to i8**
  %.pn = load i8*, i8** %3, align 8
  %4 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %consumers, %4
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  call fastcc void @device_links_write_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_add_tail(%struct.klist_node* noundef, %struct.klist* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_remove_device(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_remove_attrs(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %class1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %0 = load %struct.class*, %struct.class** %class1, align 8
  %type2 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 4
  %1 = load %struct.device_type*, %struct.device_type** %type2, align 8
  call void @device_remove_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_removable) #16
  call void @device_remove_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_waiting_for_supplier) #16
  call void @device_remove_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_online) #16
  %groups = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 32
  %2 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8
  call void @device_remove_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %2) #16
  %tobool.not = icmp eq %struct.device_type* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %groups3 = getelementptr inbounds %struct.device_type, %struct.device_type* %1, i64 0, i32 1
  %3 = load %struct.attribute_group**, %struct.attribute_group*** %groups3, align 8
  call void @device_remove_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %3) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq %struct.class* %0, null
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  %dev_groups = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 3
  %4 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups, align 8
  call void @device_remove_groups(%struct.device* noundef %dev, %struct.attribute_group** noundef %4) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_remove_class_symlinks(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.device_node* @dev_of_node(%struct.device* noundef %dev) #16
  %tobool.not = icmp eq %struct.device_node* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0)) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %class = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %0 = load %struct.class*, %struct.class** %class, align 8
  %tobool1.not = icmp eq %struct.class* %0, null
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 1
  %1 = load %struct.device*, %struct.device** %parent, align 8
  %tobool4.not = icmp eq %struct.device* %1, null
  br i1 %tobool4.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %call5 = call fastcc i32 @device_is_not_partition(%struct.device* noundef %dev) #16
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %kobj8 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0)) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true, %if.end3
  %kobj10 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj10, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0)) #15
  %2 = load %struct.class*, %struct.class** %class, align 8
  %p = getelementptr inbounds %struct.class, %struct.class* %2, i64 0, i32 14
  %3 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj12 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %3, i64 0, i32 0, i32 2
  %call14 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #16
  call void @sysfs_delete_link(%struct.kobject* noundef %kobj12, %struct.kobject* noundef %kobj10, i8* noundef %call14) #15
  br label %return

return:                                           ; preds = %if.end, %if.end9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_platform_notify_remove(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  call void @software_node_notify_remove(%struct.device* noundef %dev) #15
  %0 = load i32 (%struct.device*)*, i32 (%struct.device*)** @platform_notify_remove, align 8
  %tobool.not = icmp eq i32 (%struct.device*)* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %0(%struct.device* noundef %dev) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cleanup_glue_dir(%struct.device* nocapture noundef readonly %dev, %struct.kobject* noundef %glue_dir) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @live_in_glue_dir(%struct.kobject* noundef %glue_dir, %struct.device* noundef %dev) #16
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @gdp_mutex) #15
  %kref = getelementptr inbounds %struct.kobject, %struct.kobject* %glue_dir, i64 0, i32 6
  %call1 = call fastcc i32 @kref_read(%struct.kref* noundef %kref) #16
  %call2 = call fastcc i1 @kobject_has_children(%struct.kobject* noundef %glue_dir) #16
  %call2.not = xor i1 %call2, true
  %tobool.not = icmp eq i32 %call1, 1
  %or.cond = select i1 %call2.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @kobject_del(%struct.kobject* noundef %glue_dir) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call void @kobject_put(%struct.kobject* noundef %glue_dir) #15
  call void @mutex_unlock(%struct.mutex* noundef nonnull @gdp_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef readnone %kobj) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.kobject* %kobj to %struct.device*
  ret %struct.device* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local i1 @kill_device(%struct.device* nocapture noundef readonly %dev) local_unnamed_addr #8 {
entry:
  %p = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %0 = load %struct.device_private*, %struct.device_private** %p, align 8
  %dead = getelementptr inbounds %struct.device_private, %struct.device_private* %0, i64 0, i32 9
  %bf.load = load i8, i8* %dead, align 8
  %bf.clear = and i8 %bf.load, 1
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %dead, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_del(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %parent1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 1
  %0 = load %struct.device*, %struct.device** %parent1, align 8
  call fastcc void @device_lock(%struct.device* noundef %dev) #16
  %call = call i1 @kill_device(%struct.device* noundef %dev) #16
  call fastcc void @device_unlock(%struct.device* noundef %dev) #16
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %tobool.not = icmp eq %struct.fwnode_handle* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %dev3 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %1, i64 0, i32 2
  %2 = load %struct.device*, %struct.device** %dev3, align 8
  %cmp = icmp eq %struct.device* %2, %dev
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct.device* null, %struct.device** %dev3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call6 = call fastcc i32 @memalloc_noio_save() #16
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %3 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool7.not = icmp eq %struct.bus_type* %3, null
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end
  %p = getelementptr inbounds %struct.bus_type, %struct.bus_type* %3, i64 0, i32 20
  %4 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %bus_notifier = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %4, i64 0, i32 7
  %5 = bitcast %struct.device* %dev to i8*
  %call10 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef %bus_notifier, i64 noundef 2, i8* noundef %5) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end
  %tobool12.not = icmp eq %struct.device* %0, null
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  %p14 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %6 = load %struct.device_private*, %struct.device_private** %p14, align 8
  %knode_parent = getelementptr inbounds %struct.device_private, %struct.device_private* %6, i64 0, i32 1
  call void @klist_del(%struct.klist_node* noundef %knode_parent) #15
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 27
  %7 = load i32, i32* %devt, align 8
  %tobool16.not = icmp ult i32 %7, 1048576
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end15
  call fastcc void @device_remove_sys_dev_entry(%struct.device* noundef %dev) #16
  call void @device_remove_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_dev) #16
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  %class = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %8 = load %struct.class*, %struct.class** %class, align 8
  %tobool20.not = icmp eq %struct.class* %8, null
  br i1 %tobool20.not, label %if.end46, label %if.then21

if.then21:                                        ; preds = %if.end19
  call fastcc void @device_remove_class_symlinks(%struct.device* noundef %dev) #16
  %9 = load %struct.class*, %struct.class** %class, align 8
  %p23 = getelementptr inbounds %struct.class, %struct.class* %9, i64 0, i32 14
  %10 = load %struct.subsys_private*, %struct.subsys_private** %p23, align 8
  %mutex = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %10, i64 0, i32 3
  call void @mutex_lock(%struct.mutex* noundef %mutex) #15
  %11 = load %struct.class*, %struct.class** %class, align 8
  %p25 = getelementptr inbounds %struct.class, %struct.class* %11, i64 0, i32 14
  %12 = load %struct.subsys_private*, %struct.subsys_private** %p25, align 8
  %next = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %12, i64 0, i32 2, i32 0
  %13 = bitcast %struct.list_head** %next to %struct.class_interface**
  %class_intf.0111 = load %struct.class_interface*, %struct.class_interface** %13, align 8
  %node112 = getelementptr inbounds %struct.class_interface, %struct.class_interface* %class_intf.0111, i64 0, i32 0
  %interfaces28114 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %12, i64 0, i32 2
  %cmp29.not115 = icmp eq %struct.list_head* %node112, %interfaces28114
  br i1 %cmp29.not115, label %for.end, label %for.body

for.body:                                         ; preds = %if.then21, %for.inc
  %14 = phi %struct.class* [ %16, %for.inc ], [ %11, %if.then21 ]
  %class_intf.0116 = phi %struct.class_interface* [ %class_intf.0, %for.inc ], [ %class_intf.0111, %if.then21 ]
  %remove_dev = getelementptr inbounds %struct.class_interface, %struct.class_interface* %class_intf.0116, i64 0, i32 3
  %15 = load void (%struct.device*, %struct.class_interface*)*, void (%struct.device*, %struct.class_interface*)** %remove_dev, align 8
  %tobool30.not = icmp eq void (%struct.device*, %struct.class_interface*)* %15, null
  br i1 %tobool30.not, label %for.inc, label %if.then31

if.then31:                                        ; preds = %for.body
  call void %15(%struct.device* noundef %dev, %struct.class_interface* noundef %class_intf.0116) #15
  %.pre = load %struct.class*, %struct.class** %class, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then31
  %16 = phi %struct.class* [ %14, %for.body ], [ %.pre, %if.then31 ]
  %17 = bitcast %struct.class_interface* %class_intf.0116 to %struct.class_interface**
  %class_intf.0 = load %struct.class_interface*, %struct.class_interface** %17, align 8
  %node = getelementptr inbounds %struct.class_interface, %struct.class_interface* %class_intf.0, i64 0, i32 0
  %p27 = getelementptr inbounds %struct.class, %struct.class* %16, i64 0, i32 14
  %18 = load %struct.subsys_private*, %struct.subsys_private** %p27, align 8
  %interfaces28 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %18, i64 0, i32 2
  %cmp29.not = icmp eq %struct.list_head* %node, %interfaces28
  br i1 %cmp29.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.then21
  %p42 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 2
  %19 = load %struct.device_private*, %struct.device_private** %p42, align 8
  %knode_class = getelementptr inbounds %struct.device_private, %struct.device_private* %19, i64 0, i32 4
  call void @klist_del(%struct.klist_node* noundef %knode_class) #15
  %20 = load %struct.class*, %struct.class** %class, align 8
  %p44 = getelementptr inbounds %struct.class, %struct.class* %20, i64 0, i32 14
  %21 = load %struct.subsys_private*, %struct.subsys_private** %p44, align 8
  %mutex45 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %21, i64 0, i32 3
  call void @mutex_unlock(%struct.mutex* noundef %mutex45) #15
  br label %if.end46

if.end46:                                         ; preds = %for.end, %if.end19
  call void @device_remove_file(%struct.device* noundef %dev, %struct.device_attribute* noundef nonnull @dev_attr_uevent) #16
  call fastcc void @device_remove_attrs(%struct.device* noundef %dev) #16
  call void @bus_remove_device(%struct.device* noundef %dev) #15
  call void @driver_deferred_probe_del(%struct.device* noundef %dev) #15
  call fastcc void @device_platform_notify_remove(%struct.device* noundef %dev) #16
  call void @device_remove_properties(%struct.device* noundef %dev) #15
  call fastcc void @device_links_purge(%struct.device* noundef %dev) #16
  %22 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool48.not = icmp eq %struct.bus_type* %22, null
  br i1 %tobool48.not, label %if.end54, label %if.then49

if.then49:                                        ; preds = %if.end46
  %p51 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %22, i64 0, i32 20
  %23 = load %struct.subsys_private*, %struct.subsys_private** %p51, align 8
  %bus_notifier52 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %23, i64 0, i32 7
  %24 = bitcast %struct.device* %dev to i8*
  %call53 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef %bus_notifier52, i64 noundef 3, i8* noundef %24) #15
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %if.end46
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call55 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 1) #15
  %call56 = call fastcc %struct.kobject* @get_glue_dir(%struct.device* noundef %dev) #16
  call void @kobject_del(%struct.kobject* noundef %kobj) #15
  call fastcc void @cleanup_glue_dir(%struct.device* noundef %dev, %struct.kobject* noundef %call56) #16
  call fastcc void @memalloc_noio_restore(i32 noundef %call6) #16
  call void @put_device(%struct.device* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_lock(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 9
  call void @mutex_lock(%struct.mutex* noundef %mutex) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_unlock(%struct.device* noundef %dev) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 9
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @memalloc_noio_save() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !23
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags1, align 4
  %and = and i32 %2, 524288
  %or = or i32 %2, 524288
  store i32 %or, i32* %flags1, align 4
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_del(%struct.klist_node* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_remove_sys_dev_entry(%struct.device* nocapture noundef readonly %dev) unnamed_addr #0 {
entry:
  %devt_str = alloca [15 x i8], align 1
  %call = call fastcc %struct.kobject* @device_to_dev_kobj(%struct.device* noundef %dev) #16
  %0 = getelementptr inbounds [15 x i8], [15 x i8]* %devt_str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 15, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(15) %0, i8 0, i64 15, i1 false), !annotation !9
  %tobool.not = icmp eq %struct.kobject* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 27
  %1 = load i32, i32* %devt, align 8
  %shr = lshr i32 %1, 20
  %and = and i32 %1, 1048575
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i32 noundef %shr, i32 noundef %and) #15
  call void @sysfs_remove_link(%struct.kobject* noundef nonnull %call, i8* noundef nonnull %0) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 15, i8* nonnull %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_deferred_probe_del(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_properties(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_links_purge(%struct.device* noundef readonly %dev) unnamed_addr #0 {
entry:
  %class = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %0 = load %struct.class*, %struct.class** %class, align 8
  %cmp = icmp eq %struct.class* %0, @devlink_class
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @device_links_write_lock() #16
  %suppliers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 0
  %prev = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 0, i32 1
  %1 = bitcast %struct.list_head** %prev to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.list_head*
  %cmp11.not138 = icmp eq %struct.list_head* %suppliers, %3
  br i1 %cmp11.not138, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %if.end21
  %.pn131139 = phi i8* [ %.pn140, %if.end21 ], [ %2, %if.end ]
  %.pn140.in.in = getelementptr inbounds i8, i8* %.pn131139, i64 8
  %.pn140.in = bitcast i8* %.pn140.in.in to i8**
  %.pn140 = load i8*, i8** %.pn140.in, align 8
  %status = getelementptr i8, i8* %.pn131139, i64 488
  %4 = bitcast i8* %status to i32*
  %5 = load i32, i32* %4, align 8
  %cmp12 = icmp eq i32 %5, 3
  br i1 %cmp12, label %if.then20, label %if.end21, !prof !11

if.then20:                                        ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 1547; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !28
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %for.body
  %kref = getelementptr i8, i8* %.pn131139, i64 500
  %6 = bitcast i8* %kref to %struct.kref*
  call fastcc void @__device_link_del(%struct.kref* noundef %6) #16
  %7 = bitcast i8* %.pn140 to %struct.list_head*
  %cmp11.not = icmp eq %struct.list_head* %suppliers, %7
  br i1 %cmp11.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end21, %if.end
  %consumers = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 1
  %prev40 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 10, i32 1, i32 1
  %8 = bitcast %struct.list_head** %prev40 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.list_head*
  %cmp57.not144 = icmp eq %struct.list_head* %consumers, %10
  br i1 %cmp57.not144, label %for.end101, label %for.body61

for.body61:                                       ; preds = %for.end, %if.end82
  %.pn133145 = phi i8* [ %.pn130146, %if.end82 ], [ %9, %for.end ]
  %.pn130146.in.in = getelementptr inbounds i8, i8* %.pn133145, i64 8
  %.pn130146.in = bitcast i8* %.pn130146.in.in to i8**
  %.pn130146 = load i8*, i8** %.pn130146.in, align 8
  %status63 = getelementptr i8, i8* %.pn133145, i64 512
  %11 = bitcast i8* %status63 to i32*
  %12 = load i32, i32* %11, align 8
  %13 = add i32 %12, -1
  %14 = icmp ult i32 %13, -2
  br i1 %14, label %if.then81, label %if.end82, !prof !11

if.then81:                                        ; preds = %for.body61
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 1553; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !29
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %for.body61
  %kref91 = getelementptr i8, i8* %.pn133145, i64 524
  %15 = bitcast i8* %kref91 to %struct.kref*
  call fastcc void @__device_link_del(%struct.kref* noundef %15) #16
  %16 = bitcast i8* %.pn130146 to %struct.list_head*
  %cmp57.not = icmp eq %struct.list_head* %consumers, %16
  br i1 %cmp57.not, label %for.end101, label %for.body61

for.end101:                                       ; preds = %if.end82, %for.end
  call fastcc void @device_links_write_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end101
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memalloc_noio_restore(i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #19, !srcloc !23
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load i32, i32* %flags1, align 4
  %and = and i32 %2, -524289
  %or = or i32 %and, %flags
  store i32 %or, i32* %flags1, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_unregister(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call void @device_del(%struct.device* noundef %dev) #16
  call void @put_device(%struct.device* noundef %dev) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @device_get_devnode(%struct.device* noundef %dev, i16* noundef %mode, %struct.kuid_t* noundef %uid, %struct.kgid_t* noundef %gid, i8** nocapture noundef %tmp) local_unnamed_addr #0 {
entry:
  store i8* null, i8** %tmp, align 8
  %type = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 4
  %0 = load %struct.device_type*, %struct.device_type** %type, align 8
  %tobool.not = icmp eq %struct.device_type* %0, null
  br i1 %tobool.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %devnode = getelementptr inbounds %struct.device_type, %struct.device_type* %0, i64 0, i32 3
  %1 = load i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)** %devnode, align 8
  %tobool2.not = icmp eq i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* %1, null
  br i1 %tobool2.not, label %if.end7, label %if.end

if.end:                                           ; preds = %land.lhs.true
  %call = call i8* %1(%struct.device* noundef %dev, i16* noundef %mode, %struct.kuid_t* noundef %uid, %struct.kgid_t* noundef %gid) #15
  store i8* %call, i8** %tmp, align 8
  %tobool5.not = icmp eq i8* %call, null
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %land.lhs.true, %entry, %if.end
  %class = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %2 = load %struct.class*, %struct.class** %class, align 8
  %tobool8.not = icmp eq %struct.class* %2, null
  br i1 %tobool8.not, label %if.end20, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end7
  %devnode11 = getelementptr inbounds %struct.class, %struct.class* %2, i64 0, i32 6
  %3 = load i8* (%struct.device*, i16*)*, i8* (%struct.device*, i16*)** %devnode11, align 8
  %tobool12.not = icmp eq i8* (%struct.device*, i16*)* %3, null
  br i1 %tobool12.not, label %if.end20, label %if.end17

if.end17:                                         ; preds = %land.lhs.true9
  %call16 = call i8* %3(%struct.device* noundef %dev, i16* noundef %mode) #15
  store i8* %call16, i8** %tmp, align 8
  %tobool18.not = icmp eq i8* %call16, null
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %land.lhs.true9, %if.end7, %if.end17
  %call21 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #16
  %call22 = call i8* @strchr(i8* noundef %call21, i32 noundef 33) #15
  %cmp = icmp eq i8* %call22, null
  %call24 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #16
  br i1 %cmp, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end20
  %call27 = call noalias i8* @kstrdup(i8* noundef %call24, i32 noundef 3264) #15
  %tobool28.not = icmp eq i8* %call27, null
  br i1 %tobool28.not, label %cleanup, label %if.end30

if.end30:                                         ; preds = %if.end25
  %call31 = call i8* @strreplace(i8* noundef nonnull %call27, i8 noundef 33, i8 noundef 47) #15
  store i8* %call27, i8** %tmp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end25, %if.end17, %if.end, %if.end30
  %retval.0 = phi i8* [ %call27, %if.end30 ], [ %call, %if.end ], [ %call16, %if.end17 ], [ null, %if.end25 ], [ %call24, %if.end20 ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kstrdup(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strreplace(i8* noundef, i8 noundef, i8 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init(%struct.klist* noundef, %struct.klist_iter* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device* @next_device(%struct.klist_iter* noundef %i) unnamed_addr #0 {
entry:
  %call = call %struct.klist_node* @klist_next(%struct.klist_iter* noundef %i) #15
  %tobool.not = icmp eq %struct.klist_node* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.klist_node, %struct.klist_node* %call, i64 -2, i32 2
  %device = getelementptr inbounds %struct.kref, %struct.kref* %add.ptr, i64 50
  %0 = bitcast %struct.kref* %device to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dev.0 = phi %struct.device* [ %1, %if.then ], [ null, %entry ]
  ret %struct.device* %dev.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(%struct.klist_iter* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_for_each_child_reverse(%struct.device* nocapture noundef readonly %parent, i8* noundef %data, i32 (%struct.device*, i8*)* nocapture noundef readonly %fn) local_unnamed_addr #0 {
entry:
  %i = alloca %struct.klist_iter, align 8
  %0 = bitcast %struct.klist_iter* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %p = getelementptr inbounds %struct.device, %struct.device* %parent, i64 0, i32 2
  %1 = load %struct.device_private*, %struct.device_private** %p, align 8
  %tobool.not = icmp eq %struct.device_private* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %klist_children = getelementptr inbounds %struct.device_private, %struct.device_private* %1, i64 0, i32 0
  call void @klist_iter_init(%struct.klist* noundef %klist_children, %struct.klist_iter* noundef nonnull %i) #15
  %call11 = call fastcc %struct.device* @prev_device(%struct.klist_iter* noundef nonnull %i) #16
  %tobool212.not = icmp eq %struct.device* %call11, null
  br i1 %tobool212.not, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %while.body
  %call13 = phi %struct.device* [ %call, %while.body ], [ %call11, %if.end ]
  %call4 = call i32 %fn(%struct.device* noundef nonnull %call13, i8* noundef %data) #15
  %call = call fastcc %struct.device* @prev_device(%struct.klist_iter* noundef nonnull %i) #16
  %tobool2 = icmp ne %struct.device* %call, null
  %tobool3.not = icmp eq i32 %call4, 0
  %2 = select i1 %tobool2, i1 %tobool3.not, i1 false
  br i1 %2, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end
  %error.0.lcssa = phi i32 [ 0, %if.end ], [ %call4, %while.body ]
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %i) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %error.0.lcssa, %while.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device* @prev_device(%struct.klist_iter* noundef %i) unnamed_addr #0 {
entry:
  %call = call %struct.klist_node* @klist_prev(%struct.klist_iter* noundef %i) #15
  %tobool.not = icmp eq %struct.klist_node* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.klist_node, %struct.klist_node* %call, i64 -2, i32 2
  %device = getelementptr inbounds %struct.kref, %struct.kref* %add.ptr, i64 50
  %0 = bitcast %struct.kref* %device to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dev.0 = phi %struct.device* [ %1, %if.then ], [ null, %entry ]
  ret %struct.device* %dev.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @device_find_child(%struct.device* noundef readonly %parent, i8* noundef %data, i32 (%struct.device*, i8*)* nocapture noundef readonly %match) local_unnamed_addr #0 {
entry:
  %i = alloca %struct.klist_iter, align 8
  %0 = bitcast %struct.klist_iter* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %tobool.not = icmp eq %struct.device* %parent, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.device, %struct.device* %parent, i64 0, i32 2
  %1 = load %struct.device_private*, %struct.device_private** %p, align 8
  %klist_children = getelementptr inbounds %struct.device_private, %struct.device_private* %1, i64 0, i32 0
  call void @klist_iter_init(%struct.klist* noundef %klist_children, %struct.klist_iter* noundef nonnull %i) #15
  %call13 = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #16
  %tobool1.not14 = icmp eq %struct.device* %call13, null
  br i1 %tobool1.not14, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %if.end7
  %call15 = phi %struct.device* [ %call, %if.end7 ], [ %call13, %if.end ]
  %call2 = call i32 %match(%struct.device* noundef nonnull %call15, i8* noundef %data) #15
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %call4 = call %struct.device* @get_device(%struct.device* noundef nonnull %call15) #16
  %tobool5.not = icmp eq %struct.device* %call4, null
  br i1 %tobool5.not, label %if.end7, label %while.end

if.end7:                                          ; preds = %land.lhs.true, %while.body
  %call = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #16
  %tobool1.not = icmp eq %struct.device* %call, null
  br i1 %tobool1.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end7, %land.lhs.true, %if.end
  %call.lcssa = phi %struct.device* [ null, %if.end ], [ %call15, %land.lhs.true ], [ null, %if.end7 ]
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %i) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi %struct.device* [ %call.lcssa, %while.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret %struct.device* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @device_find_child_by_name(%struct.device* noundef readonly %parent, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %i = alloca %struct.klist_iter, align 8
  %0 = bitcast %struct.klist_iter* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %tobool.not = icmp eq %struct.device* %parent, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.device, %struct.device* %parent, i64 0, i32 2
  %1 = load %struct.device_private*, %struct.device_private** %p, align 8
  %klist_children = getelementptr inbounds %struct.device_private, %struct.device_private* %1, i64 0, i32 0
  call void @klist_iter_init(%struct.klist* noundef %klist_children, %struct.klist_iter* noundef nonnull %i) #15
  %call13 = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #16
  %tobool1.not14 = icmp eq %struct.device* %call13, null
  br i1 %tobool1.not14, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %if.end7
  %call15 = phi %struct.device* [ %call, %if.end7 ], [ %call13, %if.end ]
  %call2 = call fastcc i8* @dev_name(%struct.device* noundef nonnull %call15) #16
  %call3 = call i1 @sysfs_streq(i8* noundef %call2, i8* noundef %name) #15
  br i1 %call3, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %while.body
  %call4 = call %struct.device* @get_device(%struct.device* noundef nonnull %call15) #16
  %tobool5.not = icmp eq %struct.device* %call4, null
  br i1 %tobool5.not, label %if.end7, label %while.end

if.end7:                                          ; preds = %land.lhs.true, %while.body
  %call = call fastcc %struct.device* @next_device(%struct.klist_iter* noundef nonnull %i) #16
  %tobool1.not = icmp eq %struct.device* %call, null
  br i1 %tobool1.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end7, %land.lhs.true, %if.end
  %call.lcssa = phi %struct.device* [ null, %if.end ], [ %call15, %land.lhs.true ], [ null, %if.end7 ]
  call void @klist_iter_exit(%struct.klist_iter* noundef nonnull %i) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi %struct.device* [ %call.lcssa, %while.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret %struct.device* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @sysfs_streq(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @devices_init() local_unnamed_addr #6 section ".init.text" {
entry:
  %call = call %struct.kset* @kset_create_and_add(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %struct.kset_uevent_ops* noundef nonnull @device_uevent_ops, %struct.kobject* noundef null) #15
  store %struct.kset* %call, %struct.kset** @devices_kset, align 8
  %tobool.not = icmp eq %struct.kset* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.kobject* @kobject_create_and_add(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.kobject* noundef null) #15
  store %struct.kobject* %call1, %struct.kobject** @dev_kobj, align 8
  %tobool2.not = icmp eq %struct.kobject* %call1, null
  br i1 %tobool2.not, label %dev_kobj_err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call %struct.kobject* @kobject_create_and_add(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), %struct.kobject* noundef nonnull %call1) #15
  store %struct.kobject* %call5, %struct.kobject** @sysfs_dev_block_kobj, align 8
  %tobool6.not = icmp eq %struct.kobject* %call5, null
  br i1 %tobool6.not, label %block_kobj_err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %0 = load %struct.kobject*, %struct.kobject** @dev_kobj, align 8
  %call9 = call %struct.kobject* @kobject_create_and_add(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), %struct.kobject* noundef %0) #15
  store %struct.kobject* %call9, %struct.kobject** @sysfs_dev_char_kobj, align 8
  %tobool10.not = icmp eq %struct.kobject* %call9, null
  br i1 %tobool10.not, label %char_kobj_err, label %return

char_kobj_err:                                    ; preds = %if.end8
  %1 = load %struct.kobject*, %struct.kobject** @sysfs_dev_block_kobj, align 8
  call void @kobject_put(%struct.kobject* noundef %1) #15
  br label %block_kobj_err

block_kobj_err:                                   ; preds = %if.end4, %char_kobj_err
  %2 = load %struct.kobject*, %struct.kobject** @dev_kobj, align 8
  call void @kobject_put(%struct.kobject* noundef %2) #15
  br label %dev_kobj_err

dev_kobj_err:                                     ; preds = %if.end, %block_kobj_err
  %3 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  call void @kset_unregister(%struct.kset* noundef %3) #15
  br label %return

return:                                           ; preds = %if.end8, %entry, %dev_kobj_err
  %retval.0 = phi i32 [ -12, %dev_kobj_err ], [ -12, %entry ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kset* @kset_create_and_add(i8* noundef, %struct.kset_uevent_ops* noundef, %struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(%struct.kset* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_offline(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %offline_disabled = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %offline_disabled, align 4
  %0 = and i8 %bf.load, 1
  %bf.cast.not = icmp eq i8 %0, 0
  br i1 %bf.cast.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @device_for_each_child(%struct.device* noundef %dev, i8* noundef null, i32 (%struct.device*, i8*)* noundef nonnull @device_check_offline) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  call fastcc void @device_lock(%struct.device* noundef %dev) #16
  %call3 = call fastcc i1 @device_supports_offline(%struct.device* noundef %dev) #16
  br i1 %call3, label %if.then4, label %if.end19

if.then4:                                         ; preds = %if.end2
  %bf.load5 = load i8, i8* %offline_disabled, align 4
  %1 = and i8 %bf.load5, 2
  %bf.cast7.not = icmp eq i8 %1, 0
  br i1 %bf.cast7.not, label %if.else, label %if.end19

if.else:                                          ; preds = %if.then4
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %offline9 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i64 0, i32 13
  %3 = load i32 (%struct.device*)*, i32 (%struct.device*)** %offline9, align 8
  %call10 = call i32 %3(%struct.device* noundef %dev) #15
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.else
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call13 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 5) #15
  %bf.load15 = load i8, i8* %offline_disabled, align 4
  %bf.set = or i8 %bf.load15, 2
  store i8 %bf.set, i8* %offline_disabled, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then4, %if.then12, %if.else, %if.end2
  %ret.0 = phi i32 [ %call10, %if.else ], [ 0, %if.then12 ], [ 0, %if.end2 ], [ 1, %if.then4 ]
  call fastcc void @device_unlock(%struct.device* noundef %dev) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end19
  %retval.0 = phi i32 [ %ret.0, %if.end19 ], [ -1, %entry ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @device_check_offline(%struct.device* nocapture noundef readonly %dev, i8* nocapture noundef readnone %not_used) #0 {
entry:
  %call = call i32 @device_for_each_child(%struct.device* noundef %dev, i8* noundef null, i32 (%struct.device*, i8*)* noundef nonnull @device_check_offline) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i1 @device_supports_offline(%struct.device* noundef %dev) #16
  br i1 %call1, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %if.end
  %offline = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %offline, align 4
  %0 = and i8 %bf.load, 2
  %bf.cast.not = icmp eq i8 %0, 0
  %phi.sel = select i1 %bf.cast.not, i32 -16, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.rhs, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %if.end ], [ %phi.sel, %land.rhs ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @device_supports_offline(%struct.device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool.not = icmp eq %struct.bus_type* %0, null
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %offline = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 13
  %1 = load i32 (%struct.device*)*, i32 (%struct.device*)** %offline, align 8
  %tobool2.not = icmp eq i32 (%struct.device*)* %1, null
  br i1 %tobool2.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %online = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 12
  %2 = load i32 (%struct.device*)*, i32 (%struct.device*)** %online, align 8
  %tobool4 = icmp ne i32 (%struct.device*)* %2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool4, %land.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_online(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  call fastcc void @device_lock(%struct.device* noundef %dev) #16
  %call = call fastcc i1 @device_supports_offline(%struct.device* noundef %dev) #16
  br i1 %call, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %offline = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %offline, align 4
  %0 = and i8 %bf.load, 2
  %bf.cast.not = icmp eq i8 %0, 0
  br i1 %bf.cast.not, label %if.end9, label %if.then1

if.then1:                                         ; preds = %if.then
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %1 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %online = getelementptr inbounds %struct.bus_type, %struct.bus_type* %1, i64 0, i32 12
  %2 = load i32 (%struct.device*)*, i32 (%struct.device*)** %online, align 8
  %call2 = call i32 %2(%struct.device* noundef %dev) #15
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.then1
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call4 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 4) #15
  %bf.load6 = load i8, i8* %offline, align 4
  %bf.clear7 = and i8 %bf.load6, -3
  store i8 %bf.clear7, i8* %offline, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then3, %if.then1, %entry
  %ret.0 = phi i32 [ %call2, %if.then1 ], [ 0, %if.then3 ], [ 0, %entry ], [ 1, %if.then ]
  call fastcc void @device_unlock(%struct.device* noundef %dev) #16
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @__root_device_register(i8* noundef %name, %struct.module* nocapture noundef readnone %owner) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 480) #16
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %dev = bitcast i8* %call to %struct.device*
  %call2 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef nonnull %dev, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* noundef %name) #16
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #15
  %conv5 = sext i32 %call2 to i64
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %release = getelementptr inbounds i8, i8* %call, i64 440
  %0 = bitcast i8* %release to void (%struct.device*)**
  store void (%struct.device*)* @root_device_release, void (%struct.device*)** %0, align 8
  %call10 = call i32 @device_register(%struct.device* noundef nonnull %dev) #16
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @put_device(%struct.device* noundef nonnull %dev) #16
  %conv14 = sext i32 %call10 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.then4, %if.then12
  %conv14.sink = phi i64 [ %conv14, %if.then12 ], [ %conv5, %if.then4 ], [ -12, %entry ]
  %call15 = call fastcc i8* @ERR_PTR(i64 noundef %conv14.sink) #16
  %1 = bitcast i8* %call15 to %struct.device*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7
  %retval.0 = phi %struct.device* [ %dev, %if.end7 ], [ %1, %cleanup.sink.split ]
  ret %struct.device* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @root_device_release(%struct.device* noundef %dev) #0 {
entry:
  %call = call fastcc %struct.root_device* @to_root_device(%struct.device* noundef %dev) #16
  %0 = bitcast %struct.root_device* %call to i8*
  call void @kfree(i8* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @root_device_unregister(%struct.device* noundef %dev) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.root_device* @to_root_device(%struct.device* noundef %dev) #16
  %owner = getelementptr inbounds %struct.root_device, %struct.root_device* %call, i64 0, i32 1
  %0 = load %struct.module*, %struct.module** %owner, align 8
  %tobool.not = icmp eq %struct.module* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.root_device, %struct.root_device* %call, i64 0, i32 0, i32 0
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @device_unregister(%struct.device* noundef %dev) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.root_device* @to_root_device(%struct.device* noundef readnone %d) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.device* %d to %struct.root_device*
  ret %struct.root_device* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(%struct.kobject* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @device_create(%struct.class* noundef %class, %struct.device* noundef %parent, i32 noundef %devt, i8* noundef %drvdata, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %vargs = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %vargs to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call fastcc %struct.device* @device_create_groups_vargs(%struct.class* noundef %class, %struct.device* noundef %parent, i32 noundef %devt, i8* noundef %drvdata, %struct.attribute_group** noundef null, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #17
  ret %struct.device* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device* @device_create_groups_vargs(%struct.class* noundef %class, %struct.device* noundef %parent, i32 noundef %devt, i8* noundef %drvdata, %struct.attribute_group** noundef %groups, i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef readonly %args) unnamed_addr #0 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %cmp = icmp eq %struct.class* %class, null
  br i1 %cmp, label %error, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = bitcast %struct.class* %class to i8*
  %call = call fastcc i1 @IS_ERR(i8* noundef nonnull %0) #16
  br i1 %call, label %error, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call fastcc i8* @kzalloc(i64 noundef 472) #16
  %1 = bitcast i8* %call2 to %struct.device*
  %tobool.not = icmp eq i8* %call2, null
  br i1 %tobool.not, label %error, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @device_initialize(%struct.device* noundef nonnull %1) #16
  %devt5 = getelementptr inbounds i8, i8* %call2, i64 392
  %2 = bitcast i8* %devt5 to i32*
  store i32 %devt, i32* %2, align 8
  %class6 = getelementptr inbounds i8, i8* %call2, i64 424
  %3 = bitcast i8* %class6 to %struct.class**
  store %struct.class* %class, %struct.class** %3, align 8
  %parent7 = getelementptr inbounds i8, i8* %call2, i64 64
  %4 = bitcast i8* %parent7 to %struct.device**
  store %struct.device* %parent, %struct.device** %4, align 8
  %groups8 = getelementptr inbounds i8, i8* %call2, i64 432
  %5 = bitcast i8* %groups8 to %struct.attribute_group***
  store %struct.attribute_group** %groups, %struct.attribute_group*** %5, align 8
  %release = getelementptr inbounds i8, i8* %call2, i64 440
  %6 = bitcast i8* %release to void (%struct.device*)**
  store void (%struct.device*)* @device_create_release, void (%struct.device*)** %6, align 8
  call fastcc void @dev_set_drvdata(%struct.device* noundef nonnull %1, i8* noundef %drvdata) #16
  %kobj = bitcast i8* %call2 to %struct.kobject*
  %7 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #17
  %8 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef align 8 dereferenceable(32) %8, i64 32, i1 false)
  %call9 = call i32 @kobject_set_name_vargs(%struct.kobject* noundef nonnull %kobj, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #15
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #17
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %error

if.end12:                                         ; preds = %if.end4
  %call13 = call i32 @device_add(%struct.device* noundef nonnull %1) #16
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %error

error:                                            ; preds = %if.end, %if.end12, %if.end4, %entry, %lor.lhs.false
  %dev.0 = phi %struct.device* [ null, %entry ], [ null, %lor.lhs.false ], [ %1, %if.end4 ], [ %1, %if.end12 ], [ null, %if.end ]
  %retval1.0 = phi i32 [ -19, %entry ], [ -19, %lor.lhs.false ], [ %call9, %if.end4 ], [ %call13, %if.end12 ], [ -12, %if.end ]
  call void @put_device(%struct.device* noundef %dev.0) #16
  %conv = sext i32 %retval1.0 to i64
  %call17 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #16
  %9 = bitcast i8* %call17 to %struct.device*
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %error
  %retval.0 = phi %struct.device* [ %9, %error ], [ %1, %if.end12 ]
  ret %struct.device* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @device_create_with_groups(%struct.class* noundef %class, %struct.device* noundef %parent, i32 noundef %devt, i8* noundef %drvdata, %struct.attribute_group** noundef %groups, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %vargs = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %vargs to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call fastcc %struct.device* @device_create_groups_vargs(%struct.class* noundef %class, %struct.device* noundef %parent, i32 noundef %devt, i8* noundef %drvdata, %struct.attribute_group** noundef %groups, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #17
  ret %struct.device* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_destroy(%struct.class* noundef %class, i32 noundef %devt) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.device* @class_find_device_by_devt(%struct.class* noundef %class, i32 noundef %devt) #16
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @put_device(%struct.device* noundef nonnull %call) #16
  call void @device_unregister(%struct.device* noundef nonnull %call) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device* @class_find_device_by_devt(%struct.class* noundef %class, i32 noundef %devt) unnamed_addr #0 {
entry:
  %devt.addr = alloca i32, align 4
  store i32 %devt, i32* %devt.addr, align 4
  %0 = bitcast i32* %devt.addr to i8*
  %call = call %struct.device* @class_find_device(%struct.class* noundef %class, %struct.device* noundef null, i8* noundef nonnull %0, i32 (%struct.device*, i8*)* noundef nonnull @device_match_devt) #15
  ret %struct.device* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_rename(%struct.device* noundef %dev, i8* noundef %new_name) local_unnamed_addr #0 {
entry:
  %kobj1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call %struct.device* @get_device(%struct.device* noundef %dev) #16
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @dev_name(%struct.device* noundef nonnull %call) #16
  %call3 = call noalias i8* @kstrdup(i8* noundef %call2, i32 noundef 3264) #15
  %tobool4.not = icmp eq i8* %call3, null
  br i1 %tobool4.not, label %out, label %if.end6

if.end6:                                          ; preds = %if.end
  %class = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 31
  %0 = load %struct.class*, %struct.class** %class, align 8
  %tobool7.not = icmp eq %struct.class* %0, null
  br i1 %tobool7.not, label %if.end16, label %if.then8

if.then8:                                         ; preds = %if.end6
  %p = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 14
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj10 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 0, i32 2
  %call11 = call i8* @kobject_namespace(%struct.kobject* noundef %kobj1) #15
  %call12 = call i32 @sysfs_rename_link_ns(%struct.kobject* noundef %kobj10, %struct.kobject* noundef %kobj1, i8* noundef nonnull %call3, i8* noundef %new_name, i8* noundef %call11) #15
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %out

if.end16:                                         ; preds = %if.then8, %if.end6
  %call17 = call i32 @kobject_rename(%struct.kobject* noundef %kobj1, i8* noundef %new_name) #15
  br label %out

out:                                              ; preds = %if.end, %if.end16, %if.then8
  %error.0 = phi i32 [ %call12, %if.then8 ], [ %call17, %if.end16 ], [ -12, %if.end ]
  call void @put_device(%struct.device* noundef nonnull %call) #16
  call void @kfree(i8* noundef %call3) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_rename_link_ns(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kobject_namespace(%struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_rename(%struct.kobject* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_move(%struct.device* noundef %dev, %struct.device* noundef %new_parent, i32 noundef %dpm_order) local_unnamed_addr #0 {
entry:
  %call = call %struct.device* @get_device(%struct.device* noundef %dev) #16
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  %call1 = call %struct.device* @get_device(%struct.device* noundef %new_parent) #16
  %call2 = call fastcc %struct.kobject* @get_device_parent(%struct.device* noundef nonnull %call, %struct.device* noundef %call1) #16
  %0 = bitcast %struct.kobject* %call2 to i8*
  %call3 = call fastcc i1 @IS_ERR(i8* noundef %0) #16
  br i1 %call3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %do.end
  %call5 = call fastcc i64 @PTR_ERR(i8* noundef %0) #16
  %conv = trunc i64 %call5 to i32
  br label %do.end54

if.end6:                                          ; preds = %do.end
  %kobj = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 0
  %call7 = call i32 @kobject_move(%struct.kobject* noundef %kobj, %struct.kobject* noundef %call2) #15
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call fastcc void @cleanup_glue_dir(%struct.device* noundef nonnull %call, %struct.kobject* noundef %call2) #16
  br label %do.end54

if.end10:                                         ; preds = %if.end6
  %parent = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 1
  %1 = load %struct.device*, %struct.device** %parent, align 8
  store %struct.device* %call1, %struct.device** %parent, align 8
  %tobool12.not = icmp eq %struct.device* %1, null
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  %p = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 2
  %2 = load %struct.device_private*, %struct.device_private** %p, align 8
  %knode_parent = getelementptr inbounds %struct.device_private, %struct.device_private* %2, i64 0, i32 1
  call void @klist_remove(%struct.klist_node* noundef %knode_parent) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  %tobool15.not = icmp eq %struct.device* %call1, null
  br i1 %tobool15.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %if.end14
  %p17 = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 2
  %3 = load %struct.device_private*, %struct.device_private** %p17, align 8
  %knode_parent18 = getelementptr inbounds %struct.device_private, %struct.device_private* %3, i64 0, i32 1
  %p19 = getelementptr inbounds %struct.device, %struct.device* %call1, i64 0, i32 2
  %4 = load %struct.device_private*, %struct.device_private** %p19, align 8
  %klist_children = getelementptr inbounds %struct.device_private, %struct.device_private* %4, i64 0, i32 0
  call void @klist_add_tail(%struct.klist_node* noundef %knode_parent18, %struct.klist* noundef %klist_children) #15
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end14
  %class = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 31
  %5 = load %struct.class*, %struct.class** %class, align 8
  %tobool22.not = icmp eq %struct.class* %5, null
  br i1 %tobool22.not, label %if.end49, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call24 = call fastcc i32 @device_move_class_links(%struct.device* noundef nonnull %call, %struct.device* noundef %1, %struct.device* noundef %call1) #16
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end49, label %if.then26

if.then26:                                        ; preds = %if.then23
  %call27 = call fastcc i32 @device_move_class_links(%struct.device* noundef nonnull %call, %struct.device* noundef %call1, %struct.device* noundef %1) #16
  %kobj29 = getelementptr inbounds %struct.device, %struct.device* %1, i64 0, i32 0
  %call30 = call i32 @kobject_move(%struct.kobject* noundef %kobj, %struct.kobject* noundef %kobj29) #15
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end47

if.then32:                                        ; preds = %if.then26
  br i1 %tobool15.not, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.then32
  %p35 = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 2
  %6 = load %struct.device_private*, %struct.device_private** %p35, align 8
  %knode_parent36 = getelementptr inbounds %struct.device_private, %struct.device_private* %6, i64 0, i32 1
  call void @klist_remove(%struct.klist_node* noundef %knode_parent36) #15
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then32
  store %struct.device* %1, %struct.device** %parent, align 8
  br i1 %tobool12.not, label %if.end47, label %if.then40

if.then40:                                        ; preds = %if.end37
  %p41 = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 2
  %7 = load %struct.device_private*, %struct.device_private** %p41, align 8
  %knode_parent42 = getelementptr inbounds %struct.device_private, %struct.device_private* %7, i64 0, i32 1
  %p43 = getelementptr inbounds %struct.device, %struct.device* %1, i64 0, i32 2
  %8 = load %struct.device_private*, %struct.device_private** %p43, align 8
  %klist_children44 = getelementptr inbounds %struct.device_private, %struct.device_private* %8, i64 0, i32 0
  call void @klist_add_tail(%struct.klist_node* noundef %knode_parent42, %struct.klist* noundef %klist_children44) #15
  br label %if.end47

if.end47:                                         ; preds = %if.end37, %if.then40, %if.then26
  call fastcc void @cleanup_glue_dir(%struct.device* noundef nonnull %call, %struct.kobject* noundef %call2) #16
  br label %do.end54

if.end49:                                         ; preds = %if.then23, %if.end21
  switch i32 %dpm_order, label %do.end54 [
    i32 3, label %sw.bb51
    i32 1, label %sw.bb
    i32 2, label %sw.bb50
  ]

sw.bb:                                            ; preds = %if.end49
  call fastcc void @devices_kset_move_after(%struct.device* noundef nonnull %call, %struct.device* noundef %call1) #16
  br label %do.end54

sw.bb50:                                          ; preds = %if.end49
  call fastcc void @devices_kset_move_before(%struct.device* noundef %call1, %struct.device* noundef nonnull %call) #16
  br label %do.end54

sw.bb51:                                          ; preds = %if.end49
  call void @devices_kset_move_last(%struct.device* noundef nonnull %call) #16
  br label %do.end54

do.end54:                                         ; preds = %sw.bb, %sw.bb50, %sw.bb51, %if.end49, %if.then4, %if.then9, %if.end47
  %call1.sink = phi %struct.device* [ %call1, %if.then4 ], [ %call1, %if.then9 ], [ %call1, %if.end47 ], [ %1, %if.end49 ], [ %1, %sw.bb51 ], [ %1, %sw.bb50 ], [ %1, %sw.bb ]
  %error.1 = phi i32 [ %conv, %if.then4 ], [ %call7, %if.then9 ], [ %call24, %if.end47 ], [ 0, %if.end49 ], [ 0, %sw.bb51 ], [ 0, %sw.bb50 ], [ 0, %sw.bb ]
  call void @put_device(%struct.device* noundef %call1.sink) #16
  call void @put_device(%struct.device* noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end54
  %retval.0 = phi i32 [ %error.1, %do.end54 ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_move(%struct.kobject* noundef, %struct.kobject* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_remove(%struct.klist_node* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @device_move_class_links(%struct.device* noundef %dev, %struct.device* noundef readnone %old_parent, %struct.device* noundef %new_parent) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %old_parent, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0)) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq %struct.device* %new_parent, null
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %kobj3 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %kobj4 = getelementptr inbounds %struct.device, %struct.device* %new_parent, i64 0, i32 0
  %call = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj3, %struct.kobject* noundef %kobj4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0)) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %error.0 = phi i32 [ %call, %if.then2 ], [ 0, %if.end ]
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @devices_kset_move_after(%struct.device* noundef %deva, %struct.device* noundef %devb) unnamed_addr #0 {
entry:
  %0 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %tobool.not = icmp eq %struct.kset* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.kset, %struct.kset* %0, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %entry1 = getelementptr inbounds %struct.device, %struct.device* %deva, i64 0, i32 0, i32 1
  %entry3 = getelementptr inbounds %struct.device, %struct.device* %devb, i64 0, i32 0, i32 1
  call fastcc void @list_move(%struct.list_head* noundef %entry1, %struct.list_head* noundef %entry3) #16
  %1 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %rlock.i5 = getelementptr inbounds %struct.kset, %struct.kset* %1, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i5) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @devices_kset_move_before(%struct.device* noundef %deva, %struct.device* noundef %devb) unnamed_addr #0 {
entry:
  %0 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %tobool.not = icmp eq %struct.kset* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.kset, %struct.kset* %0, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %entry1 = getelementptr inbounds %struct.device, %struct.device* %deva, i64 0, i32 0, i32 1
  %entry3 = getelementptr inbounds %struct.device, %struct.device* %devb, i64 0, i32 0, i32 1
  call fastcc void @list_move_tail(%struct.list_head* noundef %entry1, %struct.list_head* noundef %entry3) #16
  %1 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %rlock.i5 = getelementptr inbounds %struct.kset, %struct.kset* %1, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i5) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_change_owner(%struct.device* noundef %dev, i64 %kuid.coerce, i64 %kgid.coerce) local_unnamed_addr #0 {
entry:
  %kobj3 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call %struct.device* @get_device(%struct.device* noundef %dev) #16
  %tobool.not = icmp eq %struct.device* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %coerce.val.ii5 = and i64 %kuid.coerce, 4294967295
  %coerce.val.ii7 = and i64 %kgid.coerce, 4294967295
  %call8 = call i32 @sysfs_change_owner(%struct.kobject* noundef %kobj3, i64 %coerce.val.ii5, i64 %coerce.val.ii7) #15
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %out

if.end11:                                         ; preds = %if.end
  %0 = load i8*, i8** getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_uevent, i64 0, i32 0, i32 0), align 8
  %call16 = call i32 @sysfs_file_change_owner(%struct.kobject* noundef %kobj3, i8* noundef %0, i64 %coerce.val.ii5, i64 %coerce.val.ii7) #15
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %out

if.end19:                                         ; preds = %if.end11
  %call24 = call fastcc i32 @device_attrs_change_owner(%struct.device* noundef nonnull %call, i64 %coerce.val.ii5, i64 %coerce.val.ii7) #16
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %out

if.end27:                                         ; preds = %if.end19
  %class = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 31
  %1 = load %struct.class*, %struct.class** %class, align 8
  %p = getelementptr inbounds %struct.class, %struct.class* %1, i64 0, i32 14
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %kobj36 = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i64 0, i32 0, i32 2
  %kobj37 = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 0
  %call38 = call fastcc i8* @dev_name(%struct.device* noundef nonnull %call) #16
  %call43 = call i32 @sysfs_link_change_owner(%struct.kobject* noundef %kobj36, %struct.kobject* noundef %kobj37, i8* noundef %call38, i64 %coerce.val.ii5, i64 %coerce.val.ii7) #15
  br label %out

out:                                              ; preds = %if.end27, %if.end19, %if.end11, %if.end
  %error.0 = phi i32 [ %call8, %if.end ], [ %call16, %if.end11 ], [ %call24, %if.end19 ], [ %call43, %if.end27 ]
  call void @put_device(%struct.device* noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_change_owner(%struct.kobject* noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_file_change_owner(%struct.kobject* noundef, i8* noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @device_attrs_change_owner(%struct.device* noundef %dev, i64 %kuid.coerce, i64 %kgid.coerce) unnamed_addr #0 {
entry:
  %kobj3 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %class4 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %0 = load %struct.class*, %struct.class** %class4, align 8
  %type5 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 4
  %1 = load %struct.device_type*, %struct.device_type** %type5, align 8
  %tobool.not = icmp eq %struct.class* %0, null
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %dev_groups = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 3
  %2 = load %struct.attribute_group**, %struct.attribute_group*** %dev_groups, align 8
  %coerce.val.ii7 = and i64 %kuid.coerce, 4294967295
  %coerce.val.ii9 = and i64 %kgid.coerce, 4294967295
  %call = call i32 @sysfs_groups_change_owner(%struct.kobject* noundef %kobj3, %struct.attribute_group** noundef %2, i64 %coerce.val.ii7, i64 %coerce.val.ii9) #15
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.then, %entry
  %tobool13.not = icmp eq %struct.device_type* %1, null
  br i1 %tobool13.not, label %if.end12.if.end23_crit_edge, label %if.then14

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  %.pre = and i64 %kuid.coerce, 4294967295
  %.pre75 = and i64 %kgid.coerce, 4294967295
  br label %if.end23

if.then14:                                        ; preds = %if.end12
  %groups = getelementptr inbounds %struct.device_type, %struct.device_type* %1, i64 0, i32 1
  %3 = load %struct.attribute_group**, %struct.attribute_group*** %groups, align 8
  %coerce.val.ii16 = and i64 %kuid.coerce, 4294967295
  %coerce.val.ii18 = and i64 %kgid.coerce, 4294967295
  %call19 = call i32 @sysfs_groups_change_owner(%struct.kobject* noundef %kobj3, %struct.attribute_group** noundef %3, i64 %coerce.val.ii16, i64 %coerce.val.ii18) #15
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %cleanup

if.end23:                                         ; preds = %if.end12.if.end23_crit_edge, %if.then14
  %coerce.val.ii28.pre-phi = phi i64 [ %.pre75, %if.end12.if.end23_crit_edge ], [ %coerce.val.ii18, %if.then14 ]
  %coerce.val.ii26.pre-phi = phi i64 [ %.pre, %if.end12.if.end23_crit_edge ], [ %coerce.val.ii16, %if.then14 ]
  %groups24 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 32
  %4 = load %struct.attribute_group**, %struct.attribute_group*** %groups24, align 8
  %call29 = call i32 @sysfs_groups_change_owner(%struct.kobject* noundef %kobj3, %struct.attribute_group** noundef %4, i64 %coerce.val.ii26.pre-phi, i64 %coerce.val.ii28.pre-phi) #15
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %cleanup

if.end32:                                         ; preds = %if.end23
  %call33 = call fastcc i1 @device_supports_offline(%struct.device* noundef %dev) #16
  br i1 %call33, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %if.end32
  %offline_disabled = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %offline_disabled, align 4
  %5 = and i8 %bf.load, 1
  %bf.cast.not = icmp eq i8 %5, 0
  br i1 %bf.cast.not, label %if.then34, label %if.end43

if.then34:                                        ; preds = %land.lhs.true
  %6 = load i8*, i8** getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_online, i64 0, i32 0, i32 0), align 8
  %call39 = call i32 @sysfs_file_change_owner(%struct.kobject* noundef %kobj3, i8* noundef %6, i64 %coerce.val.ii26.pre-phi, i64 %coerce.val.ii28.pre-phi) #15
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end43, label %cleanup

if.end43:                                         ; preds = %if.then34, %land.lhs.true, %if.end32
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end23, %if.then14, %if.then, %if.end43
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %call, %if.then ], [ %call19, %if.then14 ], [ %call29, %if.end23 ], [ %call39, %if.then34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_link_change_owner(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @device_shutdown() local_unnamed_addr #0 {
entry:
  call void @wait_for_device_probe() #15
  call void @device_block_probing() #15
  %0 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %rlock.i = getelementptr inbounds %struct.kset, %struct.kset* %0, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %1 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %list91 = getelementptr inbounds %struct.kset, %struct.kset* %1, i64 0, i32 0
  %call92 = call fastcc i32 @list_empty(%struct.list_head* noundef %list91) #16
  %tobool.not93 = icmp eq i32 %call92, 0
  br i1 %tobool.not93, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %if.end54
  %2 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %prev = getelementptr inbounds %struct.kset, %struct.kset* %2, i64 0, i32 0, i32 1
  %3 = bitcast %struct.list_head** %prev to i8**
  %4 = load i8*, i8** %3, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 -8
  %5 = bitcast i8* %add.ptr to %struct.device*
  %parent2 = getelementptr i8, i8* %4, i64 56
  %6 = bitcast i8* %parent2 to %struct.device**
  %7 = load %struct.device*, %struct.device** %6, align 8
  %call3 = call %struct.device* @get_device(%struct.device* noundef %7) #16
  %call4 = call %struct.device* @get_device(%struct.device* noundef %5) #16
  %8 = bitcast i8* %4 to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %8) #16
  %9 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %rlock.i88 = getelementptr inbounds %struct.kset, %struct.kset* %9, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i88) #15
  %tobool7.not = icmp eq %struct.device* %call3, null
  br i1 %tobool7.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call fastcc void @device_lock(%struct.device* noundef nonnull %call3) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  call fastcc void @device_lock(%struct.device* noundef %5) #16
  %class = getelementptr i8, i8* %4, i64 416
  %10 = bitcast i8* %class to %struct.class**
  %11 = load %struct.class*, %struct.class** %10, align 8
  %tobool9.not = icmp eq %struct.class* %11, null
  br i1 %tobool9.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %shutdown_pre = getelementptr inbounds %struct.class, %struct.class* %11, i64 0, i32 9
  %12 = load i32 (%struct.device*)*, i32 (%struct.device*)** %shutdown_pre, align 8
  %tobool11.not = icmp eq i32 (%struct.device*)* %12, null
  br i1 %tobool11.not, label %if.end22, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %13 = load i8, i8* @initcall_debug, align 1, !range !22
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.then12
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0)) #18
  %.pre = load %struct.class*, %struct.class** %10, align 8
  %shutdown_pre20.phi.trans.insert = getelementptr inbounds %struct.class, %struct.class* %.pre, i64 0, i32 9
  %.pre94 = load i32 (%struct.device*)*, i32 (%struct.device*)** %shutdown_pre20.phi.trans.insert, align 8
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %if.then12
  %14 = phi i32 (%struct.device*)* [ %.pre94, %do.end17 ], [ %12, %if.then12 ]
  %call21 = call i32 %14(%struct.device* noundef %5) #15
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %land.lhs.true, %if.end
  %bus = getelementptr i8, i8* %4, i64 88
  %15 = bitcast i8* %bus to %struct.bus_type**
  %16 = load %struct.bus_type*, %struct.bus_type** %15, align 8
  %tobool23.not = icmp eq %struct.bus_type* %16, null
  br i1 %tobool23.not, label %if.else, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.end22
  %shutdown = getelementptr inbounds %struct.bus_type, %struct.bus_type* %16, i64 0, i32 11
  %17 = load void (%struct.device*)*, void (%struct.device*)** %shutdown, align 8
  %tobool26.not = icmp eq void (%struct.device*)* %17, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %land.lhs.true24
  %18 = load i8, i8* @initcall_debug, align 1, !range !22
  %tobool28.not = icmp eq i8 %18, 0
  br i1 %tobool28.not, label %if.end51.sink.split, label %do.end32

do.end32:                                         ; preds = %if.then27
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* noundef %5, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #18
  %.pre95 = load %struct.bus_type*, %struct.bus_type** %15, align 8
  %shutdown35.phi.trans.insert = getelementptr inbounds %struct.bus_type, %struct.bus_type* %.pre95, i64 0, i32 11
  br label %if.end51.sink.split.sink.split

if.else:                                          ; preds = %land.lhs.true24, %if.end22
  %driver = getelementptr i8, i8* %4, i64 96
  %19 = bitcast i8* %driver to %struct.device_driver**
  %20 = load %struct.device_driver*, %struct.device_driver** %19, align 8
  %tobool36.not = icmp eq %struct.device_driver* %20, null
  br i1 %tobool36.not, label %if.end51, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.else
  %shutdown39 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %20, i64 0, i32 11
  %21 = load void (%struct.device*)*, void (%struct.device*)** %shutdown39, align 8
  %tobool40.not = icmp eq void (%struct.device*)* %21, null
  br i1 %tobool40.not, label %if.end51, label %if.then41

if.then41:                                        ; preds = %land.lhs.true37
  %22 = load i8, i8* @initcall_debug, align 1, !range !22
  %tobool42.not = icmp eq i8 %22, 0
  br i1 %tobool42.not, label %if.end51.sink.split, label %do.end46

do.end46:                                         ; preds = %if.then41
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* noundef %5, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0)) #18
  %.pre97 = load %struct.device_driver*, %struct.device_driver** %19, align 8
  %shutdown49.phi.trans.insert = getelementptr inbounds %struct.device_driver, %struct.device_driver* %.pre97, i64 0, i32 11
  br label %if.end51.sink.split.sink.split

if.end51.sink.split.sink.split:                   ; preds = %do.end32, %do.end46
  %shutdown49.phi.trans.insert.sink = phi void (%struct.device*)** [ %shutdown49.phi.trans.insert, %do.end46 ], [ %shutdown35.phi.trans.insert, %do.end32 ]
  %.pre98 = load void (%struct.device*)*, void (%struct.device*)** %shutdown49.phi.trans.insert.sink, align 8
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.end51.sink.split.sink.split, %if.then41, %if.then27
  %.sink = phi void (%struct.device*)* [ %17, %if.then27 ], [ %21, %if.then41 ], [ %.pre98, %if.end51.sink.split.sink.split ]
  call void %.sink(%struct.device* noundef %5) #15
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.else, %land.lhs.true37
  call fastcc void @device_unlock(%struct.device* noundef %5) #16
  br i1 %tobool7.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end51
  call fastcc void @device_unlock(%struct.device* noundef nonnull %call3) #16
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end51
  call void @put_device(%struct.device* noundef %5) #16
  call void @put_device(%struct.device* noundef %call3) #16
  %23 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %rlock.i89 = getelementptr inbounds %struct.kset, %struct.kset* %23, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i89) #15
  %24 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %list = getelementptr inbounds %struct.kset, %struct.kset* %24, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %if.end54, %entry
  %25 = load %struct.kset*, %struct.kset** @devices_kset, align 8
  %rlock.i90 = getelementptr inbounds %struct.kset, %struct.kset* %25, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i90) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_block_probing() local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @_dev_info(%struct.device* noundef %dev, i8* noundef %fmt, ...) local_unnamed_addr #6 {
entry:
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %1)
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt2, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  call fastcc void @__dev_printk(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), %struct.device* noundef %dev, %struct.va_format* noundef nonnull %vaf) #16
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @dev_vprintk_emit(i32 noundef %level, %struct.device* nocapture noundef readonly %dev, i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef readonly %args) local_unnamed_addr #6 {
entry:
  %dev_info = alloca %struct.dev_printk_info, align 1
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = getelementptr inbounds %struct.dev_printk_info, %struct.dev_printk_info* %dev_info, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !9
  call fastcc void @set_dev_info(%struct.device* noundef %dev, %struct.dev_printk_info* noundef nonnull %dev_info) #16
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  %2 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef align 8 dereferenceable(32) %2, i64 32, i1 false)
  %call = call i32 @vprintk_emit(i32 noundef 0, i32 noundef %level, %struct.dev_printk_info* noundef nonnull %dev_info, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #15
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_dev_info(%struct.device* nocapture noundef readonly %dev, %struct.dev_printk_info* noundef %dev_info) unnamed_addr #0 {
entry:
  %0 = getelementptr %struct.dev_printk_info, %struct.dev_printk_info* %dev_info, i64 0, i32 0, i64 0
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 64) #15
  %class = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %1 = load %struct.class*, %struct.class** %class, align 8
  %tobool.not = icmp eq %struct.class* %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.class, %struct.class* %1, i64 0, i32 0
  br label %if.end7

if.else:                                          ; preds = %entry
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool2.not = icmp eq %struct.bus_type* %2, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.else
  %name5 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i64 0, i32 0
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.then
  %subsys.0.in = phi i8** [ %name, %if.then ], [ %name5, %if.then3 ]
  %subsys.0 = load i8*, i8** %subsys.0.in, align 8
  %call8 = call i64 @strscpy(i8* noundef %0, i8* noundef %subsys.0, i64 noundef 16) #15
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 27
  %3 = load i32, i32* %devt, align 8
  %tobool9.not = icmp ult i32 %3, 1048576
  br i1 %tobool9.not, label %if.else20, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 @strcmp(i8* noundef %subsys.0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call11, 0
  %. = select i1 %cmp, i32 98, i32 99
  %arraydecay15 = getelementptr inbounds %struct.dev_printk_info, %struct.dev_printk_info* %dev_info, i64 0, i32 1, i64 0
  %4 = load i32, i32* %devt, align 8
  %shr17 = lshr i32 %4, 20
  %and = and i32 %4, 1048575
  %call19 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay15, i64 noundef 48, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i64 0, i64 0), i32 noundef %., i32 noundef %shr17, i32 noundef %and) #15
  br label %cleanup

if.else20:                                        ; preds = %if.end7
  %call21 = call i32 @strcmp(i8* noundef %subsys.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0)) #15
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.else28

if.then24:                                        ; preds = %if.else20
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -3, i32 21, i32 1
  %arraydecay26 = getelementptr inbounds %struct.dev_printk_info, %struct.dev_printk_info* %dev_info, i64 0, i32 1, i64 0
  %ifindex = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 26
  %5 = bitcast %struct.list_head** %ifindex to i32*
  %6 = load i32, i32* %5, align 16
  %call27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay26, i64 noundef 48, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0), i32 noundef %6) #15
  br label %cleanup

if.else28:                                        ; preds = %if.else20
  %arraydecay30 = getelementptr inbounds %struct.dev_printk_info, %struct.dev_printk_info* %dev_info, i64 0, i32 1, i64 0
  %call31 = call fastcc i8* @dev_name(%struct.device* noundef %dev) #16
  %call32 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %arraydecay30, i64 noundef 48, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), i8* noundef %subsys.0, i8* noundef %call31) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.else28, %if.then24, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk_emit(i32 noundef, i32 noundef, %struct.dev_printk_info* noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #2

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @dev_printk_emit(i32 noundef %level, %struct.device* nocapture noundef readonly %dev, i8* noundef %fmt, ...) local_unnamed_addr #6 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @dev_vprintk_emit(i32 noundef %level, %struct.device* noundef %dev, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #18
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #17
  ret i32 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @_dev_printk(i8* noundef %level, %struct.device* noundef %dev, i8* noundef %fmt, ...) local_unnamed_addr #6 {
entry:
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %1)
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt2, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  call fastcc void @__dev_printk(i8* noundef %level, %struct.device* noundef %dev, %struct.va_format* noundef nonnull %vaf) #16
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__dev_printk(i8* noundef %level, %struct.device* noundef %dev, %struct.va_format* noundef %vaf) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr i8, i8* %level, i64 1
  %0 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %sub = add nsw i32 %conv, -48
  %call = call i8* @dev_driver_string(%struct.device* noundef nonnull %dev) #16
  %call1 = call fastcc i8* @dev_name(%struct.device* noundef nonnull %dev) #16
  %call2 = call i32 (i32, %struct.device*, i8*, ...) @dev_printk_emit(i32 noundef %sub, %struct.device* noundef nonnull %dev, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i64 0, i64 0), i8* noundef %call, i8* noundef %call1, %struct.va_format* noundef %vaf) #18
  br label %if.end

do.end:                                           ; preds = %entry
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.88, i64 0, i64 0), i8* noundef %level, %struct.va_format* noundef %vaf) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @_dev_emerg(%struct.device* noundef %dev, i8* noundef %fmt, ...) local_unnamed_addr #6 {
entry:
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %1)
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt2, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  call fastcc void @__dev_printk(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), %struct.device* noundef %dev, %struct.va_format* noundef nonnull %vaf) #16
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @_dev_alert(%struct.device* noundef %dev, i8* noundef %fmt, ...) local_unnamed_addr #6 {
entry:
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %1)
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt2, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  call fastcc void @__dev_printk(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %struct.device* noundef %dev, %struct.va_format* noundef nonnull %vaf) #16
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @_dev_crit(%struct.device* noundef %dev, i8* noundef %fmt, ...) local_unnamed_addr #6 {
entry:
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %1)
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt2, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  call fastcc void @__dev_printk(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), %struct.device* noundef %dev, %struct.va_format* noundef nonnull %vaf) #16
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @_dev_err(%struct.device* noundef %dev, i8* noundef %fmt, ...) local_unnamed_addr #6 {
entry:
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %1)
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt2, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  call fastcc void @__dev_printk(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), %struct.device* noundef %dev, %struct.va_format* noundef nonnull %vaf) #16
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @_dev_warn(%struct.device* noundef %dev, i8* noundef %fmt, ...) local_unnamed_addr #6 {
entry:
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %1)
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt2, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  call fastcc void @__dev_printk(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), %struct.device* noundef %dev, %struct.va_format* noundef nonnull %vaf) #16
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @_dev_notice(%struct.device* noundef %dev, i8* noundef %fmt, ...) local_unnamed_addr #6 {
entry:
  %vaf = alloca %struct.va_format, align 8
  %args = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.va_format* %vaf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %1 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !9
  call void @llvm.va_start(i8* nonnull %1)
  %fmt2 = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 0
  store i8* %fmt, i8** %fmt2, align 8
  %va = getelementptr inbounds %struct.va_format, %struct.va_format* %vaf, i64 0, i32 1
  store %"struct.std::__va_list"* %args, %"struct.std::__va_list"** %va, align 8
  call fastcc void @__dev_printk(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), %struct.device* noundef %dev, %struct.va_format* noundef nonnull %vaf) #16
  call void @llvm.va_end(i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_deferred_probe_reason(%struct.device* noundef, %struct.va_format* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_primary_fwnode(%struct.device* nocapture noundef %dev, %struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #0 {
entry:
  %parent1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 1
  %0 = load %struct.device*, %struct.device** %parent1, align 8
  %fwnode2 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode2, align 8
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  %call27 = call fastcc i1 @fwnode_is_primary(%struct.fwnode_handle* noundef %1) #16
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %call27, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %secondary = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %1, i64 0, i32 0
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %secondary, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %fn.0 = phi %struct.fwnode_handle* [ %2, %if.then3 ], [ %1, %if.then ]
  %tobool4.not = icmp eq %struct.fwnode_handle* %fn.0, null
  br i1 %tobool4.not, label %if.end25, label %if.then5

if.then5:                                         ; preds = %if.end
  %secondary6 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 0
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %secondary6, align 8
  %tobool7.not = icmp eq %struct.fwnode_handle* %3, null
  br i1 %tobool7.not, label %if.end16, label %if.then15, !prof !7

if.then15:                                        ; preds = %if.then5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 4747; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !30
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then5
  store %struct.fwnode_handle* %fn.0, %struct.fwnode_handle** %secondary6, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end16, %if.end
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode2, align 8
  br label %if.end40

if.else:                                          ; preds = %entry
  br i1 %call27, label %if.then28, label %if.else37

if.then28:                                        ; preds = %if.else
  %secondary29 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %1, i64 0, i32 0
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %secondary29, align 8
  store %struct.fwnode_handle* %4, %struct.fwnode_handle** %fwnode2, align 8
  %tobool31.not = icmp eq %struct.device* %0, null
  br i1 %tobool31.not, label %if.then34, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then28
  %fwnode32 = getelementptr inbounds %struct.device, %struct.device* %0, i64 0, i32 26
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode32, align 8
  %cmp = icmp eq %struct.fwnode_handle* %1, %5
  br i1 %cmp, label %if.end40, label %if.then34

if.then34:                                        ; preds = %land.lhs.true, %if.then28
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %secondary29, align 8
  br label %if.end40

if.else37:                                        ; preds = %if.else
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %fwnode2, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then34, %land.lhs.true, %if.end25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @fwnode_is_primary(%struct.fwnode_handle* noundef readonly %fwnode) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8**
  %1 = load i8*, i8** %0, align 8
  %call = call fastcc i1 @IS_ERR(i8* noundef %1) #16
  %lnot = xor i1 %call, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @set_secondary_fwnode(%struct.device* nocapture noundef %dev, %struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #8 {
entry:
  %tobool.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -19) #16
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8**
  store i8* %call, i8** %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %fwnode1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode1, align 8
  %call2 = call fastcc i1 @fwnode_is_primary(%struct.fwnode_handle* noundef %1) #16
  %secondary5 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %1, i64 0, i32 0
  %fwnode1.sink = select i1 %call2, %struct.fwnode_handle** %secondary5, %struct.fwnode_handle** %fwnode1
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode1.sink, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @device_set_of_node_from_dev(%struct.device* nocapture noundef %dev, %struct.device* nocapture noundef readonly %dev2) local_unnamed_addr #8 {
entry:
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %of_node1 = getelementptr inbounds %struct.device, %struct.device* %dev2, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node1, align 8
  store %struct.device_node* %0, %struct.device_node** %of_node, align 8
  %of_node_reused = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %of_node_reused, align 4
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, i8* %of_node_reused, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @device_set_node(%struct.device* nocapture noundef writeonly %dev, %struct.fwnode_handle* noundef %fwnode) local_unnamed_addr #8 {
entry:
  %fwnode1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode1, align 8
  %call = call fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) #16
  %add.ptr = getelementptr %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 -1, i32 4
  %0 = bitcast %struct.list_head* %add.ptr to %struct.device_node*
  %cond = select i1 %call, %struct.device_node* %0, %struct.device_node* null
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  store %struct.device_node* %cond, %struct.device_node** %of_node, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_of_node(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #7 {
entry:
  %0 = bitcast %struct.fwnode_handle* %fwnode to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #16
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %1 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %cmp = icmp eq %struct.fwnode_operations* %1, @of_fwnode_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_match_name(%struct.device* nocapture noundef readonly %dev, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @dev_name(%struct.device* noundef %dev) #16
  %call1 = call i1 @sysfs_streq(i8* noundef %call, i8* noundef %name) #15
  %conv = zext i1 %call1 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @device_match_of_node(%struct.device* nocapture noundef readonly %dev, i8* noundef readnone %np) local_unnamed_addr #7 {
entry:
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  %1 = bitcast i8* %np to %struct.device_node*
  %cmp = icmp eq %struct.device_node* %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @device_match_fwnode(%struct.device* noundef %dev, i8* noundef readnone %fwnode) local_unnamed_addr #0 {
entry:
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef %dev) #15
  %0 = bitcast i8* %fwnode to %struct.fwnode_handle*
  %cmp = icmp eq %struct.fwnode_handle* %call, %0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @device_match_devt(%struct.device* nocapture noundef readonly %dev, i8* nocapture noundef readonly %pdevt) #7 {
entry:
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 27
  %0 = load i32, i32* %devt, align 8
  %1 = bitcast i8* %pdevt to i32*
  %2 = load i32, i32* %1, align 4
  %cmp = icmp eq i32 %0, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @device_match_acpi_dev(%struct.device* nocapture noundef readnone %dev, i8* noundef readnone %adev) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i8* %adev, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @device_match_any(%struct.device* nocapture noundef readnone %dev, i8* nocapture noundef readnone %unused) local_unnamed_addr #4 {
entry:
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
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
define internal fastcc void @__fwnode_link_del(%struct.fwnode_link* noundef %link) unnamed_addr #0 {
entry:
  %s_hook = getelementptr inbounds %struct.fwnode_link, %struct.fwnode_link* %link, i64 0, i32 1
  call fastcc void @list_del(%struct.list_head* noundef %s_hook) #16
  %c_hook = getelementptr inbounds %struct.fwnode_link, %struct.fwnode_link* %link, i64 0, i32 3
  call fastcc void @list_del(%struct.list_head* noundef %c_hook) #16
  %0 = bitcast %struct.fwnode_link* %link to i8*
  call void @kfree(i8* noundef %0) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(%struct.srcu_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(%struct.srcu_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @device_is_registered(%struct.device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %state_in_sysfs = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0, i32 7
  %bf.load = load i8, i8* %state_in_sysfs, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(%struct.class* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_interface_register(%struct.class_interface* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(%struct.class* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @devlink_add_symlinks(%struct.device* noundef %dev, %struct.class_interface* nocapture noundef readnone %class_intf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 31
  %supplier = bitcast %struct.class** %add.ptr to %struct.device**
  %0 = load %struct.device*, %struct.device** %supplier, align 8
  %consumer = getelementptr inbounds %struct.class*, %struct.class** %add.ptr, i64 3
  %1 = bitcast %struct.class** %consumer to %struct.device**
  %2 = load %struct.device*, %struct.device** %1, align 8
  %call = call fastcc i8* @dev_bus_name(%struct.device* noundef %0) #16
  %call1 = call i64 @strlen(i8* noundef %call) #15
  %call2 = call fastcc i8* @dev_name(%struct.device* noundef %0) #16
  %call3 = call i64 @strlen(i8* noundef %call2) #15
  %add = add i64 %call3, %call1
  %call4 = call fastcc i8* @dev_bus_name(%struct.device* noundef %2) #16
  %call5 = call i64 @strlen(i8* noundef %call4) #15
  %call6 = call fastcc i8* @dev_name(%struct.device* noundef %2) #16
  %call7 = call i64 @strlen(i8* noundef %call6) #15
  %add8 = add i64 %call7, %call5
  %cmp = icmp ugt i64 %add, %add8
  %cond = select i1 %cmp, i64 %add, i64 %add8
  %call10 = call i64 @strlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #15
  %call12 = call i64 @strlen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)) #15
  %add11 = add i64 %call10, 1
  %add13 = add i64 %add11, %call12
  %add14 = add i64 %add13, %cond
  %call15 = call fastcc i8* @kzalloc(i64 noundef %add14) #16
  %tobool.not = icmp eq i8* %call15, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %link_dev = getelementptr inbounds %struct.class*, %struct.class** %add.ptr, i64 6
  %kobj = bitcast %struct.class** %link_dev to %struct.kobject*
  %kobj16 = getelementptr inbounds %struct.device, %struct.device* %0, i64 0, i32 0
  %call17 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj, %struct.kobject* noundef %kobj16, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0)) #15
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %out

if.end20:                                         ; preds = %if.end
  %kobj23 = getelementptr inbounds %struct.device, %struct.device* %2, i64 0, i32 0
  %call24 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj, %struct.kobject* noundef %kobj23, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0)) #15
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %err_con

if.end27:                                         ; preds = %if.end20
  %call28 = call fastcc i8* @dev_bus_name(%struct.device* noundef %2) #16
  %call29 = call fastcc i8* @dev_name(%struct.device* noundef %2) #16
  %call30 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %call15, i64 noundef %add14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* noundef %call28, i8* noundef %call29) #15
  %call34 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj16, %struct.kobject* noundef %kobj, i8* noundef nonnull %call15) #15
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %err_con_dev

if.end37:                                         ; preds = %if.end27
  %call38 = call fastcc i8* @dev_bus_name(%struct.device* noundef %0) #16
  %call39 = call fastcc i8* @dev_name(%struct.device* noundef %0) #16
  %call40 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %call15, i64 noundef %add14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef %call38, i8* noundef %call39) #15
  %call44 = call i32 @sysfs_create_link(%struct.kobject* noundef %kobj23, %struct.kobject* noundef %kobj, i8* noundef nonnull %call15) #15
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %out, label %err_sup_dev

err_sup_dev:                                      ; preds = %if.end37
  %call48 = call fastcc i8* @dev_bus_name(%struct.device* noundef %2) #16
  %call49 = call fastcc i8* @dev_name(%struct.device* noundef %2) #16
  %call50 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %call15, i64 noundef %add14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* noundef %call48, i8* noundef %call49) #15
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj16, i8* noundef nonnull %call15) #15
  br label %err_con_dev

err_con_dev:                                      ; preds = %if.end27, %err_sup_dev
  %ret.0 = phi i32 [ %call34, %if.end27 ], [ %call44, %err_sup_dev ]
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0)) #15
  br label %err_con

err_con:                                          ; preds = %if.end20, %err_con_dev
  %ret.1 = phi i32 [ %call24, %if.end20 ], [ %ret.0, %err_con_dev ]
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0)) #15
  br label %out

out:                                              ; preds = %if.end37, %if.end, %err_con
  %ret.2 = phi i32 [ %call17, %if.end ], [ %ret.1, %err_con ], [ 0, %if.end37 ]
  call void @kfree(i8* noundef nonnull %call15) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %ret.2, %out ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devlink_remove_symlinks(%struct.device* noundef %dev, %struct.class_interface* nocapture noundef readnone %class_intf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 31
  %supplier = bitcast %struct.class** %add.ptr to %struct.device**
  %0 = load %struct.device*, %struct.device** %supplier, align 8
  %consumer = getelementptr inbounds %struct.class*, %struct.class** %add.ptr, i64 3
  %1 = bitcast %struct.class** %consumer to %struct.device**
  %2 = load %struct.device*, %struct.device** %1, align 8
  %link_dev = getelementptr inbounds %struct.class*, %struct.class** %add.ptr, i64 6
  %kobj = bitcast %struct.class** %link_dev to %struct.kobject*
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0)) #15
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0)) #15
  %call = call fastcc i8* @dev_bus_name(%struct.device* noundef %0) #16
  %call3 = call i64 @strlen(i8* noundef %call) #15
  %call4 = call fastcc i8* @dev_name(%struct.device* noundef %0) #16
  %call5 = call i64 @strlen(i8* noundef %call4) #15
  %add = add i64 %call5, %call3
  %call6 = call fastcc i8* @dev_bus_name(%struct.device* noundef %2) #16
  %call7 = call i64 @strlen(i8* noundef %call6) #15
  %call8 = call fastcc i8* @dev_name(%struct.device* noundef %2) #16
  %call9 = call i64 @strlen(i8* noundef %call8) #15
  %add10 = add i64 %call9, %call7
  %cmp = icmp ugt i64 %add, %add10
  %cond = select i1 %cmp, i64 %add, i64 %add10
  %call12 = call i64 @strlen(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #15
  %call14 = call i64 @strlen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0)) #15
  %add13 = add i64 %call12, 1
  %add15 = add i64 %add13, %call14
  %add16 = add i64 %add15, %cond
  %call17 = call fastcc i8* @kzalloc(i64 noundef %add16) #16
  %tobool.not = icmp eq i8* %call17, null
  br i1 %tobool.not, label %do.end25, label %if.end39

do.end25:                                         ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.35, i64 0, i64 0)) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 585; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !31
  br label %cleanup

if.end39:                                         ; preds = %entry
  %call40 = call fastcc i32 @device_is_registered(%struct.device* noundef %2) #16
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end47, label %if.then42

if.then42:                                        ; preds = %if.end39
  %call43 = call fastcc i8* @dev_bus_name(%struct.device* noundef %0) #16
  %call44 = call fastcc i8* @dev_name(%struct.device* noundef %0) #16
  %call45 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %call17, i64 noundef %add16, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* noundef %call43, i8* noundef %call44) #15
  %kobj46 = getelementptr inbounds %struct.device, %struct.device* %2, i64 0, i32 0
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj46, i8* noundef nonnull %call17) #15
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end39
  %call48 = call fastcc i8* @dev_bus_name(%struct.device* noundef %2) #16
  %call49 = call fastcc i8* @dev_name(%struct.device* noundef %2) #16
  %call50 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %call17, i64 noundef %add16, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i8* noundef %call48, i8* noundef %call49) #15
  %kobj51 = getelementptr inbounds %struct.device, %struct.device* %0, i64 0, i32 0
  call void @sysfs_remove_link(%struct.kobject* noundef %kobj51, i8* noundef nonnull %call17) #15
  call void @kfree(i8* noundef nonnull %call17) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #15
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !11

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !7

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #15
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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !32
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @devlink_dev_release(%struct.device* noundef %dev) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 31
  %rm_work = getelementptr inbounds %struct.class*, %struct.class** %add.ptr, i64 67
  %0 = bitcast %struct.class** %rm_work to %struct.work_struct*
  %1 = bitcast %struct.class** %rm_work to i64*
  store i64 68719476704, i64* %1, align 8
  %entry4 = getelementptr inbounds %struct.class*, %struct.class** %add.ptr, i64 68
  %2 = bitcast %struct.class** %entry4 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %2) #16
  %func = getelementptr inbounds %struct.class*, %struct.class** %add.ptr, i64 70
  %3 = bitcast %struct.class** %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @device_link_release_fn, void (%struct.work_struct*)** %3, align 8
  %4 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_long_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %4, %struct.work_struct* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @status_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 31
  %status = getelementptr inbounds %struct.class*, %struct.class** %add.ptr, i64 65
  %0 = bitcast %struct.class** %status to i32*
  %1 = load i32, i32* %0, align 8
  %switch.tableidx = add i32 %1, 1
  %2 = icmp ult i32 %switch.tableidx, 6
  br i1 %2, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %entry
  %3 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [6 x i8*], [6 x i8*]* @switch.table.status_show, i64 0, i64 %3
  %switch.load = load i8*, i8** %switch.gep, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %switch.lookup
  %output.0 = phi i8* [ %switch.load, %switch.lookup ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), %entry ]
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef nonnull %output.0) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @auto_remove_on_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 31
  %0 = bitcast %struct.class** %add.ptr to %struct.device_link*
  %flags = getelementptr inbounds %struct.device_link, %struct.device_link* %0, i64 0, i32 6
  %1 = load i32, i32* %flags, align 4
  %conv = zext i32 %1 to i64
  %and = and i64 %conv, 16
  %tobool.not = icmp eq i64 %and, 0
  %and3 = and i64 %conv, 2
  %tobool4.not = icmp eq i64 %and3, 0
  %. = select i1 %tobool4.not, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0)
  %output.0 = select i1 %tobool.not, i8* %., i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0)
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef %output.0) #15
  %conv8 = sext i32 %call to i64
  ret i64 %conv8
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @runtime_pm_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 31
  %0 = bitcast %struct.class** %add.ptr to %struct.device_link*
  %flags = getelementptr inbounds %struct.device_link, %struct.device_link* %0, i64 0, i32 6
  %1 = load i32, i32* %flags, align 4
  %2 = lshr i32 %1, 2
  %.lobit = and i32 %2, 1
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %.lobit) #15
  %conv2 = sext i32 %call to i64
  ret i64 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @sync_state_only_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %add.ptr = getelementptr %struct.device, %struct.device* %dev, i64 -1, i32 31
  %0 = bitcast %struct.class** %add.ptr to %struct.device_link*
  %flags = getelementptr inbounds %struct.device_link, %struct.device_link* %0, i64 0, i32 6
  %1 = load i32, i32* %flags, align 4
  %2 = lshr i32 %1, 7
  %.lobit = and i32 %2, 1
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %.lobit) #15
  %conv2 = sext i32 %call to i64
  ret i64 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @device_link_release_fn(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -17, i32 1
  call fastcc void @device_link_synchronize_removal() #16
  %rpm_active = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 33
  %0 = bitcast %struct.list_head* %rpm_active to %struct.refcount_struct*
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %call = call i1 @refcount_dec_not_one(%struct.refcount_struct* noundef %0) #15
  br i1 %call, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %1 = bitcast %struct.list_head* %add.ptr to i8*
  %consumer = getelementptr inbounds %struct.list_head, %struct.list_head* %add.ptr, i64 1, i32 1
  %2 = bitcast %struct.list_head** %consumer to %struct.device**
  %3 = load %struct.device*, %struct.device** %2, align 8
  call void @put_device(%struct.device* noundef %3) #16
  %supplier2 = bitcast %struct.list_head* %add.ptr to %struct.device**
  %4 = load %struct.device*, %struct.device** %supplier2, align 8
  call void @put_device(%struct.device* noundef %4) #16
  call void @kfree(i8* noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @device_link_synchronize_removal() unnamed_addr #0 {
entry:
  call void @synchronize_srcu(%struct.srcu_struct* noundef nonnull @device_links_srcu) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @refcount_dec_not_one(%struct.refcount_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(%struct.srcu_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #7 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next13, i64 %0) #17, !srcloc !33
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev23, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_put(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refcount) #16
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  call fastcc void @__device_link_del(%struct.kref* noundef %kref) #16
  br label %return

return:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__device_link_del(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %add.ptr5 = getelementptr %struct.kref, %struct.kref* %kref, i64 -133
  %0 = bitcast %struct.kref* %add.ptr5 to %struct.device_link*
  call fastcc void @device_link_remove_from_lists(%struct.device_link* noundef %0) #16
  %link_dev = getelementptr %struct.kref, %struct.kref* %kref, i64 -121
  %1 = bitcast %struct.kref* %link_dev to %struct.device*
  call void @device_unregister(%struct.device* noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #16
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #16
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #15
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #17, !srcloc !34
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !7

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !35
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @device_link_remove_from_lists(%struct.device_link* nocapture noundef %link) unnamed_addr #3 {
entry:
  %s_node = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 1
  call fastcc void @list_del_rcu(%struct.list_head* noundef %s_node) #16
  %c_node = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 3
  call fastcc void @list_del_rcu(%struct.list_head* noundef %c_node) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_rcu(%struct.list_head* nocapture noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dev_has_sync_state(%struct.device* noundef readonly %dev) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 6
  %0 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool1.not = icmp eq %struct.device_driver* %0, null
  br i1 %tobool1.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %sync_state = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i64 0, i32 9
  %1 = load void (%struct.device*)*, void (%struct.device*)** %sync_state, align 8
  %tobool3.not = icmp eq void (%struct.device*)* %1, null
  br i1 %tobool3.not, label %if.end5, label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 5
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool6.not = icmp eq %struct.bus_type* %2, null
  br i1 %tobool6.not, label %if.end12, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.end5
  %sync_state9 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i64 0, i32 9
  %3 = load void (%struct.device*)*, void (%struct.device*)** %sync_state9, align 8
  %tobool10.not = icmp eq void (%struct.device*)* %3, null
  br i1 %tobool10.not, label %if.end12, label %return

if.end12:                                         ; preds = %land.lhs.true7, %if.end5
  br label %return

return:                                           ; preds = %land.lhs.true7, %land.lhs.true, %entry, %if.end12
  %retval.0 = phi i1 [ false, %if.end12 ], [ false, %entry ], [ true, %land.lhs.true ], [ true, %land.lhs.true7 ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @waiting_for_supplier_show(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  call fastcc void @device_lock(%struct.device* noundef %dev) #16
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %suppliers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %0, i64 0, i32 3
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %suppliers) #16
  %tobool.not = icmp eq i32 %call, 0
  call fastcc void @device_unlock(%struct.device* noundef %dev) #16
  %conv = zext i1 %tobool.not to i32
  %call2 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv) #15
  %conv3 = sext i32 %call2 to i64
  ret i64 %conv3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @fw_devlink_relax_link(%struct.device_link* nocapture noundef %link) unnamed_addr #8 {
entry:
  %flags = getelementptr inbounds %struct.device_link, %struct.device_link* %link, i64 0, i32 6
  %0 = load i32, i32* %flags, align 4
  %1 = and i32 %0, 256
  %tobool.not = icmp eq i32 %1, 0
  %cmp = icmp eq i32 %0, 448
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %return, label %if.end5

if.end5:                                          ; preds = %entry
  store i32 448, i32* %flags, align 4
  br label %return

return:                                           ; preds = %entry, %if.end5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #16
  call fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %call) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @set_bit(i64* noundef %flags) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #4 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #17, !srcloc !36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !37
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #17, !srcloc !38
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #17, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject* noundef, %struct.attribute* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(%struct.kobject* noundef, %struct.attribute* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @device_release(%struct.kobject* noundef %kobj) #0 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #16
  %p1 = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 2
  %0 = bitcast %struct.device_private** %p1 to i8**
  %1 = load i8*, i8** %0, align 8
  %call2 = call i32 @devres_release_all(%struct.device* noundef %call) #15
  %dma_range_map = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 19
  %2 = bitcast %struct.bus_dma_region** %dma_range_map to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #15
  %release = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 33
  %4 = load void (%struct.device*)*, void (%struct.device*)** %release, align 8
  %tobool.not = icmp eq void (%struct.device*)* %4, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void %4(%struct.device* noundef %call) #15
  br label %if.end40

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 4
  %5 = load %struct.device_type*, %struct.device_type** %type, align 8
  %tobool4.not = icmp eq %struct.device_type* %5, null
  br i1 %tobool4.not, label %if.else11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %release6 = getelementptr inbounds %struct.device_type, %struct.device_type* %5, i64 0, i32 4
  %6 = load void (%struct.device*)*, void (%struct.device*)** %release6, align 8
  %tobool7.not = icmp eq void (%struct.device*)* %6, null
  br i1 %tobool7.not, label %if.else11, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  call void %6(%struct.device* noundef %call) #15
  br label %if.end40

if.else11:                                        ; preds = %land.lhs.true, %if.else
  %class = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 31
  %7 = load %struct.class*, %struct.class** %class, align 8
  %tobool12.not = icmp eq %struct.class* %7, null
  br i1 %tobool12.not, label %do.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.else11
  %dev_release = getelementptr inbounds %struct.class, %struct.class* %7, i64 0, i32 8
  %8 = load void (%struct.device*)*, void (%struct.device*)** %dev_release, align 8
  %tobool15.not = icmp eq void (%struct.device*)* %8, null
  br i1 %tobool15.not, label %do.end, label %if.then16

if.then16:                                        ; preds = %land.lhs.true13
  call void %8(%struct.device* noundef %call) #15
  br label %if.end40

do.end:                                           ; preds = %if.else11, %land.lhs.true13
  %call25 = call fastcc i8* @dev_name(%struct.device* noundef %call) #16
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([123 x i8], [123 x i8]* @.str.60, i64 0, i64 0), i8* noundef %call25) #15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/base/core.c\22; .popsection; .long 14472b - 14470b; .short 2235; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !41
  br label %if.end40

if.end40:                                         ; preds = %if.then8, %do.end, %if.then16, %if.then
  call void @kfree(i8* noundef %1) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @device_namespace(%struct.kobject* noundef %kobj) #0 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #16
  %class = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 31
  %0 = load %struct.class*, %struct.class** %class, align 8
  %tobool.not = icmp eq %struct.class* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ns_type = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 10
  %1 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %ns_type, align 8
  %tobool2.not = icmp eq %struct.kobj_ns_type_operations* %1, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %namespace = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 11
  %2 = load i8* (%struct.device*)*, i8* (%struct.device*)** %namespace, align 8
  %call4 = call i8* %2(%struct.device* noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %ns.0 = phi i8* [ %call4, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  ret i8* %ns.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @device_get_ownership(%struct.kobject* noundef %kobj, %struct.kuid_t* noundef %uid, %struct.kgid_t* noundef %gid) #0 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #16
  %class = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 31
  %0 = load %struct.class*, %struct.class** %class, align 8
  %tobool.not = icmp eq %struct.class* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %get_ownership = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 12
  %1 = load void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)** %get_ownership, align 8
  %tobool2.not = icmp eq void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)* %1, null
  br i1 %tobool2.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void %1(%struct.device* noundef %call, %struct.kuid_t* noundef %uid, %struct.kgid_t* noundef %gid) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_all(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @dev_attr_show(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef %buf) #0 {
entry:
  %show = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1
  %0 = bitcast %struct.attribute* %show to i64 (%struct.device*, %struct.device_attribute*, i8*)**
  %1 = load i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.device*, %struct.device_attribute*, i8*)* %1, null
  br i1 %tobool.not, label %if.end10, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #16
  %2 = bitcast %struct.attribute* %attr to %struct.device_attribute*
  %call2 = call i64 %1(%struct.device* noundef %call, %struct.device_attribute* noundef %2, i8* noundef %buf) #15
  %cmp = icmp sgt i64 %call2, 4095
  br i1 %cmp, label %do.end6, label %if.end10

do.end6:                                          ; preds = %if.end
  %3 = load i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*)** %0, align 8
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.61, i64 0, i64 0), i64 (%struct.device*, %struct.device_attribute*, i8*)* noundef %3) #20
  br label %if.end10

if.end10:                                         ; preds = %entry, %do.end6, %if.end
  %ret.021 = phi i64 [ %call2, %do.end6 ], [ %call2, %if.end ], [ -5, %entry ]
  ret i64 %ret.021
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @dev_attr_store(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %store = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1, i32 1
  %0 = bitcast i16* %store to i64 (%struct.device*, %struct.device_attribute*, i8*, i64)**
  %1 = load i64 (%struct.device*, %struct.device_attribute*, i8*, i64)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #16
  %2 = bitcast %struct.attribute* %attr to %struct.device_attribute*
  %call2 = call i64 %1(%struct.device* noundef %call, %struct.device_attribute* noundef %2, i8* noundef %buf, i64 noundef %count) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %call2, %if.then ], [ -5, %entry ]
  ret i64 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @device_pm_init_common(%struct.device* nocapture noundef %dev) unnamed_addr #8 {
entry:
  %early_init = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 11, i32 1
  %bf.load = load i16, i16* %early_init, align 4
  %0 = and i16 %bf.load, 256
  %bf.cast.not = icmp eq i16 %0, 0
  br i1 %bf.cast.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 11, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %qos = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 11, i32 7
  store %struct.dev_pm_qos* null, %struct.dev_pm_qos** %qos, align 8
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, i16* %early_init, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_init(%struct.klist* noundef, void (%struct.klist_node*)* noundef, void (%struct.klist_node*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @klist_children_get(%struct.klist_node* nocapture noundef readonly %n) #0 {
entry:
  %add.ptr = getelementptr %struct.klist_node, %struct.klist_node* %n, i64 -2, i32 2
  %device = getelementptr inbounds %struct.kref, %struct.kref* %add.ptr, i64 50
  %0 = bitcast %struct.kref* %device to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  %call = call %struct.device* @get_device(%struct.device* noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @klist_children_put(%struct.klist_node* nocapture noundef readonly %n) #0 {
entry:
  %add.ptr = getelementptr %struct.klist_node, %struct.klist_node* %n, i64 -2, i32 2
  %device = getelementptr inbounds %struct.kref, %struct.kref* %add.ptr, i64 50
  %0 = bitcast %struct.kref* %device to %struct.device**
  %1 = load %struct.device*, %struct.device** %0, align 8
  call void @put_device(%struct.device* noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kobject* @class_dir_create_and_add(%struct.class* noundef %class, %struct.kobject* noundef %parent_kobj) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 72) #16
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %class3 = getelementptr inbounds i8, i8* %call, i64 64
  %0 = bitcast i8* %class3 to %struct.class**
  store %struct.class* %class, %struct.class** %0, align 8
  %kobj = bitcast i8* %call to %struct.kobject*
  call void @kobject_init(%struct.kobject* noundef nonnull %kobj, %struct.kobj_type* noundef nonnull @class_dir_ktype) #15
  %p = getelementptr inbounds %struct.class, %struct.class* %class, i64 0, i32 14
  %1 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %glue_dirs = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %1, i64 0, i32 10
  %kset = getelementptr inbounds i8, i8* %call, i64 32
  %2 = bitcast i8* %kset to %struct.kset**
  store %struct.kset* %glue_dirs, %struct.kset** %2, align 8
  %name = getelementptr inbounds %struct.class, %struct.class* %class, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call6 = call i32 (%struct.kobject*, %struct.kobject*, i8*, ...) @kobject_add(%struct.kobject* noundef nonnull %kobj, %struct.kobject* noundef %parent_kobj, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* noundef %3) #15
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end
  call void @kobject_put(%struct.kobject* noundef nonnull %kobj) #15
  %conv = sext i32 %call6 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.then7
  %conv.sink = phi i64 [ %conv, %if.then7 ], [ -12, %entry ]
  %call9 = call fastcc i8* @ERR_PTR(i64 noundef %conv.sink) #16
  %4 = bitcast i8* %call9 to %struct.kobject*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi %struct.kobject* [ %kobj, %if.end ], [ %4, %cleanup.sink.split ]
  ret %struct.kobject* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @class_dir_release(%struct.kobject* noundef %kobj) #0 {
entry:
  %0 = bitcast %struct.kobject* %kobj to i8*
  call void @kfree(i8* noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal %struct.kobj_ns_type_operations* @class_dir_child_ns_type(%struct.kobject* nocapture noundef readonly %kobj) #7 {
entry:
  %class = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 1
  %0 = bitcast %struct.kobject* %class to %struct.class**
  %1 = load %struct.class*, %struct.class** %0, align 8
  %ns_type = getelementptr inbounds %struct.class, %struct.class* %1, i64 0, i32 10
  %2 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** %ns_type, align 8
  ret %struct.kobj_ns_type_operations* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @software_node_notify(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @uevent_show(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %entry
  %top_kobj.0 = phi %struct.kobject* [ %kobj, %entry ], [ %1, %land.rhs ]
  %kset2 = getelementptr inbounds %struct.kobject, %struct.kobject* %top_kobj.0, i64 0, i32 3
  %0 = load %struct.kset*, %struct.kset** %kset2, align 8
  %tobool.not = icmp eq %struct.kset* %0, null
  br i1 %tobool.not, label %land.rhs, label %if.end

land.rhs:                                         ; preds = %while.cond
  %parent = getelementptr inbounds %struct.kobject, %struct.kobject* %top_kobj.0, i64 0, i32 2
  %1 = load %struct.kobject*, %struct.kobject** %parent, align 8
  %tobool3.not = icmp eq %struct.kobject* %1, null
  br i1 %tobool3.not, label %out, label %while.cond

if.end:                                           ; preds = %while.cond
  %uevent_ops = getelementptr inbounds %struct.kset, %struct.kset* %0, i64 0, i32 3
  %2 = load %struct.kset_uevent_ops*, %struct.kset_uevent_ops** %uevent_ops, align 8
  %tobool8.not = icmp eq %struct.kset_uevent_ops* %2, null
  br i1 %tobool8.not, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %uevent = getelementptr inbounds %struct.kset_uevent_ops, %struct.kset_uevent_ops* %2, i64 0, i32 2
  %3 = load i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)** %uevent, align 8
  %tobool10.not = icmp eq i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* %3, null
  br i1 %tobool10.not, label %out, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %filter = getelementptr inbounds %struct.kset_uevent_ops, %struct.kset_uevent_ops* %2, i64 0, i32 0
  %4 = load i32 (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*)** %filter, align 8
  %tobool16.not = icmp eq i32 (%struct.kset*, %struct.kobject*)* %4, null
  br i1 %tobool16.not, label %if.end24, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  %call = call i32 %4(%struct.kset* noundef nonnull %0, %struct.kobject* noundef %kobj) #15
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %out, label %if.end24

if.end24:                                         ; preds = %if.then17, %land.lhs.true
  %call25 = call fastcc i8* @kzalloc(i64 noundef 2592) #16
  %tobool26.not = icmp eq i8* %call25, null
  br i1 %tobool26.not, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end24
  %5 = bitcast i8* %call25 to %struct.kobj_uevent_env*
  %6 = load %struct.kset_uevent_ops*, %struct.kset_uevent_ops** %uevent_ops, align 8
  %uevent30 = getelementptr inbounds %struct.kset_uevent_ops, %struct.kset_uevent_ops* %6, i64 0, i32 2
  %7 = load i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)** %uevent30, align 8
  %call32 = call i32 %7(%struct.kset* noundef nonnull %0, %struct.kobject* noundef %kobj, %struct.kobj_uevent_env* noundef nonnull %5) #15
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %for.cond.preheader, label %out

for.cond.preheader:                               ; preds = %if.end28
  %envp_idx = getelementptr inbounds i8, i8* %call25, i64 536
  %8 = bitcast i8* %envp_idx to i32*
  %9 = load i32, i32* %8, align 8
  %cmp75 = icmp sgt i32 %9, 0
  br i1 %cmp75, label %for.body.lr.ph, label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %envp = getelementptr inbounds i8, i8* %call25, i64 24
  %10 = bitcast i8* %envp to [64 x i8*]*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %len.077 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %arrayidx = getelementptr [64 x i8*], [64 x i8*]* %10, i64 0, i64 %indvars.iv
  %11 = load i8*, i8** %arrayidx, align 8
  %call36 = call i32 (i8*, i32, i8*, ...) @sysfs_emit_at(i8* noundef %buf, i32 noundef %len.077, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef %11) #15
  %add = add i32 %call36, %len.077
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = load i32, i32* %8, align 8
  %13 = sext i32 %12 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %13
  br i1 %cmp, label %for.body, label %out.loopexit

out.loopexit:                                     ; preds = %for.body
  %phi.cast = sext i32 %add to i64
  br label %out

out:                                              ; preds = %land.rhs, %out.loopexit, %for.cond.preheader, %if.end28, %if.then17, %if.end, %lor.lhs.false
  %14 = phi i8* [ %call25, %if.end28 ], [ null, %if.then17 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ %call25, %for.cond.preheader ], [ %call25, %out.loopexit ], [ null, %land.rhs ]
  %len.1 = phi i64 [ 0, %if.end28 ], [ 0, %if.then17 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %for.cond.preheader ], [ %phi.cast, %out.loopexit ], [ 0, %land.rhs ]
  call void @kfree(i8* noundef %14) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %out
  %retval.0 = phi i64 [ %len.1, %out ], [ -12, %if.end24 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @uevent_store(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0
  %call = call i32 @kobject_synth_uevent(%struct.kobject* noundef %kobj, i8* noundef %buf, i64 noundef %count) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %do.end

do.end:                                           ; preds = %entry
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.63, i64 0, i64 0)) #18
  %conv = sext i32 %call to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end
  %retval.0 = phi i64 [ %conv, %do.end ], [ %count, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_synth_uevent(%struct.kobject* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.device_node* @dev_of_node(%struct.device* noundef readonly %dev) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct.device* %dev, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 25
  %0 = load %struct.device_node*, %struct.device_node** %of_node, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.device_node* [ %0, %if.end ], [ null, %entry ]
  ret %struct.device_node* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @device_is_not_partition(%struct.device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %type = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 4
  %0 = load %struct.device_type*, %struct.device_type** %type, align 8
  %cmp = icmp ne %struct.device_type* %0, @part_type
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @dev_removable_is_valid(%struct.device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %removable = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 36
  %0 = load i32, i32* %removable, align 8
  %cmp = icmp ne i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @online_show(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  call fastcc void @device_lock(%struct.device* noundef %dev) #16
  %offline = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 37
  %bf.load = load i8, i8* %offline, align 4
  call fastcc void @device_unlock(%struct.device* noundef %dev) #16
  %0 = lshr i8 %bf.load, 1
  %.lobit = and i8 %0, 1
  %1 = xor i8 %.lobit, 1
  %2 = zext i8 %1 to i32
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i32 noundef %2) #15
  %conv1 = sext i32 %call to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @online_store(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %val = alloca i8, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %val) #17
  store i8 0, i8* %val, align 4, !annotation !9
  %call = call fastcc i32 @strtobool(i8* noundef %buf, i8* noundef nonnull %val) #16
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @lock_device_hotplug_sysfs() #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %conv3 = sext i32 %call1 to i64
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = load i8, i8* %val, align 4, !range !22
  %tobool5.not = icmp eq i8 %0, 0
  br i1 %tobool5.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end4
  %call7 = call i32 @device_online(%struct.device* noundef %dev) #16
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  %call8 = call i32 @device_offline(%struct.device* noundef %dev) #16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call7, %cond.true ], [ %call8, %cond.false ]
  call void @unlock_device_hotplug() #16
  %cmp9 = icmp slt i32 %cond, 0
  %conv12 = sext i32 %cond to i64
  %cond15 = select i1 %cmp9, i64 %conv12, i64 %count
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then2, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %conv3, %if.then2 ], [ %cond15, %cond.end ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %val) #17
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @removable_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %removable = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 36
  %0 = load i32, i32* %removable, align 8
  %switch.selectcmp = icmp eq i32 %0, 2
  %switch.select = select i1 %switch.selectcmp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0)
  %switch.selectcmp3 = icmp eq i32 %0, 3
  %switch.select4 = select i1 %switch.selectcmp3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i64 0, i64 0), i8* %switch.select
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef %switch.select4) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @dev_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 27
  %0 = load i32, i32* %devt, align 8
  %shr = lshr i32 %0, 20
  %and = and i32 %0, 1048575
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buf, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i64 0, i64 0), i32 noundef %shr, i32 noundef %and) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kobject* @device_to_dev_kobj(%struct.device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %class = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %0 = load %struct.class*, %struct.class** %class, align 8
  %tobool.not = icmp eq %struct.class* %0, null
  %dev_kobj = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 4
  %kobj.0.in = select i1 %tobool.not, %struct.kobject** @sysfs_dev_char_kobj, %struct.kobject** %dev_kobj
  %kobj.0 = load %struct.kobject*, %struct.kobject** %kobj.0.in, align 8
  ret %struct.kobject* %kobj.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fw_devlink_parse_fwtree(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #0 {
entry:
  call fastcc void @fw_devlink_parse_fwnode(%struct.fwnode_handle* noundef %fwnode) #16
  %call4 = call %struct.fwnode_handle* @fwnode_get_next_available_child_node(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef null) #15
  %tobool.not5 = icmp eq %struct.fwnode_handle* %call4, null
  br i1 %tobool.not5, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %call6 = phi %struct.fwnode_handle* [ %call, %while.body ], [ %call4, %entry ]
  call fastcc void @fw_devlink_parse_fwtree(%struct.fwnode_handle* noundef nonnull %call6) #16
  %call = call %struct.fwnode_handle* @fwnode_get_next_available_child_node(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef nonnull %call6) #15
  %tobool.not = icmp eq %struct.fwnode_handle* %call, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__fw_devlink_link_to_consumers(%struct.device* nocapture noundef readonly %dev) unnamed_addr #0 {
entry:
  %fwnode1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode1, align 8
  %consumers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %0, i64 0, i32 4
  %1 = bitcast %struct.list_head* %consumers to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.list_head*
  %cmp.not72 = icmp eq %struct.list_head* %consumers, %3
  br i1 %cmp.not72, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %cleanup
  %.pn.in.in73 = phi i8* [ %.pn75, %cleanup ], [ %2, %entry ]
  %link.074.in = getelementptr i8, i8* %.pn.in.in73, i64 -8
  %link.074 = bitcast i8* %link.074.in to %struct.fwnode_link*
  %.pn75.in = bitcast i8* %.pn.in.in73 to i8**
  %.pn75 = load i8*, i8** %.pn75.in, align 8
  %call = call i32 @fw_devlink_get_flags() #16
  %consumer = getelementptr i8, i8* %.pn.in.in73, i64 16
  %4 = bitcast i8* %consumer to %struct.fwnode_handle**
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %dev12 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %5, i64 0, i32 2
  %6 = load %struct.device*, %struct.device** %dev12, align 8
  %call13 = call %struct.device* @get_device(%struct.device* noundef %6) #16
  %tobool.not = icmp eq %struct.device* %call13, null
  br i1 %tobool.not, label %if.then, label %if.end23

if.then:                                          ; preds = %for.body
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %call15 = call %struct.device* @fwnode_get_next_parent_dev(%struct.fwnode_handle* noundef %7) #15
  %tobool16.not = icmp eq %struct.device* %call15, null
  br i1 %tobool16.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %fwnode17 = getelementptr inbounds %struct.device, %struct.device* %call15, i64 0, i32 26
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode17, align 8
  %call18 = call i1 @fwnode_is_ancestor_of(%struct.fwnode_handle* noundef %8, %struct.fwnode_handle* noundef %0) #15
  br i1 %call18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %land.lhs.true
  call void @put_device(%struct.device* noundef nonnull %call15) #16
  br label %cleanup

if.end23:                                         ; preds = %for.body, %land.lhs.true
  %dl_flags.0 = phi i32 [ %call, %for.body ], [ 384, %land.lhs.true ]
  %con_dev.0 = phi %struct.device* [ %call13, %for.body ], [ %call15, %land.lhs.true ]
  %call24 = call fastcc i32 @fw_devlink_create_devlink(%struct.device* noundef nonnull %con_dev.0, %struct.fwnode_handle* noundef %0, i32 noundef %dl_flags.0) #16
  call void @put_device(%struct.device* noundef nonnull %con_dev.0) #16
  %cmp26 = icmp eq i32 %call24, -11
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp26
  br i1 %or.cond, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end23
  call fastcc void @__fwnode_link_del(%struct.fwnode_link* noundef %link.074) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then19, %if.end23, %if.end28
  %9 = bitcast i8* %.pn75 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %consumers, %9
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__fw_devlink_link_to_suppliers(%struct.device* noundef %dev, %struct.fwnode_handle* noundef %fwnode) unnamed_addr #0 {
entry:
  %fwnode1 = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 26
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode1, align 8
  %cmp = icmp eq %struct.fwnode_handle* %0, %fwnode
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @fw_devlink_get_flags() #16
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %dl_flags.0 = phi i32 [ %call, %if.then ], [ 384, %entry ]
  %suppliers = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 3
  %1 = bitcast %struct.list_head* %suppliers to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.list_head*
  %cmp12.not66 = icmp eq %struct.list_head* %suppliers, %3
  br i1 %cmp12.not66, label %while.cond.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %tobool14.not = xor i1 %cmp, true
  br label %for.body

while.cond.preheader:                             ; preds = %cleanup, %if.end
  %call3470 = call %struct.fwnode_handle* @fwnode_get_next_available_child_node(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef null) #15
  %tobool35.not71 = icmp eq %struct.fwnode_handle* %call3470, null
  br i1 %tobool35.not71, label %while.end, label %while.body

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %.pn69.in.in = phi i8* [ %2, %for.body.lr.ph ], [ %.pn69, %cleanup ]
  %link.0.in67 = getelementptr i8, i8* %.pn69.in.in, i64 -32
  %.pn69.in = bitcast i8* %.pn69.in.in to i8**
  %.pn69 = load i8*, i8** %.pn69.in, align 8
  %supplier = bitcast i8* %link.0.in67 to %struct.fwnode_handle**
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %supplier, align 8
  %call13 = call fastcc i32 @fw_devlink_create_devlink(%struct.device* noundef %dev, %struct.fwnode_handle* noundef %4, i32 noundef %dl_flags.0) #16
  %cmp15 = icmp eq i32 %call13, -11
  %or.cond = select i1 %tobool14.not, i1 true, i1 %cmp15
  br i1 %or.cond, label %cleanup, label %if.end17

if.end17:                                         ; preds = %for.body
  %link.068 = bitcast i8* %link.0.in67 to %struct.fwnode_link*
  call fastcc void @__fwnode_link_del(%struct.fwnode_link* noundef %link.068) #16
  %tobool18.not = icmp eq i32 %call13, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end17
  %dev21 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %4, i64 0, i32 2
  %5 = load %struct.device*, %struct.device** %dev21, align 8
  %call22 = call %struct.device* @get_device(%struct.device* noundef %5) #16
  %fwnode23 = getelementptr inbounds %struct.device, %struct.device* %call22, i64 0, i32 26
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode23, align 8
  call fastcc void @__fw_devlink_link_to_suppliers(%struct.device* noundef %call22, %struct.fwnode_handle* noundef %6) #16
  call void @put_device(%struct.device* noundef %call22) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %for.body, %if.end20
  %7 = bitcast i8* %.pn69 to %struct.list_head*
  %cmp12.not = icmp eq %struct.list_head* %suppliers, %7
  br i1 %cmp12.not, label %while.cond.preheader, label %for.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call3472 = phi %struct.fwnode_handle* [ %call34, %while.body ], [ %call3470, %while.cond.preheader ]
  call fastcc void @__fw_devlink_link_to_suppliers(%struct.device* noundef %dev, %struct.fwnode_handle* noundef nonnull %call3472) #16
  %call34 = call %struct.fwnode_handle* @fwnode_get_next_available_child_node(%struct.fwnode_handle* noundef %fwnode, %struct.fwnode_handle* noundef nonnull %call3472) #15
  %tobool35.not = icmp eq %struct.fwnode_handle* %call34, null
  br i1 %tobool35.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.preheader
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fw_devlink_parse_fwnode(%struct.fwnode_handle* noundef %fwnode) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 5
  %0 = load i8, i8* %flags, align 8
  %1 = and i8 %0, 1
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.fwnode_handle* %fwnode, null
  br i1 %tobool1.not, label %cond.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i64 0, i32 1
  %2 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8
  %tobool3.not = icmp eq %struct.fwnode_operations* %2, null
  br i1 %tobool3.not, label %cond.end11, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %add_links = getelementptr inbounds %struct.fwnode_operations, %struct.fwnode_operations* %2, i64 0, i32 17
  %3 = load i32 (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*)** %add_links, align 8
  %tobool6.not = icmp eq i32 (%struct.fwnode_handle*)* %3, null
  br i1 %tobool6.not, label %cond.end11, label %cond.true7

cond.true7:                                       ; preds = %land.lhs.true4
  %call = call i32 %3(%struct.fwnode_handle* noundef nonnull %fwnode) #15
  %.pre = load i8, i8* %flags, align 8
  br label %cond.end11

cond.end11:                                       ; preds = %if.end, %cond.true7, %land.lhs.true4, %land.lhs.true
  %4 = phi i8 [ %0, %if.end ], [ %.pre, %cond.true7 ], [ %0, %land.lhs.true4 ], [ %0, %land.lhs.true ]
  %5 = or i8 %4, 1
  store i8 %5, i8* %flags, align 8
  br label %return

return:                                           ; preds = %entry, %cond.end11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @fwnode_get_next_parent_dev(%struct.fwnode_handle* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @fwnode_is_ancestor_of(%struct.fwnode_handle* noundef, %struct.fwnode_handle* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @fw_devlink_create_devlink(%struct.device* noundef %con, %struct.fwnode_handle* noundef %sup_handle, i32 noundef %flags) unnamed_addr #0 {
entry:
  %flags1 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %sup_handle, i64 0, i32 5
  %0 = load i8, i8* %flags1, align 8
  %1 = and i8 %0, 8
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %con, i64 0, i32 26
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8
  %call = call i1 @fwnode_is_ancestor_of(%struct.fwnode_handle* noundef %sup_handle, %struct.fwnode_handle* noundef %2) #15
  br i1 %call, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %dev = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %sup_handle, i64 0, i32 2
  %3 = load %struct.device*, %struct.device** %dev, align 8
  %call3 = call %struct.device* @get_device(%struct.device* noundef %3) #16
  %tobool4.not = icmp eq %struct.device* %call3, null
  br i1 %tobool4.not, label %if.end25, label %if.then5

if.then5:                                         ; preds = %if.end
  %status = getelementptr inbounds %struct.device, %struct.device* %call3, i64 0, i32 10, i32 3
  %4 = load i32, i32* %status, align 8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true7, label %if.end13

land.lhs.true7:                                   ; preds = %if.then5
  %5 = load i8, i8* %flags1, align 8
  %6 = and i8 %5, 4
  %tobool11.not = icmp eq i8 %6, 0
  br i1 %tobool11.not, label %if.end13, label %out

if.end13:                                         ; preds = %land.lhs.true7, %if.then5
  %call14 = call %struct.device_link* @device_link_add(%struct.device* noundef %con, %struct.device* noundef nonnull %call3, i32 noundef %flags) #16
  %tobool15.not = icmp eq %struct.device_link* %call14, null
  %7 = and i32 %flags, 128
  %tobool19.not = icmp eq i32 %7, 0
  %or.cond = and i1 %tobool19.not, %tobool15.not
  br i1 %or.cond, label %do.end, label %out

do.end:                                           ; preds = %if.end13
  %call21 = call fastcc i8* @dev_name(%struct.device* noundef nonnull %call3) #16
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* noundef %con, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.73, i64 0, i64 0), i8* noundef %call21) #18
  call fastcc void @device_links_write_lock() #16
  %8 = bitcast %struct.device* %call3 to i8*
  %call22 = call i32 @fw_devlink_relax_cycle(%struct.device* noundef %con, i8* noundef nonnull %8) #16
  call fastcc void @device_links_write_unlock() #16
  %call23 = call %struct.device_link* @device_link_add(%struct.device* noundef %con, %struct.device* noundef nonnull %call3, i32 noundef 384) #16
  br label %out

if.end25:                                         ; preds = %if.end
  %9 = load i8, i8* %flags1, align 8
  %10 = and i8 %9, 4
  %tobool29.not = icmp eq i8 %10, 0
  br i1 %tobool29.not, label %if.end31, label %cleanup

if.end31:                                         ; preds = %if.end25
  %11 = and i32 %flags, 128
  %tobool34.not = icmp eq i32 %11, 0
  br i1 %tobool34.not, label %if.end36, label %cleanup

if.end36:                                         ; preds = %if.end31
  %call37 = call %struct.device* @fwnode_get_next_parent_dev(%struct.fwnode_handle* noundef %sup_handle) #15
  %tobool38.not = icmp eq %struct.device* %call37, null
  br i1 %tobool38.not, label %out, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.end36
  %12 = bitcast %struct.device* %call37 to i8*
  %call40 = call i32 @device_is_dependent(%struct.device* noundef %con, i8* noundef nonnull %12) #16
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %out, label %do.end45

do.end45:                                         ; preds = %land.lhs.true39
  %call46 = call fastcc i8* @dev_name(%struct.device* noundef nonnull %call37) #16
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* noundef %con, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.74, i64 0, i64 0), %struct.fwnode_handle* noundef %sup_handle, i8* noundef %call46) #18
  call fastcc void @device_links_write_lock() #16
  %call47 = call i32 @fw_devlink_relax_cycle(%struct.device* noundef %con, i8* noundef nonnull %12) #16
  call fastcc void @device_links_write_unlock() #16
  br label %out

out:                                              ; preds = %if.end36, %land.lhs.true39, %land.lhs.true7, %do.end45, %if.end13, %do.end
  %sup_dev.0 = phi %struct.device* [ %call3, %if.end13 ], [ %call3, %do.end ], [ %call37, %do.end45 ], [ %call3, %land.lhs.true7 ], [ %call37, %land.lhs.true39 ], [ null, %if.end36 ]
  %ret.0 = phi i32 [ 0, %if.end13 ], [ -22, %do.end ], [ -22, %do.end45 ], [ -22, %land.lhs.true7 ], [ -11, %land.lhs.true39 ], [ -11, %if.end36 ]
  call void @put_device(%struct.device* noundef %sup_dev.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end25, %land.lhs.true, %out
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %land.lhs.true ], [ -22, %if.end25 ], [ -11, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @fw_devlink_relax_cycle(%struct.device* noundef readonly %con, i8* noundef %sup) #0 {
entry:
  %0 = bitcast i8* %sup to %struct.device*
  %cmp = icmp eq %struct.device* %0, %con
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @device_for_each_child(%struct.device* noundef %con, i8* noundef %sup, i32 (%struct.device*, i8*)* noundef nonnull @fw_devlink_relax_cycle) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %if.end
  %consumers = getelementptr inbounds %struct.device, %struct.device* %con, i64 0, i32 10, i32 1
  %1 = bitcast %struct.list_head* %consumers to i8**
  %.pn38 = load i8*, i8** %1, align 8
  %2 = bitcast i8* %.pn38 to %struct.list_head*
  %cmp5.not41 = icmp eq %struct.list_head* %consumers, %2
  br i1 %cmp5.not41, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end2, %for.inc
  %.pn43 = phi i8* [ %.pn, %for.inc ], [ %.pn38, %if.end2 ]
  %ret.042 = phi i32 [ %ret.1, %for.inc ], [ 0, %if.end2 ]
  %link.045.in = getelementptr i8, i8* %.pn43, i64 -8
  %link.045 = bitcast i8* %link.045.in to %struct.device_link*
  %flags = getelementptr i8, i8* %.pn43, i64 516
  %3 = bitcast i8* %flags to i32*
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, -257
  %cmp6 = icmp eq i32 %5, 192
  br i1 %cmp6, label %for.inc, label %if.end9

if.end9:                                          ; preds = %for.body
  %consumer = getelementptr i8, i8* %.pn43, i64 16
  %6 = bitcast i8* %consumer to %struct.device**
  %7 = load %struct.device*, %struct.device** %6, align 8
  %call10 = call i32 @fw_devlink_relax_cycle(%struct.device* noundef %7, i8* noundef %sup) #16
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.inc, label %if.end13

if.end13:                                         ; preds = %if.end9
  call fastcc void @fw_devlink_relax_link(%struct.device_link* noundef %link.045) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %for.body, %if.end13
  %ret.1 = phi i32 [ %ret.042, %for.body ], [ 1, %if.end13 ], [ %ret.042, %if.end9 ]
  %8 = bitcast i8* %.pn43 to i8**
  %.pn = load i8*, i8** %8, align 8
  %9 = bitcast i8* %.pn to %struct.list_head*
  %cmp5.not = icmp eq %struct.list_head* %consumers, %9
  br i1 %cmp5.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.inc, %if.end2, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %call, %if.end ], [ 0, %if.end2 ], [ %ret.1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_delete_link(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @software_node_notify_remove(%struct.device* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @live_in_glue_dir(%struct.kobject* noundef readonly %kobj, %struct.device* nocapture noundef readonly %dev) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %class = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 31
  %0 = load %struct.class*, %struct.class** %class, align 8
  %tobool1.not = icmp eq %struct.class* %0, null
  br i1 %tobool1.not, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %kset = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 3
  %1 = load %struct.kset*, %struct.kset** %kset, align 8
  %p = getelementptr inbounds %struct.class, %struct.class* %0, i64 0, i32 14
  %2 = load %struct.subsys_private*, %struct.subsys_private** %p, align 8
  %glue_dirs = getelementptr inbounds %struct.subsys_private, %struct.subsys_private* %2, i64 0, i32 10
  %cmp.not = icmp eq %struct.kset* %1, %glue_dirs
  br label %return

return:                                           ; preds = %lor.lhs.false2, %entry, %lor.lhs.false
  %retval.0 = phi i1 [ false, %lor.lhs.false ], [ false, %entry ], [ %cmp.not, %lor.lhs.false2 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @kref_read(%struct.kref* noundef %kref) unnamed_addr #9 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %refcount) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @kobject_has_children(%struct.kobject* noundef %kobj) unnamed_addr #0 {
entry:
  %kref = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 6
  %call = call fastcc i32 @kref_read(%struct.kref* noundef %kref) #16
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/kobject.h\22; .popsection; .long 14472b - 14470b; .short 133; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %tobool14.not = icmp eq %struct.kernfs_node* %0, null
  br i1 %tobool14.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %subdirs = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %0, i64 0, i32 7, i32 0, i32 0
  %1 = load i64, i64* %subdirs, align 8
  %tobool16 = icmp ne i64 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %2 = phi i1 [ false, %if.end ], [ %tobool16, %land.rhs ]
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #9 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.klist_node* @klist_next(%struct.klist_iter* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.klist_node* @klist_prev(%struct.klist_iter* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @dev_uevent_filter(%struct.kset* nocapture noundef readnone %kset, %struct.kobject* noundef readonly %kobj) #7 {
entry:
  %call = call fastcc %struct.kobj_type* @get_ktype(%struct.kobject* noundef %kobj) #16
  %cmp = icmp eq %struct.kobj_type* %call, @device_ktype
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call1 = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #16
  %bus = getelementptr inbounds %struct.device, %struct.device* %call1, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool.not = icmp eq %struct.bus_type* %0, null
  br i1 %tobool.not, label %if.end, label %cleanup7

if.end:                                           ; preds = %if.then
  %class = getelementptr inbounds %struct.device, %struct.device* %call1, i64 0, i32 31
  %1 = load %struct.class*, %struct.class** %class, align 8
  %tobool3.not = icmp eq %struct.class* %1, null
  br i1 %tobool3.not, label %if.end6, label %cleanup7

if.end6:                                          ; preds = %if.end, %entry
  br label %cleanup7

cleanup7:                                         ; preds = %if.then, %if.end, %if.end6
  %retval.1 = phi i32 [ 0, %if.end6 ], [ 1, %if.end ], [ 1, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i8* @dev_uevent_name(%struct.kset* nocapture noundef readnone %kset, %struct.kobject* noundef readonly %kobj) #7 {
entry:
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #16
  %bus = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 5
  %0 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool.not = icmp eq %struct.bus_type* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.bus_type, %struct.bus_type* %0, i64 0, i32 0
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %class = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 31
  %1 = load %struct.class*, %struct.class** %class, align 8
  %tobool2.not = icmp eq %struct.class* %1, null
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %name5 = getelementptr inbounds %struct.class, %struct.class* %1, i64 0, i32 0
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then, %if.then3
  %name5.sink = phi i8** [ %name5, %if.then3 ], [ %name, %if.then ]
  %2 = load i8*, i8** %name5.sink, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i8* [ null, %if.end ], [ %2, %cleanup.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @dev_uevent(%struct.kset* nocapture noundef readnone %kset, %struct.kobject* noundef %kobj, %struct.kobj_uevent_env* noundef %env) #0 {
entry:
  %tmp = alloca i8*, align 8
  %mode = alloca i16, align 4
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %call = call fastcc %struct.device* @kobj_to_dev(%struct.kobject* noundef %kobj) #16
  %devt = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 27
  %0 = load i32, i32* %devt, align 8
  %tobool.not = icmp ult i32 %0, 1048576
  br i1 %tobool.not, label %if.end38, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i8* null, i8** %tmp, align 8, !annotation !9
  %2 = bitcast i16* %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %2) #17
  store i16 0, i16* %mode, align 4
  %3 = bitcast %struct.kuid_t* %uid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #17
  %4 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %uid, i64 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = bitcast %struct.kgid_t* %gid to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #17
  %6 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %gid, i64 0, i32 0
  store i32 0, i32* %6, align 4
  %shr3 = lshr i32 %0, 20
  %call4 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i64 0, i64 0), i32 noundef %shr3) #15
  %7 = load i32, i32* %devt, align 8
  %and = and i32 %7, 1048575
  %call6 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i32 noundef %and) #15
  %call7 = call i8* @device_get_devnode(%struct.device* noundef %call, i16* noundef nonnull %mode, %struct.kuid_t* noundef nonnull %uid, %struct.kgid_t* noundef nonnull %gid, i8** noundef nonnull %tmp) #16
  %tobool8.not = icmp eq i8* %call7, null
  br i1 %tobool8.not, label %if.end37, label %if.then9

if.then9:                                         ; preds = %if.then
  %call10 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i64 0, i64 0), i8* noundef nonnull %call7) #15
  %8 = load i16, i16* %mode, align 4
  %tobool11.not = icmp eq i16 %8, 0
  br i1 %tobool11.not, label %if.end, label %if.then12

if.then12:                                        ; preds = %if.then9
  %9 = and i16 %8, 511
  %and13 = zext i16 %9 to i32
  %call14 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i32 noundef %and13) #15
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then9
  %10 = load i32, i32* %4, align 4
  %coerce.val.ii = zext i32 %10 to i64
  %call17 = call fastcc i1 @uid_eq(i64 %coerce.val.ii) #16
  br i1 %call17, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end
  %call21 = call fastcc i32 @from_kuid(i64 %coerce.val.ii) #16
  %call22 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i64 0, i64 0), i32 noundef %call21) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end
  %11 = load i32, i32* %6, align 4
  %coerce.val.ii27 = zext i32 %11 to i64
  %call30 = call fastcc i1 @gid_eq(i64 %coerce.val.ii27) #16
  br i1 %call30, label %if.end36, label %if.then31

if.then31:                                        ; preds = %if.end23
  %call34 = call fastcc i32 @from_kgid(i64 %coerce.val.ii27) #16
  %call35 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i32 noundef %call34) #15
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end23
  %12 = load i8*, i8** %tmp, align 8
  call void @kfree(i8* noundef %12) #15
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #17
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %2) #17
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %entry
  %type = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 4
  %13 = load %struct.device_type*, %struct.device_type** %type, align 8
  %tobool39.not = icmp eq %struct.device_type* %13, null
  br i1 %tobool39.not, label %if.end47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end38
  %name41 = getelementptr inbounds %struct.device_type, %struct.device_type* %13, i64 0, i32 0
  %14 = load i8*, i8** %name41, align 8
  %tobool42.not = icmp eq i8* %14, null
  br i1 %tobool42.not, label %if.end47, label %if.then43

if.then43:                                        ; preds = %land.lhs.true
  %call46 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i64 0, i64 0), i8* noundef nonnull %14) #15
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %land.lhs.true, %if.end38
  %driver = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 6
  %15 = load %struct.device_driver*, %struct.device_driver** %driver, align 8
  %tobool48.not = icmp eq %struct.device_driver* %15, null
  br i1 %tobool48.not, label %if.end53, label %if.then49

if.then49:                                        ; preds = %if.end47
  %name51 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %15, i64 0, i32 0
  %16 = load i8*, i8** %name51, align 8
  %call52 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* noundef %env, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i64 0, i64 0), i8* noundef %16) #15
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end47
  call void @of_device_uevent(%struct.device* noundef %call, %struct.kobj_uevent_env* noundef %env) #15
  %bus = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 5
  %17 = load %struct.bus_type*, %struct.bus_type** %bus, align 8
  %tobool54.not = icmp eq %struct.bus_type* %17, null
  br i1 %tobool54.not, label %if.end66, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %if.end53
  %uevent = getelementptr inbounds %struct.bus_type, %struct.bus_type* %17, i64 0, i32 7
  %18 = load i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)** %uevent, align 8
  %tobool57.not = icmp eq i32 (%struct.device*, %struct.kobj_uevent_env*)* %18, null
  br i1 %tobool57.not, label %if.end66, label %if.then58

if.then58:                                        ; preds = %land.lhs.true55
  %call61 = call i32 %18(%struct.device* noundef %call, %struct.kobj_uevent_env* noundef %env) #15
  br label %if.end66

if.end66:                                         ; preds = %if.then58, %land.lhs.true55, %if.end53
  %retval1.0 = phi i32 [ 0, %land.lhs.true55 ], [ 0, %if.end53 ], [ %call61, %if.then58 ]
  %class = getelementptr inbounds %struct.device, %struct.device* %call, i64 0, i32 31
  %19 = load %struct.class*, %struct.class** %class, align 8
  %tobool67.not = icmp eq %struct.class* %19, null
  br i1 %tobool67.not, label %if.end79, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %if.end66
  %dev_uevent = getelementptr inbounds %struct.class, %struct.class* %19, i64 0, i32 5
  %20 = load i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)** %dev_uevent, align 8
  %tobool70.not = icmp eq i32 (%struct.device*, %struct.kobj_uevent_env*)* %20, null
  br i1 %tobool70.not, label %if.end79, label %if.then71

if.then71:                                        ; preds = %land.lhs.true68
  %call74 = call i32 %20(%struct.device* noundef %call, %struct.kobj_uevent_env* noundef %env) #15
  br label %if.end79

if.end79:                                         ; preds = %if.then71, %land.lhs.true68, %if.end66
  %retval1.1 = phi i32 [ %retval1.0, %land.lhs.true68 ], [ %retval1.0, %if.end66 ], [ %call74, %if.then71 ]
  %21 = load %struct.device_type*, %struct.device_type** %type, align 8
  %tobool81.not = icmp eq %struct.device_type* %21, null
  br i1 %tobool81.not, label %if.end94, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %if.end79
  %uevent84 = getelementptr inbounds %struct.device_type, %struct.device_type* %21, i64 0, i32 2
  %22 = load i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)** %uevent84, align 8
  %tobool85.not = icmp eq i32 (%struct.device*, %struct.kobj_uevent_env*)* %22, null
  br i1 %tobool85.not, label %if.end94, label %if.then86

if.then86:                                        ; preds = %land.lhs.true82
  %call89 = call i32 %22(%struct.device* noundef %call, %struct.kobj_uevent_env* noundef %env) #15
  br label %if.end94

if.end94:                                         ; preds = %if.then86, %land.lhs.true82, %if.end79
  %retval1.2 = phi i32 [ %retval1.1, %land.lhs.true82 ], [ %retval1.1, %if.end79 ], [ %call89, %if.then86 ]
  ret i32 %retval1.2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kobj_type* @get_ktype(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #7 {
entry:
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 4
  %0 = load %struct.kobj_type*, %struct.kobj_type** %ktype, align 8
  ret %struct.kobj_type* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env* noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #16
  %call7 = call fastcc i32 @__kuid_val(i64 0) #16
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kuid(i64 %kuid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #16
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_eq(i64 %left.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #16
  %call7 = call fastcc i32 @__kgid_val(i64 0) #16
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @from_kgid(i64 %kgid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_device_uevent(%struct.device* noundef, %struct.kobj_uevent_env* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #4 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @device_create_release(%struct.device* noundef %dev) #0 {
entry:
  %0 = bitcast %struct.device* %dev to i8*
  call void @kfree(i8* noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @dev_set_drvdata(%struct.device* nocapture noundef writeonly %dev, i8* noundef %data) unnamed_addr #14 {
entry:
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 8
  store i8* %data, i8** %driver_data, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @class_find_device(%struct.class* noundef, %struct.device* noundef, i8* noundef, i32 (%struct.device*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #16
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_groups_change_owner(%struct.kobject* noundef, %struct.attribute_group** noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strscpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #12 = { mustprogress nofree nosync nounwind willreturn }
attributes #13 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { cold nobuiltin "no-builtins" }
attributes #19 = { nounwind readnone }
attributes #20 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2150789497}
!9 = !{!"auto-init"}
!10 = !{i64 2156791315}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2156793040}
!13 = !{i64 2156807204}
!14 = !{i64 2156835763}
!15 = !{i64 2156825793}
!16 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!17 = !{i64 2156871605}
!18 = !{i64 2156882957}
!19 = !{i64 2156896188}
!20 = !{i64 2156914605}
!21 = !{i64 2156916231}
!22 = !{i8 0, i8 2}
!23 = !{i64 1403456}
!24 = !{i64 2157024686}
!25 = !{i64 2157027037}
!26 = !{i64 2157031752}
!27 = !{i64 2157033848}
!28 = !{i64 2156945892}
!29 = !{i64 2156955148}
!30 = !{i64 2157092836}
!31 = !{i64 2156766032}
!32 = !{i64 2147958867, i64 2147959531, i64 2147959561, i64 2147959593, i64 2147959627, i64 2147959662, i64 2147959687}
!33 = !{i64 2151280475}
!34 = !{i64 2150495618}
!35 = !{i64 2147970649, i64 2147971323, i64 2147971353, i64 2147971385, i64 2147971419, i64 2147971455, i64 2147971480}
!36 = !{i64 2148021983, i64 2148022494, i64 2148022524, i64 2148022550, i64 2148022582, i64 2148022611}
!37 = !{i64 2149749672}
!38 = !{i64 2148052826, i64 2148052859, i64 2148052912, i64 2148052971, i64 2148053005, i64 2148053060, i64 2148053089, i64 2148053109}
!39 = !{i64 2149756953}
!40 = !{i64 2149703813}
!41 = !{i64 2157014321}
!42 = !{i64 2150923158}
