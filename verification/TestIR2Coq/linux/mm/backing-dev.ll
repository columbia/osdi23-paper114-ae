; ModuleID = 'mm/backing-dev.c'
source_filename = "mm/backing-dev.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall2.init\22, \22a\22\09\09"
module asm "__initcall__kmod_backing_dev__419_230_bdi_class_init2:\09\09\09"
module asm ".long\09bdi_class_init - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_backing_dev__421_247_default_bdi_init4:\09\09\09"
module asm ".long\09default_bdi_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.workqueue_struct = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.79, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.56, %struct.list_head, %struct.list_head, %union.anon.57 }
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%union.anon.56 = type { %struct.list_head }
%union.anon.57 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.19, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.58 }
%union.anon.58 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.2, %union.anon.68, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.68 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.59, %union.anon.60 }
%union.anon.59 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.60 = type { i64 }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
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
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.38, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.69, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.69 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.lock_class_key = type {}
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.70, %union.anon.71, %union.anon.72, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.75, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.70 = type { %struct.hlist_node }
%union.anon.71 = type { %struct.rb_node }
%union.anon.72 = type { %struct.anon.74 }
%struct.anon.74 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.75 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.39, %union.anon.40, i32 }
%union.anon.39 = type { %struct.list_head }
%union.anon.40 = type { %struct.hlist_node }
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
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.38 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
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
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.55, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.55 = type { i64, i64, %struct.user_fpsimd_state }
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
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.64 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.62, %struct.qspinlock }
%union.anon.62 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.64 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
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
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
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
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.77 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@bdi_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@bdi_list = dso_local global %struct.list_head { %struct.list_head* @bdi_list, %struct.list_head* @bdi_list }, align 8
@__UNIQUE_ID___addressable_bdi_class_init420 = internal global i8* bitcast (i32 ()* @bdi_class_init to i8*), section ".discard.addressable", align 8
@__UNIQUE_ID___addressable_default_bdi_init422 = internal global i8* bitcast (i32 ()* @default_bdi_init to i8*), section ".discard.addressable", align 8
@dirty_writeback_interval = external dso_local local_unnamed_addr global i32, align 4
@bdi_wq = dso_local local_unnamed_addr global %struct.workqueue_struct* null, align 8
@bdi_class = internal unnamed_addr global %struct.class* null, align 8
@bdi_id_cursor = internal unnamed_addr global i64 0, align 8
@bdi_tree = internal global %struct.rb_root zeroinitializer, align 8
@congestion_wqh = internal global [2 x %struct.wait_queue_head] [%struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x %struct.wait_queue_head]* @congestion_wqh to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x %struct.wait_queue_head]* @congestion_wqh to i8*), i64 8) to %struct.list_head*) } }, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x %struct.wait_queue_head]* @congestion_wqh to i8*), i64 32) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast ([2 x %struct.wait_queue_head]* @congestion_wqh to i8*), i64 32) to %struct.list_head*) } }], align 8
@nr_wb_congested = internal global [2 x %struct.atomic_t] zeroinitializer, align 4
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@noop_backing_dev_info = dso_local global %struct.backing_dev_info zeroinitializer, align 8
@bdi_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bdi\00", align 1
@bdi_dev_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @bdi_dev_group, %struct.attribute_group* null], align 8
@bdi_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([5 x %struct.attribute*], [5 x %struct.attribute*]* @bdi_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@bdi_dev_attrs = internal global [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_read_ahead_kb, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_min_ratio, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_max_ratio, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_stable_pages_required, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_read_ahead_kb = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @read_ahead_kb_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @read_ahead_kb_store }, align 8
@dev_attr_min_ratio = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @min_ratio_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @min_ratio_store }, align 8
@dev_attr_max_ratio = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @max_ratio_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @max_ratio_store }, align 8
@dev_attr_stable_pages_required = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @stable_pages_required_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"read_ahead_kb\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"min_ratio\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"max_ratio\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"stable_pages_required\00", align 1
@stable_pages_required_show.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.7 = private unnamed_addr constant [102 x i8] c"the stable_pages_required attribute has been removed. Use the stable_writes queue attribute instead.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@bdi_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"&bdi->wb_waitq\00", align 1
@wb_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_bdi_class_init420 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_default_bdi_init422 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @bdi_class_init() #0 section ".init.text" {
entry:
  %call = call %struct.class* @__class_create(%struct.module* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @bdi_class_init.__key) #15
  store %struct.class* %call, %struct.class** @bdi_class, align 8
  %0 = bitcast %struct.class* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #16
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #16
  %conv = trunc i64 %call2 to i32
  br label %return

if.end:                                           ; preds = %entry
  %dev_groups = getelementptr inbounds %struct.class, %struct.class* %call, i64 0, i32 3
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @bdi_dev_groups, i64 0, i64 0), %struct.attribute_group*** %dev_groups, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @default_bdi_init() #0 section ".init.text" {
entry:
  %call = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 noundef 74, i32 noundef 0) #15
  store %struct.workqueue_struct* %call, %struct.workqueue_struct** @bdi_wq, align 8
  %tobool.not = icmp eq %struct.workqueue_struct* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @bdi_init(%struct.backing_dev_info* noundef nonnull @noop_backing_dev_info) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wb_wakeup_delayed(%struct.bdi_writeback* noundef %wb) local_unnamed_addr #1 {
entry:
  %0 = load i32, i32* @dirty_writeback_interval, align 4
  %mul = mul i32 %0, 10
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %mul) #15
  %rlock.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 21, i32 0, i32 0
  call fastcc void @__raw_spin_lock_bh(%struct.raw_spinlock* noundef %rlock.i) #15
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  %1 = load volatile i64, i64* %state, align 8
  %conv.i9 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.workqueue_struct*, %struct.workqueue_struct** @bdi_wq, align 8
  %dwork = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 23
  call fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %2, %struct.delayed_work* noundef %dwork, i64 noundef %call2.i) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__raw_spin_unlock_bh(%struct.raw_spinlock* noundef %rlock.i) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_delayed_work(%struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) unnamed_addr #1 {
entry:
  %call = call i1 @queue_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef %delay) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.backing_dev_info* @bdi_alloc(i32 noundef %node_id) local_unnamed_addr #1 {
entry:
  %call = call fastcc i8* @kzalloc_node() #16
  %0 = bitcast i8* %call to %struct.backing_dev_info*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @bdi_init(%struct.backing_dev_info* noundef nonnull %0) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %capabilities = getelementptr inbounds i8, i8* %call, i64 68
  %1 = bitcast i8* %capabilities to i32*
  store i32 3, i32* %1, align 4
  %ra_pages = getelementptr inbounds i8, i8* %call, i64 48
  %2 = bitcast i8* %ra_pages to i64*
  store i64 32, i64* %2, align 8
  %io_pages = getelementptr inbounds i8, i8* %call, i64 56
  %3 = bitcast i8* %io_pages to i64*
  store i64 32, i64* %3, align 8
  %laptop_mode_wb_timer = getelementptr inbounds i8, i8* %call, i64 736
  %4 = bitcast i8* %laptop_mode_wb_timer to %struct.timer_list*
  call void @init_timer_key(%struct.timer_list* noundef %4, void (%struct.timer_list*)* noundef nonnull @laptop_mode_timer_fn, i32 noundef 0, i8* noundef null, %struct.lock_class_key* noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi %struct.backing_dev_info* [ null, %if.then3 ], [ %0, %if.end4 ], [ null, %entry ]
  ret %struct.backing_dev_info* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc_node() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 10), align 8
  %call.i.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #15
  ret i8* %call.i.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bdi_init(%struct.backing_dev_info* noundef %bdi) unnamed_addr #1 {
entry:
  %dev = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 14
  store %struct.device* null, %struct.device** %dev, align 8
  %refcnt = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 5
  call fastcc void @kref_init(%struct.kref* noundef %refcnt) #16
  %min_ratio = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 7
  store i32 0, i32* %min_ratio, align 8
  %max_ratio = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 8
  store i32 100, i32* %max_ratio, align 4
  %max_prop_frac = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 9
  store i32 1024, i32* %max_prop_frac, align 8
  %bdi_list = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 2
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %bdi_list) #16
  %wb_list = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 12
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %wb_list) #16
  %wb_waitq = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 13
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %wb_waitq, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @bdi_init.__key) #15
  %call = call fastcc i32 @cgwb_bdi_init(%struct.backing_dev_info* noundef %bdi) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(%struct.timer_list* noundef, void (%struct.timer_list*)* noundef, i32 noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @laptop_mode_timer_fn(%struct.timer_list* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.backing_dev_info* @bdi_get_by_id(i64 noundef %id) local_unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_lock_bh(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdi_lock, i64 0, i32 0, i32 0)) #15
  %call = call fastcc %struct.rb_node** @bdi_lookup_rb_node(i64 noundef %id, %struct.rb_node** noundef null) #16
  %0 = load %struct.rb_node*, %struct.rb_node** %call, align 8
  %tobool.not = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %0, i64 -1, i32 2
  %1 = bitcast %struct.rb_node** %add.ptr to %struct.backing_dev_info*
  call fastcc void @bdi_get(%struct.backing_dev_info* noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bdi.0 = phi %struct.backing_dev_info* [ %1, %if.then ], [ null, %entry ]
  call fastcc void @__raw_spin_unlock_bh(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdi_lock, i64 0, i32 0, i32 0)) #15
  ret %struct.backing_dev_info* %bdi.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc %struct.rb_node** @bdi_lookup_rb_node(i64 noundef %id, %struct.rb_node** noundef writeonly %parentp) unnamed_addr #4 {
entry:
  %0 = load %struct.rb_node*, %struct.rb_node** getelementptr inbounds (%struct.rb_root, %struct.rb_root* @bdi_tree, i64 0, i32 0), align 8
  %tobool.not26 = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not26, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end9
  %1 = phi %struct.rb_node* [ %3, %if.end9 ], [ %0, %entry ]
  %p.027 = phi %struct.rb_node** [ %p.1, %if.end9 ], [ getelementptr inbounds (%struct.rb_root, %struct.rb_root* @bdi_tree, i64 0, i32 0), %entry ]
  %add.ptr = getelementptr %struct.rb_node, %struct.rb_node* %1, i64 -1, i32 2
  %id4 = bitcast %struct.rb_node** %add.ptr to i64*
  %2 = load i64, i64* %id4, align 8
  %cmp = icmp ugt i64 %2, %id
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 2
  br label %if.end9

if.else:                                          ; preds = %while.body
  %cmp6 = icmp ult i64 %2, %id
  br i1 %cmp6, label %if.then7, label %while.end

if.then7:                                         ; preds = %if.else
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then
  %p.1 = phi %struct.rb_node** [ %rb_left, %if.then ], [ %rb_right, %if.then7 ]
  %3 = load %struct.rb_node*, %struct.rb_node** %p.1, align 8
  %tobool.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end9, %if.else, %entry
  %p.0.lcssa = phi %struct.rb_node** [ getelementptr inbounds (%struct.rb_root, %struct.rb_root* @bdi_tree, i64 0, i32 0), %entry ], [ %p.027, %if.else ], [ %p.1, %if.end9 ]
  %parent.1 = phi %struct.rb_node* [ null, %entry ], [ %1, %if.else ], [ %1, %if.end9 ]
  %tobool10.not = icmp eq %struct.rb_node** %parentp, null
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %while.end
  store %struct.rb_node* %parent.1, %struct.rb_node** %parentp, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %while.end
  ret %struct.rb_node** %p.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bdi_get(%struct.backing_dev_info* noundef %bdi) unnamed_addr #1 {
entry:
  %refcnt = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 5
  call fastcc void @kref_get(%struct.kref* noundef %refcnt) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bdi_register_va(%struct.backing_dev_info* noundef %bdi, i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef readonly %args) local_unnamed_addr #1 {
entry:
  %parent = alloca %struct.rb_node*, align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %struct.rb_node** %parent to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.rb_node* null, %struct.rb_node** %parent, align 8, !annotation !7
  %dev1 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 14
  %1 = load %struct.device*, %struct.device** %dev1, align 8
  %tobool.not = icmp eq %struct.device* %1, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 15, i64 0
  %2 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #17
  %3 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef align 8 dereferenceable(32) %3, i64 32, i1 false)
  %call = call i32 @vsnprintf(i8* noundef %arraydecay, i64 noundef 64, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #15
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #17
  %4 = load %struct.class*, %struct.class** @bdi_class, align 8
  %5 = bitcast %struct.backing_dev_info* %bdi to i8*
  %call4 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* noundef %4, %struct.device* noundef null, i32 noundef 0, i8* noundef %5, i8* noundef %arraydecay) #15
  %6 = bitcast %struct.device* %call4 to i8*
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %6) #16
  br i1 %call5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %call7 = call fastcc i64 @PTR_ERR(i8* noundef %6) #16
  %conv = trunc i64 %call7 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call fastcc void @cgwb_bdi_register(%struct.backing_dev_info* noundef %bdi) #16
  store %struct.device* %call4, %struct.device** %dev1, align 8
  %state = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 11, i32 1
  call fastcc void @set_bit(i64* noundef %state) #16
  call fastcc void @__raw_spin_lock_bh(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdi_lock, i64 0, i32 0, i32 0)) #15
  %7 = load i64, i64* @bdi_id_cursor, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* @bdi_id_cursor, align 8
  %id = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 0
  store i64 %inc, i64* %id, align 8
  %call12 = call fastcc %struct.rb_node** @bdi_lookup_rb_node(i64 noundef %inc, %struct.rb_node** noundef nonnull %parent) #16
  %rb_node = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 1
  %8 = load %struct.rb_node*, %struct.rb_node** %parent, align 8
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rb_node, %struct.rb_node* noundef %8, %struct.rb_node** noundef %call12) #16
  call void @rb_insert_color(%struct.rb_node* noundef %rb_node, %struct.rb_root* noundef nonnull @bdi_tree) #15
  %bdi_list = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 2
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %bdi_list, %struct.list_head* noundef nonnull @bdi_list) #16
  call fastcc void @__raw_spin_unlock_bh(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdi_lock, i64 0, i32 0, i32 0)) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ 0, %if.end8 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @device_create(%struct.class* noundef, %struct.device* noundef, i32 noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #6 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cgwb_bdi_register(%struct.backing_dev_info* noundef %bdi) unnamed_addr #1 {
entry:
  %bdi_node = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 11, i32 26
  %wb_list = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 12
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %bdi_node, %struct.list_head* noundef %wb_list) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #7 {
entry:
  %0 = ptrtoint %struct.rb_node* %parent to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %rb_right, align 8
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 2
  store %struct.rb_node* null, %struct.rb_node** %rb_left, align 8
  store %struct.rb_node* %node, %struct.rb_node** %rb_link, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #1 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @bdi_register(%struct.backing_dev_info* noundef %bdi, i8* noundef %fmt, ...) local_unnamed_addr #1 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @bdi_register_va(%struct.backing_dev_info* noundef %bdi, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #17
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #17
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bdi_set_owner(%struct.backing_dev_info* nocapture noundef %bdi, %struct.device* noundef %owner) local_unnamed_addr #1 {
entry:
  %owner1 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 16
  %0 = load %struct.device*, %struct.device** %owner1, align 8
  %tobool.not = icmp eq %struct.device* %0, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/backing-dev.c\22; .popsection; .long 14472b - 14470b; .short 923; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.device* %owner, %struct.device** %owner1, align 8
  %call = call %struct.device* @get_device(%struct.device* noundef %owner) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @get_device(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bdi_unregister(%struct.backing_dev_info* noundef %bdi) local_unnamed_addr #1 {
entry:
  %laptop_mode_wb_timer = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 17
  %call = call i32 @del_timer_sync(%struct.timer_list* noundef %laptop_mode_wb_timer) #15
  call fastcc void @bdi_remove_from_list(%struct.backing_dev_info* noundef %bdi) #16
  %wb = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 11
  call fastcc void @wb_shutdown(%struct.bdi_writeback* noundef %wb) #16
  %dev = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 14
  %0 = load %struct.device*, %struct.device** %dev, align 8
  %tobool.not = icmp eq %struct.device* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @device_unregister(%struct.device* noundef nonnull %0) #15
  store %struct.device* null, %struct.device** %dev, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %owner = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 16
  %1 = load %struct.device*, %struct.device** %owner, align 8
  %tobool3.not = icmp eq %struct.device* %1, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @put_device(%struct.device* noundef nonnull %1) #15
  store %struct.device* null, %struct.device** %owner, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(%struct.timer_list* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bdi_remove_from_list(%struct.backing_dev_info* noundef %bdi) unnamed_addr #1 {
entry:
  call fastcc void @__raw_spin_lock_bh(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdi_lock, i64 0, i32 0, i32 0)) #15
  %rb_node = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 1
  call void @rb_erase(%struct.rb_node* noundef %rb_node, %struct.rb_root* noundef nonnull @bdi_tree) #15
  %bdi_list = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 2
  call fastcc void @list_del_rcu(%struct.list_head* noundef %bdi_list) #16
  call fastcc void @__raw_spin_unlock_bh(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @bdi_lock, i64 0, i32 0, i32 0)) #15
  call void @synchronize_rcu_expedited() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_shutdown(%struct.bdi_writeback* noundef %wb) unnamed_addr #1 {
entry:
  %rlock.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 21, i32 0, i32 0
  call fastcc void @__raw_spin_lock_bh(%struct.raw_spinlock* noundef %rlock.i) #15
  %state = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 1
  %call = call fastcc i1 @test_and_clear_bit(i64 noundef 0, i64* noundef %state) #16
  call fastcc void @__raw_spin_unlock_bh(%struct.raw_spinlock* noundef %rlock.i) #15
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  call fastcc void @cgwb_remove_from_bdi_list(%struct.bdi_writeback* noundef %wb) #16
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @bdi_wq, align 8
  %dwork = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 23
  call fastcc void @mod_delayed_work(%struct.workqueue_struct* noundef %0, %struct.delayed_work* noundef %dwork) #16
  %call5 = call i1 @flush_delayed_work(%struct.delayed_work* noundef %dwork) #15
  %work_list = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 22
  %call6 = call fastcc i32 @list_empty(%struct.list_head* noundef %work_list) #16
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then15, label %if.end16, !prof !10

if.then15:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/backing-dev.c\22; .popsection; .long 14472b - 14470b; .short 362; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !11
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end
  %bw_dwork = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 24
  %call24 = call i1 @flush_delayed_work(%struct.delayed_work* noundef %bw_dwork) #15
  br label %return

return:                                           ; preds = %entry, %if.end16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @bdi_put(%struct.backing_dev_info* noundef %bdi) local_unnamed_addr #1 {
entry:
  %refcnt = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 5
  call fastcc void @kref_put(%struct.kref* noundef %refcnt) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_put(%struct.kref* noundef %kref) unnamed_addr #1 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refcount) #16
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  call fastcc void @release_bdi(%struct.kref* noundef %kref) #16
  br label %return

return:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @release_bdi(%struct.kref* noundef %ref) unnamed_addr #1 {
entry:
  %add.ptr28 = getelementptr %struct.kref, %struct.kref* %ref, i64 -16
  %state = getelementptr %struct.kref, %struct.kref* %ref, i64 10
  %0 = bitcast %struct.kref* %state to i64*
  %1 = load volatile i64, i64* %0, align 8
  %conv.i29 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i29, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.kref* %add.ptr28 to %struct.backing_dev_info*
  call void @bdi_unregister(%struct.backing_dev_info* noundef %2) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dev = getelementptr %struct.kref, %struct.kref* %ref, i64 148
  %3 = bitcast %struct.kref* %dev to %struct.device**
  %4 = load %struct.device*, %struct.device** %3, align 8
  %tobool1.not = icmp eq %struct.device* %4, null
  br i1 %tobool1.not, label %if.end10, label %if.then9, !prof !8

if.then9:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/backing-dev.c\22; .popsection; .long 14472b - 14470b; .short 969; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !12
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %wb = getelementptr %struct.kref, %struct.kref* %ref, i64 8
  %5 = bitcast %struct.kref* %wb to %struct.bdi_writeback*
  %add.ptr = bitcast %struct.kref* %add.ptr28 to i8*
  call fastcc void @wb_exit(%struct.bdi_writeback* noundef %5) #16
  call void @kfree(i8* noundef %add.ptr) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @bdi_dev_name(%struct.backing_dev_info* noundef readonly %bdi) local_unnamed_addr #10 {
entry:
  %tobool.not = icmp eq %struct.backing_dev_info* %bdi, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 14
  %0 = load %struct.device*, %struct.device** %dev, align 8
  %tobool1.not = icmp eq %struct.device* %0, null
  br i1 %tobool1.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %arraydecay = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 15, i64 0
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i8* [ %arraydecay, %if.end ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @clear_bdi_congested(%struct.backing_dev_info* noundef %bdi, i32 noundef %sync) local_unnamed_addr #1 {
entry:
  %idxprom = sext i32 %sync to i64
  %arrayidx = getelementptr [2 x %struct.wait_queue_head], [2 x %struct.wait_queue_head]* @congestion_wqh, i64 0, i64 %idxprom
  %tobool.not = icmp ne i32 %sync, 0
  %conv = zext i1 %tobool.not to i64
  %congested = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 11, i32 10
  %call = call fastcc i1 @test_and_clear_bit(i64 noundef %conv, i64* noundef %congested) #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx2 = getelementptr [2 x %struct.atomic_t], [2 x %struct.atomic_t]* @nr_wb_congested, i64 0, i64 %idxprom
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %arrayidx2) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !13
  %call3 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %arrayidx) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__wake_up(%struct.wait_queue_head* noundef %arrayidx, i32 noundef 3, i32 noundef 1, i8* noundef null) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #15
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #11 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #16
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @set_bdi_congested(%struct.backing_dev_info* noundef %bdi, i32 noundef %sync) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp ne i32 %sync, 0
  %conv = zext i1 %tobool.not to i64
  %congested = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 11, i32 10
  %call = call fastcc i1 @test_and_set_bit(i64 noundef %conv, i64* noundef %congested) #16
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %sync to i64
  %arrayidx = getelementptr [2 x %struct.atomic_t], [2 x %struct.atomic_t]* @nr_wb_congested, i64 0, i64 %idxprom
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %arrayidx) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #1 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #15
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @congestion_wait(i32 noundef %sync, i64 noundef %timeout) local_unnamed_addr #1 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %0 = load volatile i64, i64* @jiffies, align 64
  %1 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #17
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !14
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %4 = bitcast i8** %private to %struct.task_struct**
  %5 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %5, align 8
  store %struct.task_struct* %3, %struct.task_struct** %4, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* %entry1, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* %entry1, %struct.list_head** %prev, align 8
  %idxprom = sext i32 %sync to i64
  %arrayidx = getelementptr [2 x %struct.wait_queue_head], [2 x %struct.wait_queue_head]* @congestion_wqh, i64 0, i64 %idxprom
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %arrayidx, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 2) #15
  %call4 = call i64 @io_schedule_timeout(i64 noundef %timeout) #15
  call void @finish_wait(%struct.wait_queue_head* noundef %arrayidx, %struct.wait_queue_entry* noundef nonnull %wait) #15
  %call5 = call i32 @jiffies_to_usecs(i64 noundef %timeout) #15
  %6 = load volatile i64, i64* @jiffies, align 64
  %sub = sub i64 %6, %0
  %call6 = call i32 @jiffies_to_usecs(i64 noundef %sub) #15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #17
  ret i64 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @io_schedule_timeout(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @wait_iff_congested(i32 noundef %sync, i64 noundef %timeout) local_unnamed_addr #1 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %0 = load volatile i64, i64* @jiffies, align 64
  %1 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #17
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !14
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %4 = bitcast i8** %private to %struct.task_struct**
  %5 = bitcast %struct.wait_queue_entry* %wait to i64*
  store i64 0, i64* %5, align 8
  store %struct.task_struct* %3, %struct.task_struct** %4, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* %entry1, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3, i32 1
  store %struct.list_head* %entry1, %struct.list_head** %prev, align 8
  %idxprom = sext i32 %sync to i64
  %arrayidx = getelementptr [2 x %struct.wait_queue_head], [2 x %struct.wait_queue_head]* @congestion_wqh, i64 0, i64 %idxprom
  %counter.i = getelementptr [2 x %struct.atomic_t], [2 x %struct.atomic_t]* @nr_wb_congested, i64 0, i64 %idxprom, i32 0
  %6 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  call fastcc void @_cond_resched() #16
  %7 = load volatile i64, i64* @jiffies, align 64
  %sub.neg = sub i64 %0, %7
  %sub8 = add i64 %sub.neg, %timeout
  %8 = icmp sgt i64 %sub8, 0
  %spec.store.select = select i1 %8, i64 %sub8, i64 0
  br label %out

if.end11:                                         ; preds = %entry
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %arrayidx, %struct.wait_queue_entry* noundef nonnull %wait, i32 noundef 2) #15
  %call12 = call i64 @io_schedule_timeout(i64 noundef %timeout) #15
  call void @finish_wait(%struct.wait_queue_head* noundef %arrayidx, %struct.wait_queue_entry* noundef nonnull %wait) #15
  br label %out

out:                                              ; preds = %if.end11, %if.then
  %ret.0 = phi i64 [ %spec.store.select, %if.then ], [ %call12, %if.end11 ]
  %call13 = call i32 @jiffies_to_usecs(i64 noundef %timeout) #15
  %9 = load volatile i64, i64* @jiffies, align 64
  %sub14 = sub i64 %9, %0
  %call15 = call i32 @jiffies_to_usecs(i64 noundef %sub14) #15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #17
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #1 {
entry:
  %call = call i32 @__cond_resched() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.class* @__class_create(%struct.module* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @read_ahead_kb_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %ra_pages = getelementptr inbounds i8, i8* %call, i64 48
  %0 = bitcast i8* %ra_pages to i64*
  %1 = load i64, i64* %0, align 8
  %shl = shl i64 %1, 2
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 noundef %shl) #15
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @read_ahead_kb_store(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #1 {
entry:
  %read_ahead_kb = alloca i64, align 8
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %0 = bitcast i64* %read_ahead_kb to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store i64 0, i64* %read_ahead_kb, align 8, !annotation !7
  %call1 = call fastcc i32 @kstrtoul(i8* noundef %buf, i64* noundef nonnull %read_ahead_kb) #16
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %call1 to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %read_ahead_kb, align 8
  %shr = lshr i64 %1, 2
  %ra_pages = getelementptr inbounds i8, i8* %call, i64 48
  %2 = bitcast i8* %ra_pages to i64*
  store i64 %shr, i64* %2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %count, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @dev_get_drvdata(%struct.device* nocapture noundef readonly %dev) unnamed_addr #10 {
entry:
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 8
  %0 = load i8*, i8** %driver_data, align 8
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtoul(i8* noundef %s, i64* noundef %res) unnamed_addr #1 {
entry:
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef 10, i64* noundef %res) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @min_ratio_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %min_ratio = getelementptr inbounds i8, i8* %call, i64 72
  %0 = bitcast i8* %min_ratio to i32*
  %1 = load i32, i32* %0, align 8
  %conv = zext i32 %1 to i64
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 noundef %conv) #15
  %conv2 = sext i32 %call1 to i64
  ret i64 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @min_ratio_store(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #1 {
entry:
  %ratio = alloca i32, align 4
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %0 = bitcast i32* %ratio to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %ratio, align 4, !annotation !7
  %call1 = call i32 @kstrtouint(i8* noundef %buf, i32 noundef 10, i32* noundef nonnull %ratio) #15
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %call1 to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to %struct.backing_dev_info*
  %2 = load i32, i32* %ratio, align 4
  %call3 = call i32 @bdi_set_min_ratio(%struct.backing_dev_info* noundef %1, i32 noundef %2) #15
  %conv4 = sext i32 %call3 to i64
  %tobool.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool.not, i64 %count, i64 %conv4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdi_set_min_ratio(%struct.backing_dev_info* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @max_ratio_show(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %max_ratio = getelementptr inbounds i8, i8* %call, i64 76
  %0 = bitcast i8* %max_ratio to i32*
  %1 = load i32, i32* %0, align 4
  %conv = zext i32 %1 to i64
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 noundef %conv) #15
  %conv2 = sext i32 %call1 to i64
  ret i64 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @max_ratio_store(%struct.device* nocapture noundef readonly %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf, i64 noundef %count) #1 {
entry:
  %ratio = alloca i32, align 4
  %call = call fastcc i8* @dev_get_drvdata(%struct.device* noundef %dev) #16
  %0 = bitcast i32* %ratio to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #17
  store i32 0, i32* %ratio, align 4, !annotation !7
  %call1 = call i32 @kstrtouint(i8* noundef %buf, i32 noundef 10, i32* noundef nonnull %ratio) #15
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %call1 to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to %struct.backing_dev_info*
  %2 = load i32, i32* %ratio, align 4
  %call3 = call i32 @bdi_set_max_ratio(%struct.backing_dev_info* noundef %1, i32 noundef %2) #15
  %conv4 = sext i32 %call3 to i64
  %tobool.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool.not, i64 %count, i64 %conv4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #17
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdi_set_max_ratio(%struct.backing_dev_info* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @stable_pages_required_show(%struct.device* noundef %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #1 {
entry:
  %.b3 = load i1, i1* @stable_pages_required_show.__print_once, align 1
  br i1 %.b3, label %do.end2, label %if.then

if.then:                                          ; preds = %entry
  store i1 true, i1* @stable_pages_required_show.__print_once, align 1
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %dev, i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.7, i64 0, i64 0)) #19
  br label %do.end2

do.end2:                                          ; preds = %entry, %if.then
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* noundef %buf, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 noundef 0) #15
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8* noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_bh(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @__preempt_count_add() #15
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_add() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !14
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.25* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %add = add i32 %3, 512
  store volatile i32 %add, i32* %count, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #17, !srcloc !16
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_bh(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  %0 = call i8* @llvm.returnaddress(i32 0)
  %1 = ptrtoint i8* %0 to i64
  %and = and i64 %1, 36028797018963968
  %tobool.not = icmp eq i64 %and, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl3.neg = shl nsw i64 -1, %2
  %or = or i64 %shl3.neg, %1
  %and6 = and i64 %shl3.neg, 36028797018963967
  %neg = xor i64 %and6, -1
  %and8 = and i64 %neg, %1
  %cond = select i1 %tobool.not, i64 %and8, i64 %or
  call void @__local_bh_enable_ip(i64 noundef %cond, i32 noundef 512) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #17, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @kref_init(%struct.kref* noundef %kref) unnamed_addr #14 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %refcount) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #14 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cgwb_bdi_init(%struct.backing_dev_info* noundef %bdi) unnamed_addr #1 {
entry:
  %wb = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 11
  %call = call fastcc i32 @wb_init(%struct.bdi_writeback* noundef %wb, %struct.backing_dev_info* noundef %bdi) #16
  ret i32 %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #14 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wb_init(%struct.bdi_writeback* noundef %wb, %struct.backing_dev_info* noundef %bdi) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.bdi_writeback* %wb to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 520) #15
  %wb1 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %bdi, i64 0, i32 11
  %cmp.not = icmp eq %struct.bdi_writeback* %wb1, %wb
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @bdi_get(%struct.backing_dev_info* noundef %bdi) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bdi3 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 0
  store %struct.backing_dev_info* %bdi, %struct.backing_dev_info** %bdi3, align 8
  %1 = load volatile i64, i64* @jiffies, align 64
  %last_old_flush = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 2
  store i64 %1, i64* %last_old_flush, align 8
  %b_dirty = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %b_dirty) #16
  %b_io = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 4
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %b_io) #16
  %b_more_io = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 5
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %b_more_io) #16
  %b_dirty_time = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 6
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %b_dirty_time) #16
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %counter.i = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 8, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %2 = load volatile i64, i64* @jiffies, align 64
  %bw_time_stamp = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 11
  store i64 %2, i64* %bw_time_stamp, align 8
  %balanced_dirty_ratelimit = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 17
  store i64 25600, i64* %balanced_dirty_ratelimit, align 8
  %dirty_ratelimit = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 16
  store i64 25600, i64* %dirty_ratelimit, align 8
  %write_bandwidth = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 14
  store i64 25600, i64* %write_bandwidth, align 8
  %avg_write_bandwidth = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 15
  store i64 25600, i64* %avg_write_bandwidth, align 8
  %.compoundliteral9.sroa.0.0..sroa_idx = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 21, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral9.sroa.0.0..sroa_idx, align 8
  %work_list = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 22
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %work_list) #16
  %.compoundliteral20.sroa.0.0..sroa_idx = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 23, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral20.sroa.0.0..sroa_idx, align 8
  %entry24 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 23, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry24) #16
  %func = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 23, i32 0, i32 2
  store void (%struct.work_struct*)* @wb_workfn, void (%struct.work_struct*)** %func, align 8
  %timer = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 23, i32 1
  call void @init_timer_key(%struct.timer_list* noundef %timer, void (%struct.timer_list*)* noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, i8* noundef null, %struct.lock_class_key* noundef null) #15
  %.compoundliteral38.sroa.0.0..sroa_idx = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 24, i32 0, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral38.sroa.0.0..sroa_idx, align 8
  %entry42 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 24, i32 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry42) #16
  %func45 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 24, i32 0, i32 2
  store void (%struct.work_struct*)* @wb_update_bandwidth_workfn, void (%struct.work_struct*)** %func45, align 8
  %timer49 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 24, i32 1
  call void @init_timer_key(%struct.timer_list* noundef %timer49, void (%struct.timer_list*)* noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, i8* noundef null, %struct.lock_class_key* noundef null) #15
  %3 = load volatile i64, i64* @jiffies, align 64
  %dirty_sleep = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 25
  store i64 %3, i64* %dirty_sleep, align 8
  %completions = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 18
  %call52 = call i32 @fprop_local_init_percpu(%struct.fprop_local_percpu* noundef %completions, i32 noundef 3264) #15
  %tobool.not = icmp eq i32 %call52, 0
  br i1 %tobool.not, label %for.body.preheader, label %out_put_bdi

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 0
  %call56 = call i32 @__percpu_counter_init(%struct.percpu_counter* noundef %arrayidx, i64 noundef 0, i32 noundef 3264, %struct.lock_class_key* noundef nonnull @wb_init.__key) #15
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %for.inc, label %while.end

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 1
  %call56.1 = call i32 @__percpu_counter_init(%struct.percpu_counter* noundef %arrayidx.1, i64 noundef 0, i32 noundef 3264, %struct.lock_class_key* noundef nonnull @wb_init.__key) #15
  %tobool57.not.1 = icmp eq i32 %call56.1, 0
  br i1 %tobool57.not.1, label %for.inc.1, label %while.body

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 2
  %call56.2 = call i32 @__percpu_counter_init(%struct.percpu_counter* noundef %arrayidx.2, i64 noundef 0, i32 noundef 3264, %struct.lock_class_key* noundef nonnull @wb_init.__key) #15
  %tobool57.not.2 = icmp eq i32 %call56.2, 0
  br i1 %tobool57.not.2, label %for.inc.2, label %while.body

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 3
  %call56.3 = call i32 @__percpu_counter_init(%struct.percpu_counter* noundef %arrayidx.3, i64 noundef 0, i32 noundef 3264, %struct.lock_class_key* noundef nonnull @wb_init.__key) #15
  %tobool57.not.3 = icmp eq i32 %call56.3, 0
  br i1 %tobool57.not.3, label %cleanup, label %while.body

while.body:                                       ; preds = %for.inc, %for.inc.1, %for.inc.2
  %4 = phi i1 [ false, %for.inc.2 ], [ false, %for.inc.1 ], [ true, %for.inc ]
  %i.02.lcssa.wide.ph = phi i64 [ 2, %for.inc.2 ], [ 1, %for.inc.1 ], [ 0, %for.inc ]
  %call56.lcssa.ph = phi i32 [ %call56.3, %for.inc.2 ], [ %call56.2, %for.inc.1 ], [ %call56.1, %for.inc ]
  %arrayidx63 = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 %i.02.lcssa.wide.ph
  call void @percpu_counter_destroy(%struct.percpu_counter* noundef %arrayidx63) #15
  br i1 %4, label %while.end, label %while.body.1

while.body.1:                                     ; preds = %while.body
  %indvars.iv.next.1 = add nsw i64 %i.02.lcssa.wide.ph, -1
  %arrayidx63.1 = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 %indvars.iv.next.1
  call void @percpu_counter_destroy(%struct.percpu_counter* noundef %arrayidx63.1) #15
  %5 = icmp eq i64 %indvars.iv.next.1, 0
  br i1 %5, label %while.end, label %while.body.2

while.body.2:                                     ; preds = %while.body.1
  %indvars.iv.next.2 = add nsw i64 %i.02.lcssa.wide.ph, -2
  %arrayidx63.2 = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 %indvars.iv.next.2
  call void @percpu_counter_destroy(%struct.percpu_counter* noundef %arrayidx63.2) #15
  br label %while.end

while.end:                                        ; preds = %while.body, %while.body.1, %while.body.2, %for.body.preheader
  %call56.lcssa15 = phi i32 [ %call56, %for.body.preheader ], [ %call56.lcssa.ph, %while.body.2 ], [ %call56.lcssa.ph, %while.body.1 ], [ %call56.lcssa.ph, %while.body ]
  call void @fprop_local_destroy_percpu(%struct.fprop_local_percpu* noundef %completions) #15
  br label %out_put_bdi

out_put_bdi:                                      ; preds = %if.end, %while.end
  %err.0 = phi i32 [ %call52, %if.end ], [ %call56.lcssa15, %while.end ]
  br i1 %cmp.not, label %cleanup, label %if.then67

if.then67:                                        ; preds = %out_put_bdi
  call void @bdi_put(%struct.backing_dev_info* noundef %bdi) #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %out_put_bdi, %if.then67
  %retval.0 = phi i32 [ %err.0, %if.then67 ], [ %err.0, %out_put_bdi ], [ 0, %for.inc.2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wb_workfn(%struct.work_struct* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(%struct.timer_list* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @wb_update_bandwidth_workfn(%struct.work_struct* noundef %work) #1 {
entry:
  %call = call fastcc %struct.delayed_work* @to_delayed_work(%struct.work_struct* noundef %work) #16
  %add.ptr = getelementptr %struct.delayed_work, %struct.delayed_work* %call, i64 -5, i32 1
  %0 = bitcast %struct.timer_list* %add.ptr to %struct.bdi_writeback*
  call void @wb_update_bandwidth(%struct.bdi_writeback* noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fprop_local_init_percpu(%struct.fprop_local_percpu* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(%struct.percpu_counter* noundef, i64 noundef, i32 noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(%struct.percpu_counter* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fprop_local_destroy_percpu(%struct.fprop_local_percpu* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.delayed_work* @to_delayed_work(%struct.work_struct* noundef readnone %work) unnamed_addr #6 {
entry:
  %0 = bitcast %struct.work_struct* %work to %struct.delayed_work*
  ret %struct.delayed_work* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wb_update_bandwidth(%struct.bdi_writeback* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_get(%struct.kref* noundef %kref) unnamed_addr #1 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcount) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #15
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !10

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !8

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #15
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !18
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #17, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #1 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next13, i64 %0) #17, !srcloc !20
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev23, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_rcu(%struct.list_head* nocapture noundef %entry1) unnamed_addr #14 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_expedited() local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #14 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #14 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @cgwb_remove_from_bdi_list(%struct.bdi_writeback* nocapture noundef %wb) unnamed_addr #14 {
entry:
  %bdi_node = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 26
  call fastcc void @list_del_rcu(%struct.list_head* noundef %bdi_node) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mod_delayed_work(%struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork) unnamed_addr #1 {
entry:
  %call = call i1 @mod_delayed_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.delayed_work* noundef %dwork, i64 noundef 0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @flush_delayed_work(%struct.delayed_work* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #11 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mod_delayed_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.delayed_work* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #16
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #16
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #15
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #17, !srcloc !21
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !8

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !22
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wb_exit(%struct.bdi_writeback* noundef %wb) unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 23, i32 0, i32 0, i32 0
  %1 = load volatile i64, i64* %0, align 8
  %conv.i32 = and i64 %1, 1
  %tobool.not = icmp eq i64 %conv.i32, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/backing-dev.c\22; .popsection; .long 14472b - 14470b; .short 370; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 0
  call void @percpu_counter_destroy(%struct.percpu_counter* noundef %arrayidx) #15
  %arrayidx.1 = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 1
  call void @percpu_counter_destroy(%struct.percpu_counter* noundef %arrayidx.1) #15
  %arrayidx.2 = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 2
  call void @percpu_counter_destroy(%struct.percpu_counter* noundef %arrayidx.2) #15
  %arrayidx.3 = getelementptr %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 9, i64 3
  call void @percpu_counter_destroy(%struct.percpu_counter* noundef %arrayidx.3) #15
  %completions = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 18
  call void @fprop_local_destroy_percpu(%struct.fprop_local_percpu* noundef %completions) #15
  %bdi = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %wb, i64 0, i32 0
  %2 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %wb16 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %2, i64 0, i32 11
  %cmp17.not = icmp eq %struct.bdi_writeback* %wb16, %wb
  br i1 %cmp17.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end
  call void @bdi_put(%struct.backing_dev_info* noundef %2) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !24
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #17, !srcloc !26
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

attributes #0 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #13 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #14 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2155178154}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2155164912}
!12 = !{i64 2155181888}
!13 = !{i64 2155183516}
!14 = !{i64 1236566}
!15 = !{i64 2149073807}
!16 = !{i64 2147918086, i64 2147918119, i64 2147918172, i64 2147918231, i64 2147918265, i64 2147918320, i64 2147918349, i64 2147918369}
!17 = !{i64 2149224812}
!18 = !{i64 2147828188, i64 2147828852, i64 2147828882, i64 2147828914, i64 2147828948, i64 2147828983, i64 2147829008}
!19 = !{i64 2147891304, i64 2147891815, i64 2147891845, i64 2147891871, i64 2147891903, i64 2147891932}
!20 = !{i64 2149846319}
!21 = !{i64 2150625864}
!22 = !{i64 2147839970, i64 2147840644, i64 2147840674, i64 2147840706, i64 2147840740, i64 2147840776, i64 2147840801}
!23 = !{i64 2155166758}
!24 = !{i64 2147902727, i64 2147903389, i64 2147903419, i64 2147903450, i64 2147903482, i64 2147903517, i64 2147903542}
!25 = !{i64 2147831945, i64 2147832461, i64 2147832491, i64 2147832518, i64 2147832552, i64 2147832582}
!26 = !{i64 2147892150, i64 2147892802, i64 2147892832, i64 2147892863, i64 2147892895, i64 2147892930, i64 2147892955}
!27 = !{i64 2147822224, i64 2147822740, i64 2147822770, i64 2147822797, i64 2147822831, i64 2147822861}
