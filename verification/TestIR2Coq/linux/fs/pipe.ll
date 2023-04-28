; ModuleID = 'fs/pipe.c'
source_filename = "fs/pipe.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init\22, \22a\22\09\09"
module asm "__initcall__kmod_pipe__435_1445_init_pipe_fs5:\09\09\09"
module asm ".long\09init_pipe_fs - .\09"
module asm ".previous\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.53, %struct.list_head, %struct.list_head, %union.anon.54 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.80, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.55 }
%union.anon.55 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.2, %union.anon.76, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.76 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.56, %union.anon.57 }
%union.anon.56 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.57 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.43, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.41, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.25, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.46, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.46 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.47, %union.anon.48, %union.anon.49, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.52, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.47 = type { %struct.hlist_node }
%union.anon.48 = type { %struct.rb_node }
%union.anon.49 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.52 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.26, %union.anon.27, i32 }
%union.anon.26 = type { %struct.list_head }
%union.anon.27 = type { %struct.hlist_node }
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
%struct.workqueue_struct = type opaque
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
%union.anon.25 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.28 }
%struct.anon.28 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.32 }
%struct.anon.32 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.40, i32, [12 x i8] }
%union.anon.40 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.41 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.59, %struct.qspinlock }
%union.anon.59 = type { %struct.atomic_t }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.42, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.42 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.43 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.44, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.45, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.44 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.45 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.61 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.61 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.14 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.14 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.78 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.79 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.80 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%union.anon.53 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.54 = type { %struct.hlist_node }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.9, i64, i32 }
%union.anon.9 = type { i8* }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.15, i32 }
%union.anon.15 = type { %struct.kuid_t }
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
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.10 }
%union.anon.10 = type { %struct.anon.11, [48 x i8] }
%struct.anon.11 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pt_regs = type { %union.anon.81, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.81 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.pseudo_fs_context = type { %struct.super_operations*, %struct.xattr_handler**, %struct.dentry_operations*, i64 }

@pipe_max_size = dso_local global i32 1048576, align 4
@pipe_user_pages_soft = dso_local global i64 16384, align 8
@pipe_user_pages_hard = dso_local global i64 0, align 8
@alloc_pipe_info.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&pipe->rd_wait\00", align 1
@alloc_pipe_info.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"&pipe->wr_wait\00", align 1
@alloc_pipe_info.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"&pipe->mutex\00", align 1
@pipe_mnt = internal unnamed_addr global %struct.vfsmount* null, section ".data..read_mostly", align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pipefifo_fops = dso_local constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @pipe_read, i64 (%struct.kiocb*, %struct.iov_iter*)* @pipe_write, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @pipe_poll, i64 (%struct.file*, i32, i64)* @pipe_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @fifo_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @pipe_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* @pipe_fasync, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* @iter_file_splice_write, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@__UNIQUE_ID___addressable_init_pipe_fs436 = internal global i8* bitcast (i32 ()* @init_pipe_fs to i8*), section ".discard.addressable", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@anon_pipe_buf_ops = internal constant %struct.pipe_buf_operations { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* null, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @anon_pipe_buf_release, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @anon_pipe_buf_try_steal, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @generic_pipe_buf_get }, align 8
@pipe_fs_type = internal global %struct.file_system_type { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 (%struct.fs_context*)* @pipefs_init_fs_context, %struct.fs_parameter_spec* null, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* null, void (%struct.super_block*)* @kill_anon_super, %struct.module* null, %struct.file_system_type* null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"pipefs\00", align 1
@pipefs_ops = internal constant %struct.super_operations { %struct.inode* (%struct.super_block*)* null, void (%struct.inode*)* @free_inode_nonrcu, void (%struct.inode*)* null, void (%struct.inode*, i32)* null, i32 (%struct.inode*, %struct.writeback_control*)* null, i32 (%struct.inode*)* null, void (%struct.inode*)* null, void (%struct.super_block*)* null, i32 (%struct.super_block*, i32)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.super_block*)* null, i32 (%struct.dentry*, %struct.kstatfs*)* @simple_statfs, i32 (%struct.super_block*, i32*, i8*)* null, void (%struct.super_block*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i32 (%struct.seq_file*, %struct.dentry*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null, i64 (%struct.super_block*, %struct.shrink_control*)* null }, align 8
@pipefs_dentry_operations = internal constant %struct.dentry_operations { i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, i32)* null, i32 (%struct.dentry*, %struct.qstr*)* null, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* null, i32 (%struct.dentry*)* null, i32 (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*)* null, void (%struct.dentry*, %struct.inode*)* null, i8* (%struct.dentry*, i8*, i32)* @pipefs_dname, %struct.vfsmount* (%struct.path*)* null, i32 (%struct.path*, i1)* null, %struct.dentry* (%struct.dentry*, %struct.inode*)* null, [24 x i8] undef }, align 64
@.str.8 = private unnamed_addr constant [11 x i8] c"pipe:[%lu]\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_init_pipe_fs436 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pipe_lock(%struct.pipe_inode_info* noundef %pipe) local_unnamed_addr #0 {
entry:
  call fastcc void @pipe_lock_nested(%struct.pipe_inode_info* noundef %pipe) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pipe_lock_nested(%struct.pipe_inode_info* noundef %pipe) unnamed_addr #0 {
entry:
  %files = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 10
  %0 = load i32, i32* %files, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 0
  call void @mutex_lock(%struct.mutex* noundef %mutex) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pipe_unlock(%struct.pipe_inode_info* noundef %pipe) local_unnamed_addr #0 {
entry:
  %files = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 10
  %0 = load i32, i32* %files, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 0
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pipe_double_lock(%struct.pipe_inode_info* noundef %pipe1, %struct.pipe_inode_info* noundef %pipe2) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.pipe_inode_info* %pipe1, %pipe2
  br i1 %cmp, label %do.body2, label %do.end5, !prof !8

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/pipe.c\22; .popsection; .long 14472b - 14470b; .short 113; .short 0; .popsection; 14471: brk 0x800", ""() #15, !srcloc !9
  unreachable

do.end5:                                          ; preds = %entry
  %cmp6 = icmp ult %struct.pipe_inode_info* %pipe1, %pipe2
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.end5
  call fastcc void @pipe_lock_nested(%struct.pipe_inode_info* noundef %pipe1) #13
  call fastcc void @pipe_lock_nested(%struct.pipe_inode_info* noundef nonnull %pipe2) #13
  br label %if.end9

if.else:                                          ; preds = %do.end5
  call fastcc void @pipe_lock_nested(%struct.pipe_inode_info* noundef %pipe2) #13
  call fastcc void @pipe_lock_nested(%struct.pipe_inode_info* noundef %pipe1) #13
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @generic_pipe_buf_try_steal(%struct.pipe_inode_info* nocapture noundef readnone %pipe, %struct.pipe_buffer* nocapture noundef readonly %buf) local_unnamed_addr #0 {
entry:
  %page1 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %page1, align 8
  %call = call fastcc i32 @page_count(%struct.page* noundef %0) #13
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  call fastcc void @lock_page(%struct.page* noundef %0) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_count(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #13
  %0 = inttoptr i64 %call to %struct.page*
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 3, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @lock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @trylock_page(%struct.page* noundef %page) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__lock_page(%struct.page* noundef %page) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @generic_pipe_buf_get(%struct.pipe_inode_info* nocapture readnone %pipe, %struct.pipe_buffer* nocapture noundef readonly %buf) #0 {
entry:
  %page = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %page, align 8
  %call = call fastcc i1 @try_get_page(%struct.page* noundef %0) #13
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @try_get_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #13
  %0 = inttoptr i64 %call to %struct.page*
  %call1 = call fastcc i32 @page_ref_count(%struct.page* noundef %0) #13
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.then, label %if.end17, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/mm.h\22; .popsection; .long 14472b - 14470b; .short 1225; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !10
  br label %return

if.end17:                                         ; preds = %entry
  call fastcc void @page_ref_inc(%struct.page* noundef %0) #13
  br label %return

return:                                           ; preds = %if.then, %if.end17
  %1 = xor i1 %cmp, true
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @generic_pipe_buf_release(%struct.pipe_inode_info* nocapture noundef readnone %pipe, %struct.pipe_buffer* nocapture noundef readonly %buf) local_unnamed_addr #0 {
entry:
  %page = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %page, align 8
  call fastcc void @put_page(%struct.page* noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #13
  %0 = inttoptr i64 %call to %struct.page*
  %call2 = call fastcc i32 @put_page_testzero(%struct.page* noundef %0) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__put_page(%struct.page* noundef %0) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @account_pipe_buffers(%struct.user_struct* noundef %user, i64 noundef %old, i64 noundef %new) local_unnamed_addr #0 {
entry:
  %sub = sub i64 %new, %old
  %pipe_bufs = getelementptr inbounds %struct.user_struct, %struct.user_struct* %user, i64 0, i32 3
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %sub, %struct.atomic64_t* noundef %pipe_bufs) #14
  ret i64 %call.i.i.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i1 @too_many_pipe_buffers_soft(i64 noundef %user_bufs) local_unnamed_addr #3 {
entry:
  %0 = load volatile i64, i64* @pipe_user_pages_soft, align 8
  %tobool = icmp ne i64 %0, 0
  %cmp = icmp ult i64 %0, %user_bufs
  %1 = and i1 %tobool, %cmp
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i1 @too_many_pipe_buffers_hard(i64 noundef %user_bufs) local_unnamed_addr #3 {
entry:
  %0 = load volatile i64, i64* @pipe_user_pages_hard, align 8
  %tobool = icmp ne i64 %0, 0
  %cmp = icmp ult i64 %0, %user_bufs
  %1 = and i1 %tobool, %cmp
  ret i1 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @pipe_is_unprivileged_user() local_unnamed_addr #0 {
entry:
  %call = call i1 @capable(i32 noundef 24) #14
  br i1 %call, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call i1 @capable(i32 noundef 21) #14
  %lnot = xor i1 %call1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.pipe_inode_info* @alloc_pipe_info() local_unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !11
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %user1 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 15
  %3 = load %struct.user_struct*, %struct.user_struct** %user1, align 8
  %call2 = call fastcc %struct.user_struct* @get_uid(%struct.user_struct* noundef %3) #13
  %4 = load volatile i32, i32* @pipe_max_size, align 4
  %call8 = call fastcc i8* @kzalloc() #13
  %5 = bitcast i8* %call8 to %struct.pipe_inode_info*
  %cmp = icmp eq i8* %call8, null
  br i1 %cmp, label %out_free_uid, label %if.end

if.end:                                           ; preds = %entry
  %cmp9 = icmp ult i32 %4, 65536
  br i1 %cmp9, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %call11 = call i1 @capable(i32 noundef 24) #14
  br i1 %call11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %shr = lshr i32 %4, 12
  %conv13 = zext i32 %shr to i64
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true, %if.end
  %pipe_bufs.0 = phi i64 [ 16, %land.lhs.true ], [ %conv13, %if.then12 ], [ 16, %if.end ]
  %call15 = call i64 @account_pipe_buffers(%struct.user_struct* noundef %3, i64 noundef 0, i64 noundef %pipe_bufs.0) #13
  %call16 = call i1 @too_many_pipe_buffers_soft(i64 noundef %call15) #13
  br i1 %call16, label %land.lhs.true18, label %if.end23

land.lhs.true18:                                  ; preds = %if.end14
  %call19 = call i1 @pipe_is_unprivileged_user() #13
  br i1 %call19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true18
  %call22 = call i64 @account_pipe_buffers(%struct.user_struct* noundef %3, i64 noundef %pipe_bufs.0, i64 noundef 2) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true18, %if.end14
  %pipe_bufs.1 = phi i64 [ 2, %if.then21 ], [ %pipe_bufs.0, %land.lhs.true18 ], [ %pipe_bufs.0, %if.end14 ]
  %user_bufs.0 = phi i64 [ %call22, %if.then21 ], [ %call15, %land.lhs.true18 ], [ %call15, %if.end14 ]
  %call24 = call i1 @too_many_pipe_buffers_hard(i64 noundef %user_bufs.0) #13
  br i1 %call24, label %land.lhs.true26, label %if.end30

land.lhs.true26:                                  ; preds = %if.end23
  %call27 = call i1 @pipe_is_unprivileged_user() #13
  br i1 %call27, label %out_revert_acct, label %if.end30

if.end30:                                         ; preds = %land.lhs.true26, %if.end23
  %call31 = call fastcc i8* @kcalloc(i64 noundef %pipe_bufs.1, i32 noundef 4197568) #13
  %bufs = getelementptr inbounds i8, i8* %call8, i64 152
  %6 = bitcast i8* %bufs to i8**
  store i8* %call31, i8** %6, align 8
  %tobool.not = icmp eq i8* %call31, null
  br i1 %tobool.not, label %out_revert_acct, label %do.body34

do.body34:                                        ; preds = %if.end30
  %rd_wait = getelementptr inbounds i8, i8* %call8, i64 32
  %7 = bitcast i8* %rd_wait to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_pipe_info.__key) #14
  %wr_wait = getelementptr inbounds i8, i8* %call8, i64 56
  %8 = bitcast i8* %wr_wait to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_pipe_info.__key.1) #14
  %w_counter = getelementptr inbounds i8, i8* %call8, i64 116
  %9 = bitcast i8* %w_counter to i32*
  store i32 1, i32* %9, align 4
  %r_counter = getelementptr inbounds i8, i8* %call8, i64 112
  %10 = bitcast i8* %r_counter to i32*
  store i32 1, i32* %10, align 8
  %conv40 = trunc i64 %pipe_bufs.1 to i32
  %max_usage = getelementptr inbounds i8, i8* %call8, i64 88
  %11 = bitcast i8* %max_usage to i32*
  store i32 %conv40, i32* %11, align 8
  %ring_size = getelementptr inbounds i8, i8* %call8, i64 92
  %12 = bitcast i8* %ring_size to i32*
  store i32 %conv40, i32* %12, align 4
  %nr_accounted = getelementptr inbounds i8, i8* %call8, i64 96
  %13 = bitcast i8* %nr_accounted to i32*
  store i32 %conv40, i32* %13, align 8
  %user43 = getelementptr inbounds i8, i8* %call8, i64 160
  %14 = bitcast i8* %user43 to %struct.user_struct**
  store %struct.user_struct* %3, %struct.user_struct** %14, align 8
  %mutex = bitcast i8* %call8 to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef nonnull %mutex, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_pipe_info.__key.3) #14
  br label %cleanup

out_revert_acct:                                  ; preds = %if.end30, %land.lhs.true26
  %call48 = call i64 @account_pipe_buffers(%struct.user_struct* noundef %3, i64 noundef %pipe_bufs.1, i64 noundef 0) #13
  call void @kfree(i8* noundef nonnull %call8) #14
  br label %out_free_uid

out_free_uid:                                     ; preds = %entry, %out_revert_acct
  call void @free_uid(%struct.user_struct* noundef %3) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free_uid, %do.body34
  %retval.0 = phi %struct.pipe_inode_info* [ null, %out_free_uid ], [ %5, %do.body34 ]
  ret %struct.pipe_inode_info* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_struct* @get_uid(%struct.user_struct* noundef returned %u) unnamed_addr #0 {
entry:
  %__count = getelementptr inbounds %struct.user_struct, %struct.user_struct* %u, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %__count) #13
  ret %struct.user_struct* %u
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 8), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 4197824) #14
  ret i8* %call.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 256
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n, i32 noundef %or) #13
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(%struct.user_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_pipe_info(%struct.pipe_inode_info* noundef %pipe) local_unnamed_addr #0 {
entry:
  %user = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 18
  %0 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  %nr_accounted = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 7
  %1 = load i32, i32* %nr_accounted, align 8
  %conv = zext i32 %1 to i64
  %call = call i64 @account_pipe_buffers(%struct.user_struct* noundef %0, i64 noundef %conv, i64 noundef 0) #13
  %2 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  call void @free_uid(%struct.user_struct* noundef %2) #14
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 6
  %3 = load i32, i32* %ring_size, align 4
  %cmp22.not = icmp eq i32 %3, 0
  br i1 %cmp22.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %7, %if.end ]
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end ]
  %5 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %idx.ext = sext i32 %i.023 to i64
  %ops = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %5, i64 %idx.ext, i32 3
  %6 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %ops, align 8
  %tobool.not = icmp eq %struct.pipe_buf_operations* %6, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %5, i64 %idx.ext
  call fastcc void @pipe_buf_release(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %add.ptr) #13
  %.pre = load i32, i32* %ring_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = phi i32 [ %.pre, %if.then ], [ %4, %for.body ]
  %inc = add nuw i32 %i.023, 1
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  %tmp_page = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 14
  %8 = load %struct.page*, %struct.page** %tmp_page, align 8
  %tobool3.not = icmp eq %struct.page* %8, null
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %for.end
  call void @__free_pages(%struct.page* noundef nonnull %8, i32 noundef 0) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %for.end
  %bufs7 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 17
  %9 = bitcast %struct.pipe_buffer** %bufs7 to i8**
  %10 = load i8*, i8** %9, align 8
  call void @kfree(i8* noundef %10) #14
  %11 = bitcast %struct.pipe_inode_info* %pipe to i8*
  call void @kfree(i8* noundef %11) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pipe_buf_release(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) unnamed_addr #0 {
entry:
  %ops1 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 3
  %0 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %ops1, align 8
  store %struct.pipe_buf_operations* null, %struct.pipe_buf_operations** %ops1, align 8
  %release = getelementptr inbounds %struct.pipe_buf_operations, %struct.pipe_buf_operations* %0, i64 0, i32 1
  %1 = load void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %release, align 8
  call void %1(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(%struct.page* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @create_pipe_files(%struct.file** nocapture noundef %res, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @get_pipe_inode() #13
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 128
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end8, label %if.then2

if.then2:                                         ; preds = %if.end
  %i_pipe = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 40, i32 0
  %0 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %i_pipe, align 8
  call void @free_pipe_info(%struct.pipe_inode_info* noundef %0) #13
  call void @iput(%struct.inode* noundef nonnull %call) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %1 = load %struct.vfsmount*, %struct.vfsmount** @pipe_mnt, align 8
  %and9 = and i32 %flags, 67584
  %or = or i32 %and9, 1
  %call10 = call %struct.file* @alloc_file_pseudo(%struct.inode* noundef nonnull %call, %struct.vfsmount* noundef %1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 noundef %or, %struct.file_operations* noundef nonnull @pipefifo_fops) #14
  %2 = bitcast %struct.file* %call10 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %2) #13
  %i_pipe13 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 40, i32 0
  br i1 %call11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  %3 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %i_pipe13, align 8
  call void @free_pipe_info(%struct.pipe_inode_info* noundef %3) #13
  call void @iput(%struct.inode* noundef nonnull %call) #14
  %call14 = call fastcc i64 @PTR_ERR(i8* noundef %2) #13
  %conv = trunc i64 %call14 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %4 = bitcast %struct.pipe_inode_info** %i_pipe13 to i8**
  %5 = load i8*, i8** %4, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %call10, i64 0, i32 15
  store i8* %5, i8** %private_data, align 8
  %and17 = and i32 %flags, 2048
  %call19 = call %struct.file* @alloc_file_clone(%struct.file* noundef %call10, i32 noundef %and17, %struct.file_operations* noundef nonnull @pipefifo_fops) #14
  store %struct.file* %call19, %struct.file** %res, align 8
  %6 = bitcast %struct.file* %call19 to i8*
  %call21 = call fastcc i1 @IS_ERR(i8* noundef %6) #13
  br i1 %call21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end15
  %7 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %i_pipe13, align 8
  call fastcc void @put_pipe_info(%struct.inode* noundef nonnull %call, %struct.pipe_inode_info* noundef %7) #13
  call void @fput(%struct.file* noundef %call10) #14
  %8 = bitcast %struct.file** %res to i8**
  %9 = load i8*, i8** %8, align 8
  %call25 = call fastcc i64 @PTR_ERR(i8* noundef %9) #13
  %conv26 = trunc i64 %call25 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %10 = load i8*, i8** %4, align 8
  %private_data30 = getelementptr inbounds %struct.file, %struct.file* %call19, i64 0, i32 15
  store i8* %10, i8** %private_data30, align 8
  %arrayidx31 = getelementptr %struct.file*, %struct.file** %res, i64 1
  store %struct.file* %call10, %struct.file** %arrayidx31, align 8
  %11 = load %struct.file*, %struct.file** %res, align 8
  %call33 = call i32 @stream_open(%struct.inode* noundef nonnull %call, %struct.file* noundef %11) #14
  %12 = load %struct.file*, %struct.file** %arrayidx31, align 8
  %call35 = call i32 @stream_open(%struct.inode* noundef nonnull %call, %struct.file* noundef %12) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end27, %if.then22, %if.then12, %if.then2
  %retval.0 = phi i32 [ -65, %if.then2 ], [ %conv, %if.then12 ], [ %conv26, %if.then22 ], [ 0, %if.end27 ], [ -23, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.inode* @get_pipe_inode() unnamed_addr #0 {
entry:
  %0 = load %struct.vfsmount*, %struct.vfsmount** @pipe_mnt, align 8
  %mnt_sb = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %0, i64 0, i32 1
  %1 = load %struct.super_block*, %struct.super_block** %mnt_sb, align 8
  %call = call %struct.inode* @new_inode_pseudo(%struct.super_block* noundef %1) #14
  %tobool.not = icmp eq %struct.inode* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @get_next_ino() #14
  %conv = zext i32 %call1 to i64
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  store i64 %conv, i64* %i_ino, align 8
  %call2 = call %struct.pipe_inode_info* @alloc_pipe_info() #13
  %tobool3.not = icmp eq %struct.pipe_inode_info* %call2, null
  br i1 %tobool3.not, label %fail_iput, label %if.end5

if.end5:                                          ; preds = %if.end
  %i_pipe = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 40, i32 0
  store %struct.pipe_inode_info* %call2, %struct.pipe_inode_info** %i_pipe, align 8
  %files = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %call2, i64 0, i32 10
  store i32 2, i32* %files, align 4
  %writers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %call2, i64 0, i32 9
  store i32 1, i32* %writers, align 8
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %call2, i64 0, i32 8
  store i32 1, i32* %readers, align 4
  %i_fop = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 36, i32 0
  store %struct.file_operations* @pipefifo_fops, %struct.file_operations** %i_fop, align 8
  %i_state = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 20
  store i64 7, i64* %i_state, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 0
  store i16 4480, i16* %i_mode, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !11
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 80
  %4 = load %struct.cred*, %struct.cred** %cred, align 8
  %5 = getelementptr inbounds %struct.cred, %struct.cred* %4, i64 0, i32 7, i32 0
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 2, i32 0
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.cred*, %struct.cred** %cred, align 8
  %9 = getelementptr inbounds %struct.cred, %struct.cred* %8, i64 0, i32 8, i32 0
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 3, i32 0
  %11 = load i32, i32* %9, align 8
  store i32 %11, i32* %10, align 8
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 12
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 13
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14
  %call14 = call [2 x i64] @current_time(%struct.inode* noundef nonnull %call) #14
  %call14.fca.0.extract = extractvalue [2 x i64] %call14, 0
  %call14.fca.1.extract = extractvalue [2 x i64] %call14, 1
  %tmp13.sroa.0.0..sroa_idx = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 0
  store i64 %call14.fca.0.extract, i64* %tmp13.sroa.0.0..sroa_idx, align 8
  %tmp13.sroa.4.0..sroa_idx17 = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 14, i32 1
  store i64 %call14.fca.1.extract, i64* %tmp13.sroa.4.0..sroa_idx17, align 8
  %12 = bitcast %struct.timespec64* %i_mtime to i8*
  %13 = bitcast %struct.timespec64* %i_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %12, i8* noundef align 8 dereferenceable(16) %13, i64 16, i1 false)
  %14 = bitcast %struct.timespec64* %i_atime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %14, i8* noundef align 8 dereferenceable(16) %13, i64 16, i1 false)
  br label %cleanup

fail_iput:                                        ; preds = %if.end
  call void @iput(%struct.inode* noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %fail_iput, %entry, %if.end5
  %retval.0 = phi %struct.inode* [ %call, %if.end5 ], [ null, %entry ], [ null, %fail_iput ]
  ret %struct.inode* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @alloc_file_pseudo(%struct.inode* noundef, %struct.vfsmount* noundef, i8* noundef, i32 noundef, %struct.file_operations* noundef) local_unnamed_addr #1

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
declare dso_local %struct.file* @alloc_file_clone(%struct.file* noundef, i32 noundef, %struct.file_operations* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_pipe_info(%struct.inode* noundef %inode, %struct.pipe_inode_info* noundef %pipe) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  %files = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 10
  %0 = load i32, i32* %files, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* %files, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %if.end4.critedge

if.then:                                          ; preds = %entry
  %i_pipe = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 40, i32 0
  store %struct.pipe_inode_info* null, %struct.pipe_inode_info** %i_pipe, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  call void @free_pipe_info(%struct.pipe_inode_info* noundef %pipe) #13
  br label %if.end4

if.end4.critedge:                                 ; preds = %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  br label %if.end4

if.end4:                                          ; preds = %if.end4.critedge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(%struct.inode* noundef, %struct.file* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_pipe_flags(i32* nocapture noundef %fd, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %files = alloca [2 x %struct.file*], align 8
  %0 = bitcast [2 x %struct.file*]* %files to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !12
  %arraydecay = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %files, i64 0, i64 0
  %call = call fastcc i32 @__do_pipe_flags(i32* noundef %fd, %struct.file** noundef nonnull %arraydecay, i32 noundef %flags) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd, align 4
  %2 = load %struct.file*, %struct.file** %arraydecay, align 8
  call void @fd_install(i32 noundef %1, %struct.file* noundef %2) #14
  %arrayidx2 = getelementptr i32, i32* %fd, i64 1
  %3 = load i32, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %files, i64 0, i64 1
  %4 = load %struct.file*, %struct.file** %arrayidx3, align 8
  call void @fd_install(i32 noundef %3, %struct.file* noundef %4) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__do_pipe_flags(i32* nocapture noundef writeonly %fd, %struct.file** nocapture noundef %files, i32 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i32 %flags, -592001
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @create_pipe_files(%struct.file** noundef %files, i32 noundef %flags) #13
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @get_unused_fd_flags(i32 noundef %flags) #14
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %err_read_pipe, label %if.end6

if.end6:                                          ; preds = %if.end3
  %call7 = call i32 @get_unused_fd_flags(i32 noundef %flags) #14
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %err_fdr, label %if.end10

if.end10:                                         ; preds = %if.end6
  store i32 %call4, i32* %fd, align 4
  %arrayidx11 = getelementptr i32, i32* %fd, i64 1
  store i32 %call7, i32* %arrayidx11, align 4
  br label %cleanup

err_fdr:                                          ; preds = %if.end6
  call void @put_unused_fd(i32 noundef %call4) #14
  br label %err_read_pipe

err_read_pipe:                                    ; preds = %if.end3, %err_fdr
  %error.0 = phi i32 [ %call4, %if.end3 ], [ %call7, %err_fdr ]
  %0 = load %struct.file*, %struct.file** %files, align 8
  call void @fput(%struct.file* noundef %0) #14
  %arrayidx13 = getelementptr %struct.file*, %struct.file** %files, i64 1
  %1 = load %struct.file*, %struct.file** %arrayidx13, align 8
  call void @fput(%struct.file* noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err_read_pipe, %if.end10
  %retval.0 = phi i32 [ %error.0, %err_read_pipe ], [ 0, %if.end10 ], [ -22, %entry ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, %struct.file* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_pipe2(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_pipe2(i64 noundef %0, i64 noundef %1) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_pipe2(i64 noundef %fildes, i64 noundef %flags) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %fildes to i32*
  %conv = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_pipe2(i32* noundef %0, i32 noundef %conv) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_pipe(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_pipe(i64 noundef %0) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_pipe(i64 noundef %fildes) unnamed_addr #0 {
entry:
  %0 = inttoptr i64 %fildes to i32*
  %call = call fastcc i64 @__do_sys_pipe(i32* noundef %0) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pipe_wait_readable(%struct.pipe_inode_info* noundef %pipe) local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %pipe) #13
  %call = call fastcc i1 @pipe_readable(%struct.pipe_inode_info* noundef %pipe) #13
  br i1 %call, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !12
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #14
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 1
  %call528 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %rd_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call629 = call fastcc i1 @pipe_readable(%struct.pipe_inode_info* noundef %pipe) #13
  br i1 %call629, label %for.end, label %if.end

if.end:                                           ; preds = %if.then, %cleanup
  %call530 = phi i64 [ %call5, %cleanup ], [ %call528, %if.then ]
  %tobool.not = icmp eq i64 %call530, 0
  br i1 %tobool.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #14
  %call5 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %rd_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call6 = call fastcc i1 @pipe_readable(%struct.pipe_inode_info* noundef %pipe) #13
  br i1 %call6, label %for.end, label %if.end

for.end:                                          ; preds = %cleanup, %if.then
  call void @finish_wait(%struct.wait_queue_head* noundef %rd_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %if.end, %for.end
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #15
  br label %if.end11

if.end11:                                         ; preds = %__out, %entry
  call void @pipe_lock(%struct.pipe_inode_info* noundef %pipe) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @pipe_readable(%struct.pipe_inode_info* noundef %pipe) unnamed_addr #3 {
entry:
  %head1 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %0 = load volatile i32, i32* %head1, align 8
  %tail6 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %1 = load volatile i32, i32* %tail6, align 4
  %writers11 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 9
  %2 = load volatile i32, i32* %writers11, align 8
  %call = call fastcc i1 @pipe_empty(i32 noundef %0, i32 noundef %1) #13
  %tobool.not = icmp eq i32 %2, 0
  %not.call = xor i1 %call, true
  %3 = select i1 %not.call, i1 true, i1 %tobool.not
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @pipe_wait_writable(%struct.pipe_inode_info* noundef %pipe) local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %pipe) #13
  %call = call fastcc i1 @pipe_writable(%struct.pipe_inode_info* noundef %pipe) #13
  br i1 %call, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !12
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #14
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 2
  %call528 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %wr_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call629 = call fastcc i1 @pipe_writable(%struct.pipe_inode_info* noundef %pipe) #13
  br i1 %call629, label %for.end, label %if.end

if.end:                                           ; preds = %if.then, %cleanup
  %call530 = phi i64 [ %call5, %cleanup ], [ %call528, %if.then ]
  %tobool.not = icmp eq i64 %call530, 0
  br i1 %tobool.not, label %cleanup, label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #14
  %call5 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %wr_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call6 = call fastcc i1 @pipe_writable(%struct.pipe_inode_info* noundef %pipe) #13
  br i1 %call6, label %for.end, label %if.end

for.end:                                          ; preds = %cleanup, %if.then
  call void @finish_wait(%struct.wait_queue_head* noundef %wr_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %if.end, %for.end
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #15
  br label %if.end11

if.end11:                                         ; preds = %__out, %entry
  call void @pipe_lock(%struct.pipe_inode_info* noundef %pipe) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @pipe_writable(%struct.pipe_inode_info* noundef %pipe) unnamed_addr #3 {
entry:
  %head1 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %0 = load volatile i32, i32* %head1, align 8
  %tail6 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %1 = load volatile i32, i32* %tail6, align 4
  %max_usage11 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 5
  %2 = load volatile i32, i32* %max_usage11, align 8
  %call = call fastcc i1 @pipe_full(i32 noundef %0, i32 noundef %1, i32 noundef %2) #13
  br i1 %call, label %do.end14, label %lor.end

do.end14:                                         ; preds = %entry
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 8
  %3 = load volatile i32, i32* %readers, align 4
  %tobool.not = icmp eq i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %do.end14, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool.not, %do.end14 ]
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @pipe_read(%struct.kiocb* nocapture noundef readonly %iocb, %struct.iov_iter* noundef %to) #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %to) #13
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 15
  %1 = bitcast i8** %private_data to %struct.pipe_inode_info**
  %2 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %1, align 8
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup153, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  call fastcc void @__pipe_lock(%struct.pipe_inode_info* noundef %2) #13
  %head = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 3
  %3 = load i32, i32* %head, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 4
  %4 = load i32, i32* %tail, align 4
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 5
  %5 = load i32, i32* %max_usage, align 8
  %call2 = call fastcc i1 @pipe_full(i32 noundef %3, i32 noundef %4, i32 noundef %5) #13
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 6
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 17
  %rlock.i = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 1, i32 0, i32 0, i32 0
  %writers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 9
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 7
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 2
  %fasync_writers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 16
  %6 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  %rd_wait105 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end
  %7 = phi i32 [ %4, %if.end ], [ %.pre325, %for.cond.backedge ]
  %8 = phi i32 [ %3, %if.end ], [ %.pre, %for.cond.backedge ]
  %was_full.0.off0 = phi i1 [ %call2, %if.end ], [ %was_full.1.off0, %for.cond.backedge ]
  %wake_next_reader.0.off0 = phi i1 [ false, %if.end ], [ %wake_next_reader.1.off0, %for.cond.backedge ]
  %ret.0 = phi i64 [ 0, %if.end ], [ %ret.4, %for.cond.backedge ]
  %total_len.0 = phi i64 [ %call, %if.end ], [ %total_len.4, %for.cond.backedge ]
  %call7 = call fastcc i1 @pipe_empty(i32 noundef %8, i32 noundef %7) #13
  br i1 %call7, label %if.end77, label %if.then8

if.then8:                                         ; preds = %for.cond
  %9 = load i32, i32* %ring_size, align 4
  %sub = add i32 %9, -1
  %10 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %and = and i32 %sub, %7
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %10, i64 %idxprom
  %len = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %10, i64 %idxprom, i32 2
  %11 = load i32, i32* %len, align 4
  %conv9 = zext i32 %11 to i64
  %cmp10 = icmp ult i64 %total_len.0, %conv9
  br i1 %cmp10, label %if.then12, label %if.end21

if.then12:                                        ; preds = %if.then8
  %flags = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %10, i64 %idxprom, i32 4
  %12 = load i32, i32* %flags, align 8
  %and13 = and i32 %12, 32
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end21, label %if.then15

if.then15:                                        ; preds = %if.then12
  %cmp16 = icmp eq i64 %ret.0, 0
  %spec.store.select = select i1 %cmp16, i64 -105, i64 %ret.0
  br label %for.end134

if.end21:                                         ; preds = %if.then12, %if.then8
  %chars.0 = phi i64 [ %conv9, %if.then8 ], [ %total_len.0, %if.then12 ]
  %call22 = call fastcc i32 @pipe_buf_confirm(%struct.pipe_inode_info* noundef %2, %struct.pipe_buffer* noundef %arrayidx) #13
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %if.then24

if.then24:                                        ; preds = %if.end21
  %tobool25.not = icmp eq i64 %ret.0, 0
  %conv27 = sext i32 %call22 to i64
  %spec.select = select i1 %tobool25.not, i64 %conv27, i64 %ret.0
  br label %for.end134

if.end29:                                         ; preds = %if.end21
  %page = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %arrayidx, i64 0, i32 0
  %13 = load %struct.page*, %struct.page** %page, align 8
  %offset = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %10, i64 %idxprom, i32 1
  %14 = load i32, i32* %offset, align 8
  %conv30 = zext i32 %14 to i64
  %call31 = call i64 @copy_page_to_iter(%struct.page* noundef %13, i64 noundef %conv30, i64 noundef %chars.0, %struct.iov_iter* noundef %to) #14
  %cmp32 = icmp ult i64 %call31, %chars.0
  br i1 %cmp32, label %if.then41, label %if.end45, !prof !8

if.then41:                                        ; preds = %if.end29
  %tobool42.not = icmp eq i64 %ret.0, 0
  %spec.store.select159 = select i1 %tobool42.not, i64 -14, i64 %ret.0
  br label %for.end134

if.end45:                                         ; preds = %if.end29
  %add = add i64 %chars.0, %ret.0
  %15 = load i32, i32* %offset, align 8
  %16 = trunc i64 %chars.0 to i32
  %conv49 = add i32 %15, %16
  store i32 %conv49, i32* %offset, align 8
  %17 = load i32, i32* %len, align 4
  %conv53 = sub i32 %17, %16
  %flags54 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %10, i64 %idxprom, i32 4
  %18 = load i32, i32* %flags54, align 8
  %and55 = and i32 %18, 8
  %tobool56.not = icmp eq i32 %and55, 0
  %spec.store.select257 = select i1 %tobool56.not, i32 %conv53, i32 0
  store i32 %spec.store.select257, i32* %len, align 4
  %tobool61.not = icmp eq i32 %spec.store.select257, 0
  br i1 %tobool61.not, label %if.then62, label %if.end66

if.then62:                                        ; preds = %if.end45
  call fastcc void @pipe_buf_release(%struct.pipe_inode_info* noundef %2, %struct.pipe_buffer* noundef %arrayidx) #13
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #14
  %inc = add i32 %7, 1
  store i32 %inc, i32* %tail, align 4
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #14
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end45
  %tail5.0 = phi i32 [ %7, %if.end45 ], [ %inc, %if.then62 ]
  %19 = sub i64 %total_len.0, %chars.0
  %tobool68.not344 = icmp eq i64 %19, 0
  %not.tobool56.not = xor i1 %tobool56.not, true
  %tobool68.not = select i1 %not.tobool56.not, i1 true, i1 %tobool68.not344
  br i1 %tobool68.not, label %for.end134, label %cleanup

cleanup:                                          ; preds = %if.end66
  %call71 = call fastcc i1 @pipe_empty(i32 noundef %8, i32 noundef %tail5.0) #13
  br i1 %call71, label %if.end77, label %for.cond.backedge

if.end77:                                         ; preds = %cleanup, %for.cond
  %ret.3 = phi i64 [ %ret.0, %for.cond ], [ %add, %cleanup ]
  %total_len.3 = phi i64 [ %total_len.0, %for.cond ], [ %19, %cleanup ]
  %20 = load i32, i32* %writers, align 8
  %tobool78.not = icmp ne i32 %20, 0
  %tobool81.not = icmp eq i64 %ret.3, 0
  %or.cond = select i1 %tobool78.not, i1 %tobool81.not, i1 false
  br i1 %or.cond, label %if.end83, label %for.end134

if.end83:                                         ; preds = %if.end77
  %21 = load i32, i32* %f_flags, align 8
  %and84 = and i32 %21, 2048
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end87, label %for.end134

if.end87:                                         ; preds = %if.end83
  call fastcc void @__pipe_unlock(%struct.pipe_inode_info* noundef %2) #13
  br i1 %was_full.0.off0, label %if.then96, label %if.end97, !prof !8

if.then96:                                        ; preds = %if.end87
  call void @__wake_up_sync_key(%struct.wait_queue_head* noundef %wr_wait, i32 noundef 1, i8* noundef nonnull inttoptr (i64 260 to i8*)) #14
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end87
  call void @kill_fasync(%struct.fasync_struct** noundef %fasync_writers, i32 noundef 29, i32 noundef 2) #14
  %call101 = call fastcc i1 @pipe_readable(%struct.pipe_inode_info* noundef %2) #13
  br i1 %call101, label %if.end123, label %if.then102

if.then102:                                       ; preds = %if.end97
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false), !annotation !12
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call106306 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %rd_wait105, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call107307 = call fastcc i1 @pipe_readable(%struct.pipe_inode_info* noundef %2) #13
  br i1 %call107307, label %if.end118.thread, label %if.end109

if.end109:                                        ; preds = %if.then102, %cleanup113
  %call106308 = phi i64 [ %call106, %cleanup113 ], [ %call106306, %if.then102 ]
  %tobool110.not = icmp eq i64 %call106308, 0
  br i1 %tobool110.not, label %cleanup113, label %if.end118

cleanup113:                                       ; preds = %if.end109
  call void @schedule() #14
  %call106 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %rd_wait105, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call107 = call fastcc i1 @pipe_readable(%struct.pipe_inode_info* noundef %2) #13
  br i1 %call107, label %if.end118.thread, label %if.end109

if.end118.thread:                                 ; preds = %cleanup113, %if.then102
  call void @finish_wait(%struct.wait_queue_head* noundef %rd_wait105, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #15
  br label %if.end123

if.end118:                                        ; preds = %if.end109
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #15
  %22 = and i64 %call106308, 2147483648
  %cmp120.not = icmp eq i64 %22, 0
  br i1 %cmp120.not, label %if.end123, label %cleanup153

if.end123:                                        ; preds = %if.end118.thread, %if.end97, %if.end118
  call fastcc void @__pipe_lock(%struct.pipe_inode_info* noundef %2) #13
  %23 = load i32, i32* %head, align 8
  %24 = load i32, i32* %tail, align 4
  %25 = load i32, i32* %max_usage, align 8
  %call127 = call fastcc i1 @pipe_full(i32 noundef %23, i32 noundef %24, i32 noundef %25) #13
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end123, %cleanup
  %was_full.1.off0 = phi i1 [ %call127, %if.end123 ], [ %was_full.0.off0, %cleanup ]
  %wake_next_reader.1.off0 = phi i1 [ true, %if.end123 ], [ %wake_next_reader.0.off0, %cleanup ]
  %ret.4 = phi i64 [ 0, %if.end123 ], [ %add, %cleanup ]
  %total_len.4 = phi i64 [ %total_len.3, %if.end123 ], [ %19, %cleanup ]
  %.pre = load i32, i32* %head, align 8
  %.pre325 = load i32, i32* %tail, align 4
  br label %for.cond

for.end134:                                       ; preds = %if.end66, %if.end83, %if.end77, %if.then41, %if.then24, %if.then15
  %ret.4282 = phi i64 [ %spec.store.select159, %if.then41 ], [ %spec.select, %if.then24 ], [ %spec.store.select, %if.then15 ], [ %ret.3, %if.end77 ], [ -11, %if.end83 ], [ %add, %if.end66 ]
  %26 = load i32, i32* %head, align 8
  %27 = load i32, i32* %tail, align 4
  %call137 = call fastcc i1 @pipe_empty(i32 noundef %26, i32 noundef %27) #13
  %not.call137 = xor i1 %call137, true
  %spec.select260 = select i1 %not.call137, i1 %wake_next_reader.0.off0, i1 false
  call fastcc void @__pipe_unlock(%struct.pipe_inode_info* noundef %2) #13
  br i1 %was_full.0.off0, label %if.then141, label %if.end143

if.then141:                                       ; preds = %for.end134
  call void @__wake_up_sync_key(%struct.wait_queue_head* noundef %wr_wait, i32 noundef 1, i8* noundef nonnull inttoptr (i64 260 to i8*)) #14
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %for.end134
  br i1 %spec.select260, label %if.then145, label %if.end147

if.then145:                                       ; preds = %if.end143
  call void @__wake_up_sync_key(%struct.wait_queue_head* noundef %rd_wait105, i32 noundef 1, i8* noundef nonnull inttoptr (i64 65 to i8*)) #14
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %if.end143
  call void @kill_fasync(%struct.fasync_struct** noundef %fasync_writers, i32 noundef 29, i32 noundef 2) #14
  %cmp149 = icmp sgt i64 %ret.4282, 0
  br i1 %cmp149, label %if.then151, label %cleanup153

if.then151:                                       ; preds = %if.end147
  call fastcc void @file_accessed(%struct.file* noundef %0) #13
  br label %cleanup153

cleanup153:                                       ; preds = %if.end118, %if.end147, %if.then151, %entry
  %retval.2 = phi i64 [ 0, %entry ], [ %ret.4282, %if.then151 ], [ %ret.4282, %if.end147 ], [ -512, %if.end118 ]
  ret i64 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @pipe_write(%struct.kiocb* nocapture noundef readonly %iocb, %struct.iov_iter* noundef %from) #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 15
  %1 = bitcast i8** %private_data to %struct.pipe_inode_info**
  %2 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %1, align 8
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #13
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup235, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  call fastcc void @__pipe_lock(%struct.pipe_inode_info* noundef %2) #13
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 8
  %3 = load i32, i32* %readers, align 4
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !11
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %call5 = call i32 @send_sig(i32 noundef 13, %struct.task_struct* noundef %5, i32 noundef 0) #14
  br label %out

if.end6:                                          ; preds = %if.end
  %head7 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 3
  %6 = load i32, i32* %head7, align 8
  %tail = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 4
  %7 = load i32, i32* %tail, align 4
  %call8 = call fastcc i1 @pipe_empty(i32 noundef %6, i32 noundef %7) #13
  %and = and i64 %call, 4095
  %tobool9.not = icmp eq i64 %and, 0
  %brmerge = select i1 %tobool9.not, i1 true, i1 %call8
  br i1 %brmerge, label %if.end52, label %if.then11

if.then11:                                        ; preds = %if.end6
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 6
  %8 = load i32, i32* %ring_size, align 4
  %sub = add i32 %8, -1
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 17
  %9 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %sub12 = add i32 %6, -1
  %and13 = and i32 %sub, %sub12
  %idxprom = zext i32 %and13 to i64
  %arrayidx = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %9, i64 %idxprom
  %len = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %9, i64 %idxprom, i32 2
  %flags = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %9, i64 %idxprom, i32 4
  %10 = load i32, i32* %flags, align 8
  %and15 = and i32 %10, 16
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end52, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.then11
  %offset14 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %9, i64 %idxprom, i32 1
  %11 = load i32, i32* %offset14, align 8
  %12 = load i32, i32* %len, align 4
  %add = add i32 %12, %11
  %conv18 = sext i32 %add to i64
  %add19 = add nsw i64 %and, %conv18
  %cmp20 = icmp ult i64 %add19, 4097
  br i1 %cmp20, label %if.then22, label %if.end52

if.then22:                                        ; preds = %land.lhs.true17
  %call23 = call fastcc i32 @pipe_buf_confirm(%struct.pipe_inode_info* noundef %2, %struct.pipe_buffer* noundef %arrayidx) #13
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.then22
  %conv24 = sext i32 %call23 to i64
  br label %out

if.end27:                                         ; preds = %if.then22
  %page = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %arrayidx, i64 0, i32 0
  %13 = load %struct.page*, %struct.page** %page, align 8
  %call29 = call i64 @copy_page_from_iter(%struct.page* noundef %13, i64 noundef %conv18, i64 noundef %and, %struct.iov_iter* noundef %from) #14
  %cmp30 = icmp slt i64 %call29, %and
  br i1 %cmp30, label %out, label %if.end40, !prof !8

if.end40:                                         ; preds = %if.end27
  %14 = load i32, i32* %len, align 4
  %15 = trunc i64 %call29 to i32
  %conv44 = add i32 %14, %15
  store i32 %conv44, i32* %len, align 4
  %call45 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #13
  %tobool46.not = icmp eq i64 %call45, 0
  br i1 %tobool46.not, label %out, label %if.end52

if.end52:                                         ; preds = %if.end40, %land.lhs.true17, %if.then11, %if.end6
  %ret.2 = phi i64 [ 0, %if.end6 ], [ %call29, %if.end40 ], [ 0, %land.lhs.true17 ], [ 0, %if.then11 ]
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 5
  %ring_size67 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 6
  %tmp_page = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 14
  %rlock.i = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 1, i32 0, i32 0, i32 0
  %bufs70.le = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 17
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 7
  %rd_wait175 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 1
  %fasync_readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 15
  %16 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 2
  br label %for.cond.outer.outer

for.cond.outer.outer:                             ; preds = %if.end52, %if.end196
  %ret.3.ph.ph = phi i64 [ %ret.2, %if.end52 ], [ %ret.6, %if.end196 ]
  %was_empty.0.ph.ph.in = phi i1 [ %call8, %if.end52 ], [ %call200, %if.end196 ]
  %extract.t368 = phi i1 [ false, %if.end52 ], [ true, %if.end196 ]
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.outer, %if.end152
  %ret.3.ph = phi i64 [ %ret.6, %if.end152 ], [ %ret.3.ph.ph, %for.cond.outer.outer ]
  %17 = load i32, i32* %readers, align 4
  %tobool54.not431 = icmp eq i32 %17, 0
  br i1 %tobool54.not431, label %if.then55, label %if.end61

if.then55:                                        ; preds = %for.cond.outer, %cleanup146
  %18 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !11
  %19 = inttoptr i64 %18 to %struct.task_struct*
  %call57 = call i32 @send_sig(i32 noundef 13, %struct.task_struct* noundef %19, i32 noundef 0) #14
  %tobool58.not = icmp eq i64 %ret.3.ph, 0
  %spec.select400 = select i1 %tobool58.not, i64 -32, i64 %ret.3.ph
  br label %out

if.end61:                                         ; preds = %for.cond.outer, %cleanup146
  %20 = load i32, i32* %head7, align 8
  %21 = load i32, i32* %tail, align 4
  %22 = load i32, i32* %max_usage, align 8
  %call64 = call fastcc i1 @pipe_full(i32 noundef %20, i32 noundef %21, i32 noundef %22) #13
  br i1 %call64, label %if.end152, label %if.then65

if.then65:                                        ; preds = %if.end61
  %23 = load i32, i32* %ring_size67, align 4
  %24 = load %struct.page*, %struct.page** %tmp_page, align 8
  %tobool75.not = icmp eq %struct.page* %24, null
  br i1 %tobool75.not, label %if.then76, label %if.end92

if.then76:                                        ; preds = %if.then65
  %call77 = call fastcc %struct.page* @alloc_pages() #13
  %tobool78.not = icmp eq %struct.page* %call77, null
  br i1 %tobool78.not, label %if.then88, label %if.end90, !prof !8

if.then88:                                        ; preds = %if.then76
  %tobool89.not = icmp eq i64 %ret.3.ph, 0
  %. = select i1 %tobool89.not, i64 -12, i64 %ret.3.ph
  br label %out

if.end90:                                         ; preds = %if.then76
  store %struct.page* %call77, %struct.page** %tmp_page, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.end90, %if.then65
  %page74.0 = phi %struct.page* [ %24, %if.then65 ], [ %call77, %if.end90 ]
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #14
  %25 = load i32, i32* %head7, align 8
  %26 = load i32, i32* %tail, align 4
  %27 = load i32, i32* %max_usage, align 8
  %call96 = call fastcc i1 @pipe_full(i32 noundef %25, i32 noundef %26, i32 noundef %27) #13
  br i1 %call96, label %cleanup146, label %if.end100

if.end100:                                        ; preds = %if.end92
  %sub68.le = add i32 %23, -1
  %add101 = add i32 %25, 1
  store i32 %add101, i32* %head7, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #14
  %28 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs70.le, align 8
  %and106 = and i32 %25, %sub68.le
  %idxprom107 = zext i32 %and106 to i64
  %page109 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %28, i64 %idxprom107, i32 0
  store %struct.page* %page74.0, %struct.page** %page109, align 8
  %ops = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %28, i64 %idxprom107, i32 3
  store %struct.pipe_buf_operations* @anon_pipe_buf_ops, %struct.pipe_buf_operations** %ops, align 8
  %offset110 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %28, i64 %idxprom107, i32 1
  store i32 0, i32* %offset110, align 8
  %len111 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %28, i64 %idxprom107, i32 2
  store i32 0, i32* %len111, align 4
  %call112 = call fastcc i32 @is_packetized(%struct.file* noundef %0) #13
  %tobool113.not = icmp eq i32 %call112, 0
  %spec.select514 = select i1 %tobool113.not, i32 16, i32 8
  %29 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %28, i64 %idxprom107, i32 4
  store i32 %spec.select514, i32* %29, align 8
  store %struct.page* null, %struct.page** %tmp_page, align 8
  %call119 = call i64 @copy_page_from_iter(%struct.page* noundef nonnull %page74.0, i64 noundef 0, i64 noundef 4096, %struct.iov_iter* noundef %from) #14
  %conv120 = trunc i64 %call119 to i32
  %sext = shl i64 %call119, 32
  %conv121 = ashr exact i64 %sext, 32
  %cmp122 = icmp ult i64 %sext, 17592186044416
  br i1 %cmp122, label %land.rhs, label %if.end137

land.rhs:                                         ; preds = %if.end100
  %call124 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #13
  %tobool125.not = icmp eq i64 %call124, 0
  br i1 %tobool125.not, label %if.end137, label %if.then133, !prof !13

if.then133:                                       ; preds = %land.rhs
  %tobool134.not = icmp eq i64 %ret.3.ph, 0
  %spec.select = select i1 %tobool134.not, i64 -14, i64 %ret.3.ph
  br label %out

if.end137:                                        ; preds = %if.end100, %land.rhs
  %add139 = add i64 %conv121, %ret.3.ph
  store i32 0, i32* %offset110, align 8
  store i32 %conv120, i32* %len111, align 4
  %call142 = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #13
  %tobool143.not = icmp eq i64 %call142, 0
  br i1 %tobool143.not, label %out, label %if.end137.if.end152_crit_edge

if.end137.if.end152_crit_edge:                    ; preds = %if.end137
  %.pre = load i32, i32* %tail, align 4
  %.pre474 = load i32, i32* %max_usage, align 8
  br label %if.end152

cleanup146:                                       ; preds = %if.end92
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #14
  %30 = load i32, i32* %readers, align 4
  %tobool54.not = icmp eq i32 %30, 0
  br i1 %tobool54.not, label %if.then55, label %if.end61

if.end152:                                        ; preds = %if.end61, %if.end137.if.end152_crit_edge
  %31 = phi i32 [ %.pre474, %if.end137.if.end152_crit_edge ], [ %22, %if.end61 ]
  %32 = phi i32 [ %.pre, %if.end137.if.end152_crit_edge ], [ %21, %if.end61 ]
  %head.1 = phi i32 [ %25, %if.end137.if.end152_crit_edge ], [ %20, %if.end61 ]
  %ret.6 = phi i64 [ %add139, %if.end137.if.end152_crit_edge ], [ %ret.3.ph, %if.end61 ]
  %call155 = call fastcc i1 @pipe_full(i32 noundef %head.1, i32 noundef %32, i32 noundef %31) #13
  br i1 %call155, label %if.end157, label %for.cond.outer

if.end157:                                        ; preds = %if.end152
  %33 = load i32, i32* %f_flags, align 8
  %and158 = and i32 %33, 2048
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end164, label %if.then160

if.then160:                                       ; preds = %if.end157
  %tobool161.not = icmp eq i64 %ret.6, 0
  %spec.select401 = select i1 %tobool161.not, i64 -11, i64 %ret.6
  br label %out

if.end164:                                        ; preds = %if.end157
  %34 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !11
  %35 = inttoptr i64 %34 to %struct.task_struct*
  %call166 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %35) #13
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end172, label %if.then168

if.then168:                                       ; preds = %if.end164
  %tobool169.not = icmp eq i64 %ret.6, 0
  %spec.select402 = select i1 %tobool169.not, i64 -512, i64 %ret.6
  br label %out

if.end172:                                        ; preds = %if.end164
  call fastcc void @__pipe_unlock(%struct.pipe_inode_info* noundef %2) #13
  br i1 %was_empty.0.ph.ph.in, label %if.then174, label %if.end176

if.then174:                                       ; preds = %if.end172
  call void @__wake_up_sync_key(%struct.wait_queue_head* noundef %rd_wait175, i32 noundef 1, i8* noundef nonnull inttoptr (i64 65 to i8*)) #14
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %if.end172
  call void @kill_fasync(%struct.fasync_struct** noundef %fasync_readers, i32 noundef 29, i32 noundef 1) #14
  %call180 = call fastcc i1 @pipe_writable(%struct.pipe_inode_info* noundef %2) #13
  br i1 %call180, label %if.end196, label %if.then181

if.then181:                                       ; preds = %if.end176
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %16) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 40, i1 false), !annotation !12
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call184437 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %wr_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call185438 = call fastcc i1 @pipe_writable(%struct.pipe_inode_info* noundef %2) #13
  br i1 %call185438, label %for.end, label %if.end187

if.end187:                                        ; preds = %if.then181, %cleanup191
  %call184439 = phi i64 [ %call184, %cleanup191 ], [ %call184437, %if.then181 ]
  %tobool188.not = icmp eq i64 %call184439, 0
  br i1 %tobool188.not, label %cleanup191, label %__out

cleanup191:                                       ; preds = %if.end187
  call void @schedule() #14
  %call184 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %wr_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call185 = call fastcc i1 @pipe_writable(%struct.pipe_inode_info* noundef %2) #13
  br i1 %call185, label %for.end, label %if.end187

for.end:                                          ; preds = %cleanup191, %if.then181
  call void @finish_wait(%struct.wait_queue_head* noundef %wr_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %if.end187, %for.end
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %16) #15
  br label %if.end196

if.end196:                                        ; preds = %__out, %if.end176
  call fastcc void @__pipe_lock(%struct.pipe_inode_info* noundef %2) #13
  %36 = load i32, i32* %head7, align 8
  %37 = load i32, i32* %tail, align 4
  %call200 = call fastcc i1 @pipe_empty(i32 noundef %36, i32 noundef %37) #13
  br label %for.cond.outer.outer

out:                                              ; preds = %if.end137, %if.then88, %if.then133, %if.then168, %if.then160, %if.then55, %if.end40, %if.end27, %if.then26, %if.then3
  %ret.7 = phi i64 [ -32, %if.then3 ], [ %call29, %if.end40 ], [ -14, %if.end27 ], [ %conv24, %if.then26 ], [ %spec.select400, %if.then55 ], [ %spec.select401, %if.then160 ], [ %spec.select402, %if.then168 ], [ %., %if.then88 ], [ %spec.select, %if.then133 ], [ %add139, %if.end137 ]
  %was_empty.1.off0 = phi i1 [ false, %if.then3 ], [ false, %if.end40 ], [ false, %if.end27 ], [ false, %if.then26 ], [ %was_empty.0.ph.ph.in, %if.then55 ], [ %was_empty.0.ph.ph.in, %if.then160 ], [ %was_empty.0.ph.ph.in, %if.then168 ], [ %was_empty.0.ph.ph.in, %if.then88 ], [ %was_empty.0.ph.ph.in, %if.then133 ], [ %was_empty.0.ph.ph.in, %if.end137 ]
  %wake_next_writer.1.off0 = phi i1 [ false, %if.then3 ], [ false, %if.end40 ], [ false, %if.end27 ], [ false, %if.then26 ], [ %extract.t368, %if.then55 ], [ %extract.t368, %if.then160 ], [ %extract.t368, %if.then168 ], [ %extract.t368, %if.then88 ], [ %extract.t368, %if.then133 ], [ %extract.t368, %if.end137 ]
  %head203 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 3
  %38 = load i32, i32* %head203, align 8
  %tail204 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 4
  %39 = load i32, i32* %tail204, align 4
  %max_usage205 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 5
  %40 = load i32, i32* %max_usage205, align 8
  %call206 = call fastcc i1 @pipe_full(i32 noundef %38, i32 noundef %39, i32 noundef %40) #13
  %not.call206 = xor i1 %call206, true
  %spec.select377 = and i1 %wake_next_writer.1.off0, %not.call206
  call fastcc void @__pipe_unlock(%struct.pipe_inode_info* noundef %2) #13
  br i1 %was_empty.1.off0, label %if.then212, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %out
  %poll_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 13
  %41 = load i32, i32* %poll_usage, align 8
  %tobool211.not = icmp eq i32 %41, 0
  br i1 %tobool211.not, label %if.end214, label %if.then212

if.then212:                                       ; preds = %lor.lhs.false, %out
  %rd_wait213 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 1
  call void @__wake_up_sync_key(%struct.wait_queue_head* noundef %rd_wait213, i32 noundef 1, i8* noundef nonnull inttoptr (i64 65 to i8*)) #14
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %lor.lhs.false
  %fasync_readers215 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 15
  call void @kill_fasync(%struct.fasync_struct** noundef %fasync_readers215, i32 noundef 29, i32 noundef 1) #14
  br i1 %spec.select377, label %if.then217, label %if.end219

if.then217:                                       ; preds = %if.end214
  %wr_wait218 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 2
  call void @__wake_up_sync_key(%struct.wait_queue_head* noundef %wr_wait218, i32 noundef 1, i8* noundef nonnull inttoptr (i64 260 to i8*)) #14
  br label %if.end219

if.end219:                                        ; preds = %if.then217, %if.end214
  %cmp220 = icmp sgt i64 %ret.7, 0
  br i1 %cmp220, label %land.lhs.true222, label %cleanup235

land.lhs.true222:                                 ; preds = %if.end219
  %call223 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %0) #13
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call223, i64 0, i32 6
  %42 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call224 = call fastcc i1 @sb_start_write_trylock(%struct.super_block* noundef %42) #13
  br i1 %call224, label %if.then226, label %cleanup235

if.then226:                                       ; preds = %land.lhs.true222
  %call227 = call i32 @file_update_time(%struct.file* noundef %0) #14
  %tobool228.not = icmp eq i32 %call227, 0
  %conv230 = sext i32 %call227 to i64
  %spec.select378 = select i1 %tobool228.not, i64 %ret.7, i64 %conv230
  %call232 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %0) #13
  %i_sb233 = getelementptr inbounds %struct.inode, %struct.inode* %call232, i64 0, i32 6
  %43 = load %struct.super_block*, %struct.super_block** %i_sb233, align 8
  call fastcc void @sb_end_write(%struct.super_block* noundef %43) #13
  br label %cleanup235

cleanup235:                                       ; preds = %if.end219, %land.lhs.true222, %if.then226, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %spec.select378, %if.then226 ], [ %ret.7, %land.lhs.true222 ], [ %ret.7, %if.end219 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pipe_poll(%struct.file* noundef %filp, %struct.poll_table_struct* noundef %wait) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %0, align 8
  %poll_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 13
  store i32 1, i32* %poll_usage, align 8
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 8
  %2 = load i32, i32* %f_mode, align 4
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 1
  call fastcc void @poll_wait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %rd_wait, %struct.poll_table_struct* noundef %wait) #13
  %.pre = load i32, i32* %f_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = phi i32 [ %.pre, %if.then ], [ %2, %entry ]
  %and2 = and i32 %3, 2
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.end, label %if.then4

if.then4:                                         ; preds = %if.end
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 2
  call fastcc void @poll_wait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %wr_wait, %struct.poll_table_struct* noundef %wait) #13
  %.pre66 = load i32, i32* %f_mode, align 4
  br label %do.end

do.end:                                           ; preds = %if.end, %if.then4
  %4 = phi i32 [ %3, %if.end ], [ %.pre66, %if.then4 ]
  %head6 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 3
  %5 = load volatile i32, i32* %head6, align 8
  %tail11 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 4
  %6 = load volatile i32, i32* %tail11, align 4
  %and13 = and i32 %4, 1
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end23, label %if.then15

if.then15:                                        ; preds = %do.end
  %call = call fastcc i1 @pipe_empty(i32 noundef %5, i32 noundef %6) #13
  %spec.select = select i1 %call, i32 0, i32 65
  %writers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 9
  %7 = load i32, i32* %writers, align 8
  %tobool18.not = icmp eq i32 %7, 0
  br i1 %tobool18.not, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.then15
  %f_version = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 14
  %8 = load i64, i64* %f_version, align 8
  %w_counter = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 12
  %9 = load i32, i32* %w_counter, align 4
  %conv = zext i32 %9 to i64
  %cmp.not = icmp eq i64 %8, %conv
  %or21 = or i32 %spec.select, 16
  %spec.select63 = select i1 %cmp.not, i32 %spec.select, i32 %or21
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true, %if.then15, %do.end
  %mask.1 = phi i32 [ %spec.select, %if.then15 ], [ 0, %do.end ], [ %spec.select63, %land.lhs.true ]
  %and25 = and i32 %4, 2
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end36, label %if.then27

if.then27:                                        ; preds = %if.end23
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 5
  %10 = load i32, i32* %max_usage, align 8
  %call28 = call fastcc i1 @pipe_full(i32 noundef %5, i32 noundef %6, i32 noundef %10) #13
  %or30 = or i32 %mask.1, 260
  %spec.select64 = select i1 %call28, i32 %mask.1, i32 %or30
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 8
  %11 = load i32, i32* %readers, align 4
  %tobool32.not = icmp eq i32 %11, 0
  %or34 = or i32 %spec.select64, 8
  %spec.select65 = select i1 %tobool32.not, i32 %or34, i32 %spec.select64
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %if.end23
  %mask.3 = phi i32 [ %mask.1, %if.end23 ], [ %spec.select65, %if.then27 ]
  ret i32 %mask.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @pipe_ioctl(%struct.file* nocapture noundef readonly %filp, i32 noundef %cmd, i64 noundef %arg) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %0, align 8
  %cond = icmp eq i32 %cmd, 21531
  br i1 %cond, label %sw.bb, label %cleanup

sw.bb:                                            ; preds = %entry
  call fastcc void @__pipe_lock(%struct.pipe_inode_info* noundef %1) #13
  %head1 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 3
  %2 = load i32, i32* %head1, align 8
  %tail2 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 4
  %3 = load i32, i32* %tail2, align 4
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 6
  %4 = load i32, i32* %ring_size, align 4
  %sub = add i32 %4, -1
  %cmp.not35 = icmp eq i32 %2, %3
  br i1 %cmp.not35, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %sw.bb
  %bufs = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 17
  %5 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs, align 8
  %6 = sub i32 %2, %3
  %min.iters.check = icmp ult i32 %6, 2
  br i1 %min.iters.check, label %while.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %while.body.lr.ph
  %n.vec = and i32 %6, -2
  %ind.end = add i32 %3, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi i32 [ 0, %vector.ph ], [ %15, %vector.body ]
  %vec.phi39 = phi i32 [ 0, %vector.ph ], [ %16, %vector.body ]
  %offset.idx = add i32 %3, %index
  %induction38 = add i32 %offset.idx, 1
  %7 = and i32 %offset.idx, %sub
  %8 = and i32 %induction38, %sub
  %9 = sext i32 %7 to i64
  %10 = sext i32 %8 to i64
  %11 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %5, i64 %9, i32 2
  %12 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %5, i64 %10, i32 2
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %12, align 4
  %15 = add i32 %13, %vec.phi
  %16 = add i32 %14, %vec.phi39
  %index.next = add nuw i32 %index, 2
  %17 = icmp eq i32 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add i32 %16, %15
  %cmp.n = icmp eq i32 %6, %n.vec
  br i1 %cmp.n, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %while.body.lr.ph, %middle.block
  %tail.037.ph = phi i32 [ %3, %while.body.lr.ph ], [ %ind.end, %middle.block ]
  %count.036.ph = phi i32 [ 0, %while.body.lr.ph ], [ %bin.rdx, %middle.block ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %tail.037 = phi i32 [ %inc, %while.body ], [ %tail.037.ph, %while.body.preheader ]
  %count.036 = phi i32 [ %add, %while.body ], [ %count.036.ph, %while.body.preheader ]
  %and = and i32 %tail.037, %sub
  %idxprom = sext i32 %and to i64
  %len = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %5, i64 %idxprom, i32 2
  %18 = load i32, i32* %len, align 4
  %add = add i32 %18, %count.036
  %inc = add i32 %tail.037, 1
  %cmp.not = icmp eq i32 %inc, %2
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !16

while.end:                                        ; preds = %while.body, %middle.block, %sw.bb
  %count.0.lcssa = phi i32 [ 0, %sw.bb ], [ %bin.rdx, %middle.block ], [ %add, %while.body ]
  call fastcc void @__pipe_unlock(%struct.pipe_inode_info* noundef %1) #13
  %19 = inttoptr i64 %arg to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %19, i64 noundef 4) #13
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %while.end
  %call3 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %19) #13
  %20 = bitcast i8* %call3 to i32*
  %21 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %count.0.lcssa, i32* %20, i32 -14, i32 0) #15, !srcloc !17
  %phi.cast = sext i32 %21 to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then, %while.end
  %retval.0 = phi i64 [ %phi.cast, %if.then ], [ -14, %while.end ], [ -515, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @fifo_open(%struct.inode* noundef %inode, %struct.file* noundef %filp) #0 {
entry:
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_magic = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 12
  %1 = load i64, i64* %s_magic, align 32
  %cmp = icmp eq i64 %1, 1346981957
  %f_version = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 14
  store i64 0, i64* %f_version, align 8
  %rlock.i = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 15, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  %i_pipe = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 40, i32 0
  %2 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %i_pipe, align 8
  %tobool.not = icmp eq %struct.pipe_inode_info* %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %files = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %2, i64 0, i32 10
  %3 = load i32, i32* %files, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %files, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  br label %if.end22

if.else:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  %call = call %struct.pipe_inode_info* @alloc_pipe_info() #13
  %tobool4.not = icmp eq %struct.pipe_inode_info* %call, null
  br i1 %tobool4.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.else
  %files6 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %call, i64 0, i32 10
  store i32 1, i32* %files6, align 4
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  %4 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %i_pipe, align 8
  %tobool9.not = icmp eq %struct.pipe_inode_info* %4, null
  br i1 %tobool9.not, label %if.else18, label %if.then12, !prof !13

if.then12:                                        ; preds = %if.end
  %files14 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %4, i64 0, i32 10
  %5 = load i32, i32* %files14, align 4
  %inc15 = add i32 %5, 1
  store i32 %inc15, i32* %files14, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  call void @free_pipe_info(%struct.pipe_inode_info* noundef nonnull %call) #13
  %6 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %i_pipe, align 8
  br label %if.end22

if.else18:                                        ; preds = %if.end
  store %struct.pipe_inode_info* %call, %struct.pipe_inode_info** %i_pipe, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %if.else18, %if.then
  %pipe.0 = phi %struct.pipe_inode_info* [ %2, %if.then ], [ %6, %if.then12 ], [ %call, %if.else18 ]
  %private_data = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 15
  %7 = bitcast i8** %private_data to %struct.pipe_inode_info**
  store %struct.pipe_inode_info* %pipe.0, %struct.pipe_inode_info** %7, align 8
  call fastcc void @__pipe_lock(%struct.pipe_inode_info* noundef %pipe.0) #13
  %call23 = call i32 @stream_open(%struct.inode* noundef %inode, %struct.file* noundef %filp) #14
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 8
  %8 = load i32, i32* %f_mode, align 4
  %and = and i32 %8, 3
  switch i32 %and, label %err [
    i32 1, label %sw.bb
    i32 2, label %sw.bb46
    i32 3, label %sw.bb75
  ]

sw.bb:                                            ; preds = %if.end22
  %r_counter = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 11
  %9 = load i32, i32* %r_counter, align 8
  %inc24 = add i32 %9, 1
  store i32 %inc24, i32* %r_counter, align 8
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 8
  %10 = load i32, i32* %readers, align 4
  %inc25 = add i32 %10, 1
  store i32 %inc25, i32* %readers, align 4
  %cmp26 = icmp eq i32 %10, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %sw.bb
  call fastcc void @wake_up_partner(%struct.pipe_inode_info* noundef %pipe.0) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %sw.bb
  br i1 %cmp, label %sw.epilog, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end29
  %writers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 9
  %11 = load i32, i32* %writers, align 8
  %tobool31.not = icmp eq i32 %11, 0
  br i1 %tobool31.not, label %if.then32, label %sw.epilog

if.then32:                                        ; preds = %land.lhs.true
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %12 = load i32, i32* %f_flags, align 8
  %and33 = and i32 %12, 2048
  %tobool34.not = icmp eq i32 %and33, 0
  %w_counter39 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 12
  br i1 %tobool34.not, label %if.else38, label %if.then35

if.then35:                                        ; preds = %if.then32
  %13 = load i32, i32* %w_counter39, align 4
  %conv36 = zext i32 %13 to i64
  store i64 %conv36, i64* %f_version, align 8
  br label %sw.epilog

if.else38:                                        ; preds = %if.then32
  %call40 = call fastcc i32 @wait_for_partner(%struct.pipe_inode_info* noundef %pipe.0, i32* noundef %w_counter39) #13
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %sw.epilog, label %err_rd

sw.bb46:                                          ; preds = %if.end22
  br i1 %cmp, label %if.end56, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %sw.bb46
  %f_flags49 = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %14 = load i32, i32* %f_flags49, align 8
  %and50 = and i32 %14, 2048
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end56, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true48
  %readers53 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 8
  %15 = load i32, i32* %readers53, align 4
  %tobool54.not = icmp eq i32 %15, 0
  br i1 %tobool54.not, label %err, label %if.end56

if.end56:                                         ; preds = %land.lhs.true52, %land.lhs.true48, %sw.bb46
  %w_counter57 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 12
  %16 = load i32, i32* %w_counter57, align 4
  %inc58 = add i32 %16, 1
  store i32 %inc58, i32* %w_counter57, align 4
  %writers59 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 9
  %17 = load i32, i32* %writers59, align 8
  %inc60 = add i32 %17, 1
  store i32 %inc60, i32* %writers59, align 8
  %tobool61.not = icmp eq i32 %17, 0
  br i1 %tobool61.not, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end56
  call fastcc void @wake_up_partner(%struct.pipe_inode_info* noundef %pipe.0) #13
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end56
  br i1 %cmp, label %sw.epilog, label %land.lhs.true65

land.lhs.true65:                                  ; preds = %if.end63
  %readers66 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 8
  %18 = load i32, i32* %readers66, align 4
  %tobool67.not = icmp eq i32 %18, 0
  br i1 %tobool67.not, label %if.then68, label %sw.epilog

if.then68:                                        ; preds = %land.lhs.true65
  %r_counter69 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 11
  %call70 = call fastcc i32 @wait_for_partner(%struct.pipe_inode_info* noundef %pipe.0, i32* noundef %r_counter69) #13
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %sw.epilog, label %err_wr

sw.bb75:                                          ; preds = %if.end22
  %readers76 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 8
  %19 = load i32, i32* %readers76, align 4
  %inc77 = add i32 %19, 1
  store i32 %inc77, i32* %readers76, align 4
  %writers78 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 9
  %20 = load i32, i32* %writers78, align 8
  %inc79 = add i32 %20, 1
  store i32 %inc79, i32* %writers78, align 8
  %r_counter80 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 11
  %21 = load i32, i32* %r_counter80, align 8
  %inc81 = add i32 %21, 1
  store i32 %inc81, i32* %r_counter80, align 8
  %w_counter82 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 12
  %22 = load i32, i32* %w_counter82, align 4
  %inc83 = add i32 %22, 1
  store i32 %inc83, i32* %w_counter82, align 4
  %cmp85 = icmp eq i32 %19, 0
  %cmp88 = icmp eq i32 %20, 0
  %or.cond = select i1 %cmp85, i1 true, i1 %cmp88
  br i1 %or.cond, label %if.then90, label %sw.epilog

if.then90:                                        ; preds = %sw.bb75
  call fastcc void @wake_up_partner(%struct.pipe_inode_info* noundef %pipe.0) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb75, %if.then90, %if.end63, %land.lhs.true65, %if.then68, %if.end29, %land.lhs.true, %if.else38, %if.then35
  call fastcc void @__pipe_unlock(%struct.pipe_inode_info* noundef %pipe.0) #13
  br label %cleanup

err_rd:                                           ; preds = %if.else38
  %23 = load i32, i32* %readers, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %readers, align 4
  %tobool93.not = icmp eq i32 %dec, 0
  br i1 %tobool93.not, label %if.then94, label %err

if.then94:                                        ; preds = %err_rd
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 2
  call void @__wake_up(%struct.wait_queue_head* noundef %wr_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #14
  br label %err

err_wr:                                           ; preds = %if.then68
  %24 = load i32, i32* %writers59, align 8
  %dec97 = add i32 %24, -1
  store i32 %dec97, i32* %writers59, align 8
  %tobool98.not = icmp eq i32 %dec97, 0
  br i1 %tobool98.not, label %if.then99, label %err

if.then99:                                        ; preds = %err_wr
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe.0, i64 0, i32 1
  call void @__wake_up(%struct.wait_queue_head* noundef %rd_wait, i32 noundef 1, i32 noundef 0, i8* noundef null) #14
  br label %err

err:                                              ; preds = %err_wr, %if.then99, %err_rd, %if.then94, %if.end22, %land.lhs.true52
  %ret.0 = phi i32 [ -6, %land.lhs.true52 ], [ -22, %if.end22 ], [ -512, %if.then94 ], [ -512, %err_rd ], [ -512, %if.then99 ], [ -512, %err_wr ]
  call fastcc void @__pipe_unlock(%struct.pipe_inode_info* noundef %pipe.0) #13
  call fastcc void @put_pipe_info(%struct.inode* noundef %inode, %struct.pipe_inode_info* noundef %pipe.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %err, %sw.epilog
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %sw.epilog ], [ -12, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pipe_release(%struct.inode* noundef %inode, %struct.file* nocapture noundef readonly %file) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %0, align 8
  call fastcc void @__pipe_lock(%struct.pipe_inode_info* noundef %1) #13
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %2 = load i32, i32* %f_mode, align 4
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 8
  %3 = load i32, i32* %readers, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* %readers, align 4
  %.pre = load i32, i32* %f_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi i32 [ %.pre, %if.then ], [ %2, %entry ]
  %and2 = and i32 %4, 2
  %tobool3.not = icmp eq i32 %and2, 0
  %writers9.phi.trans.insert = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 9
  %.pre28 = load i32, i32* %writers9.phi.trans.insert, align 8
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %dec5 = add i32 %.pre28, -1
  store i32 %dec5, i32* %writers9.phi.trans.insert, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then4
  %5 = phi i32 [ %dec5, %if.then4 ], [ %.pre28, %if.end ]
  %readers7 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 8
  %6 = load i32, i32* %readers7, align 4
  %tobool8.not = icmp ne i32 %6, 0
  %tobool10.not = icmp eq i32 %5, 0
  %cmp.not = xor i1 %tobool8.not, %tobool10.not
  br i1 %cmp.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end6
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 1
  call void @__wake_up(%struct.wait_queue_head* noundef %rd_wait, i32 noundef 1, i32 noundef 0, i8* noundef null) #14
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 2
  call void @__wake_up(%struct.wait_queue_head* noundef %wr_wait, i32 noundef 1, i32 noundef 0, i8* noundef null) #14
  %fasync_readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 15
  call void @kill_fasync(%struct.fasync_struct** noundef %fasync_readers, i32 noundef 29, i32 noundef 1) #14
  %fasync_writers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 16
  call void @kill_fasync(%struct.fasync_struct** noundef %fasync_writers, i32 noundef 29, i32 noundef 2) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end6
  call fastcc void @__pipe_unlock(%struct.pipe_inode_info* noundef %1) #13
  call fastcc void @put_pipe_info(%struct.inode* noundef %inode, %struct.pipe_inode_info* noundef %1) #13
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pipe_fasync(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %on) #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %0, align 8
  call fastcc void @__pipe_lock(%struct.pipe_inode_info* noundef %1) #13
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 8
  %2 = load i32, i32* %f_mode, align 4
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fasync_readers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 15
  %call = call i32 @fasync_helper(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %on, %struct.fasync_struct** noundef %fasync_readers) #14
  %.pre = load i32, i32* %f_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = phi i32 [ %.pre, %if.then ], [ %2, %entry ]
  %retval1.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  %and3 = and i32 %3, 2
  %tobool4 = icmp ne i32 %and3, 0
  %cmp = icmp sgt i32 %retval1.0, -1
  %or.cond = select i1 %tobool4, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then5, label %if.end16

if.then5:                                         ; preds = %if.end
  %fasync_writers = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 16
  %call6 = call i32 @fasync_helper(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %on, %struct.fasync_struct** noundef %fasync_writers) #14
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true8, label %if.end16

land.lhs.true8:                                   ; preds = %if.then5
  %4 = load i32, i32* %f_mode, align 4
  %and10 = and i32 %4, 1
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end16, label %if.then12

if.then12:                                        ; preds = %land.lhs.true8
  %fasync_readers13 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %1, i64 0, i32 15
  %call14 = call i32 @fasync_helper(i32 noundef -1, %struct.file* noundef %filp, i32 noundef 0, %struct.fasync_struct** noundef %fasync_readers13) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then5, %land.lhs.true8, %if.then12, %if.end
  %retval1.1 = phi i32 [ %call6, %if.then12 ], [ %call6, %land.lhs.true8 ], [ %call6, %if.then5 ], [ %retval1.0, %if.end ]
  call fastcc void @__pipe_unlock(%struct.pipe_inode_info* noundef %1) #13
  ret i32 %retval1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iter_file_splice_write(%struct.pipe_inode_info* noundef, %struct.file* noundef, i64* noundef, i64 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @round_pipe_size(i64 noundef %size) local_unnamed_addr #6 {
entry:
  %cmp = icmp ugt i64 %size, 2147483648
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ult i64 %size, 4096
  br i1 %cmp1, label %return, label %cond.end21

cond.end21:                                       ; preds = %if.end
  %call20 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %size) #17
  %conv = trunc i64 %call20 to i32
  br label %return

return:                                           ; preds = %if.end, %entry, %cond.end21
  %retval.0 = phi i32 [ %conv, %cond.end21 ], [ 0, %entry ], [ 4096, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__roundup_pow_of_two(i64 noundef %n) unnamed_addr #6 {
entry:
  %sub = add i64 %n, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #13
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pipe_resize_ring(%struct.pipe_inode_info* noundef %pipe, i32 noundef %nr_slots) local_unnamed_addr #0 {
entry:
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 6
  %0 = load i32, i32* %ring_size, align 4
  %sub = add i32 %0, -1
  %head1 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 3
  %1 = load i32, i32* %head1, align 8
  %tail2 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 4
  %2 = load i32, i32* %tail2, align 4
  %call = call fastcc i32 @pipe_occupancy(i32 noundef %1, i32 noundef %2) #13
  %cmp = icmp ugt i32 %call, %nr_slots
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = zext i32 %nr_slots to i64
  %call5 = call fastcc i8* @kcalloc(i64 noundef %conv, i32 noundef 4205760) #13
  %3 = bitcast i8* %call5 to %struct.pipe_buffer*
  %tobool.not = icmp eq i8* %call5, null
  br i1 %tobool.not, label %cleanup, label %if.end11, !prof !8

if.end11:                                         ; preds = %if.end
  %cmp12.not = icmp eq i32 %call, 0
  br i1 %cmp12.not, label %if.end41, label %if.then14

if.then14:                                        ; preds = %if.end11
  %and = and i32 %1, %sub
  %and15 = and i32 %2, %sub
  %cmp16 = icmp ugt i32 %and, %and15
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then14
  %bufs19 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 17
  %4 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs19, align 8
  %idx.ext = zext i32 %and15 to i64
  %add.ptr = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %4, i64 %idx.ext
  %conv20 = zext i32 %call to i64
  br label %if.end41.sink.split

if.else:                                          ; preds = %if.then14
  %5 = load i32, i32* %ring_size, align 4
  %sub23 = sub i32 %5, %and15
  %cmp24.not = icmp eq i32 %and, 0
  %.pre = zext i32 %sub23 to i64
  br i1 %cmp24.not, label %if.end33, label %if.then26

if.then26:                                        ; preds = %if.else
  %add.ptr28 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %3, i64 %.pre
  %6 = bitcast %struct.pipe_buffer* %add.ptr28 to i8*
  %bufs29 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 17
  %7 = bitcast %struct.pipe_buffer** %bufs29 to i8**
  %8 = load i8*, i8** %7, align 8
  %conv30 = zext i32 %and to i64
  %mul31 = mul nuw nsw i64 %conv30, 40
  %call32 = call i8* @memcpy(i8* noundef %6, i8* noundef %8, i64 noundef %mul31) #14
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then26
  %bufs34 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 17
  %9 = load %struct.pipe_buffer*, %struct.pipe_buffer** %bufs34, align 8
  %idx.ext35 = zext i32 %and15 to i64
  %add.ptr36 = getelementptr %struct.pipe_buffer, %struct.pipe_buffer* %9, i64 %idx.ext35
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.end33, %if.then18
  %conv20.sink = phi i64 [ %conv20, %if.then18 ], [ %.pre, %if.end33 ]
  %.sink.in = phi %struct.pipe_buffer* [ %add.ptr, %if.then18 ], [ %add.ptr36, %if.end33 ]
  %.sink = bitcast %struct.pipe_buffer* %.sink.in to i8*
  %mul = mul nuw nsw i64 %conv20.sink, 40
  %call21 = call i8* @memcpy(i8* noundef nonnull %call5, i8* noundef %.sink, i64 noundef %mul) #14
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.end11
  %bufs42 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 17
  %10 = bitcast %struct.pipe_buffer** %bufs42 to i8**
  %11 = load i8*, i8** %10, align 8
  call void @kfree(i8* noundef %11) #14
  store i8* %call5, i8** %10, align 8
  store i32 %nr_slots, i32* %ring_size, align 4
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 5
  %12 = load i32, i32* %max_usage, align 8
  %cmp45 = icmp ugt i32 %12, %nr_slots
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end41
  store i32 %nr_slots, i32* %max_usage, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end41
  store i32 0, i32* %tail2, align 4
  store i32 %call, i32* %head1, align 8
  %wr_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 2
  call void @__wake_up(%struct.wait_queue_head* noundef %wr_wait, i32 noundef 1, i32 noundef 1, i8* noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end49
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -16, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pipe_occupancy(i32 noundef %head, i32 noundef %tail) unnamed_addr #4 {
entry:
  %sub = sub i32 %head, %tail
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.pipe_inode_info* @get_pipe_info(%struct.file* nocapture noundef readonly %file, i1 %for_splice) local_unnamed_addr #8 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.pipe_inode_info**
  %1 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %0, align 8
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %2 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %cmp = icmp eq %struct.file_operations* %2, @pipefifo_fops
  %tobool = icmp ne %struct.pipe_inode_info* %1, null
  %or.cond = select i1 %cmp, i1 %tobool, i1 false
  %. = select i1 %or.cond, %struct.pipe_inode_info* %1, %struct.pipe_inode_info* null
  ret %struct.pipe_inode_info* %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @pipe_fcntl(%struct.file* nocapture noundef readonly %file, i32 noundef %cmd, i64 noundef %arg) local_unnamed_addr #0 {
entry:
  %call = call %struct.pipe_inode_info* @get_pipe_info(%struct.file* noundef %file, i1 undef) #13
  %tobool.not = icmp eq %struct.pipe_inode_info* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__pipe_lock(%struct.pipe_inode_info* noundef nonnull %call) #13
  switch i32 %cmd, label %sw.epilog [
    i32 1031, label %sw.bb
    i32 1032, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  %call1 = call fastcc i64 @pipe_set_size(%struct.pipe_inode_info* noundef nonnull %call, i64 noundef %arg) #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %call, i64 0, i32 5
  %0 = load i32, i32* %max_usage, align 8
  %conv = zext i32 %0 to i64
  %mul = shl nuw nsw i64 %conv, 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  %ret.0 = phi i64 [ %mul, %sw.bb2 ], [ %call1, %sw.bb ], [ -22, %if.end ]
  call fastcc void @__pipe_unlock(%struct.pipe_inode_info* noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog
  %retval.0 = phi i64 [ %ret.0, %sw.epilog ], [ -9, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pipe_lock(%struct.pipe_inode_info* noundef %pipe) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 0
  call void @mutex_lock(%struct.mutex* noundef %mutex) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @pipe_set_size(%struct.pipe_inode_info* noundef %pipe, i64 noundef %arg) unnamed_addr #0 {
entry:
  %call = call i32 @round_pipe_size(i64 noundef %arg) #13
  %shr = lshr i32 %call, 12
  %tobool.not = icmp ult i32 %call, 4096
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 5
  %0 = load i32, i32* %max_usage, align 8
  %cmp = icmp ugt i32 %shr, %0
  %1 = load i32, i32* @pipe_max_size, align 4
  %cmp1 = icmp ugt i32 %call, %1
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %land.lhs.true2, label %if.end5

land.lhs.true2:                                   ; preds = %if.end
  %call3 = call i1 @capable(i32 noundef 24) #14
  br i1 %call3, label %if.end5, label %cleanup

if.end5:                                          ; preds = %land.lhs.true2, %if.end
  %user = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 18
  %2 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  %nr_accounted = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 7
  %3 = load i32, i32* %nr_accounted, align 8
  %conv = zext i32 %3 to i64
  %conv6 = zext i32 %shr to i64
  %call7 = call i64 @account_pipe_buffers(%struct.user_struct* noundef %2, i64 noundef %conv, i64 noundef %conv6) #13
  %4 = load i32, i32* %max_usage, align 8
  %cmp9 = icmp ugt i32 %shr, %4
  br i1 %cmp9, label %land.lhs.true11, label %if.end20

land.lhs.true11:                                  ; preds = %if.end5
  %call12 = call i1 @too_many_pipe_buffers_hard(i64 noundef %call7) #13
  br i1 %call12, label %land.lhs.true16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true11
  %call14 = call i1 @too_many_pipe_buffers_soft(i64 noundef %call7) #13
  br i1 %call14, label %land.lhs.true16, label %if.end20

land.lhs.true16:                                  ; preds = %lor.lhs.false, %land.lhs.true11
  %call17 = call i1 @pipe_is_unprivileged_user() #13
  br i1 %call17, label %out_revert_acct, label %if.end20

if.end20:                                         ; preds = %land.lhs.true16, %lor.lhs.false, %if.end5
  %call21 = call i32 @pipe_resize_ring(%struct.pipe_inode_info* noundef %pipe, i32 noundef %shr) #13
  %conv22 = sext i32 %call21 to i64
  %cmp23 = icmp slt i32 %call21, 0
  br i1 %cmp23, label %out_revert_acct, label %if.end26

if.end26:                                         ; preds = %if.end20
  store i32 %shr, i32* %max_usage, align 8
  store i32 %shr, i32* %nr_accounted, align 8
  %5 = and i32 %call, -4096
  %mul = zext i32 %5 to i64
  br label %cleanup

out_revert_acct:                                  ; preds = %land.lhs.true16, %if.end20
  %ret.0 = phi i64 [ %conv22, %if.end20 ], [ -1, %land.lhs.true16 ]
  %6 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  %7 = load i32, i32* %nr_accounted, align 8
  %conv34 = zext i32 %7 to i64
  %call35 = call i64 @account_pipe_buffers(%struct.user_struct* noundef %6, i64 noundef %conv6, i64 noundef %conv34) #13
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true2, %entry, %out_revert_acct, %if.end26
  %retval.0 = phi i64 [ %ret.0, %out_revert_acct ], [ %mul, %if.end26 ], [ -22, %entry ], [ -1, %land.lhs.true2 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pipe_unlock(%struct.pipe_inode_info* noundef %pipe) unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 0
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #14
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @init_pipe_fs() #9 section ".init.text" {
entry:
  %call = call i32 @register_filesystem(%struct.file_system_type* noundef nonnull @pipe_fs_type) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call1 = call %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef nonnull @pipe_fs_type) #14
  store %struct.vfsmount* %call1, %struct.vfsmount** @pipe_mnt, align 8
  %0 = bitcast %struct.vfsmount* %call1 to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %0) #13
  br i1 %call2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.then
  %call4 = call fastcc i64 @PTR_ERR(i8* noundef %0) #13
  %conv = trunc i64 %call4 to i32
  %call5 = call i32 @unregister_filesystem(%struct.file_system_type* noundef nonnull @pipe_fs_type) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then3, %entry
  %err.0 = phi i32 [ %call, %entry ], [ %conv, %if.then3 ], [ 0, %if.then ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.2* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !13

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
define internal fastcc i32 @trylock_page(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %page) #13
  %0 = inttoptr i64 %call to %struct.page*
  %flags = getelementptr inbounds %struct.page, %struct.page* %0, i64 0, i32 0
  %call1 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %flags) #13
  %lnot = xor i1 %call1, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #14
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #15, !srcloc !18
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @page_ref_count(%struct.page* noundef %page) unnamed_addr #3 {
entry:
  %counter.i = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @page_ref_inc(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %_refcount) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @put_page_testzero(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(%struct.page* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @page_ref_dec_and_test(%struct.page* noundef %page) unnamed_addr #0 {
entry:
  %_refcount = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 3
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %_refcount) #14
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  %conv = zext i1 %cmp.i.i to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !20
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #15, !srcloc !21
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #14
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !8

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !13

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #14
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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #15, !srcloc !22
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n, i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 40)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !8

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef %flags) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.inode* @new_inode_pseudo(%struct.super_block* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @current_time(%struct.inode* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #14
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !13

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #14
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #15, !srcloc !24
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #15, !srcloc !26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_pipe2(i32* noundef %fildes, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_pipe2(i32* noundef %fildes, i32 noundef %flags) #13
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_pipe2(i32* noundef %fildes, i32 noundef %flags) unnamed_addr #0 {
entry:
  %files = alloca [2 x %struct.file*], align 8
  %fd = alloca i64, align 8, !annotation !12
  %tmpcast = bitcast i64* %fd to [2 x i32]*, !annotation !12
  %0 = bitcast [2 x %struct.file*]* %files to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !12
  %1 = bitcast i64* %fd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #15
  store i64 0, i64* %fd, align 8, !annotation !12
  %arraydecay = bitcast i64* %fd to i32*
  %arraydecay1 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %files, i64 0, i64 0
  %call = call fastcc i32 @__do_pipe_flags(i32* noundef nonnull %arraydecay, %struct.file** noundef nonnull %arraydecay1, i32 noundef %flags) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %fildes to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %2, i8* noundef nonnull %1) #14
  %tobool4.not = icmp eq i64 %call2.i, 0
  br i1 %tobool4.not, label %if.else, label %if.then7, !prof !13

if.then7:                                         ; preds = %if.then
  %3 = load %struct.file*, %struct.file** %arraydecay1, align 8
  call void @fput(%struct.file* noundef %3) #14
  %arrayidx8 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %files, i64 0, i64 1
  %4 = load %struct.file*, %struct.file** %arrayidx8, align 8
  call void @fput(%struct.file* noundef %4) #14
  %5 = load i32, i32* %arraydecay, align 8
  call void @put_unused_fd(i32 noundef %5) #14
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1
  %6 = load i32, i32* %arrayidx10, align 4
  call void @put_unused_fd(i32 noundef %6) #14
  br label %if.end15

if.else:                                          ; preds = %if.then
  %7 = load i32, i32* %arraydecay, align 8
  %8 = load %struct.file*, %struct.file** %arraydecay1, align 8
  call void @fd_install(i32 noundef %7, %struct.file* noundef %8) #14
  %arrayidx13 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1
  %9 = load i32, i32* %arrayidx13, align 4
  %arrayidx14 = getelementptr inbounds [2 x %struct.file*], [2 x %struct.file*]* %files, i64 0, i64 1
  %10 = load %struct.file*, %struct.file** %arrayidx14, align 8
  call void @fd_install(i32 noundef %9, %struct.file* noundef %10) #14
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %if.else, %entry
  %error.0 = phi i32 [ %call, %entry ], [ -14, %if.then7 ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef 8) #13
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #13
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef 8) #14
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ 8, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #15, !srcloc !27
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #15, !srcloc !28
  call void asm sideeffect "hint #20", "~{memory}"() #15, !srcloc !29
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_pipe(i32* noundef %fildes) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @do_pipe2(i32* noundef %fildes, i32 noundef 0) #13
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @pipe_empty(i32 noundef %head, i32 noundef %tail) unnamed_addr #4 {
entry:
  %cmp = icmp eq i32 %head, %tail
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @pipe_full(i32 noundef %head, i32 noundef %tail, i32 noundef %limit) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @pipe_occupancy(i32 noundef %head, i32 noundef %tail) #13
  %cmp = icmp uge i32 %call, %limit
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #8 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pipe_buf_confirm(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 3
  %0 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %ops, align 8
  %confirm = getelementptr inbounds %struct.pipe_buf_operations, %struct.pipe_buf_operations* %0, i64 0, i32 0
  %1 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %confirm, align 8
  %tobool.not = icmp eq i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* %1, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 %1(%struct.pipe_inode_info* noundef %pipe, %struct.pipe_buffer* noundef %buf) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @copy_page_to_iter(%struct.page* noundef, i64 noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(%struct.wait_queue_head* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(%struct.fasync_struct** noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @file_accessed(%struct.file* noundef %file) unnamed_addr #0 {
entry:
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and = and i32 %0, 262144
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 1
  call void @touch_atime(%struct.path* noundef %f_path) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #13
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #15, !srcloc !31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #13
  call fastcc void @arch_local_irq_enable() #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #15, !srcloc !33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(%struct.path* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @copy_page_from_iter(%struct.page* noundef, i64 noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages() unnamed_addr #0 {
entry:
  call fastcc void @numa_node_id() #13
  %call1 = call fastcc %struct.page* @alloc_pages_node() #13
  ret %struct.page* %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_packetized(%struct.file* nocapture noundef readonly %file) unnamed_addr #8 {
entry:
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and = lshr i32 %0, 16
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !13

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @sb_start_write_trylock(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__sb_start_write_trylock(%struct.super_block* noundef %sb) #13
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #8 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(%struct.file* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  call fastcc void @__sb_end_write(%struct.super_block* noundef %sb) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node() unnamed_addr #0 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef 0) #13
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #11 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid) unnamed_addr #0 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef 5246146, i32 noundef 0, i32 noundef %nid, %struct.nodemask_t* noundef null) #14
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #11 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #18, !srcloc !34
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @anon_pipe_buf_release(%struct.pipe_inode_info* nocapture noundef %pipe, %struct.pipe_buffer* nocapture noundef readonly %buf) #0 {
entry:
  %page1 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %page1, align 8
  %call = call fastcc i32 @page_count(%struct.page* noundef %0) #13
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %tmp_page = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 14
  %1 = load %struct.page*, %struct.page** %tmp_page, align 8
  %tobool.not = icmp eq %struct.page* %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store %struct.page* %0, %struct.page** %tmp_page, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call fastcc void @put_page(%struct.page* noundef %0) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i1 @anon_pipe_buf_try_steal(%struct.pipe_inode_info* nocapture noundef readnone %pipe, %struct.pipe_buffer* nocapture noundef readonly %buf) #3 {
entry:
  %page1 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %buf, i64 0, i32 0
  %0 = load %struct.page*, %struct.page** %page1, align 8
  %call = call fastcc i32 @page_count(%struct.page* noundef %0) #13
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %0) #14
  %1 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %1, i64 0, i32 0
  %2 = load i64, i64* %flags.i, align 8
  %or.i.i = or i64 %2, 1
  store i64 %or.i.i, i64* %flags.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %cmp.not
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #13
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #13
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #13
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %and.i = and i32 %flag, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #4 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__sb_start_write_trylock(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  %call = call fastcc i1 @percpu_down_read_trylock(%struct.percpu_rw_semaphore* noundef %add.ptr1) #13
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @percpu_down_read_trylock(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !35
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #13
  br i1 %call, label %do.body2, label %if.else, !prof !13

do.body2:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !36
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call8 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call8, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 1) #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !37
  br label %if.end

if.else:                                          ; preds = %entry
  %call11 = call i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef %sem, i1 noundef true) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body2
  %ret.0.off0 = phi i1 [ true, %do.body2 ], [ %call11, %if.else ]
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !38
  ret i1 %ret.0.off0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rsp) unnamed_addr #3 {
entry:
  %gp_state = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 0
  %0 = load volatile i32, i32* %gp_state, align 8
  %tobool.not = icmp eq i32 %0, 0
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_32(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %conv = trunc i64 %val to i32
  %1 = call { i32, i32 } asm sideeffect "1:\09ldxr\09${1:w}, $2\0Aadd\09${1:w}, ${1:w}, ${3:w}\0A\09stxr\09${0:w}, ${1:w}, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i32* elementtype(i32) %0, i32 %conv, i32* elementtype(i32) %0) #15, !srcloc !39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @__percpu_down_read(%struct.percpu_rw_semaphore* noundef, i1 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sb_end_write(%struct.super_block* noundef %sb) unnamed_addr #0 {
entry:
  %add.ptr1 = getelementptr %struct.super_block, %struct.super_block* %sb, i64 0, i32 26, i32 2, i64 0
  call fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %add.ptr1) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_up_read(%struct.percpu_rw_semaphore* noundef %sem) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !40
  %rss = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 0
  %call = call fastcc i1 @rcu_sync_is_idle(%struct.rcu_sync* noundef %rss) #13
  br i1 %call, label %do.body3, label %if.else, !prof !13

do.body3:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !41
  %read_count = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %0 = load i32*, i32** %read_count, align 8
  %1 = ptrtoint i32* %0 to i64
  %call9 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add = add i64 %call9, %1
  %2 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %2, i64 noundef 4294967295) #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !42
  br label %if.end

if.else:                                          ; preds = %entry
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !43
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !44
  %read_count20 = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 1
  %3 = load i32*, i32** %read_count20, align 8
  %4 = ptrtoint i32* %3 to i64
  %call22 = call fastcc i64 @__kern_my_cpu_offset() #13
  %add23 = add i64 %call22, %4
  %5 = inttoptr i64 %add23 to i8*
  call fastcc void @__percpu_add_case_32(i8* noundef %5, i64 noundef 4294967295) #13
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !45
  %writer = getelementptr inbounds %struct.percpu_rw_semaphore, %struct.percpu_rw_semaphore* %sem, i64 0, i32 2
  %call25 = call i32 @rcuwait_wake_up(%struct.rcuwait* noundef %writer) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body3
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(%struct.rcuwait* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @poll_wait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %wait_address, %struct.poll_table_struct* noundef %p) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.poll_table_struct* %p, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %p, i64 0, i32 0
  %0 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %0, null
  %tobool3 = icmp ne %struct.wait_queue_head* %wait_address, null
  %or.cond = and i1 %tobool3, %tobool1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull %wait_address, %struct.poll_table_struct* noundef nonnull %p) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @wake_up_partner(%struct.pipe_inode_info* noundef %pipe) unnamed_addr #0 {
entry:
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 1
  call void @__wake_up(%struct.wait_queue_head* noundef %rd_wait, i32 noundef 1, i32 noundef 0, i8* noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wait_for_partner(%struct.pipe_inode_info* noundef %pipe, i32* nocapture noundef readonly %cnt) unnamed_addr #0 {
entry:
  %rdwait = alloca %struct.wait_queue_entry, align 8
  %0 = bitcast %struct.wait_queue_entry* %rdwait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #15
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %rdwait, i64 0, i32 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #16, !srcloc !11
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = bitcast i8** %private to %struct.task_struct**
  %4 = bitcast %struct.wait_queue_entry* %rdwait to i64*
  store i64 0, i64* %4, align 8
  store %struct.task_struct* %2, %struct.task_struct** %3, align 8
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %rdwait, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %rdwait, i64 0, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* %entry1, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %rdwait, i64 0, i32 3, i32 1
  store %struct.list_head* %entry1, %struct.list_head** %prev, align 8
  %5 = load i32, i32* %cnt, align 4
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %pipe, i64 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = phi i32 [ %5, %entry ], [ %.pre, %while.body ]
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @prepare_to_wait(%struct.wait_queue_head* noundef %rd_wait, %struct.wait_queue_entry* noundef nonnull %rdwait, i32 noundef 1) #14
  call void @pipe_unlock(%struct.pipe_inode_info* noundef %pipe) #13
  call void @schedule() #14
  call void @finish_wait(%struct.wait_queue_head* noundef %rd_wait, %struct.wait_queue_entry* noundef nonnull %rdwait) #14
  call void @pipe_lock(%struct.pipe_inode_info* noundef %pipe) #13
  %call6 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %2) #13
  %tobool.not = icmp eq i32 %call6, 0
  %.pre = load i32, i32* %cnt, align 4
  br i1 %tobool.not, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond, %while.body
  %7 = phi i32 [ %.pre, %while.body ], [ %6, %while.cond ]
  %cmp7 = icmp eq i32 %5, %7
  %cond = select i1 %cmp7, i32 -512, i32 0
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #15
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, %struct.file* noundef, i32 noundef, %struct.fasync_struct** noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #6 {
entry:
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #15, !range !47
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vfsmount* @kern_mount(%struct.file_system_type* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(%struct.file_system_type* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pipefs_init_fs_context(%struct.fs_context* noundef %fc) #0 {
entry:
  %call = call %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* noundef %fc, i64 noundef 1346981957) #14
  %tobool.not = icmp eq %struct.pseudo_fs_context* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %call, i64 0, i32 0
  store %struct.super_operations* @pipefs_ops, %struct.super_operations** %ops, align 8
  %dops = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %call, i64 0, i32 2
  store %struct.dentry_operations* @pipefs_dentry_operations, %struct.dentry_operations** %dops, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(%struct.super_block* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_inode_nonrcu(%struct.inode* noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(%struct.dentry* noundef, %struct.kstatfs* noundef) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i8* @pipefs_dname(%struct.dentry* noundef %dentry, i8* noundef %buffer, i32 noundef %buflen) #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #13
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  %0 = load i64, i64* %i_ino, align 8
  %call1 = call i8* (%struct.dentry*, i8*, i32, i8*, ...) @dynamic_dname(%struct.dentry* noundef %dentry, i8* noundef %buffer, i32 noundef %buflen, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 noundef %0) #14
  ret i8* %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @dynamic_dname(%struct.dentry* noundef, i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #8 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #18 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2155591847}
!10 = !{i64 2152487391}
!11 = !{i64 1384487}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = distinct !{!16, !15}
!17 = !{i64 2155619075, i64 2155619113, i64 2155619130, i64 2155619164, i64 2155619186, i64 2155619212, i64 2155619230, i64 2155619388, i64 2155619429, i64 2155619451, i64 2155619497}
!18 = !{i64 2148053235, i64 2148053905, i64 2148053935, i64 2148053967, i64 2148053999, i64 2148054033, i64 2148054058}
!19 = !{i64 2147981267, i64 2147981783, i64 2147981813, i64 2147981840, i64 2147981874, i64 2147981904}
!20 = !{i64 2147991840, i64 2147992488, i64 2147992518, i64 2147992550, i64 2147992584, i64 2147992620, i64 2147992645}
!21 = !{i64 2148022801, i64 2148027510, i64 2148027540, i64 2148027571, i64 2148027603, i64 2148027638, i64 2148027663}
!22 = !{i64 2147987231, i64 2147987895, i64 2147987925, i64 2147987957, i64 2147987991, i64 2147988026, i64 2147988051}
!23 = !{i64 2149570913}
!24 = !{i64 2148081190, i64 2148081223, i64 2148081276, i64 2148081335, i64 2148081369, i64 2148081424, i64 2148081453, i64 2148081473}
!25 = !{i64 2149578194}
!26 = !{i64 2149370424}
!27 = !{i64 4615953, i64 4616036, i64 4616260, i64 4616480, i64 4616503}
!28 = !{i64 4620655, i64 4620679}
!29 = !{i64 2152135494}
!30 = !{i64 2149560205}
!31 = !{i64 2149116036, i64 2149116083, i64 2149116089, i64 2149116126, i64 2149116144, i64 2149117485, i64 2149117533, i64 2149117581, i64 2149117644, i64 2149117693, i64 2149116222, i64 2149116247, i64 2149116273, i64 2149116279, i64 2149117151, i64 2149117191, i64 2149117209, i64 2149117241, i64 2149117269, i64 2149117323, i64 2149117343, i64 2149117440, i64 2149116302, i64 2149116316, i64 2149116322, i64 2149116372, i64 2149116418, i64 2149116451}
!32 = !{i64 2149585058}
!33 = !{i64 2149106580, i64 2149106627, i64 2149106633, i64 2149106670, i64 2149106688, i64 2149108028, i64 2149108076, i64 2149108124, i64 2149108187, i64 2149108236, i64 2149106766, i64 2149106791, i64 2149106817, i64 2149106823, i64 2149107694, i64 2149107734, i64 2149107752, i64 2149107784, i64 2149107812, i64 2149107866, i64 2149107886, i64 2149107983, i64 2149106846, i64 2149106860, i64 2149106866, i64 2149106916, i64 2149106962, i64 2149106995}
!34 = !{i64 2149144058, i64 2149144105, i64 2149144111, i64 2149144148, i64 2149144166, i64 2149145093, i64 2149145141, i64 2149145189, i64 2149145252, i64 2149145301, i64 2149144244, i64 2149144269, i64 2149144295, i64 2149144301, i64 2149144338, i64 2149144344, i64 2149144394, i64 2149144440, i64 2149144473}
!35 = !{i64 2152301181}
!36 = !{i64 2152304604}
!37 = !{i64 2152305446}
!38 = !{i64 2152306632}
!39 = !{i64 2149168948, i64 2149168990, i64 2149169049, i64 2149169102}
!40 = !{i64 2152313873}
!41 = !{i64 2152317734}
!42 = !{i64 2152318576}
!43 = !{i64 2152319830}
!44 = !{i64 2152323653}
!45 = !{i64 2152324495}
!46 = !{i64 2152325747}
!47 = !{i64 0, i64 65}
