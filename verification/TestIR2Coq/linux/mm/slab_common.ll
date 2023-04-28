; ModuleID = 'mm/slab_common.c'
source_filename = "mm/slab_common.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_slab_common__433_1184_slab_proc_init6:\09\09\09"
module asm ".long\09slab_proc_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.kmem_cache = type { %struct.kmem_cache_cpu*, i32, i64, i32, i32, %struct.reciprocal_value, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, void (i8*)*, i32, i32, i32, i8*, %struct.list_head, %struct.kobject, i32, i32, [1 x %struct.kmem_cache_node*] }
%struct.kmem_cache_cpu = type { i8**, i64, %struct.page*, %struct.local_lock_t }
%struct.page = type { i64, %union.anon.1, %union.anon.69, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.79, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.46, %struct.list_head, %struct.list_head, %union.anon.47 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.5, i8* }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [48 x i8] }
%struct.anon.20 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.ctl_table*, i32, i32, i32 }
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
%union.anon.46 = type { %struct.list_head }
%union.anon.47 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.4, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.48 }
%union.anon.48 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.49, %union.anon.50 }
%union.anon.49 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.50 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.42, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.40, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.24, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
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
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.25, %union.anon.26, i32 }
%union.anon.25 = type { %struct.list_head }
%union.anon.26 = type { %struct.hlist_node }
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
%union.anon.24 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.kernel_siginfo = type { %struct.anon.27 }
%struct.anon.27 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.31 }
%struct.anon.31 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.39, i32, [12 x i8] }
%union.anon.39 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.40 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.41, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.41 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.42 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.43, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.44, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.43 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.44 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.54 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.52, %struct.qspinlock }
%union.anon.52 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.54 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.23 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.23 = type { %struct.callback_head }
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
%union.anon.78 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.79 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%union.anon.69 = type { %struct.atomic_t }
%struct.local_lock_t = type {}
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.45, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.45 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kmem_cache_node = type { %struct.spinlock, i64, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t, %struct.list_head }
%struct.kmalloc_info_struct = type { [3 x i8*], i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i64, [56 x i8], %struct.zone_padding, %struct.lruvec, i64, [48 x i8], %struct.zone_padding, %struct.per_cpu_nodestat*, [38 x %struct.atomic64_t], [8 x i8] }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pages*, %struct.per_cpu_zonestat*, i32, i32, i64, %struct.atomic64_t, i64, i64, i8*, i32, [44 x i8], %struct.zone_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.zone_padding, i64, i8, [55 x i8], %struct.zone_padding, [10 x %struct.atomic64_t], [0 x %struct.atomic64_t], [48 x i8] }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { %struct.zone*, i32 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.zone_padding = type { [0 x i8] }
%struct.per_cpu_nodestat = type { i8, [38 x i8] }
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.kmem_obj_info = type { i8*, %struct.page*, i8*, i64, %struct.kmem_cache*, i8*, [16 x i8*], [16 x i8*] }
%struct.slabinfo = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.nodemask_t = type { [1 x i64] }

@slab_caches = dso_local global %struct.list_head { %struct.list_head* @slab_caches, %struct.list_head* @slab_caches }, align 8
@slab_mutex = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @slab_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @slab_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@__setup_str_slub_nomerge = internal constant [13 x i8] c"slub_nomerge\00", section ".init.rodata", align 1
@__setup_slub_nomerge = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__setup_str_slub_nomerge, i32 0, i32 0), i32 (i8*)* @setup_slab_nomerge, i32 0 }, section ".init.setup", align 8
@__setup_str_slub_merge = internal constant [11 x i8] c"slub_merge\00", section ".init.rodata", align 1
@__setup_slub_merge = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__setup_str_slub_merge, i32 0, i32 0), i32 (i8*)* @setup_slab_merge, i32 0 }, section ".init.setup", align 8
@__setup_str_setup_slab_nomerge = internal constant [13 x i8] c"slab_nomerge\00", section ".init.rodata", align 1
@__setup_setup_slab_nomerge = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__setup_str_setup_slab_nomerge, i32 0, i32 0), i32 (i8*)* @setup_slab_nomerge, i32 0 }, section ".init.setup", align 8
@__setup_str_setup_slab_merge = internal constant [11 x i8] c"slab_merge\00", section ".init.rodata", align 1
@__setup_setup_slab_merge = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__setup_str_setup_slab_merge, i32 0, i32 0), i32 (i8*)* @setup_slab_merge, i32 0 }, section ".init.setup", align 8
@slab_nomerge = internal unnamed_addr global i1 false, align 1
@slub_debug_enabled = external dso_local global %struct.static_key_false, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: Failed to create slab '%s'. Error %d\0A\00", align 1
@__func__.kmem_cache_create_usercopy = private unnamed_addr constant [27 x i8] c"kmem_cache_create_usercopy\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\014%s(%s) failed with error %d\0A\00", align 1
@kmem_cache = dso_local local_unnamed_addr global %struct.kmem_cache* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"\013%s %s: Slab cache still has objects\0A\00", align 1
@__func__.kmem_cache_destroy = private unnamed_addr constant [19 x i8] c"kmem_cache_destroy\00", align 1
@slab_state = dso_local local_unnamed_addr global i32 0, align 4
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\01c non-slab memory.\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\01c slab%s %s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\01c slab%s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\01c start %px\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\01c data offset %lu\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"\01c pointer offset %lu\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"\01c size %u\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"\01c allocated at %pS\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"\016    %pS\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"\01c Free path:\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"Creation of kmalloc slab %s size=%u failed. Reason %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Out of memory when creating slab %s\0A\00", align 1
@kmalloc_caches = dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]] zeroinitializer, section ".data..ro_after_init", align 8
@size_index = internal unnamed_addr global [24 x i8] c"\03\04\05\05\06\06\06\06\01\01\01\01\07\07\07\07\02\02\02\02\02\02\02\02", section ".data..ro_after_init", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"kmalloc-0\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"kmalloc-rcl-0\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"dma-kmalloc-0\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"kmalloc-96\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-96\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-96\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"kmalloc-192\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-192\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-192\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"kmalloc-8\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"kmalloc-rcl-8\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"dma-kmalloc-8\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"kmalloc-16\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-16\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-16\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"kmalloc-32\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-32\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-32\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"kmalloc-64\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-64\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-64\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"kmalloc-128\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-128\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-128\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"kmalloc-256\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-256\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-256\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"kmalloc-512\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-512\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-512\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"kmalloc-1k\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-1k\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-1k\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"kmalloc-2k\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-2k\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-2k\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"kmalloc-4k\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-4k\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-4k\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"kmalloc-8k\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-8k\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-8k\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"kmalloc-16k\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-16k\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-16k\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"kmalloc-32k\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-32k\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-32k\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"kmalloc-64k\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-64k\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-64k\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"kmalloc-128k\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"kmalloc-rcl-128k\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"dma-kmalloc-128k\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"kmalloc-256k\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"kmalloc-rcl-256k\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"dma-kmalloc-256k\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"kmalloc-512k\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"kmalloc-rcl-512k\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"dma-kmalloc-512k\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"kmalloc-1M\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-1M\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-1M\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"kmalloc-2M\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-2M\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-2M\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"kmalloc-4M\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-4M\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-4M\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"kmalloc-8M\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"kmalloc-rcl-8M\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"dma-kmalloc-8M\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"kmalloc-16M\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-16M\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-16M\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"kmalloc-32M\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"kmalloc-rcl-32M\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"dma-kmalloc-32M\00", align 1
@kmalloc_info = dso_local local_unnamed_addr constant [26 x %struct.kmalloc_info_struct] [%struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0)], i32 0 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)], i32 96 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0)], i32 192 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0)], i32 8 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0)], i32 16 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0)], i32 32 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0)], i32 64 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0)], i32 128 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0)], i32 256 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0)], i32 512 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0)], i32 1024 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0)], i32 2048 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i32 0, i32 0)], i32 4096 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i32 0, i32 0)], i32 8192 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0)], i32 16384 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0)], i32 32768 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0)], i32 65536 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0)], i32 131072 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0)], i32 262144 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.76, i32 0, i32 0)], i32 524288 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0)], i32 1048576 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i32 0, i32 0)], i32 2097152 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.85, i32 0, i32 0)], i32 4194304 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.88, i32 0, i32 0)], i32 8388608 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.91, i32 0, i32 0)], i32 16777216 }, %struct.kmalloc_info_struct { [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.94, i32 0, i32 0)], i32 33554432 }], section ".init.rodata", align 8
@.str.95 = private unnamed_addr constant [76 x i8] c"\014Unexpected gfp: %#x (%pGg). Fixing up to gfp: %#x (%pGg). Fix your code!\0A\00", align 1
@.str.96 = private unnamed_addr constant [54 x i8] c"\014excessive unreclaimable slab but cannot dump stats\0A\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"\016Unreclaimable slab info:\0A\00", align 1
@.str.98 = private unnamed_addr constant [49 x i8] c"\016Name                      Used          Total\0A\00", align 1
@.str.99 = private unnamed_addr constant [25 x i8] c"\016%-17s %10luKB %10luKB\0A\00", align 1
@__UNIQUE_ID___addressable_slab_proc_init434 = internal global i8* bitcast (i32 ()* @slab_proc_init to i8*), section ".discard.addressable", align 8
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.100 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@slab_caches_to_rcu_destroy = internal global %struct.list_head { %struct.list_head* @slab_caches_to_rcu_destroy, %struct.list_head* @slab_caches_to_rcu_destroy }, align 8
@slab_caches_to_rcu_destroy_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @slab_caches_to_rcu_destroy_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @slab_caches_to_rcu_destroy_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @slab_caches_to_rcu_destroy_workfn }, align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@.str.101 = private unnamed_addr constant [9 x i8] c"slabinfo\00", align 1
@slabinfo_proc_ops = internal constant %struct.proc_ops { i32 1, i32 (%struct.inode*, %struct.file*)* @slabinfo_open, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.file*, i8*, i64, i64*)* @slabinfo_write, i64 (%struct.file*, i64, i32)* @seq_lseek, i32 (%struct.inode*, %struct.file*)* @seq_release, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 (%struct.file*, i64, i64, i64, i64)* null }, align 8
@slabinfo_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @slab_start, void (%struct.seq_file*, i8*)* @slab_stop, i8* (%struct.seq_file*, i8*, i64*)* @slab_next, i32 (%struct.seq_file*, i8*)* @slab_show }, align 8
@.str.102 = private unnamed_addr constant [25 x i8] c"slabinfo - version: 2.1\0A\00", align 1
@.str.103 = private unnamed_addr constant [81 x i8] c"# name            <active_objs> <num_objs> <objsize> <objperslab> <pagesperslab>\00", align 1
@.str.104 = private unnamed_addr constant [48 x i8] c" : tunables <limit> <batchcount> <sharedfactor>\00", align 1
@.str.105 = private unnamed_addr constant [53 x i8] c" : slabdata <active_slabs> <num_slabs> <sharedavail>\00", align 1
@.str.106 = private unnamed_addr constant [28 x i8] c"%-17s %6lu %6lu %6u %4u %4d\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c" : tunables %4u %4u %4u\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c" : slabdata %6lu %6lu %6lu\00", align 1
@vabits_actual = external dso_local local_unnamed_addr global i64, align 8
@llvm.compiler.used = appending global [5 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_slab_proc_init434 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_setup_slab_merge to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_setup_slab_nomerge to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_slub_merge to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_slub_nomerge to i8*)], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @setup_slab_nomerge(i8* nocapture noundef readnone %str) #0 section ".init.text" {
entry:
  store i1 false, i1* @slab_nomerge, align 1
  ret i32 1
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @setup_slab_merge(i8* nocapture noundef readnone %str) #0 section ".init.text" {
entry:
  store i1 true, i1* @slab_nomerge, align 1
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @kmem_cache_size(%struct.kmem_cache* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  %0 = load i32, i32* %object_size, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__kmem_cache_free_bulk(%struct.kmem_cache* noundef %s, i64 noundef %nr, i8** nocapture noundef readonly %p) local_unnamed_addr #2 {
entry:
  %cmp8.not = icmp eq i64 %nr, 0
  br i1 %cmp8.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq %struct.kmem_cache* %s, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.09 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %arrayidx1 = getelementptr i8*, i8** %p, i64 %i.09
  %0 = load i8*, i8** %arrayidx1, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @kmem_cache_free(%struct.kmem_cache* noundef nonnull %s, i8* noundef %0) #20
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @kfree(i8* noundef %0) #20
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %inc = add nuw i64 %i.09, 1
  %exitcond.not = icmp eq i64 %inc, %nr
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__kmem_cache_alloc_bulk(%struct.kmem_cache* noundef %s, i32 noundef %flags, i64 noundef %nr, i8** nocapture noundef %p) local_unnamed_addr #2 {
entry:
  %cmp11.not = icmp eq i64 %nr, 0
  br i1 %cmp11.not, label %cleanup1, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.012 = phi i64 [ %inc, %for.inc ], [ 0, %entry ]
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %s, i32 noundef %flags) #20
  %arrayidx = getelementptr i8*, i8** %p, i64 %i.012
  store i8* %call, i8** %arrayidx, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__kmem_cache_free_bulk(%struct.kmem_cache* noundef %s, i64 noundef %i.012, i8** noundef %p) #21
  br label %cleanup1

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %i.012, 1
  %exitcond.not = icmp eq i64 %inc, %nr
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  %phi.cast = trunc i64 %nr to i32
  br label %cleanup1

cleanup1:                                         ; preds = %entry, %for.end.loopexit, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %entry ], [ %phi.cast, %for.end.loopexit ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @slab_unmergeable(%struct.kmem_cache* nocapture noundef readonly %s) local_unnamed_addr #1 {
entry:
  %.b = load i1, i1* @slab_nomerge, align 1
  br i1 %.b, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 11078656
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %ctor = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 12
  %1 = load void (i8*)*, void (i8*)** %ctor, align 8
  %tobool2.not = icmp eq void (i8*)* %1, null
  br i1 %tobool2.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %usersize = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 20
  %2 = load i32, i32* %usersize, align 4
  %tobool5.not = icmp eq i32 %2, 0
  br i1 %tobool5.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end4
  %refcount = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 11
  %3 = load i32, i32* %refcount, align 4
  %.lobit = lshr i32 %3, 31
  br label %return

return:                                           ; preds = %if.end7, %if.end4, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ 1, %if.end ], [ 1, %if.end4 ], [ %.lobit, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kmem_cache* @find_mergeable(i32 noundef %size, i32 noundef %align, i32 noundef %flags, i8* noundef %name, void (i8*)* noundef readnone %ctor) local_unnamed_addr #2 {
entry:
  %.b = load i1, i1* @slab_nomerge, align 1
  %tobool1.not = icmp eq void (i8*)* %ctor, null
  %or.cond71 = and i1 %tobool1.not, %.b
  br i1 %or.cond71, label %if.end3, label %cleanup

if.end3:                                          ; preds = %entry
  %add = add i32 %size, 7
  %and = and i32 %add, -8
  %call = call fastcc i32 @calculate_alignment(i32 noundef %flags, i32 noundef %align, i32 noundef %and) #21
  %sub = add i32 %and, -1
  %add4 = add i32 %sub, %call
  %neg = sub i32 0, %call
  %and6 = and i32 %add4, %neg
  %call7 = call i32 @kmem_cache_flags(i32 noundef %and6, i32 noundef %flags, i8* noundef %name) #20
  %and9 = and i32 %call7, 11078656
  %tobool10.not = icmp ne i32 %and9, 0
  %.pn74 = load i8*, i8** bitcast (%struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @slab_caches, i64 0, i32 1) to i8**), align 8
  %cmp.not77 = icmp eq i8* %.pn74, bitcast (%struct.list_head* @slab_caches to i8*)
  %or.cond82 = select i1 %tobool10.not, i1 true, i1 %cmp.not77
  br i1 %or.cond82, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end3, %for.inc
  %.pn78 = phi i8* [ %.pn, %for.inc ], [ %.pn74, %if.end3 ]
  %s.0.in80 = getelementptr i8, i8* %.pn78, i64 -96
  %s.081 = bitcast i8* %s.0.in80 to %struct.kmem_cache*
  %call13 = call i32 @slab_unmergeable(%struct.kmem_cache* noundef %s.081) #21
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.inc

if.end16:                                         ; preds = %for.body
  %size17 = getelementptr i8, i8* %.pn78, i64 -72
  %0 = bitcast i8* %size17 to i32*
  %1 = load i32, i32* %0, align 8
  %cmp18 = icmp ult i32 %1, %and6
  br i1 %cmp18, label %for.inc, label %if.end20

if.end20:                                         ; preds = %if.end16
  %flags22 = getelementptr i8, i8* %.pn78, i64 -88
  %2 = bitcast i8* %flags22 to i32*
  %3 = load i32, i32* %2, align 8
  %4 = xor i32 %3, %call7
  %5 = and i32 %4, 180224
  %cmp24.not = icmp ne i32 %5, 0
  %and30 = and i32 %1, %neg
  %cmp32.not = icmp ne i32 %and30, %1
  %or.cond = select i1 %cmp24.not, i1 true, i1 %cmp32.not
  %sub36 = sub i32 %1, %and6
  %cmp37 = icmp ugt i32 %sub36, 7
  %or.cond70 = select i1 %or.cond, i1 true, i1 %cmp37
  br i1 %or.cond70, label %for.inc, label %cleanup.loopexit.split.loop.exit

for.inc:                                          ; preds = %if.end20, %if.end16, %for.body
  %prev = getelementptr inbounds i8, i8* %.pn78, i64 8
  %6 = bitcast i8* %prev to i8**
  %.pn = load i8*, i8** %6, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @slab_caches to i8*)
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup.loopexit.split.loop.exit:                 ; preds = %if.end20
  %s.081.le = bitcast i8* %s.0.in80 to %struct.kmem_cache*
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %cleanup.loopexit.split.loop.exit, %if.end3, %entry
  %retval.0 = phi %struct.kmem_cache* [ null, %entry ], [ null, %if.end3 ], [ %s.081.le, %cleanup.loopexit.split.loop.exit ], [ null, %for.inc ]
  ret %struct.kmem_cache* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @calculate_alignment(i32 noundef %flags, i32 noundef %align, i32 noundef %size) unnamed_addr #2 {
entry:
  %and = and i32 %flags, 8192
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @cache_line_size() #20
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.then
  %ralign.0 = phi i32 [ %call, %if.then ], [ %div, %while.cond ]
  %div = lshr i32 %ralign.0, 1
  %cmp.not = icmp ult i32 %div, %size
  br i1 %cmp.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp2 = icmp ult i32 %ralign.0, %align
  %cond = select i1 %cmp2, i32 %align, i32 %ralign.0
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %align.addr.0 = phi i32 [ %cond, %while.end ], [ %align, %entry ]
  %0 = icmp ugt i32 %align.addr.0, 8
  %spec.store.select = select i1 %0, i32 %align.addr.0, i32 8
  %add = add i32 %spec.store.select, 7
  %and7 = and i32 %add, -8
  ret i32 %and7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmem_cache_flags(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kmem_cache* @kmem_cache_create_usercopy(i8* noundef %name, i32 noundef %size, i32 noundef %align, i32 noundef %flags, i32 noundef %useroffset, i32 noundef %usersize, void (i8*)* noundef %ctor) local_unnamed_addr #2 {
entry:
  %and = and i32 %flags, 2166016
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @static_key_enable() #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @slab_mutex) #20
  %and4 = and i32 %flags, -12578049
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %out_unlock.thread142

if.end7:                                          ; preds = %if.end
  %and8 = and i32 %flags, 11529472
  %tobool9.not = icmp eq i32 %usersize, 0
  %tobool10 = icmp ne i32 %useroffset, 0
  %0 = and i1 %tobool10, %tobool9.not
  br i1 %0, label %if.then18, label %lor.lhs.false, !prof !8

if.then18:                                        ; preds = %if.end7
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slab_common.c\22; .popsection; .long 14472b - 14470b; .short 352; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !9
  br label %if.end60

lor.lhs.false:                                    ; preds = %if.end7
  %cmp = icmp ult i32 %size, %usersize
  %sub = sub i32 %size, %usersize
  %cmp30 = icmp ult i32 %sub, %useroffset
  %1 = or i1 %cmp, %cmp30
  br i1 %1, label %if.then44, label %if.end56, !prof !8

if.then44:                                        ; preds = %lor.lhs.false
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slab_common.c\22; .popsection; .long 14472b - 14470b; .short 353; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !10
  br label %if.end60

if.end56:                                         ; preds = %lor.lhs.false
  br i1 %tobool9.not, label %if.end60, label %if.end63

if.end60:                                         ; preds = %if.then18, %if.then44, %if.end56
  %useroffset.addr.0130 = phi i32 [ %useroffset, %if.end56 ], [ 0, %if.then44 ], [ 0, %if.then18 ]
  %call59 = call %struct.kmem_cache* @__kmem_cache_alias(i8* noundef %name, i32 noundef %size, i32 noundef %align, i32 noundef %and8, void (i8*)* noundef %ctor) #20
  %tobool61.not = icmp eq %struct.kmem_cache* %call59, null
  br i1 %tobool61.not, label %if.end63, label %out_unlock.thread

if.end63:                                         ; preds = %if.end56, %if.end60
  %usersize.addr.0127136 = phi i32 [ 0, %if.end60 ], [ %usersize, %if.end56 ]
  %useroffset.addr.0129135 = phi i32 [ %useroffset.addr.0130, %if.end60 ], [ %useroffset, %if.end56 ]
  %call64 = call i8* @kstrdup_const(i8* noundef %name, i32 noundef 3264) #20
  %tobool65.not = icmp eq i8* %call64, null
  br i1 %tobool65.not, label %out_unlock.thread142, label %if.end67

if.end67:                                         ; preds = %if.end63
  %call68 = call fastcc i32 @calculate_alignment(i32 noundef %and8, i32 noundef %align, i32 noundef %size) #21, !range !11
  %call69 = call fastcc %struct.kmem_cache* @create_cache(i8* noundef nonnull %call64, i32 noundef %size, i32 noundef %call68, i32 noundef %and8, i32 noundef %useroffset.addr.0129135, i32 noundef %usersize.addr.0127136, void (i8*)* noundef %ctor) #21
  %2 = bitcast %struct.kmem_cache* %call69 to i8*
  %call70 = call fastcc i1 @IS_ERR(i8* noundef %2) #21
  br i1 %call70, label %out_unlock, label %out_unlock.thread

out_unlock.thread:                                ; preds = %if.end60, %if.end67
  %s.1.ph = phi %struct.kmem_cache* [ %call69, %if.end67 ], [ %call59, %if.end60 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @slab_mutex) #20
  br label %cleanup

out_unlock.thread142:                             ; preds = %if.end, %if.end63
  %err.0.ph = phi i32 [ -12, %if.end63 ], [ -22, %if.end ]
  %flags.addr.0.ph = phi i32 [ %and8, %if.end63 ], [ %flags, %if.end ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @slab_mutex) #20
  br label %if.then76

out_unlock:                                       ; preds = %if.end67
  %call72 = call fastcc i64 @PTR_ERR(i8* noundef %2) #21
  %conv73 = trunc i64 %call72 to i32
  call void @kfree_const(i8* noundef nonnull %call64) #20
  call void @mutex_unlock(%struct.mutex* noundef nonnull @slab_mutex) #20
  %tobool75.not = icmp eq i32 %conv73, 0
  br i1 %tobool75.not, label %cleanup, label %if.then76

if.then76:                                        ; preds = %out_unlock.thread142, %out_unlock
  %flags.addr.0148 = phi i32 [ %flags.addr.0.ph, %out_unlock.thread142 ], [ %and8, %out_unlock ]
  %err.0147 = phi i32 [ %err.0.ph, %out_unlock.thread142 ], [ %conv73, %out_unlock ]
  %and77 = and i32 %flags.addr.0148, 262144
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.end, label %if.then79

if.then79:                                        ; preds = %if.then76
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.kmem_cache_create_usercopy, i64 0, i64 0), i8* noundef %name, i32 noundef %err.0147) #23
  unreachable

do.end:                                           ; preds = %if.then76
  %call81 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.kmem_cache_create_usercopy, i64 0, i64 0), i8* noundef %name, i32 noundef %err.0147) #24
  call void @dump_stack() #24
  br label %cleanup

cleanup:                                          ; preds = %out_unlock.thread, %out_unlock, %do.end
  %retval.0 = phi %struct.kmem_cache* [ null, %do.end ], [ %call69, %out_unlock ], [ %s.1.ph, %out_unlock.thread ]
  ret %struct.kmem_cache* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @static_key_enable() unnamed_addr #2 {
entry:
  %0 = load i8, i8* @static_key_initialized, align 1, !range !12
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !8

do.end:                                           ; preds = %entry
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.100, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.static_key_enable, i64 0, i64 0), %struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0)) #20
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 318; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end51, label %if.then23

if.then23:                                        ; preds = %if.end
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0, i32 0, i32 0), align 4
  %cmp27.not = icmp eq i32 %2, 1
  br i1 %cmp27.not, label %return, label %if.then41, !prof !14

if.then41:                                        ; preds = %if.then23
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/jump_label.h\22; .popsection; .long 14472b - 14470b; .short 321; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !15
  br label %return

if.end51:                                         ; preds = %if.end
  store volatile i32 1, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @slub_debug_enabled, i64 0, i32 0, i32 0, i32 0), align 4
  br label %return

return:                                           ; preds = %if.then23, %if.then41, %if.end51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @__kmem_cache_alias(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kstrdup_const(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kmem_cache* @create_cache(i8* noundef %name, i32 noundef %object_size, i32 noundef %align, i32 noundef %flags, i32 noundef %useroffset, i32 noundef %usersize, void (i8*)* noundef %ctor) unnamed_addr #2 {
entry:
  %add = add i32 %usersize, %useroffset
  %cmp = icmp ugt i32 %add, %object_size
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slab_common.c\22; .popsection; .long 14472b - 14470b; .short 250; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #21
  %1 = bitcast i8* %call to %struct.kmem_cache*
  %tobool17.not = icmp eq i8* %call, null
  br i1 %tobool17.not, label %if.then31, label %if.end19

if.end19:                                         ; preds = %if.end
  %spec.select1 = select i1 %cmp, i32 0, i32 %useroffset
  %spec.select = select i1 %cmp, i32 0, i32 %usersize
  %name20 = getelementptr inbounds i8, i8* %call, i64 88
  %2 = bitcast i8* %name20 to i8**
  store i8* %name, i8** %2, align 8
  %object_size21 = getelementptr inbounds i8, i8* %call, i64 28
  %3 = bitcast i8* %object_size21 to i32*
  store i32 %object_size, i32* %3, align 4
  %size = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %size to i32*
  store i32 %object_size, i32* %4, align 8
  %align22 = getelementptr inbounds i8, i8* %call, i64 76
  %5 = bitcast i8* %align22 to i32*
  store i32 %align, i32* %5, align 4
  %ctor23 = getelementptr inbounds i8, i8* %call, i64 64
  %6 = bitcast i8* %ctor23 to void (i8*)**
  store void (i8*)* %ctor, void (i8*)** %6, align 8
  %useroffset24 = getelementptr inbounds i8, i8* %call, i64 176
  %7 = bitcast i8* %useroffset24 to i32*
  store i32 %spec.select1, i32* %7, align 8
  %usersize25 = getelementptr inbounds i8, i8* %call, i64 180
  %8 = bitcast i8* %usersize25 to i32*
  store i32 %spec.select, i32* %8, align 4
  %call26 = call i32 @__kmem_cache_create(%struct.kmem_cache* noundef nonnull %1, i32 noundef %flags) #20
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %out, label %out_free_cache

out:                                              ; preds = %if.end19
  %refcount = getelementptr inbounds i8, i8* %call, i64 60
  %9 = bitcast i8* %refcount to i32*
  store i32 1, i32* %9, align 4
  %list = getelementptr inbounds i8, i8* %call, i64 96
  %10 = bitcast i8* %list to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef %10) #21
  br label %cleanup

if.then31:                                        ; preds = %out_free_cache, %if.end
  %err.0.ph = phi i64 [ -12, %if.end ], [ %phi.cast, %out_free_cache ]
  %call33 = call fastcc i8* @ERR_PTR(i64 noundef %err.0.ph) #21
  %11 = bitcast i8* %call33 to %struct.kmem_cache*
  br label %cleanup

out_free_cache:                                   ; preds = %if.end19
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %12, i8* noundef nonnull %call) #20
  %phi.cast = sext i32 %call26 to i64
  br label %if.then31

cleanup:                                          ; preds = %out, %if.then31
  %retval.0 = phi %struct.kmem_cache* [ %11, %if.then31 ], [ %1, %out ]
  ret %struct.kmem_cache* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #5 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #5 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef %name, i32 noundef %size, i32 noundef %align, i32 noundef %flags, void (i8*)* noundef %ctor) local_unnamed_addr #2 {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create_usercopy(i8* noundef %name, i32 noundef %size, i32 noundef %align, i32 noundef %flags, i32 noundef 0, i32 noundef 0, void (i8*)* noundef %ctor) #21
  ret %struct.kmem_cache* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @slab_kmem_cache_release(%struct.kmem_cache* noundef %s) local_unnamed_addr #2 {
entry:
  call void @__kmem_cache_release(%struct.kmem_cache* noundef %s) #20
  %name = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %0 = load i8*, i8** %name, align 8
  call void @kfree_const(i8* noundef %0) #20
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache, align 8
  %2 = bitcast %struct.kmem_cache* %s to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %1, i8* noundef %2) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kmem_cache_release(%struct.kmem_cache* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kmem_cache_destroy(%struct.kmem_cache* noundef %s) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.kmem_cache* %s, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @slab_mutex) #20
  %refcount = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 11
  %0 = load i32, i32* %refcount, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %if.end7, label %out_unlock

if.end7:                                          ; preds = %if.end
  %call = call fastcc i32 @shutdown_cache(%struct.kmem_cache* noundef nonnull %s) #21
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %out_unlock, label %do.end

do.end:                                           ; preds = %if.end7
  %name = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %1 = load i8*, i8** %name, align 8
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.kmem_cache_destroy, i64 0, i64 0), i8* noundef %1) #24
  call void @dump_stack() #24
  br label %out_unlock

out_unlock:                                       ; preds = %if.end7, %do.end, %if.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @slab_mutex) #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %out_unlock
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @shutdown_cache(%struct.kmem_cache* noundef %s) unnamed_addr #2 {
entry:
  %call = call i32 @__kmem_cache_shutdown(%struct.kmem_cache* noundef %s) #20
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 17
  call fastcc void @list_del(%struct.list_head* noundef %list) #21
  %flags = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 1
  %0 = load i32, i32* %flags, align 8
  %and = and i32 %0, 524288
  %tobool.not = icmp eq i32 %and, 0
  call void @sysfs_slab_unlink(%struct.kmem_cache* noundef %s) #20
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call fastcc void @list_add_tail(%struct.list_head* noundef %list) #21
  call fastcc void @schedule_work() #21
  br label %return

if.else:                                          ; preds = %if.end
  call void @sysfs_slab_release(%struct.kmem_cache* noundef %s) #20
  br label %return

return:                                           ; preds = %if.then1, %if.else, %entry
  %retval.0 = phi i32 [ -16, %entry ], [ 0, %if.else ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kmem_cache_shrink(%struct.kmem_cache* noundef %cachep) local_unnamed_addr #2 {
entry:
  %call = call i32 @__kmem_cache_shrink(%struct.kmem_cache* noundef %cachep) #20
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kmem_cache_shrink(%struct.kmem_cache* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @slab_is_available() local_unnamed_addr #1 {
entry:
  %0 = load i32, i32* @slab_state, align 4
  %cmp = icmp ugt i32 %0, 2
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kmem_valid_obj(i8* noundef %object) local_unnamed_addr #2 {
entry:
  %cmp = icmp ult i8* %object, inttoptr (i64 4096 to i8*)
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint i8* %object to i64
  %sub = add i64 %0, 549755813888
  %cmp1 = icmp ult i64 %sub, 274877906944
  br i1 %cmp1, label %cond.end, label %cleanup

cond.end:                                         ; preds = %lor.lhs.false
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %shr = lshr i64 %add, 12
  %call = call i32 @pfn_is_map_memory(i64 noundef %shr) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %cond.end
  %call9 = call fastcc %struct.page* @virt_to_head_page(i8* noundef %object) #21
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %call9) #20
  %2 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %2, i64 0, i32 0
  %3 = load volatile i64, i64* %flags.i, align 8
  %4 = and i64 %3, 512
  %tobool11 = icmp ne i64 %4, 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry, %cond.end, %if.end
  %retval.0 = phi i1 [ %tobool11, %if.end ], [ false, %cond.end ], [ false, %entry ], [ false, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_is_map_memory(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.page* @virt_to_head_page(i8* noundef %x) unnamed_addr #8 {
entry:
  %0 = ptrtoint i8* %x to i64
  %sub = add i64 %0, 549755813888
  %1 = lshr i64 %sub, 6
  %mul = and i64 %1, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %2 = inttoptr i64 %add to %struct.page*
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %2) #21
  %3 = inttoptr i64 %call to %struct.page*
  ret %struct.page* %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kmem_dump_obj(i8* noundef %object) local_unnamed_addr #2 {
entry:
  %kp = alloca %struct.kmem_obj_info, align 8
  %0 = bitcast %struct.kmem_obj_info* %kp to i8*
  call void @llvm.lifetime.start.p0i8(i64 304, i8* nonnull %0) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(304) %0, i8 0, i64 304, i1 false)
  %1 = ptrtoint i8* %object to i64
  %sub = add i64 %1, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  br i1 %cmp, label %cond.end, label %if.then

cond.end:                                         ; preds = %entry
  %2 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %2, %sub
  %shr = lshr i64 %add, 12
  %call = call i32 @pfn_is_map_memory(i64 noundef %shr) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end26, !prof !8

if.then:                                          ; preds = %entry, %cond.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slab_common.c\22; .popsection; .long 14472b - 14470b; .short 594; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !17
  br label %cleanup

if.end26:                                         ; preds = %cond.end
  %call27 = call fastcc %struct.page* @virt_to_head_page(i8* noundef %object) #21
  %call.i = call fastcc i64 @_compound_head(%struct.page* noundef %call27) #20
  %3 = inttoptr i64 %call.i to %struct.page*
  %flags.i = getelementptr inbounds %struct.page, %struct.page* %3, i64 0, i32 0
  %4 = load volatile i64, i64* %flags.i, align 8
  %5 = and i64 %4, 512
  %tobool30.not = icmp eq i64 %5, 0
  br i1 %tobool30.not, label %if.then45, label %if.end59, !prof !8

if.then45:                                        ; preds = %if.end26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slab_common.c\22; .popsection; .long 14472b - 14470b; .short 597; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !18
  %call58 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #24
  br label %cleanup

if.end59:                                         ; preds = %if.end26
  call void @kmem_obj_info(%struct.kmem_obj_info* noundef nonnull %kp, i8* noundef %object, %struct.page* noundef %call27) #20
  %kp_slab_cache = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 4
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** %kp_slab_cache, align 8
  %tobool60.not = icmp eq %struct.kmem_cache* %6, null
  br i1 %tobool60.not, label %do.end70, label %do.end64

do.end64:                                         ; preds = %if.end59
  %name = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %6, i64 0, i32 16
  %7 = load i8*, i8** %name, align 8
  %call67 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* noundef %7) #24
  br label %if.end73

do.end70:                                         ; preds = %if.end59
  %call72 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)) #24
  br label %if.end73

if.end73:                                         ; preds = %do.end70, %do.end64
  %kp_objp = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 2
  %8 = load i8*, i8** %kp_objp, align 8
  %tobool74.not = icmp eq i8* %8, null
  br i1 %tobool74.not, label %if.end82, label %do.end78

do.end78:                                         ; preds = %if.end73
  %call81 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* noundef nonnull %8) #24
  br label %if.end82

if.end82:                                         ; preds = %do.end78, %if.end73
  %kp_data_offset = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 3
  %9 = load i64, i64* %kp_data_offset, align 8
  %tobool83.not = icmp eq i64 %9, 0
  br i1 %tobool83.not, label %if.end91, label %do.end87

do.end87:                                         ; preds = %if.end82
  %call90 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 noundef %9) #24
  br label %if.end91

if.end91:                                         ; preds = %do.end87, %if.end82
  %10 = load i8*, i8** %kp_objp, align 8
  %tobool93.not = icmp eq i8* %10, null
  br i1 %tobool93.not, label %if.end103, label %if.then94

if.then94:                                        ; preds = %if.end91
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %11 = load i64, i64* %kp_data_offset, align 8
  %12 = add i64 %11, %sub.ptr.rhs.cast
  %sub97 = sub i64 %1, %12
  %call102 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64 noundef %sub97) #24
  br label %if.end103

if.end103:                                        ; preds = %if.then94, %if.end91
  %13 = load %struct.kmem_cache*, %struct.kmem_cache** %kp_slab_cache, align 8
  %tobool105.not = icmp eq %struct.kmem_cache* %13, null
  br i1 %tobool105.not, label %if.end116, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end103
  %usersize = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %13, i64 0, i32 20
  %14 = load i32, i32* %usersize, align 4
  %tobool107.not = icmp eq i32 %14, 0
  br i1 %tobool107.not, label %if.end116, label %do.end111

do.end111:                                        ; preds = %land.lhs.true
  %call115 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 noundef %14) #24
  br label %if.end116

if.end116:                                        ; preds = %do.end111, %land.lhs.true, %if.end103
  %kp_ret = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 5
  %15 = load i8*, i8** %kp_ret, align 8
  %tobool117.not = icmp eq i8* %15, null
  br i1 %tobool117.not, label %do.end128, label %do.end121

do.end121:                                        ; preds = %if.end116
  %call124 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %15) #24
  br label %if.end131

do.end128:                                        ; preds = %if.end116
  %call130 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #24
  br label %if.end131

if.end131:                                        ; preds = %do.end128, %do.end121
  %arrayidx = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 0
  %16 = load i8*, i8** %arrayidx, align 8
  %tobool135.not = icmp eq i8* %16, null
  br i1 %tobool135.not, label %for.end, label %do.end140

do.end140:                                        ; preds = %if.end131
  %call145 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %16) #24
  %arrayidx.1 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 1
  %17 = load i8*, i8** %arrayidx.1, align 8
  %tobool135.not.1 = icmp eq i8* %17, null
  br i1 %tobool135.not.1, label %for.end, label %do.end140.1

do.end140.1:                                      ; preds = %do.end140
  %call145.1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %17) #24
  %arrayidx.2 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 2
  %18 = load i8*, i8** %arrayidx.2, align 8
  %tobool135.not.2 = icmp eq i8* %18, null
  br i1 %tobool135.not.2, label %for.end, label %do.end140.2

do.end140.2:                                      ; preds = %do.end140.1
  %call145.2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %18) #24
  %arrayidx.3 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 3
  %19 = load i8*, i8** %arrayidx.3, align 8
  %tobool135.not.3 = icmp eq i8* %19, null
  br i1 %tobool135.not.3, label %for.end, label %do.end140.3

do.end140.3:                                      ; preds = %do.end140.2
  %call145.3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %19) #24
  %arrayidx.4 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 4
  %20 = load i8*, i8** %arrayidx.4, align 8
  %tobool135.not.4 = icmp eq i8* %20, null
  br i1 %tobool135.not.4, label %for.end, label %do.end140.4

do.end140.4:                                      ; preds = %do.end140.3
  %call145.4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %20) #24
  %arrayidx.5 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 5
  %21 = load i8*, i8** %arrayidx.5, align 8
  %tobool135.not.5 = icmp eq i8* %21, null
  br i1 %tobool135.not.5, label %for.end, label %do.end140.5

do.end140.5:                                      ; preds = %do.end140.4
  %call145.5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %21) #24
  %arrayidx.6 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 6
  %22 = load i8*, i8** %arrayidx.6, align 8
  %tobool135.not.6 = icmp eq i8* %22, null
  br i1 %tobool135.not.6, label %for.end, label %do.end140.6

do.end140.6:                                      ; preds = %do.end140.5
  %call145.6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %22) #24
  %arrayidx.7 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 7
  %23 = load i8*, i8** %arrayidx.7, align 8
  %tobool135.not.7 = icmp eq i8* %23, null
  br i1 %tobool135.not.7, label %for.end, label %do.end140.7

do.end140.7:                                      ; preds = %do.end140.6
  %call145.7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %23) #24
  %arrayidx.8 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 8
  %24 = load i8*, i8** %arrayidx.8, align 8
  %tobool135.not.8 = icmp eq i8* %24, null
  br i1 %tobool135.not.8, label %for.end, label %do.end140.8

do.end140.8:                                      ; preds = %do.end140.7
  %call145.8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %24) #24
  %arrayidx.9 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 9
  %25 = load i8*, i8** %arrayidx.9, align 8
  %tobool135.not.9 = icmp eq i8* %25, null
  br i1 %tobool135.not.9, label %for.end, label %do.end140.9

do.end140.9:                                      ; preds = %do.end140.8
  %call145.9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %25) #24
  %arrayidx.10 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 10
  %26 = load i8*, i8** %arrayidx.10, align 8
  %tobool135.not.10 = icmp eq i8* %26, null
  br i1 %tobool135.not.10, label %for.end, label %do.end140.10

do.end140.10:                                     ; preds = %do.end140.9
  %call145.10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %26) #24
  %arrayidx.11 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 11
  %27 = load i8*, i8** %arrayidx.11, align 8
  %tobool135.not.11 = icmp eq i8* %27, null
  br i1 %tobool135.not.11, label %for.end, label %do.end140.11

do.end140.11:                                     ; preds = %do.end140.10
  %call145.11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %27) #24
  %arrayidx.12 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 12
  %28 = load i8*, i8** %arrayidx.12, align 8
  %tobool135.not.12 = icmp eq i8* %28, null
  br i1 %tobool135.not.12, label %for.end, label %do.end140.12

do.end140.12:                                     ; preds = %do.end140.11
  %call145.12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %28) #24
  %arrayidx.13 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 13
  %29 = load i8*, i8** %arrayidx.13, align 8
  %tobool135.not.13 = icmp eq i8* %29, null
  br i1 %tobool135.not.13, label %for.end, label %do.end140.13

do.end140.13:                                     ; preds = %do.end140.12
  %call145.13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %29) #24
  %arrayidx.14 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 14
  %30 = load i8*, i8** %arrayidx.14, align 8
  %tobool135.not.14 = icmp eq i8* %30, null
  br i1 %tobool135.not.14, label %for.end, label %do.end140.14

do.end140.14:                                     ; preds = %do.end140.13
  %call145.14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %30) #24
  %arrayidx.15 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 6, i64 15
  %31 = load i8*, i8** %arrayidx.15, align 8
  %tobool135.not.15 = icmp eq i8* %31, null
  br i1 %tobool135.not.15, label %for.end, label %do.end140.15

do.end140.15:                                     ; preds = %do.end140.14
  %call145.15 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %31) #24
  br label %for.end

for.end:                                          ; preds = %do.end140.15, %do.end140.14, %do.end140.13, %do.end140.12, %do.end140.11, %do.end140.10, %do.end140.9, %do.end140.8, %do.end140.7, %do.end140.6, %do.end140.5, %do.end140.4, %do.end140.3, %do.end140.2, %do.end140.1, %do.end140, %if.end131
  %arrayidx146 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 0
  %32 = load i8*, i8** %arrayidx146, align 8
  %tobool147.not = icmp eq i8* %32, null
  br i1 %tobool147.not, label %cleanup, label %if.end154

if.end154:                                        ; preds = %for.end
  %call153 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0)) #24
  %.pre = load i8*, i8** %arrayidx146, align 8
  %tobool163.not = icmp eq i8* %.pre, null
  br i1 %tobool163.not, label %cleanup, label %do.end168

do.end168:                                        ; preds = %if.end154
  %call173 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %.pre) #24
  %arrayidx162.1 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 1
  %33 = load i8*, i8** %arrayidx162.1, align 8
  %tobool163.not.1 = icmp eq i8* %33, null
  br i1 %tobool163.not.1, label %cleanup, label %do.end168.1

do.end168.1:                                      ; preds = %do.end168
  %call173.1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %33) #24
  %arrayidx162.2 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 2
  %34 = load i8*, i8** %arrayidx162.2, align 8
  %tobool163.not.2 = icmp eq i8* %34, null
  br i1 %tobool163.not.2, label %cleanup, label %do.end168.2

do.end168.2:                                      ; preds = %do.end168.1
  %call173.2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %34) #24
  %arrayidx162.3 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 3
  %35 = load i8*, i8** %arrayidx162.3, align 8
  %tobool163.not.3 = icmp eq i8* %35, null
  br i1 %tobool163.not.3, label %cleanup, label %do.end168.3

do.end168.3:                                      ; preds = %do.end168.2
  %call173.3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %35) #24
  %arrayidx162.4 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 4
  %36 = load i8*, i8** %arrayidx162.4, align 8
  %tobool163.not.4 = icmp eq i8* %36, null
  br i1 %tobool163.not.4, label %cleanup, label %do.end168.4

do.end168.4:                                      ; preds = %do.end168.3
  %call173.4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %36) #24
  %arrayidx162.5 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 5
  %37 = load i8*, i8** %arrayidx162.5, align 8
  %tobool163.not.5 = icmp eq i8* %37, null
  br i1 %tobool163.not.5, label %cleanup, label %do.end168.5

do.end168.5:                                      ; preds = %do.end168.4
  %call173.5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %37) #24
  %arrayidx162.6 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 6
  %38 = load i8*, i8** %arrayidx162.6, align 8
  %tobool163.not.6 = icmp eq i8* %38, null
  br i1 %tobool163.not.6, label %cleanup, label %do.end168.6

do.end168.6:                                      ; preds = %do.end168.5
  %call173.6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %38) #24
  %arrayidx162.7 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 7
  %39 = load i8*, i8** %arrayidx162.7, align 8
  %tobool163.not.7 = icmp eq i8* %39, null
  br i1 %tobool163.not.7, label %cleanup, label %do.end168.7

do.end168.7:                                      ; preds = %do.end168.6
  %call173.7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %39) #24
  %arrayidx162.8 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 8
  %40 = load i8*, i8** %arrayidx162.8, align 8
  %tobool163.not.8 = icmp eq i8* %40, null
  br i1 %tobool163.not.8, label %cleanup, label %do.end168.8

do.end168.8:                                      ; preds = %do.end168.7
  %call173.8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %40) #24
  %arrayidx162.9 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 9
  %41 = load i8*, i8** %arrayidx162.9, align 8
  %tobool163.not.9 = icmp eq i8* %41, null
  br i1 %tobool163.not.9, label %cleanup, label %do.end168.9

do.end168.9:                                      ; preds = %do.end168.8
  %call173.9 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %41) #24
  %arrayidx162.10 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 10
  %42 = load i8*, i8** %arrayidx162.10, align 8
  %tobool163.not.10 = icmp eq i8* %42, null
  br i1 %tobool163.not.10, label %cleanup, label %do.end168.10

do.end168.10:                                     ; preds = %do.end168.9
  %call173.10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %42) #24
  %arrayidx162.11 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 11
  %43 = load i8*, i8** %arrayidx162.11, align 8
  %tobool163.not.11 = icmp eq i8* %43, null
  br i1 %tobool163.not.11, label %cleanup, label %do.end168.11

do.end168.11:                                     ; preds = %do.end168.10
  %call173.11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %43) #24
  %arrayidx162.12 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 12
  %44 = load i8*, i8** %arrayidx162.12, align 8
  %tobool163.not.12 = icmp eq i8* %44, null
  br i1 %tobool163.not.12, label %cleanup, label %do.end168.12

do.end168.12:                                     ; preds = %do.end168.11
  %call173.12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %44) #24
  %arrayidx162.13 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 13
  %45 = load i8*, i8** %arrayidx162.13, align 8
  %tobool163.not.13 = icmp eq i8* %45, null
  br i1 %tobool163.not.13, label %cleanup, label %do.end168.13

do.end168.13:                                     ; preds = %do.end168.12
  %call173.13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %45) #24
  %arrayidx162.14 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 14
  %46 = load i8*, i8** %arrayidx162.14, align 8
  %tobool163.not.14 = icmp eq i8* %46, null
  br i1 %tobool163.not.14, label %cleanup, label %do.end168.14

do.end168.14:                                     ; preds = %do.end168.13
  %call173.14 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %46) #24
  %arrayidx162.15 = getelementptr inbounds %struct.kmem_obj_info, %struct.kmem_obj_info* %kp, i64 0, i32 7, i64 15
  %47 = load i8*, i8** %arrayidx162.15, align 8
  %tobool163.not.15 = icmp eq i8* %47, null
  br i1 %tobool163.not.15, label %cleanup, label %do.end168.15

do.end168.15:                                     ; preds = %do.end168.14
  %call173.15 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef nonnull %47) #24
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end154, %do.end168, %do.end168.1, %do.end168.2, %do.end168.3, %do.end168.4, %do.end168.5, %do.end168.6, %do.end168.7, %do.end168.8, %do.end168.9, %do.end168.10, %do.end168.11, %do.end168.12, %do.end168.13, %do.end168.14, %do.end168.15, %if.then, %if.then45
  call void @llvm.lifetime.end.p0i8(i64 304, i8* nonnull %0) #22
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_obj_info(%struct.kmem_obj_info* noundef, i8* noundef, %struct.page* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @create_boot_cache(%struct.kmem_cache* noundef %s, i8* noundef %name, i32 noundef %size, i32 noundef %flags, i32 noundef %useroffset, i32 noundef %usersize) local_unnamed_addr #10 section ".init.text" {
entry:
  %name1 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  store i8* %name, i8** %name1, align 8
  %object_size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 4
  store i32 %size, i32* %object_size, align 4
  %size2 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  store i32 %size, i32* %size2, align 8
  %conv = zext i32 %size to i64
  %call = call fastcc i1 @is_power_of_2(i64 noundef %conv) #25
  %0 = icmp ugt i32 %size, 128
  %1 = and i1 %0, %call
  %align.0 = select i1 %1, i32 %size, i32 128
  %call4 = call fastcc i32 @calculate_alignment(i32 noundef %flags, i32 noundef %align.0, i32 noundef %size) #21
  %align5 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 14
  store i32 %call4, i32* %align5, align 4
  %useroffset6 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 19
  store i32 %useroffset, i32* %useroffset6, align 8
  %usersize7 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 20
  store i32 %usersize, i32* %usersize7, align 4
  %call8 = call i32 @__kmem_cache_create(%struct.kmem_cache* noundef %s, i32 noundef %flags) #20
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0), i8* noundef %name, i32 noundef %size, i32 noundef %call8) #23
  unreachable

if.end10:                                         ; preds = %entry
  %refcount = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 11
  store i32 -1, i32* %refcount, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_power_of_2(i64 noundef %n) unnamed_addr #11 {
entry:
  %cmp.not = icmp eq i64 %n, 0
  br i1 %cmp.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = call i64 @llvm.ctpop.i64(i64 %n), !range !19
  %cmp1 = icmp ult i64 %0, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kmem_cache_create(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local %struct.kmem_cache* @create_kmalloc_cache(i8* noundef %name, i32 noundef %size, i32 noundef %flags, i32 noundef %useroffset, i32 noundef %usersize) local_unnamed_addr #10 section ".init.text" {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %0, i32 noundef 2048) #21
  %1 = bitcast i8* %call to %struct.kmem_cache*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8* noundef %name) #23
  unreachable

if.end:                                           ; preds = %entry
  call void @create_boot_cache(%struct.kmem_cache* noundef nonnull %1, i8* noundef %name, i32 noundef %size, i32 noundef %flags, i32 noundef %useroffset, i32 noundef %usersize) #26
  %list = getelementptr inbounds i8, i8* %call, i64 96
  %2 = bitcast i8* %list to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef %2) #21
  %refcount = getelementptr inbounds i8, i8* %call, i64 60
  %3 = bitcast i8* %refcount to i32*
  store i32 1, i32* %3, align 4
  ret %struct.kmem_cache* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k, i32 noundef %flags) unnamed_addr #2 {
entry:
  %or = or i32 %flags, 256
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef %or) #20
  ret i8* %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #12 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @slab_caches, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef nonnull @slab_caches, %struct.list_head* noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kmem_cache* @kmalloc_slab(i64 noundef %size, i32 noundef %flags) local_unnamed_addr #2 {
entry:
  %cmp = icmp ult i64 %size, 193
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i64 %size, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %conv = trunc i64 %size to i32
  %call = call fastcc i32 @size_index_elem(i32 noundef %conv) #21
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [24 x i8], [24 x i8]* @size_index, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %0 to i32
  br label %if.end27

if.else:                                          ; preds = %entry
  %cmp3 = icmp ugt i64 %size, 8192
  br i1 %cmp3, label %if.then13, label %if.end24, !prof !8

if.then13:                                        ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/slab_common.c\22; .popsection; .long 14472b - 14470b; .short 744; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #22, !srcloc !20
  br label %cleanup

if.end24:                                         ; preds = %if.else
  %1 = trunc i64 %size to i32
  %conv25 = add nsw i32 %1, -1
  %2 = call i32 @llvm.ctlz.i32(i32 %conv25, i1 false) #22, !range !21
  %narrow.i = sub nuw nsw i32 32, %2
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.end
  %index.0 = phi i32 [ %conv2, %if.end ], [ %narrow.i, %if.end24 ]
  %and.i = and i32 %flags, 17
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %kmalloc_type.exit, label %if.end.i, !prof !14

if.end.i:                                         ; preds = %if.end27
  %and2.i = and i32 %flags, 1
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool3.not.i, i64 1, i64 2
  br label %kmalloc_type.exit

kmalloc_type.exit:                                ; preds = %if.end27, %if.end.i
  %retval.0.i = phi i64 [ 0, %if.end27 ], [ %..i, %if.end.i ]
  %idxprom31 = zext i32 %index.0 to i64
  %arrayidx32 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %retval.0.i, i64 %idxprom31
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx32, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then, %kmalloc_type.exit
  %retval.0 = phi %struct.kmem_cache* [ %3, %kmalloc_type.exit ], [ inttoptr (i64 16 to %struct.kmem_cache*), %if.then ], [ null, %if.then13 ]
  ret %struct.kmem_cache* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @size_index_elem(i32 noundef %bytes) unnamed_addr #5 {
entry:
  %sub = add i32 %bytes, -1
  %div = lshr i32 %sub, 3
  ret i32 %div
}

; Function Attrs: cold nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize writeonly
define dso_local void @setup_kmalloc_cache_index_table() local_unnamed_addr #13 section ".init.text" {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.036 = phi i32 [ 8, %entry ], [ %add, %for.inc ]
  %call = call fastcc i32 @size_index_elem(i32 noundef %i.036) #21
  %cmp1 = icmp ugt i32 %call, 23
  br i1 %cmp1, label %for.body6.preheader, label %for.inc

for.inc:                                          ; preds = %for.body
  %conv = zext i32 %call to i64
  %arrayidx = getelementptr [24 x i8], [24 x i8]* @size_index, i64 0, i64 %conv
  store i8 7, i8* %arrayidx, align 1
  %add = add nuw nsw i32 %i.036, 8
  %cmp = icmp ult i32 %i.036, 120
  br i1 %cmp, label %for.body, label %for.body6.preheader

for.body6.preheader:                              ; preds = %for.body, %for.inc
  br label %for.body6

for.body6:                                        ; preds = %for.body6.preheader, %for.body6
  %i.137 = phi i32 [ %add11, %for.body6 ], [ 72, %for.body6.preheader ]
  %call7 = call fastcc i32 @size_index_elem(i32 noundef %i.137) #21
  %idxprom8 = zext i32 %call7 to i64
  %arrayidx9 = getelementptr [24 x i8], [24 x i8]* @size_index, i64 0, i64 %idxprom8
  store i8 7, i8* %arrayidx9, align 1
  %add11 = add nuw nsw i32 %i.137, 8
  %cmp4 = icmp ult i32 %i.137, 89
  br i1 %cmp4, label %for.body6, label %for.body16

for.body16:                                       ; preds = %for.body6, %for.body16
  %i.238 = phi i32 [ %add21, %for.body16 ], [ 136, %for.body6 ]
  %call17 = call fastcc i32 @size_index_elem(i32 noundef %i.238) #21
  %idxprom18 = zext i32 %call17 to i64
  %arrayidx19 = getelementptr [24 x i8], [24 x i8]* @size_index, i64 0, i64 %idxprom18
  store i8 8, i8* %arrayidx19, align 1
  %add21 = add nuw nsw i32 %i.238, 8
  %cmp14 = icmp ult i32 %i.238, 185
  br i1 %cmp14, label %for.body16, label %for.end22

for.end22:                                        ; preds = %for.body16
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @create_kmalloc_caches(i32 noundef %flags) local_unnamed_addr #10 section ".init.text" {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc6
  %indvars.iv51 = phi i64 [ 0, %entry ], [ %indvars.iv.next52, %for.inc6 ]
  %0 = trunc i64 %indvars.iv51 to i32
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 7, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx5 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %indvars.iv51, i64 %indvars.iv
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx5, align 8
  %tobool.not = icmp eq %struct.kmem_cache* %1, null
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %2 = trunc i64 %indvars.iv to i32
  call fastcc void @new_kmalloc_cache(i32 noundef %2, i32 noundef %0, i32 noundef %flags) #26
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %for.inc6, label %for.body3

for.inc6:                                         ; preds = %for.inc
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 2
  br i1 %exitcond54.not, label %for.end8, label %for.cond1.preheader

for.end8:                                         ; preds = %for.inc6
  store i32 3, i32* @slab_state, align 4
  %or = or i32 %flags, 16384
  br label %for.body11

for.body11:                                       ; preds = %for.end8, %if.end26
  %indvars.iv55 = phi i64 [ 0, %for.end8 ], [ %indvars.iv.next56, %if.end26 ]
  %arrayidx13 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 %indvars.iv55
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx13, align 8
  %tobool14.not = icmp eq %struct.kmem_cache* %3, null
  br i1 %tobool14.not, label %if.end26, label %if.then15

if.then15:                                        ; preds = %for.body11
  %arrayidx18 = getelementptr [26 x %struct.kmalloc_info_struct], [26 x %struct.kmalloc_info_struct]* @kmalloc_info, i64 0, i64 %indvars.iv55, i32 0, i64 2
  %4 = load i8*, i8** %arrayidx18, align 8
  %size = getelementptr [26 x %struct.kmalloc_info_struct], [26 x %struct.kmalloc_info_struct]* @kmalloc_info, i64 0, i64 %indvars.iv55, i32 1
  %5 = load i32, i32* %size, align 8
  %call = call %struct.kmem_cache* @create_kmalloc_cache(i8* noundef %4, i32 noundef %5, i32 noundef %or, i32 noundef 0, i32 noundef %5) #26
  %arrayidx25 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 2, i64 %indvars.iv55
  store %struct.kmem_cache* %call, %struct.kmem_cache** %arrayidx25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then15, %for.body11
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond58.not = icmp eq i64 %indvars.iv.next56, 14
  br i1 %exitcond58.not, label %for.end29, label %for.body11

for.end29:                                        ; preds = %if.end26
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @new_kmalloc_cache(i32 noundef %idx, i32 noundef %type, i32 noundef %flags) unnamed_addr #10 section ".init.text" {
entry:
  %cmp = icmp eq i32 %type, 1
  %or = or i32 %flags, 131072
  %spec.select = select i1 %cmp, i32 %or, i32 %flags
  %idxprom = sext i32 %idx to i64
  %idxprom1 = zext i32 %type to i64
  %arrayidx2 = getelementptr [26 x %struct.kmalloc_info_struct], [26 x %struct.kmalloc_info_struct]* @kmalloc_info, i64 0, i64 %idxprom, i32 0, i64 %idxprom1
  %0 = load i8*, i8** %arrayidx2, align 8
  %size = getelementptr [26 x %struct.kmalloc_info_struct], [26 x %struct.kmalloc_info_struct]* @kmalloc_info, i64 0, i64 %idxprom, i32 1
  %1 = load i32, i32* %size, align 8
  %call = call %struct.kmem_cache* @create_kmalloc_cache(i8* noundef %0, i32 noundef %1, i32 noundef %spec.select, i32 noundef 0, i32 noundef %1) #26
  %arrayidx11 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom1, i64 %idxprom
  store %struct.kmem_cache* %call, %struct.kmem_cache** %arrayidx11, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kmalloc_fix_flags(i32 noundef %flags) local_unnamed_addr #2 {
entry:
  %flags.addr = alloca i32, align 4
  %invalid_mask = alloca i32, align 4
  %0 = bitcast i32* %invalid_mask to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #22
  %and = and i32 %flags, -33554426
  store i32 %and, i32* %invalid_mask, align 4
  %and1 = and i32 %flags, 33554425
  store i32 %and1, i32* %flags.addr, align 4
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.95, i64 0, i64 0), i32 noundef %and, i32* noundef nonnull %invalid_mask, i32 noundef %and1, i32* noundef nonnull %flags.addr) #24
  call void @dump_stack() #24
  %1 = load i32, i32* %flags.addr, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #22
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local noalias i8* @kmalloc_order(i64 noundef %size, i32 noundef %flags, i32 noundef %order) local_unnamed_addr #2 {
entry:
  %and = and i32 %flags, -33554426
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !14

if.then:                                          ; preds = %entry
  %call = call i32 @kmalloc_fix_flags(i32 noundef %flags) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %flags.addr.0 = phi i32 [ %call, %if.then ], [ %flags, %entry ]
  %or = or i32 %flags.addr.0, 262144
  %call3 = call fastcc %struct.page* @alloc_pages(i32 noundef %or, i32 noundef %order) #21
  %tobool4.not = icmp eq %struct.page* %call3, null
  br i1 %tobool4.not, label %if.end15, label %if.then12, !prof !8

if.then12:                                        ; preds = %if.end
  %0 = ptrtoint %struct.page* %call3 to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %sh_prom = zext i32 %order to i64
  %shl = shl i64 4096, %sh_prom
  %conv14 = trunc i64 %shl to i32
  call fastcc void @mod_lruvec_page_state(%struct.page* noundef nonnull %call3, i32 noundef %conv14) #21
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  %ret.0 = phi i8* [ %1, %if.then12 ], [ null, %if.end ]
  ret i8* %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages(i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #2 {
entry:
  call fastcc void @numa_node_id() #21
  %call1 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask, i32 noundef %order) #21
  ret %struct.page* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mod_lruvec_page_state(%struct.page* nocapture noundef readnone %page, i32 noundef %val) unnamed_addr #2 {
entry:
  %conv = sext i32 %val to i64
  call void @mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef 6, i64 noundef %conv) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @slab_start(%struct.seq_file* nocapture readnone %m, i64* nocapture noundef readonly %pos) #2 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @slab_mutex) #20
  %0 = load i64, i64* %pos, align 8
  %call = call %struct.list_head* @seq_list_start(%struct.list_head* noundef nonnull @slab_caches, i64 noundef %0) #20
  %1 = bitcast %struct.list_head* %call to i8*
  ret i8* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.list_head* @seq_list_start(%struct.list_head* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @slab_next(%struct.seq_file* nocapture readnone %m, i8* noundef %p, i64* noundef %pos) #2 {
entry:
  %call = call %struct.list_head* @seq_list_next(i8* noundef %p, %struct.list_head* noundef nonnull @slab_caches, i64* noundef %pos) #20
  %0 = bitcast %struct.list_head* %call to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.list_head* @seq_list_next(i8* noundef, %struct.list_head* noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @slab_stop(%struct.seq_file* nocapture readnone %m, i8* nocapture readnone %p) #2 {
entry:
  call void @mutex_unlock(%struct.mutex* noundef nonnull @slab_mutex) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dump_unreclaimable_slab() local_unnamed_addr #2 {
entry:
  %sinfo = alloca %struct.slabinfo, align 8
  %0 = bitcast %struct.slabinfo* %sinfo to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !22
  %call = call i32 @mutex_trylock(%struct.mutex* noundef nonnull @slab_mutex) #20
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.96, i64 0, i64 0)) #24
  br label %cleanup

do.end4:                                          ; preds = %entry
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.97, i64 0, i64 0)) #24
  %call11 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.98, i64 0, i64 0)) #24
  %.pn49 = load i8*, i8** bitcast (%struct.list_head* @slab_caches to i8**), align 8
  %cmp.not52 = icmp eq i8* %.pn49, bitcast (%struct.list_head* @slab_caches to i8*)
  br i1 %cmp.not52, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.end4
  %num_objs = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 1
  %active_objs = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %.pn53 = phi i8* [ %.pn49, %for.body.lr.ph ], [ %.pn, %for.inc ]
  %flags = getelementptr i8, i8* %.pn53, i64 -88
  %1 = bitcast i8* %flags to i32*
  %2 = load i32, i32* %1, align 8
  %and = and i32 %2, 131072
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end18, label %for.inc

if.end18:                                         ; preds = %for.body
  %s.055.in = getelementptr i8, i8* %.pn53, i64 -96
  %s.055 = bitcast i8* %s.055.in to %struct.kmem_cache*
  call void @get_slabinfo(%struct.kmem_cache* noundef %s.055, %struct.slabinfo* noundef nonnull %sinfo) #20
  %3 = load i64, i64* %num_objs, align 8
  %cmp19.not = icmp eq i64 %3, 0
  br i1 %cmp19.not, label %for.inc, label %do.end23

do.end23:                                         ; preds = %if.end18
  %name = getelementptr i8, i8* %.pn53, i64 -8
  %4 = bitcast i8* %name to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i64, i64* %active_objs, align 8
  %size = getelementptr i8, i8* %.pn53, i64 -72
  %7 = bitcast i8* %size to i32*
  %8 = load i32, i32* %7, align 8
  %conv = zext i32 %8 to i64
  %mul = mul i64 %6, %conv
  %div = lshr i64 %mul, 10
  %mul28 = mul i64 %3, %conv
  %div29 = lshr i64 %mul28, 10
  %call30 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.99, i64 0, i64 0), i8* noundef %5, i64 noundef %div, i64 noundef %div29) #24
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %do.end23, %for.body
  %9 = bitcast i8* %.pn53 to i8**
  %.pn = load i8*, i8** %9, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @slab_caches to i8*)
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %do.end4
  call void @mutex_unlock(%struct.mutex* noundef nonnull @slab_mutex) #20
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_slabinfo(%struct.kmem_cache* noundef, %struct.slabinfo* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @slab_proc_init() #10 section ".init.text" {
entry:
  %call = call %struct.proc_dir_entry* @proc_create(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.101, i64 0, i64 0), i16 noundef 256, %struct.proc_dir_entry* noundef null, %struct.proc_ops* noundef nonnull @slabinfo_proc_ops) #20
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @krealloc(i8* noundef %p, i64 noundef %new_size, i32 noundef %flags) local_unnamed_addr #2 {
entry:
  %tobool.not = icmp eq i64 %new_size, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  %cmp.not.i = icmp ult i8* %p, inttoptr (i64 17 to i8*)
  br i1 %cmp.not.i, label %if.end7.i, label %if.then.i, !prof !8

if.then.i:                                        ; preds = %if.end
  %call6.i = call i64 @__ksize(i8* noundef %p) #20
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i, %if.end
  %ks.0.i = phi i64 [ %call6.i, %if.then.i ], [ 0, %if.end ]
  %cmp8.not.i = icmp ult i64 %ks.0.i, %new_size
  br i1 %cmp8.not.i, label %if.end12.i, label %__do_krealloc.exit

if.end12.i:                                       ; preds = %if.end7.i
  %0 = call i8* @llvm.returnaddress(i32 0) #22
  %1 = ptrtoint i8* %0 to i64
  %and.i = and i64 %1, 36028797018963968
  %tobool13.not.i = icmp eq i64 %and.i, 0
  %2 = load i64, i64* @vabits_actual, align 8
  %shl18.neg.i = shl nsw i64 -1, %2
  %or.i = or i64 %shl18.neg.i, %1
  %and21.i = and i64 %shl18.neg.i, 36028797018963967
  %neg.i = xor i64 %and21.i, -1
  %and23.i = and i64 %neg.i, %1
  %cond25.i = select i1 %tobool13.not.i, i64 %and23.i, i64 %or.i
  %call26.i = call i8* @__kmalloc_track_caller(i64 noundef %new_size, i32 noundef %flags, i64 noundef %cond25.i) #20
  %tobool27.i = icmp ne i8* %call26.i, null
  %tobool28.i = icmp ne i8* %p, null
  %or.cond.i = and i1 %tobool28.i, %tobool27.i
  br i1 %or.cond.i, label %__do_krealloc.exit.thread, label %__do_krealloc.exit

__do_krealloc.exit.thread:                        ; preds = %if.end12.i
  %call31.i = call i8* @memcpy(i8* noundef nonnull %call26.i, i8* noundef nonnull %p, i64 noundef %ks.0.i) #20
  br label %land.lhs.true

__do_krealloc.exit:                               ; preds = %if.end7.i, %if.end12.i
  %retval.0.i = phi i8* [ %call26.i, %if.end12.i ], [ %p, %if.end7.i ]
  %tobool4.not = icmp eq i8* %retval.0.i, null
  br i1 %tobool4.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %__do_krealloc.exit.thread, %__do_krealloc.exit
  %retval.0.i19 = phi i8* [ %call26.i, %__do_krealloc.exit.thread ], [ %retval.0.i, %__do_krealloc.exit ]
  %cmp.not = icmp eq i8* %retval.0.i19, %p
  br i1 %cmp.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true, %entry
  %retval.0.ph = phi i8* [ inttoptr (i64 16 to i8*), %entry ], [ %retval.0.i19, %land.lhs.true ]
  call void @kfree(i8* noundef %p) #20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %__do_krealloc.exit, %land.lhs.true
  %retval.0 = phi i8* [ %p, %land.lhs.true ], [ null, %__do_krealloc.exit ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kfree_sensitive(i8* noundef %p) local_unnamed_addr #2 {
entry:
  %call = call i64 @ksize(i8* noundef %p) #21
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @memzero_explicit(i8* noundef %p, i64 noundef %call) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @kfree(i8* noundef %p) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @ksize(i8* noundef %objp) local_unnamed_addr #2 {
entry:
  %cmp = icmp ult i8* %objp, inttoptr (i64 17 to i8*)
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !prof !8

lor.lhs.false:                                    ; preds = %entry
  %call4 = call i64 @__ksize(i8* noundef %objp) #20
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false
  %retval.0 = phi i64 [ %call4, %lor.lhs.false ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memzero_explicit(i8* noundef %s, i64 noundef %count) unnamed_addr #2 {
entry:
  %call = call i8* @memset(i8* noundef %s, i32 noundef 0, i64 noundef %count) #20
  call void asm sideeffect "", "r,~{memory}"(i8* %s) #22, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__ksize(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i32 @should_failslab(%struct.kmem_cache* nocapture noundef readnone %s, i32 noundef %gfpflags) local_unnamed_addr #5 {
entry:
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cache_line_size() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #5 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kmem_cache_shutdown(%struct.kmem_cache* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #12 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #21
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_slab_unlink(%struct.kmem_cache* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new) unnamed_addr #12 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @slab_caches_to_rcu_destroy, i64 0, i32 1), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef nonnull @slab_caches_to_rcu_destroy) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work() unnamed_addr #2 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_slab_release(%struct.kmem_cache* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #12 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #21
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #12 {
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
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq) unnamed_addr #2 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef nonnull @slab_caches_to_rcu_destroy_work) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @slab_caches_to_rcu_destroy_workfn(%struct.work_struct* nocapture noundef readnone %work) #2 {
entry:
  %to_destroy = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %to_destroy to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #22
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %to_destroy, i64 0, i32 0
  store %struct.list_head* %to_destroy, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %to_destroy, i64 0, i32 1
  store %struct.list_head* %to_destroy, %struct.list_head** %prev, align 8
  call void @mutex_lock(%struct.mutex* noundef nonnull @slab_mutex) #20
  call fastcc void @list_splice_init(%struct.list_head* noundef nonnull %to_destroy) #21
  call void @mutex_unlock(%struct.mutex* noundef nonnull @slab_mutex) #20
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %to_destroy) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @rcu_barrier() #20
  %1 = bitcast %struct.list_head* %to_destroy to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.list_head*
  %cmp.not31 = icmp eq %struct.list_head* %to_destroy, %3
  br i1 %cmp.not31, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %.pn.in.in32 = phi i8* [ %.pn, %for.body ], [ %2, %if.end ]
  %s.0.in = getelementptr i8, i8* %.pn.in.in32, i64 -96
  %s.0 = bitcast i8* %s.0.in to %struct.kmem_cache*
  %.pn.in = bitcast i8* %.pn.in.in32 to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  call void @sysfs_slab_release(%struct.kmem_cache* noundef %s.0) #20
  %4 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %to_destroy, %4
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.end, %entry
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_init(%struct.list_head* noundef %head) unnamed_addr #12 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull @slab_caches_to_rcu_destroy) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %head, %struct.list_head* noundef %0) #21
  call fastcc void @INIT_LIST_HEAD() #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #14 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @slab_caches_to_rcu_destroy, i64 0, i32 0), align 8
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @slab_caches_to_rcu_destroy, i64 0, i32 1), align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next4, align 8
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next5, align 8
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev6, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD() unnamed_addr #12 {
entry:
  store volatile %struct.list_head* @slab_caches_to_rcu_destroy, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @slab_caches_to_rcu_destroy, i64 0, i32 0), align 8
  store %struct.list_head* @slab_caches_to_rcu_destroy, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @slab_caches_to_rcu_destroy, i64 0, i32 1), align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #8 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.1* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !14

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

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #2 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef 0, i32 noundef %gfp_mask, i32 noundef %order) #21
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #16 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid, i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #2 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef %order, i32 noundef %nid, %struct.nodemask_t* noundef null) #20
  ret %struct.page* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #16 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #27, !srcloc !24
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.proc_dir_entry* @proc_create(i8* noundef, i16 noundef, %struct.proc_dir_entry* noundef, %struct.proc_ops* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @slabinfo_open(%struct.inode* nocapture noundef readnone %inode, %struct.file* noundef %file) #2 {
entry:
  %call = call i32 @seq_open(%struct.file* noundef %file, %struct.seq_operations* noundef nonnull @slabinfo_op) #20
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_read(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @slabinfo_write(%struct.file* noundef, i8* noundef, i64 noundef, i64* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(%struct.file* noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(%struct.inode* noundef, %struct.file* noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(%struct.file* noundef, %struct.seq_operations* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @slab_show(%struct.seq_file* noundef %m, i8* noundef %p) #2 {
entry:
  %0 = load i8*, i8** bitcast (%struct.list_head* @slab_caches to i8**), align 8
  %cmp = icmp eq i8* %0, %p
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @print_slabinfo_header(%struct.seq_file* noundef %m) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, i8* %p, i64 -96
  %1 = bitcast i8* %add.ptr to %struct.kmem_cache*
  call fastcc void @cache_show(%struct.kmem_cache* noundef %1, %struct.seq_file* noundef %m) #21
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @print_slabinfo_header(%struct.seq_file* noundef %m) unnamed_addr #2 {
entry:
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.102, i64 0, i64 0)) #20
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.103, i64 0, i64 0)) #20
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.104, i64 0, i64 0)) #20
  call void @seq_puts(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.105, i64 0, i64 0)) #20
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cache_show(%struct.kmem_cache* noundef %s, %struct.seq_file* noundef %m) unnamed_addr #2 {
entry:
  %sinfo = alloca %struct.slabinfo, align 8
  %0 = bitcast %struct.slabinfo* %sinfo to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #22
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !22
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 64) #20
  call void @get_slabinfo(%struct.kmem_cache* noundef %s, %struct.slabinfo* noundef nonnull %sinfo) #20
  %name = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 16
  %1 = load i8*, i8** %name, align 8
  %active_objs = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 0
  %2 = load i64, i64* %active_objs, align 8
  %num_objs = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 1
  %3 = load i64, i64* %num_objs, align 8
  %size = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %s, i64 0, i32 3
  %4 = load i32, i32* %size, align 8
  %objects_per_slab = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 8
  %5 = load i32, i32* %objects_per_slab, align 4
  %cache_order = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 9
  %6 = load i32, i32* %cache_order, align 8
  %shl = shl nuw i32 1, %6
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.106, i64 0, i64 0), i8* noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %shl) #20
  %limit = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 5
  %7 = load i32, i32* %limit, align 8
  %batchcount = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 6
  %8 = load i32, i32* %batchcount, align 4
  %shared = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 7
  %9 = load i32, i32* %shared, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.107, i64 0, i64 0), i32 noundef %7, i32 noundef %8, i32 noundef %9) #20
  %active_slabs = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 2
  %10 = load i64, i64* %active_slabs, align 8
  %num_slabs = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 3
  %11 = load i64, i64* %num_slabs, align 8
  %shared_avail = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %sinfo, i64 0, i32 4
  %12 = load i64, i64* %shared_avail, align 8
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.108, i64 0, i64 0), i64 noundef %10, i64 noundef %11, i64 noundef %12) #20
  call void @slabinfo_show_stats(%struct.seq_file* noundef %m, %struct.kmem_cache* noundef %s) #20
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #20
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(%struct.seq_file* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @slabinfo_show_stats(%struct.seq_file* noundef, %struct.kmem_cache* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__kmalloc_track_caller(i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i8* @llvm.returnaddress(i32 immarg) #18

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #19

attributes #0 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { cold nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { mustprogress nofree nosync nounwind readnone willreturn }
attributes #19 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #20 = { nobuiltin nounwind "no-builtins" }
attributes #21 = { nobuiltin "no-builtins" }
attributes #22 = { nounwind }
attributes #23 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #24 = { cold nobuiltin nounwind "no-builtins" }
attributes #25 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #26 = { cold nobuiltin "no-builtins" }
attributes #27 = { nounwind readonly }

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
!9 = !{i64 2155337379}
!10 = !{i64 2155338992}
!11 = !{i32 0, i32 -7}
!12 = !{i8 0, i8 2}
!13 = !{i64 2148956105}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148957851}
!16 = !{i64 2155333454}
!17 = !{i64 2155356366}
!18 = !{i64 2155362091}
!19 = !{i64 0, i64 65}
!20 = !{i64 2155371290}
!21 = !{i32 0, i32 33}
!22 = !{!"auto-init"}
!23 = !{i64 2149230103}
!24 = !{i64 2149059926, i64 2149059973, i64 2149059979, i64 2149060016, i64 2149060034, i64 2149060961, i64 2149061009, i64 2149061057, i64 2149061120, i64 2149061169, i64 2149060112, i64 2149060137, i64 2149060163, i64 2149060169, i64 2149060206, i64 2149060212, i64 2149060262, i64 2149060308, i64 2149060341}
