; ModuleID = 'mm/percpu.c'
source_filename = "mm/percpu.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_percpu__469_3377_percpu_enable_async4:\09\09\09"
module asm ".long\09percpu_enable_async - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.cpumask = type { [4 x i64] }
%struct.pcpu_chunk = type { %struct.list_head, i32, %struct.pcpu_block_md, i8*, i64*, i64*, %struct.pcpu_block_md*, i8*, i8, i8, i32, i32, i32, i32, i32, [0 x i64] }
%struct.pcpu_block_md = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.page = type { i64, %union.anon.2, %union.anon.69, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.24, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.45, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.45 = type { %struct.kernfs_elem_dir }
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
%union.anon.69 = type { %struct.atomic_t }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pcpu_alloc_info = type { i64, i64, i64, i64, i64, i64, i64, i32, [0 x %struct.pcpu_group_info] }
%struct.pcpu_group_info = type { i32, i64, i32* }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.nodemask_t = type { [1 x i64] }

@pcpu_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@pcpu_base_addr = dso_local local_unnamed_addr global i8* null, section ".data..ro_after_init", align 8
@__per_cpu_start = external dso_local global [0 x i8], align 1
@pcpu_unit_size = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_chunk_lists = dso_local local_unnamed_addr global %struct.list_head* null, section ".data..ro_after_init", align 8
@pcpu_free_slot = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@__per_cpu_end = external dso_local global [0 x i8], align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = dso_local local_unnamed_addr global [256 x i64] zeroinitializer, section ".data..read_mostly", align 8
@pcpu_low_unit_cpu = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_high_unit_cpu = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_unit_pages = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@memstart_addr = external dso_local local_unnamed_addr global i64, align 8
@kimage_voffset = external dso_local local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [36 x i8] c"\010percpu: failed to initialize, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ai->nr_groups <= 0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\010percpu: cpu_possible_mask=%*pb\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\010\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"!ai->static_size\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"offset_in_page(__per_cpu_start)\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"!base_addr\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"offset_in_page(base_addr)\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"ai->unit_size < size_sum\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"offset_in_page(ai->unit_size)\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"ai->unit_size < PCPU_MIN_UNIT_SIZE\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"ai->dyn_size < PERCPU_DYNAMIC_EARLY_SIZE\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"!IS_ALIGNED(ai->reserved_size, PCPU_MIN_ALLOC_SIZE)\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", align 1
@__func__.pcpu_setup_first_chunk = private unnamed_addr constant [23 x i8] c"pcpu_setup_first_chunk\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"cpu >= nr_cpu_ids\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"!cpu_possible(cpu)\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"unit_map[cpu] != UINT_MAX\00", align 1
@pcpu_nr_units = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@.str.20 = private unnamed_addr constant [26 x i8] c"unit_map[cpu] == UINT_MAX\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@pcpu_nr_groups = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_group_offsets = internal unnamed_addr global i64* null, section ".data..ro_after_init", align 8
@pcpu_group_sizes = internal unnamed_addr global i64* null, section ".data..ro_after_init", align 8
@pcpu_unit_map = internal unnamed_addr global i32* null, section ".data..ro_after_init", align 8
@pcpu_unit_offsets = dso_local local_unnamed_addr global i64* null, section ".data..ro_after_init", align 8
@pcpu_atom_size = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_chunk_struct_size = internal unnamed_addr global i64 0, section ".data..ro_after_init", align 8
@pcpu_sidelined_slot = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_to_depopulate_slot = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_nr_slots = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_reserved_chunk = dso_local local_unnamed_addr global %struct.pcpu_chunk* null, section ".data..ro_after_init", align 8
@pcpu_first_chunk = dso_local local_unnamed_addr global %struct.pcpu_chunk* null, section ".data..ro_after_init", align 8
@pcpu_nr_empty_pop_pages = dso_local local_unnamed_addr global i32 0, align 4
@pcpu_nr_populated = internal unnamed_addr global i64 0, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"embed\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@pcpu_fc_names = dso_local local_unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)], section ".init.rodata", align 8
@pcpu_chosen_fc = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@__setup_str_percpu_alloc_setup = internal constant [13 x i8] c"percpu_alloc\00", section ".init.rodata", align 1
@__setup_percpu_alloc_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__setup_str_percpu_alloc_setup, i32 0, i32 0), i32 (i8*)* @percpu_alloc_setup, i32 1 }, section ".init.setup", align 8
@.str.25 = private unnamed_addr constant [64 x i8] c"\014percpu: max_distance=0x%lx too large for vmalloc space 0x%lx\0A\00", align 1
@__per_cpu_load = external dso_local global [0 x i8], align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"\016percpu: Embedded %zu pages/cpu s%zu r%zu d%zu u%zu\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"Failed to initialize percpu areas.\00", align 1
@__UNIQUE_ID___addressable_percpu_enable_async470 = internal global i8* bitcast (i32 ()* @percpu_enable_async to i8*), section ".discard.addressable", align 8
@pcpu_alloc.warn_limit = internal unnamed_addr global i32 10, align 4
@.str.28 = private unnamed_addr constant [57 x i8] c"illegal size (%zu) or align (%zu) for percpu allocation\0A\00", align 1
@pcpu_alloc_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pcpu_alloc_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @pcpu_alloc_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@.str.29 = private unnamed_addr constant [33 x i8] c"alloc from reserved chunk failed\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"failed to allocate new chunk\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"failed to populate\00", align 1
@.str.33 = private unnamed_addr constant [63 x i8] c"\014percpu: allocation failed, size=%zu align=%zu atomic=%d, %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"\016percpu: limit reached, disable warning\0A\00", align 1
@pcpu_atomic_alloc_failed = internal unnamed_addr global i1 false, align 1
@pcpu_get_pages.pages = internal unnamed_addr global %struct.page** null, align 8
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@arm64_use_ng_mappings = external dso_local local_unnamed_addr global i8, align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@pcpu_async_enabled = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@pcpu_balance_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @pcpu_balance_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @pcpu_balance_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @pcpu_balance_workfn }, align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@__boot_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@__const.pcpu_dump_alloc_info.empty_str = private unnamed_addr constant [9 x i8] c"--------\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"%spcpu-alloc: s%zu r%zu d%zu u%zu alloc=%zu*%zu\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"%spcpu-alloc: \00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"\01c[%0*d] \00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"\01c%0*d \00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"\01c%s \00", align 1
@__func__.pcpu_alloc_first_chunk = private unnamed_addr constant [23 x i8] c"pcpu_alloc_first_chunk\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"\014percpu: unknown allocator %s specified\0A\00", align 1
@pcpu_build_alloc_info.group_map = internal global [256 x i32] zeroinitializer, section ".init.data", align 4
@pcpu_build_alloc_info.group_cnt = internal global [256 x i32] zeroinitializer, section ".init.data", align 4
@pcpu_build_alloc_info.mask = internal global %struct.cpumask zeroinitializer, section ".init.data", align 8
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_percpu_enable_async470 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_percpu_alloc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__alloc_percpu_gfp(i64 noundef %size, i64 noundef %align, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @pcpu_alloc(i64 noundef %size, i64 noundef %align, i1 noundef false, i32 noundef %gfp) #26
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @pcpu_alloc(i64 noundef %size, i64 noundef %align, i1 noundef %reserved, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %rs = alloca i32, align 4
  %re = alloca i32, align 4
  %call = call fastcc i32 @current_gfp_context(i32 noundef %gfp) #26
  %and = and i32 %call, 76992
  %and1 = and i32 %call, 3264
  %cmp = icmp ne i32 %and1, 3264
  %and3 = and i32 %call, 8192
  %tobool.not = icmp eq i32 %and3, 0
  %cmp5 = icmp ult i64 %align, 4
  br i1 %cmp5, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %align.addr.0 = phi i64 [ 4, %if.then ], [ %align, %entry ]
  %add = add i64 %size, 3
  %and9 = and i64 %add, -4
  %shr = lshr i64 %add, 2
  %shr10 = lshr i64 %align.addr.0, 2
  %0 = add i64 %and9, -32769
  %1 = icmp ult i64 %0, -32768
  %cmp15 = icmp ugt i64 %align.addr.0, 4096
  %or.cond328 = or i1 %1, %cmp15
  br i1 %or.cond328, label %if.then27, label %lor.rhs, !prof !9

lor.rhs:                                          ; preds = %if.end
  %call17 = call fastcc i1 @is_power_of_2(i64 noundef %align.addr.0) #27
  br i1 %call17, label %if.end56, label %if.then27, !prof !10

if.then27:                                        ; preds = %if.end, %lor.rhs
  br i1 %tobool.not, label %do.end, label %cleanup313, !prof !8

do.end:                                           ; preds = %if.then27
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i64 0, i64 0), i64 noundef %and9, i64 noundef %align.addr.0) #28
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 1759; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #29, !srcloc !11
  br label %cleanup313

if.end56:                                         ; preds = %lor.rhs
  br i1 %cmp, label %do.body81, label %if.then70

if.then70:                                        ; preds = %if.end56
  %and71 = and i32 %call, 32768
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.else, label %if.then73

if.then73:                                        ; preds = %if.then70
  call void @mutex_lock(%struct.mutex* noundef nonnull @pcpu_alloc_mutex) #28
  br label %do.body81

if.else:                                          ; preds = %if.then70
  %call74 = call i32 @mutex_lock_killable(%struct.mutex* noundef nonnull @pcpu_alloc_mutex) #28
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %do.body81, label %cleanup313

do.body81:                                        ; preds = %if.then73, %if.else, %if.end56
  %call86 = call fastcc i64 @__raw_spin_lock_irqsave() #26
  %2 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** @pcpu_reserved_chunk, align 8
  %tobool93 = icmp ne %struct.pcpu_chunk* %2, null
  %or.cond329 = select i1 %reserved, i1 %tobool93, i1 false
  br i1 %or.cond329, label %if.then94, label %restart.preheader

restart.preheader:                                ; preds = %do.body81
  %conv109 = trunc i64 %and9 to i32
  %conv134 = trunc i64 %shr to i32
  br label %restart

if.then94:                                        ; preds = %do.body81
  %conv95 = trunc i64 %shr to i32
  %call97 = call fastcc i32 @pcpu_find_block_fit(%struct.pcpu_chunk* noundef nonnull %2, i32 noundef %conv95, i64 noundef %shr10, i1 noundef %cmp) #26
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %fail, label %if.end101

if.end101:                                        ; preds = %if.then94
  %call103 = call fastcc i32 @pcpu_alloc_area(%struct.pcpu_chunk* noundef nonnull %2, i32 noundef %conv95, i64 noundef %shr10, i32 noundef %call97) #26
  %cmp104 = icmp sgt i32 %call103, -1
  br i1 %cmp104, label %area_found, label %fail

restart:                                          ; preds = %restart.backedge, %restart.preheader
  %flags.0 = phi i64 [ %call86, %restart.preheader ], [ %flags.0.be, %restart.backedge ]
  %call110 = call fastcc i32 @pcpu_size_to_slot(i32 noundef %conv109) #26
  %3 = load i32, i32* @pcpu_free_slot, align 4
  %cmp111.not464 = icmp sgt i32 %call110, %3
  br i1 %cmp111.not464, label %for.end160, label %for.body.preheader

for.body.preheader:                               ; preds = %restart
  %.pre = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc159
  %4 = phi i32 [ %9, %for.inc159 ], [ %3, %for.body.preheader ]
  %5 = phi %struct.list_head* [ %10, %for.inc159 ], [ %.pre, %for.body.preheader ]
  %slot.0465 = phi i32 [ %inc, %for.inc159 ], [ %call110, %for.body.preheader ]
  %idxprom = sext i32 %slot.0465 to i64
  %next113 = getelementptr %struct.list_head, %struct.list_head* %5, i64 %idxprom, i32 0
  %6 = bitcast %struct.list_head** %next113 to %struct.pcpu_chunk**
  %7 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %6, align 8
  %list126459 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %7, i64 0, i32 0
  %arrayidx128460 = getelementptr %struct.list_head, %struct.list_head* %5, i64 %idxprom
  %cmp129.not461 = icmp eq %struct.list_head* %list126459, %arrayidx128460
  br i1 %cmp129.not461, label %for.inc159, label %for.body133.lr.ph

for.body133.lr.ph:                                ; preds = %for.body
  %cmp140 = icmp slt i32 %slot.0465, 3
  br label %for.body133

for.body133:                                      ; preds = %for.body133.lr.ph, %for.inc
  %chunk.0462 = phi %struct.pcpu_chunk* [ %7, %for.body133.lr.ph ], [ %next.0463, %for.inc ]
  %next.0463.in = bitcast %struct.pcpu_chunk* %chunk.0462 to %struct.pcpu_chunk**
  %next.0463 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %next.0463.in, align 8
  %call136 = call fastcc i32 @pcpu_find_block_fit(%struct.pcpu_chunk* noundef %chunk.0462, i32 noundef %conv134, i64 noundef %shr10, i1 noundef %cmp) #26
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.then139, label %if.end144

if.then139:                                       ; preds = %for.body133
  br i1 %cmp140, label %if.then142, label %for.inc

if.then142:                                       ; preds = %if.then139
  call fastcc void @pcpu_chunk_move(%struct.pcpu_chunk* noundef %chunk.0462) #26
  br label %for.inc

if.end144:                                        ; preds = %for.body133
  %call146 = call fastcc i32 @pcpu_alloc_area(%struct.pcpu_chunk* noundef %chunk.0462, i32 noundef %conv134, i64 noundef %shr10, i32 noundef %call136) #26
  %cmp147 = icmp sgt i32 %call146, -1
  br i1 %cmp147, label %if.then149, label %for.inc

if.then149:                                       ; preds = %if.end144
  call fastcc void @pcpu_reintegrate_chunk(%struct.pcpu_chunk* noundef %chunk.0462) #26
  br label %area_found

for.inc:                                          ; preds = %if.end144, %if.then139, %if.then142
  %list126 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %next.0463, i64 0, i32 0
  %8 = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  %arrayidx128 = getelementptr %struct.list_head, %struct.list_head* %8, i64 %idxprom
  %cmp129.not = icmp eq %struct.list_head* %list126, %arrayidx128
  br i1 %cmp129.not, label %for.inc159.loopexit, label %for.body133

for.inc159.loopexit:                              ; preds = %for.inc
  %.pre475 = load i32, i32* @pcpu_free_slot, align 4
  br label %for.inc159

for.inc159:                                       ; preds = %for.inc159.loopexit, %for.body
  %9 = phi i32 [ %.pre475, %for.inc159.loopexit ], [ %4, %for.body ]
  %10 = phi %struct.list_head* [ %8, %for.inc159.loopexit ], [ %5, %for.body ]
  %inc = add i32 %slot.0465, 1
  %cmp111.not = icmp sgt i32 %inc, %9
  br i1 %cmp111.not, label %for.end160, label %for.body

for.end160:                                       ; preds = %for.inc159, %restart
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags.0) #28
  br i1 %cmp, label %if.then310, label %if.end163

if.end163:                                        ; preds = %for.end160
  %11 = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  %12 = load i32, i32* @pcpu_free_slot, align 4
  %idxprom164 = sext i32 %12 to i64
  %arrayidx165 = getelementptr %struct.list_head, %struct.list_head* %11, i64 %idxprom164
  %call166 = call fastcc i32 @list_empty(%struct.list_head* noundef %arrayidx165) #26
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %do.body188, label %if.then168

if.then168:                                       ; preds = %if.end163
  %call169 = call fastcc %struct.pcpu_chunk* @pcpu_create_chunk(i32 noundef %and) #26
  %tobool170.not = icmp eq %struct.pcpu_chunk* %call169, null
  br i1 %tobool170.not, label %land.lhs.true287, label %do.body174

do.body174:                                       ; preds = %if.then168
  %call181 = call fastcc i64 @__raw_spin_lock_irqsave() #26
  call fastcc void @pcpu_chunk_relocate(%struct.pcpu_chunk* noundef nonnull %call169, i32 noundef -1) #26
  br label %restart.backedge

do.body188:                                       ; preds = %if.end163
  %call195 = call fastcc i64 @__raw_spin_lock_irqsave() #26
  br label %restart.backedge

restart.backedge:                                 ; preds = %do.body188, %do.body174
  %flags.0.be = phi i64 [ %call181, %do.body174 ], [ %call195, %do.body188 ]
  br label %restart

area_found:                                       ; preds = %if.end101, %if.then149
  %flags.2 = phi i64 [ %call86, %if.end101 ], [ %flags.0, %if.then149 ]
  %off.0 = phi i32 [ %call103, %if.end101 ], [ %call146, %if.then149 ]
  %chunk.1 = phi %struct.pcpu_chunk* [ %2, %if.end101 ], [ %chunk.0462, %if.then149 ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags.2) #28
  br i1 %cmp, label %if.end263, label %if.then202

if.then202:                                       ; preds = %area_found
  %13 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #29
  %14 = bitcast i32* %re to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #29
  store i32 0, i32* %re, align 4, !annotation !12
  %shr203452 = lshr i32 %off.0, 12
  %conv204453 = zext i32 %off.0 to i64
  %add205 = add i64 %and9, 4095
  %sub = add i64 %add205, %conv204453
  %shr207 = lshr i64 %sub, 12
  %conv208 = trunc i64 %shr207 to i32
  store i32 %shr203452, i32* %rs, align 4
  %arraydecay = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.1, i64 0, i32 15, i64 0
  call fastcc void @bitmap_next_clear_region(i64* noundef %arraydecay, i32* noundef nonnull %rs, i32* noundef nonnull %re, i32 noundef %conv208) #26
  %15 = load i32, i32* %rs, align 4
  %16 = load i32, i32* %re, align 4
  %cmp210467 = icmp ult i32 %15, %16
  br i1 %cmp210467, label %for.body212.lr.ph, label %cleanup.thread

for.body212.lr.ph:                                ; preds = %if.then202
  %immutable = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.1, i64 0, i32 8
  br label %for.body212

for.body212:                                      ; preds = %for.body212.lr.ph, %if.end254
  %17 = phi i32 [ %16, %for.body212.lr.ph ], [ %21, %if.end254 ]
  %18 = phi i32 [ %15, %for.body212.lr.ph ], [ %20, %if.end254 ]
  %19 = load i8, i8* %immutable, align 8, !range !13
  %tobool214.not = icmp eq i8 %19, 0
  br i1 %tobool214.not, label %if.end228, label %if.then227, !prof !10

if.then227:                                       ; preds = %for.body212
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 1861; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #29, !srcloc !14
  br label %if.end228

if.end228:                                        ; preds = %if.then227, %for.body212
  %call237 = call fastcc i32 @pcpu_populate_chunk(%struct.pcpu_chunk* noundef %chunk.1, i32 noundef %18, i32 noundef %17, i32 noundef %and) #26
  %call246 = call fastcc i64 @__raw_spin_lock_irqsave() #26
  %tobool251.not = icmp eq i32 %call237, 0
  br i1 %tobool251.not, label %if.end254, label %cleanup

if.end254:                                        ; preds = %if.end228
  call fastcc void @pcpu_chunk_populated(%struct.pcpu_chunk* noundef %chunk.1, i32 noundef %18, i32 noundef %17) #26
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call246) #28
  %add256 = add i32 %17, 1
  store i32 %add256, i32* %rs, align 4
  call fastcc void @bitmap_next_clear_region(i64* noundef %arraydecay, i32* noundef nonnull %rs, i32* noundef nonnull %re, i32 noundef %conv208) #26
  %20 = load i32, i32* %rs, align 4
  %21 = load i32, i32* %re, align 4
  %cmp210 = icmp ult i32 %20, %21
  br i1 %cmp210, label %for.body212, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end254, %if.then202
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pcpu_alloc_mutex) #28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #29
  br label %if.end263

cleanup:                                          ; preds = %if.end228
  %call253 = call fastcc i32 @pcpu_free_area(%struct.pcpu_chunk* noundef %chunk.1, i32 noundef %off.0) #26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #29
  br label %fail

if.end263:                                        ; preds = %cleanup.thread, %area_found
  %22 = load i32, i32* @pcpu_nr_empty_pop_pages, align 4
  %cmp264 = icmp slt i32 %22, 2
  br i1 %cmp264, label %if.then266, label %if.end267

if.then266:                                       ; preds = %if.end263
  call fastcc void @pcpu_schedule_balance_work() #26
  br label %if.end267

if.end267:                                        ; preds = %if.then266, %if.end263
  %call269468 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %23 = load i32, i32* @nr_cpu_ids, align 4
  %cmp270469 = icmp ult i32 %call269468, %23
  %idx.ext = sext i32 %off.0 to i64
  br i1 %cmp270469, label %for.body272, label %for.end276

for.body272:                                      ; preds = %if.end267, %for.body272
  %call269470 = phi i32 [ %call269, %for.body272 ], [ %call269468, %if.end267 ]
  %call273 = call fastcc i64 @pcpu_chunk_addr(%struct.pcpu_chunk* noundef %chunk.1, i32 noundef %call269470, i32 noundef 0) #26
  %24 = inttoptr i64 %call273 to i8*
  %add.ptr274 = getelementptr i8, i8* %24, i64 %idx.ext
  %call275 = call i8* @memset(i8* noundef %add.ptr274, i32 noundef 0, i64 noundef %and9) #28
  %call269 = call i32 @cpumask_next(i32 noundef %call269470, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %25 = load i32, i32* @nr_cpu_ids, align 4
  %cmp270 = icmp ult i32 %call269, %25
  br i1 %cmp270, label %for.body272, label %for.end276

for.end276:                                       ; preds = %for.body272, %if.end267
  %base_addr = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.1, i64 0, i32 3
  %26 = load i8*, i8** %base_addr, align 8
  %add.ptr278 = getelementptr i8, i8* %26, i64 %idx.ext
  %27 = ptrtoint i8* %add.ptr278 to i64
  %28 = load i8*, i8** @pcpu_base_addr, align 8
  %29 = ptrtoint i8* %28 to i64
  %sub279 = sub i64 ptrtoint ([0 x i8]* @__per_cpu_start to i64), %29
  %add280 = add i64 %sub279, %27
  %30 = inttoptr i64 %add280 to i8*
  br label %cleanup313

fail:                                             ; preds = %if.then94, %if.end101, %cleanup
  %flags.5 = phi i64 [ %call246, %cleanup ], [ %call86, %if.then94 ], [ %call86, %if.end101 ]
  %err.1 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0), %cleanup ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), %if.then94 ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), %if.end101 ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags.5) #28
  br i1 %cmp, label %if.then310, label %land.lhs.true287

land.lhs.true287:                                 ; preds = %if.then168, %fail
  %err.2451 = phi i8* [ %err.1, %fail ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), %if.then168 ]
  %31 = load i32, i32* @pcpu_alloc.warn_limit, align 4
  %tobool291 = icmp ne i32 %31, 0
  %or.cond330 = select i1 %tobool.not, i1 %tobool291, i1 false
  br i1 %or.cond330, label %do.end295, label %if.else311

do.end295:                                        ; preds = %land.lhs.true287
  %call299 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.33, i64 0, i64 0), i64 noundef %and9, i64 noundef %align.addr.0, i32 noundef 0, i8* noundef %err.2451) #31
  call void @dump_stack() #31
  %32 = load i32, i32* @pcpu_alloc.warn_limit, align 4
  %dec = add i32 %32, -1
  store i32 %dec, i32* @pcpu_alloc.warn_limit, align 4
  %tobool300.not = icmp eq i32 %dec, 0
  br i1 %tobool300.not, label %do.end304, label %if.else311

do.end304:                                        ; preds = %do.end295
  %call306 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.34, i64 0, i64 0)) #31
  br label %if.else311

if.then310:                                       ; preds = %for.end160, %fail
  store i1 true, i1* @pcpu_atomic_alloc_failed, align 1
  call fastcc void @pcpu_schedule_balance_work() #26
  br label %cleanup313

if.else311:                                       ; preds = %land.lhs.true287, %do.end304, %do.end295
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pcpu_alloc_mutex) #28
  br label %cleanup313

cleanup313:                                       ; preds = %if.then310, %if.else311, %if.else, %if.then27, %do.end, %for.end276
  %retval.0 = phi i8* [ %30, %for.end276 ], [ null, %do.end ], [ null, %if.then27 ], [ null, %if.else ], [ null, %if.else311 ], [ null, %if.then310 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__alloc_percpu(i64 noundef %size, i64 noundef %align) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @pcpu_alloc(i64 noundef %size, i64 noundef %align, i1 noundef false, i32 noundef 3264) #26
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @__alloc_reserved_percpu(i64 noundef %size, i64 noundef %align) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @pcpu_alloc(i64 noundef %size, i64 noundef %align, i1 noundef true, i32 noundef 3264) #26
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_percpu(i8* noundef %ptr) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = ptrtoint i8* %ptr to i64
  %1 = load i8*, i8** @pcpu_base_addr, align 8
  %2 = ptrtoint i8* %1 to i64
  %add = sub i64 %0, ptrtoint ([0 x i8]* @__per_cpu_start to i64)
  %sub = add i64 %add, %2
  %3 = inttoptr i64 %sub to i8*
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #26
  %call5 = call fastcc %struct.pcpu_chunk* @pcpu_chunk_addr_search(i8* noundef %3) #26
  %base_addr = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %call5, i64 0, i32 3
  %4 = load i8*, i8** %base_addr, align 8
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub, %sub.ptr.rhs.cast
  %conv6 = trunc i64 %sub.ptr.sub to i32
  %call7 = call fastcc i32 @pcpu_free_area(%struct.pcpu_chunk* noundef %call5, i32 noundef %conv6) #26
  %isolated = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %call5, i64 0, i32 9
  %5 = load i8, i8* %isolated, align 1, !range !13
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %free_bytes = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %call5, i64 0, i32 1
  %6 = load i32, i32* %free_bytes, align 8
  %7 = load i32, i32* @pcpu_unit_size, align 4
  %cmp10 = icmp eq i32 %6, %7
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true
  %8 = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  %9 = load i32, i32* @pcpu_free_slot, align 4
  %idxprom = sext i32 %9 to i64
  %next = getelementptr %struct.list_head, %struct.list_head* %8, i64 %idxprom, i32 0
  %10 = bitcast %struct.list_head** %next to %struct.pcpu_chunk**
  %arrayidx18 = getelementptr %struct.list_head, %struct.list_head* %8, i64 %idxprom
  %pos.071 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %10, align 8
  %list72 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %pos.071, i64 0, i32 0
  %cmp19.not73 = icmp eq %struct.list_head* %list72, %arrayidx18
  br i1 %cmp19.not73, label %if.end40.critedge70, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then12
  %11 = bitcast %struct.pcpu_chunk* %call5 to %struct.pcpu_chunk**
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %pos.074 = phi %struct.pcpu_chunk* [ %pos.0, %for.inc ], [ %pos.071, %for.body.preheader ]
  %cmp21.not = icmp eq %struct.pcpu_chunk* %pos.074, %call5
  br i1 %cmp21.not, label %for.inc, label %if.then39

for.inc:                                          ; preds = %for.body
  %pos.0 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %11, align 8
  %list = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %pos.0, i64 0, i32 0
  %cmp19.not = icmp eq %struct.list_head* %list, %arrayidx18
  br i1 %cmp19.not, label %if.end40.critedge70, label %for.body

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call33 = call fastcc i1 @pcpu_should_reclaim_chunk(%struct.pcpu_chunk* noundef %call5) #26
  br i1 %call33, label %if.then34, label %if.end40.critedge

if.then34:                                        ; preds = %if.else
  call fastcc void @pcpu_isolate_chunk(%struct.pcpu_chunk* noundef %call5) #26
  br label %if.then39

if.then39:                                        ; preds = %for.body, %if.then34
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #28
  call fastcc void @pcpu_schedule_balance_work() #26
  br label %cleanup

if.end40.critedge:                                ; preds = %if.else
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #28
  br label %cleanup

if.end40.critedge70:                              ; preds = %for.inc, %if.then12
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #28
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end40.critedge, %if.end40.critedge70, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #26
  call void asm sideeffect "", "~{memory}"() #29, !srcloc !15
  call fastcc void @do_raw_spin_lock_flags() #26
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pcpu_chunk* @pcpu_chunk_addr_search(i8* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** @pcpu_first_chunk, align 8
  %call = call fastcc i1 @pcpu_addr_in_chunk(%struct.pcpu_chunk* noundef %0, i8* noundef %addr) #26
  br i1 %call, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** @pcpu_reserved_chunk, align 8
  %call1 = call fastcc i1 @pcpu_addr_in_chunk(%struct.pcpu_chunk* noundef %1, i8* noundef %addr) #26
  br i1 %call1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %2 = load i64*, i64** @pcpu_unit_offsets, align 8
  %call5 = call fastcc i64 @__kern_my_cpu_offset() #26
  %add = add i64 %call5, ptrtoint (i32* @cpu_number to i64)
  %3 = inttoptr i64 %add to i32*
  %4 = load i32, i32* %3, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr i64, i64* %2, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %add.ptr = getelementptr i8, i8* %addr, i64 %5
  %call6 = call fastcc %struct.page* @pcpu_addr_to_page(i8* noundef %add.ptr) #26
  %call7 = call fastcc %struct.pcpu_chunk* @pcpu_get_page_chunk(%struct.page* noundef %call6) #26
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi %struct.pcpu_chunk* [ %call7, %if.end3 ], [ %0, %entry ], [ %1, %if.end ]
  ret %struct.pcpu_chunk* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pcpu_free_area(%struct.pcpu_chunk* noundef %chunk, i32 noundef %off) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @pcpu_chunk_slot(%struct.pcpu_chunk* noundef %chunk) #26
  %div = sdiv i32 %off, 4
  %bound_map = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 5
  %0 = load i64*, i64** %bound_map, align 8
  %call2 = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef %chunk) #26
  %conv = sext i32 %call2 to i64
  %add = add nsw i32 %div, 1
  %conv3 = sext i32 %add to i64
  %call4 = call fastcc i64 @find_next_bit(i64* noundef %0, i64 noundef %conv, i64 noundef %conv3) #26
  %conv5 = trunc i64 %call4 to i32
  %sub = sub i32 %conv5, %div
  %alloc_map = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 4
  %1 = load i64*, i64** %alloc_map, align 8
  call void @__bitmap_clear(i64* noundef %1, i32 noundef %div, i32 noundef %sub) #28
  %mul = shl i32 %sub, 2
  %free_bytes = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 1
  %2 = load i32, i32* %free_bytes, align 8
  %add6 = add i32 %2, %mul
  store i32 %add6, i32* %free_bytes, align 8
  %first_free = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2, i32 6
  %3 = load i32, i32* %first_free, align 4
  %cmp = icmp slt i32 %3, %div
  %cond = select i1 %cmp, i32 %3, i32 %div
  store i32 %cond, i32* %first_free, align 4
  call fastcc void @pcpu_block_update_hint_free(%struct.pcpu_chunk* noundef %chunk, i32 noundef %div, i32 noundef %sub) #26
  call fastcc void @pcpu_chunk_relocate(%struct.pcpu_chunk* noundef %chunk, i32 noundef %call) #26
  ret i32 %mul
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @pcpu_should_reclaim_chunk(%struct.pcpu_chunk* nocapture noundef readonly %chunk) unnamed_addr #2 {
entry:
  %0 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** @pcpu_first_chunk, align 8
  %cmp = icmp eq %struct.pcpu_chunk* %0, %chunk
  %1 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** @pcpu_reserved_chunk, align 8
  %cmp1 = icmp eq %struct.pcpu_chunk* %1, %chunk
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %isolated = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 9
  %2 = load i8, i8* %isolated, align 1, !range !13
  %tobool.not = icmp eq i8 %2, 0
  %nr_empty_pop_pages3.phi.trans.insert = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 14
  %.pre = load i32, i32* %nr_empty_pop_pages3.phi.trans.insert, align 4
  br i1 %tobool.not, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %tobool2.not = icmp eq i32 %.pre, 0
  br i1 %tobool2.not, label %lor.rhs, label %return

lor.rhs:                                          ; preds = %if.end, %land.lhs.true
  %3 = phi i32 [ 0, %land.lhs.true ], [ %.pre, %if.end ]
  %4 = load i32, i32* @pcpu_nr_empty_pop_pages, align 4
  %add = add i32 %3, 4
  %cmp4 = icmp sgt i32 %4, %add
  br i1 %cmp4, label %land.rhs, label %return

land.rhs:                                         ; preds = %lor.rhs
  %nr_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 12
  %5 = load i32, i32* %nr_pages, align 4
  %div = sdiv i32 %5, 4
  %cmp6 = icmp sge i32 %3, %div
  br label %return

return:                                           ; preds = %land.lhs.true, %land.rhs, %lor.rhs, %entry
  %retval.0 = phi i1 [ false, %entry ], [ true, %land.lhs.true ], [ false, %lor.rhs ], [ %cmp6, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @pcpu_isolate_chunk(%struct.pcpu_chunk* noundef %chunk) unnamed_addr #3 {
entry:
  %isolated = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 9
  %0 = load i8, i8* %isolated, align 1, !range !13
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %isolated, align 1
  %nr_empty_pop_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 14
  %1 = load i32, i32* %nr_empty_pop_pages, align 4
  %2 = load i32, i32* @pcpu_nr_empty_pop_pages, align 4
  %sub = sub i32 %2, %1
  store i32 %sub, i32* @pcpu_nr_empty_pop_pages, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %list = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 0
  %3 = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  %4 = load i32, i32* @pcpu_to_depopulate_slot, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr %struct.list_head, %struct.list_head* %3, i64 %idxprom
  call fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %arrayidx) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_schedule_balance_work() unnamed_addr #0 {
entry:
  %.b1 = load i1, i1* @pcpu_async_enabled, align 1
  br i1 %.b1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @schedule_work() #26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i1 @__is_kernel_percpu_address(i64 noundef %addr, i64* noundef %can_addr) local_unnamed_addr #4 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %1 = inttoptr i64 %addr to i8*
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %cpu.0 = phi i32 [ -1, %entry ], [ %call, %for.body ]
  %call = call i32 @cpumask_next(i32 noundef %cpu.0, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %cleanup20

for.body:                                         ; preds = %for.cond
  %idxprom = zext i32 %call to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add2 = add i64 %2, ptrtoint ([0 x i8]* @__per_cpu_start to i64)
  %3 = inttoptr i64 %add2 to i8*
  %cmp3.not = icmp uge i8* %1, %3
  %add.ptr = getelementptr i8, i8* %3, i64 sub (i64 ptrtoint ([0 x i8]* @__per_cpu_end to i64), i64 ptrtoint ([0 x i8]* @__per_cpu_start to i64))
  %cmp4 = icmp ugt i8* %add.ptr, %1
  %or.cond = and i1 %cmp3.not, %cmp4
  br i1 %or.cond, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %tobool.not = icmp eq i64* %can_addr, null
  br i1 %tobool.not, label %cleanup20, label %if.then5

if.then5:                                         ; preds = %if.then
  %sub.ptr.sub = sub i64 %addr, %add2
  store i64 %sub.ptr.sub, i64* %can_addr, align 8
  %call13 = call fastcc i32 @get_boot_cpu_id() #26
  %idxprom14 = sext i32 %call13 to i64
  %arrayidx15 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom14
  %4 = load i64, i64* %arrayidx15, align 8
  %add16 = add i64 %sub.ptr.sub, ptrtoint ([0 x i8]* @__per_cpu_start to i64)
  %add17 = add i64 %add16, %4
  store i64 %add17, i64* %can_addr, align 8
  br label %cleanup20

cleanup20:                                        ; preds = %for.cond, %if.then, %if.then5
  %cmp46 = phi i1 [ true, %if.then ], [ true, %if.then5 ], [ false, %for.cond ]
  ret i1 %cmp46
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @get_boot_cpu_id() unnamed_addr #2 {
entry:
  %0 = load i32, i32* @__boot_cpu_id, align 4
  ret i32 %0
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define dso_local i1 @is_kernel_percpu_address(i64 noundef %addr) local_unnamed_addr #4 {
entry:
  %call = call i1 @__is_kernel_percpu_address(i64 noundef %addr, i64* noundef null) #26
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @per_cpu_ptr_to_phys(i8* noundef %addr) local_unnamed_addr #0 {
entry:
  %0 = load i8*, i8** @pcpu_base_addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = load i32, i32* @pcpu_low_unit_cpu, align 4
  %call = call fastcc i64 @pcpu_unit_page_offset(i32 noundef %2, i32 noundef 0) #26
  %add1 = add i64 %call, %1
  %3 = load i32, i32* @pcpu_high_unit_cpu, align 4
  %4 = load i32, i32* @pcpu_unit_pages, align 4
  %call2 = call fastcc i64 @pcpu_unit_page_offset(i32 noundef %3, i32 noundef %4) #26
  %5 = ptrtoint i8* %addr to i64
  %cmp.not = icmp ule i64 %add1, %5
  %add3 = add i64 %call2, %1
  %cmp4 = icmp ugt i64 %add3, %5
  %or.cond = select i1 %cmp.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %for.cond.preheader, label %if.else27

for.cond.preheader:                               ; preds = %entry
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %7 = load i32, i32* @pcpu_unit_size, align 4
  %idx.ext = sext i32 %7 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %cpu.0 = phi i32 [ %call5, %for.body ], [ -1, %for.cond.preheader ]
  %call5 = call i32 @cpumask_next(i32 noundef %cpu.0, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %cmp6 = icmp ult i32 %call5, %6
  br i1 %cmp6, label %for.body, label %if.else27

for.body:                                         ; preds = %for.cond
  %idxprom = zext i32 %call5 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %add8 = add i64 %8, ptrtoint ([0 x i8]* @__per_cpu_start to i64)
  %9 = inttoptr i64 %add8 to i8*
  %cmp9.not = icmp ule i8* %9, %addr
  %add.ptr = getelementptr i8, i8* %9, i64 %idx.ext
  %cmp11 = icmp ugt i8* %add.ptr, %addr
  %or.cond68 = select i1 %cmp9.not, i1 %cmp11, i1 false
  br i1 %or.cond68, label %if.then14, label %for.cond

if.then14:                                        ; preds = %for.body
  %call15 = call i1 @is_vmalloc_addr(i8* noundef %addr) #28
  br i1 %call15, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then14
  %sub18 = add i64 %5, 549755813888
  %cmp19 = icmp ult i64 %sub18, 274877906944
  %10 = load i64, i64* @memstart_addr, align 8
  %add22 = add i64 %10, %sub18
  %11 = load i64, i64* @kimage_voffset, align 8
  %sub23 = sub i64 %5, %11
  %cond = select i1 %cmp19, i64 %add22, i64 %sub23
  br label %cleanup39

if.else:                                          ; preds = %if.then14
  %call24 = call %struct.page* @vmalloc_to_page(i8* noundef %addr) #28
  %12 = load i64, i64* @memstart_addr, align 8
  %shr = ashr i64 %12, 12
  %idx.neg = sub nsw i64 0, %shr
  %add.ptr25 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %call24 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %add.ptr25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shl = shl i64 %sub.ptr.sub, 6
  %and = and i64 %5, 4095
  %add26 = add i64 %shl, %and
  br label %cleanup39

if.else27:                                        ; preds = %for.cond, %entry
  %call28 = call fastcc %struct.page* @pcpu_addr_to_page(i8* noundef %addr) #26
  %13 = load i64, i64* @memstart_addr, align 8
  %shr29 = ashr i64 %13, 12
  %idx.neg30 = sub nsw i64 0, %shr29
  %add.ptr31 = getelementptr %struct.page, %struct.page* inttoptr (i64 -8589934592 to %struct.page*), i64 %idx.neg30
  %sub.ptr.lhs.cast32 = ptrtoint %struct.page* %call28 to i64
  %sub.ptr.rhs.cast33 = ptrtoint %struct.page* %add.ptr31 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %shl36 = shl i64 %sub.ptr.sub34, 6
  %and37 = and i64 %5, 4095
  %add38 = add i64 %shl36, %and37
  br label %cleanup39

cleanup39:                                        ; preds = %if.else27, %if.else, %if.then16
  %retval.0 = phi i64 [ %add26, %if.else ], [ %cond, %if.then16 ], [ %add38, %if.else27 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pcpu_unit_page_offset(i32 noundef %cpu, i32 noundef %page_idx) unnamed_addr #2 {
entry:
  %0 = load i64*, i64** @pcpu_unit_offsets, align 8
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr i64, i64* %0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %shl = shl i32 %page_idx, 12
  %conv = sext i32 %shl to i64
  %add = add i64 %1, %conv
  ret i64 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_vmalloc_addr(i8* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @vmalloc_to_page(i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @pcpu_addr_to_page(i8* noundef %addr) unnamed_addr #0 {
entry:
  %call = call %struct.page* @vmalloc_to_page(i8* noundef %addr) #28
  ret %struct.page* %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local %struct.pcpu_alloc_info* @pcpu_alloc_alloc_info(i32 noundef %nr_groups, i32 noundef %nr_units) local_unnamed_addr #7 section ".init.text" {
entry:
  %conv = sext i32 %nr_groups to i64
  %call = call fastcc i64 @__ab_c_size(i64 noundef %conv, i64 noundef 24, i64 noundef 64) #26
  %add = add i64 %call, 3
  %and = and i64 %add, -4
  %conv1 = sext i32 %nr_units to i64
  %mul = shl nsw i64 %conv1, 2
  %add2 = add nsw i64 %mul, 4095
  %add3 = add i64 %add2, %and
  %and4 = and i64 %add3, -4096
  %call.i = call i8* @memblock_alloc_try_nid(i64 noundef %and4, i64 noundef 4096, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  %tobool.not = icmp eq i8* %call.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call.i to %struct.pcpu_alloc_info*
  %add.ptr = getelementptr i8, i8* %call.i, i64 %and
  %cpu_map = getelementptr inbounds i8, i8* %call.i, i64 80
  %1 = bitcast i8* %cpu_map to i32**
  %2 = bitcast i8* %cpu_map to i8**
  store i8* %add.ptr, i8** %2, align 8
  %cmp36 = icmp sgt i32 %nr_units, 0
  br i1 %cmp36, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end
  %3 = bitcast i8* %add.ptr to i32*
  %wide.trip.count = zext i32 %nr_units to i64
  store i32 256, i32* %3, align 4
  %exitcond.not39 = icmp eq i32 %nr_units, 1
  br i1 %exitcond.not39, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %indvars.iv.next40 = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load i32*, i32** %1, align 8
  %arrayidx10 = getelementptr i32, i32* %.pre, i64 %indvars.iv.next40
  store i32 256, i32* %arrayidx10, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next40, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.end:                                          ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %if.end
  %nr_groups11 = getelementptr inbounds i8, i8* %call.i, i64 56
  %4 = bitcast i8* %nr_groups11 to i32*
  store i32 %nr_groups, i32* %4, align 8
  %__ai_size = getelementptr inbounds i8, i8* %call.i, i64 48
  %5 = bitcast i8* %__ai_size to i64*
  store i64 %and4, i64* %5, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi %struct.pcpu_alloc_info* [ %0, %for.end ], [ null, %entry ]
  ret %struct.pcpu_alloc_info* %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__ab_c_size(i64 noundef %a, i64 noundef %b, i64 noundef %c) unnamed_addr #8 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a, i64 %b)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %2, i64 %c)
  %retval.0 = select i1 %1, i64 -1, i64 %spec.select
  ret i64 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @pcpu_free_alloc_info(%struct.pcpu_alloc_info* noundef %ai) local_unnamed_addr #7 section ".init.text" {
entry:
  %0 = ptrtoint %struct.pcpu_alloc_info* %ai to i64
  %sub = add i64 %0, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub3 = sub i64 %0, %2
  %cond = select i1 %cmp, i64 %add, i64 %sub3
  %__ai_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 6
  %3 = load i64, i64* %__ai_size, align 8
  call fastcc void @memblock_free_early(i64 noundef %cond, i64 noundef %3) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memblock_free_early(i64 noundef %base, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call i32 @memblock_free(i64 noundef %base, i64 noundef %size) #28
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @pcpu_setup_first_chunk(%struct.pcpu_alloc_info* noundef readonly %ai, i8* noundef %base_addr) local_unnamed_addr #7 section ".init.text" {
entry:
  %static_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 0
  %0 = load i64, i64* %static_size, align 8
  %reserved_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 1
  %1 = load i64, i64* %reserved_size, align 8
  %add = add i64 %1, %0
  %dyn_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 2
  %2 = load i64, i64* %dyn_size, align 8
  %add1 = add i64 %add, %2
  %nr_groups = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 7
  %3 = load i32, i32* %nr_groups, align 8
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %do.end, label %do.body19, !prof !8

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #31
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %4, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2616; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !16
  unreachable

do.body19:                                        ; preds = %entry
  %tobool21.not = icmp eq i64 %0, 0
  br i1 %tobool21.not, label %do.end34, label %do.body51, !prof !8

do.end34:                                         ; preds = %do.body19
  %call36 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)) #31
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %call41 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %5, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2618; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !17
  unreachable

do.body51:                                        ; preds = %do.body19
  br i1 icmp ne (i64 and (i64 ptrtoint ([0 x i8]* @__per_cpu_start to i64), i64 4095), i64 0), label %do.end57, label %do.body74, !prof !8

do.end57:                                         ; preds = %do.body51
  %call59 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0)) #31
  %6 = load i32, i32* @nr_cpu_ids, align 4
  %call64 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2619; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !18
  unreachable

do.body74:                                        ; preds = %do.body51
  %tobool75.not = icmp eq i8* %base_addr, null
  br i1 %tobool75.not, label %do.end88, label %do.body105, !prof !8

do.end88:                                         ; preds = %do.body74
  %call90 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)) #31
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %call95 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %7, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2621; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !19
  unreachable

do.body105:                                       ; preds = %do.body74
  %8 = ptrtoint i8* %base_addr to i64
  %and = and i64 %8, 4095
  %tobool106.not = icmp eq i64 %and, 0
  br i1 %tobool106.not, label %do.body134, label %do.end117, !prof !10

do.end117:                                        ; preds = %do.body105
  %call119 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)) #31
  %9 = load i32, i32* @nr_cpu_ids, align 4
  %call124 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %9, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2622; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !20
  unreachable

do.body134:                                       ; preds = %do.body105
  %unit_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 3
  %10 = load i64, i64* %unit_size, align 8
  %cmp135 = icmp ult i64 %10, %add1
  br i1 %cmp135, label %do.end147, label %do.body164, !prof !8

do.end147:                                        ; preds = %do.body134
  %call149 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #31
  %11 = load i32, i32* @nr_cpu_ids, align 4
  %call154 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %11, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2623; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !21
  unreachable

do.body164:                                       ; preds = %do.body134
  %and166 = and i64 %10, 4095
  %tobool167.not = icmp eq i64 %and166, 0
  br i1 %tobool167.not, label %do.body195, label %do.end178, !prof !10

do.end178:                                        ; preds = %do.body164
  %call180 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0)) #31
  %12 = load i32, i32* @nr_cpu_ids, align 4
  %call185 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %12, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2624; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !22
  unreachable

do.body195:                                       ; preds = %do.body164
  %cmp197 = icmp ult i64 %10, 32768
  br i1 %cmp197, label %do.end209, label %do.body260, !prof !8

do.end209:                                        ; preds = %do.body195
  %call211 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)) #31
  %13 = load i32, i32* @nr_cpu_ids, align 4
  %call216 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %13, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2625; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !23
  unreachable

do.body260:                                       ; preds = %do.body195
  %cmp262 = icmp ult i64 %2, 12288
  br i1 %cmp262, label %do.end274, label %do.body323, !prof !8

do.end274:                                        ; preds = %do.body260
  %call276 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0)) #31
  %14 = load i32, i32* @nr_cpu_ids, align 4
  %call281 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %14, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2627; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !24
  unreachable

do.body323:                                       ; preds = %do.body260
  %and325 = and i64 %1, 3
  %cmp326.not = icmp eq i64 %and325, 0
  br i1 %cmp326.not, label %do.body360, label %do.end340, !prof !10

do.end340:                                        ; preds = %do.body323
  %call342 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0)) #31
  %15 = load i32, i32* @nr_cpu_ids, align 4
  %call347 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %15, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2629; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !25
  unreachable

do.body360:                                       ; preds = %do.body323
  %conv392804 = zext i32 %3 to i64
  %mul = shl nuw nsw i64 %conv392804, 3
  %call.i = call i8* @memblock_alloc_try_nid(i64 noundef %mul, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  %16 = bitcast i8* %call.i to i64*
  %tobool394.not = icmp eq i8* %call.i, null
  br i1 %tobool394.not, label %if.then395, label %if.end396

if.then395:                                       ; preds = %do.body360
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pcpu_setup_first_chunk, i64 0, i64 0), i64 noundef %mul) #32
  unreachable

if.end396:                                        ; preds = %do.body360
  %17 = load i32, i32* %nr_groups, align 8
  %conv398 = sext i32 %17 to i64
  %mul399 = shl nsw i64 %conv398, 3
  %call.i800 = call i8* @memblock_alloc_try_nid(i64 noundef %mul399, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  %18 = bitcast i8* %call.i800 to i64*
  %tobool401.not = icmp eq i8* %call.i800, null
  br i1 %tobool401.not, label %if.then402, label %if.end403

if.then402:                                       ; preds = %if.end396
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pcpu_setup_first_chunk, i64 0, i64 0), i64 noundef %mul399) #32
  unreachable

if.end403:                                        ; preds = %if.end396
  %19 = load i32, i32* @nr_cpu_ids, align 4
  %conv404 = zext i32 %19 to i64
  %mul405 = shl nuw nsw i64 %conv404, 2
  %call.i801 = call i8* @memblock_alloc_try_nid(i64 noundef %mul405, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  %20 = bitcast i8* %call.i801 to i32*
  %tobool407.not = icmp eq i8* %call.i801, null
  br i1 %tobool407.not, label %if.then408, label %if.end409

if.then408:                                       ; preds = %if.end403
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pcpu_setup_first_chunk, i64 0, i64 0), i64 noundef %mul405) #32
  unreachable

if.end409:                                        ; preds = %if.end403
  %21 = load i32, i32* @nr_cpu_ids, align 4
  %conv410 = zext i32 %21 to i64
  %mul411 = shl nuw nsw i64 %conv410, 3
  %call.i802 = call i8* @memblock_alloc_try_nid(i64 noundef %mul411, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  %22 = bitcast i8* %call.i802 to i64*
  %tobool413.not = icmp eq i8* %call.i802, null
  br i1 %tobool413.not, label %if.then414, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end409
  %23 = load i32, i32* @nr_cpu_ids, align 4
  %cmp416811.not = icmp eq i32 %23, 0
  br i1 %cmp416811.not, label %for.end, label %for.body

if.then414:                                       ; preds = %if.end409
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pcpu_setup_first_chunk, i64 0, i64 0), i64 noundef %mul411) #32
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr i32, i32* %20, i64 %indvars.iv
  store i32 -1, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %24 = load i32, i32* @nr_cpu_ids, align 4
  %25 = zext i32 %24 to i64
  %cmp416 = icmp ult i64 %indvars.iv.next, %25
  br i1 %cmp416, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %26 = phi i32 [ 0, %for.cond.preheader ], [ %24, %for.body ]
  store i32 256, i32* @pcpu_low_unit_cpu, align 4
  store i32 256, i32* @pcpu_high_unit_cpu, align 4
  %27 = load i32, i32* %nr_groups, align 8
  %cmp420826 = icmp sgt i32 %27, 0
  br i1 %cmp420826, label %for.body422, label %for.end573

for.body422:                                      ; preds = %for.end, %for.end569
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %for.end569 ], [ 0, %for.end ]
  %unit.0829 = phi i32 [ %add572, %for.end569 ], [ 0, %for.end ]
  %pcpu_low_unit_cpu.promoted820828 = phi i32 [ %pcpu_low_unit_cpu.promoted816, %for.end569 ], [ 256, %for.end ]
  %pcpu_high_unit_cpu.promoted825827 = phi i32 [ %pcpu_high_unit_cpu.promoted822, %for.end569 ], [ 256, %for.end ]
  %base_offset = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 8, i64 %indvars.iv838, i32 1
  %28 = load i64, i64* %base_offset, align 8
  %arrayidx426 = getelementptr i64, i64* %16, i64 %indvars.iv838
  store i64 %28, i64* %arrayidx426, align 8
  %nr_units = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 8, i64 %indvars.iv838, i32 0
  %29 = load i32, i32* %nr_units, align 8
  %conv427 = sext i32 %29 to i64
  %30 = load i64, i64* %unit_size, align 8
  %mul429 = mul i64 %30, %conv427
  %arrayidx431 = getelementptr i64, i64* %18, i64 %indvars.iv838
  store i64 %mul429, i64* %arrayidx431, align 8
  %31 = load i32, i32* %nr_units, align 8
  %cmp434813 = icmp sgt i32 %31, 0
  br i1 %cmp434813, label %for.body436.lr.ph, label %for.end569

for.body436.lr.ph:                                ; preds = %for.body422
  %cpu_map = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 8, i64 %indvars.iv838, i32 2
  br label %for.body436

for.body436:                                      ; preds = %for.body436.lr.ph, %for.inc567
  %indvars.iv835 = phi i64 [ 0, %for.body436.lr.ph ], [ %indvars.iv.next836, %for.inc567 ]
  %pcpu_high_unit_cpu.promoted824 = phi i32 [ %pcpu_high_unit_cpu.promoted825827, %for.body436.lr.ph ], [ %pcpu_high_unit_cpu.promoted823, %for.inc567 ]
  %pcpu_low_unit_cpu.promoted819 = phi i32 [ %pcpu_low_unit_cpu.promoted820828, %for.body436.lr.ph ], [ %pcpu_low_unit_cpu.promoted818, %for.inc567 ]
  %32 = phi i32 [ %pcpu_low_unit_cpu.promoted820828, %for.body436.lr.ph ], [ %48, %for.inc567 ]
  %33 = phi i32 [ %pcpu_high_unit_cpu.promoted825827, %for.body436.lr.ph ], [ %47, %for.inc567 ]
  %34 = load i32*, i32** %cpu_map, align 8
  %arrayidx438 = getelementptr i32, i32* %34, i64 %indvars.iv835
  %35 = load i32, i32* %arrayidx438, align 4
  %cmp439 = icmp eq i32 %35, 256
  br i1 %cmp439, label %for.inc567, label %do.body443

do.body443:                                       ; preds = %for.body436
  %36 = load i32, i32* @nr_cpu_ids, align 4
  %cmp444.not = icmp ult i32 %35, %36
  br i1 %cmp444.not, label %do.body473, label %do.end456, !prof !10

do.end456:                                        ; preds = %do.body443
  %call458 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0)) #31
  %37 = load i32, i32* @nr_cpu_ids, align 4
  %call463 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %37, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2676; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !26
  unreachable

do.body473:                                       ; preds = %do.body443
  %call474 = call fastcc i1 @cpu_possible(i32 noundef %35) #26
  br i1 %call474, label %do.body504, label %do.end487, !prof !10

do.end487:                                        ; preds = %do.body473
  %call489 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0)) #31
  %38 = load i32, i32* @nr_cpu_ids, align 4
  %call494 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %38, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2677; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !27
  unreachable

do.body504:                                       ; preds = %do.body473
  %idxprom505 = zext i32 %35 to i64
  %arrayidx506 = getelementptr i32, i32* %20, i64 %idxprom505
  %39 = load i32, i32* %arrayidx506, align 4
  %cmp507.not = icmp eq i32 %39, -1
  br i1 %cmp507.not, label %do.end535, label %do.end519, !prof !10

do.end519:                                        ; preds = %do.body504
  %call521 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0)) #31
  %40 = load i32, i32* @nr_cpu_ids, align 4
  %call526 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %40, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2678; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !28
  unreachable

do.end535:                                        ; preds = %do.body504
  %41 = trunc i64 %indvars.iv835 to i32
  %add536 = add i32 %unit.0829, %41
  store i32 %add536, i32* %arrayidx506, align 4
  %42 = load i64, i64* %base_offset, align 8
  %43 = load i64, i64* %unit_size, align 8
  %mul542 = mul i64 %43, %indvars.iv835
  %add543 = add i64 %mul542, %42
  %arrayidx545 = getelementptr i64, i64* %22, i64 %idxprom505
  store i64 %add543, i64* %arrayidx545, align 8
  %cmp546 = icmp eq i32 %32, 256
  br i1 %cmp546, label %if.then554, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end535
  %idxprom550 = zext i32 %32 to i64
  %arrayidx551 = getelementptr i64, i64* %22, i64 %idxprom550
  %44 = load i64, i64* %arrayidx551, align 8
  %cmp552 = icmp ult i64 %add543, %44
  br i1 %cmp552, label %if.then554, label %if.end555

if.then554:                                       ; preds = %lor.lhs.false, %do.end535
  store i32 %35, i32* @pcpu_low_unit_cpu, align 4
  br label %if.end555

if.end555:                                        ; preds = %if.then554, %lor.lhs.false
  %pcpu_low_unit_cpu.promoted817 = phi i32 [ %35, %if.then554 ], [ %pcpu_low_unit_cpu.promoted819, %lor.lhs.false ]
  %45 = phi i32 [ %35, %if.then554 ], [ %32, %lor.lhs.false ]
  %cmp556 = icmp eq i32 %33, 256
  br i1 %cmp556, label %if.then565, label %lor.lhs.false558

lor.lhs.false558:                                 ; preds = %if.end555
  %idxprom561 = zext i32 %33 to i64
  %arrayidx562 = getelementptr i64, i64* %22, i64 %idxprom561
  %46 = load i64, i64* %arrayidx562, align 8
  %cmp563 = icmp ugt i64 %add543, %46
  br i1 %cmp563, label %if.then565, label %for.inc567

if.then565:                                       ; preds = %lor.lhs.false558, %if.end555
  store i32 %35, i32* @pcpu_high_unit_cpu, align 4
  br label %for.inc567

for.inc567:                                       ; preds = %lor.lhs.false558, %if.then565, %for.body436
  %pcpu_high_unit_cpu.promoted823 = phi i32 [ %pcpu_high_unit_cpu.promoted824, %lor.lhs.false558 ], [ %35, %if.then565 ], [ %pcpu_high_unit_cpu.promoted824, %for.body436 ]
  %pcpu_low_unit_cpu.promoted818 = phi i32 [ %pcpu_low_unit_cpu.promoted817, %lor.lhs.false558 ], [ %pcpu_low_unit_cpu.promoted817, %if.then565 ], [ %pcpu_low_unit_cpu.promoted819, %for.body436 ]
  %47 = phi i32 [ %33, %lor.lhs.false558 ], [ %35, %if.then565 ], [ %33, %for.body436 ]
  %48 = phi i32 [ %45, %lor.lhs.false558 ], [ %45, %if.then565 ], [ %32, %for.body436 ]
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv835, 1
  %49 = load i32, i32* %nr_units, align 8
  %50 = sext i32 %49 to i64
  %cmp434 = icmp slt i64 %indvars.iv.next836, %50
  br i1 %cmp434, label %for.body436, label %for.end569.loopexit

for.end569.loopexit:                              ; preds = %for.inc567
  %51 = trunc i64 %indvars.iv.next836 to i32
  br label %for.end569

for.end569:                                       ; preds = %for.end569.loopexit, %for.body422
  %pcpu_high_unit_cpu.promoted822 = phi i32 [ %pcpu_high_unit_cpu.promoted825827, %for.body422 ], [ %pcpu_high_unit_cpu.promoted823, %for.end569.loopexit ]
  %pcpu_low_unit_cpu.promoted816 = phi i32 [ %pcpu_low_unit_cpu.promoted820828, %for.body422 ], [ %pcpu_low_unit_cpu.promoted818, %for.end569.loopexit ]
  %i.0.lcssa = phi i32 [ 0, %for.body422 ], [ %51, %for.end569.loopexit ]
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1
  %add572 = add i32 %i.0.lcssa, %unit.0829
  %52 = load i32, i32* %nr_groups, align 8
  %53 = sext i32 %52 to i64
  %cmp420 = icmp slt i64 %indvars.iv.next839, %53
  br i1 %cmp420, label %for.body422, label %for.end573.loopexit

for.end573.loopexit:                              ; preds = %for.end569
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %for.end573

for.end573:                                       ; preds = %for.end573.loopexit, %for.end
  %54 = phi i32 [ %26, %for.end ], [ %.pre, %for.end573.loopexit ]
  %unit.0.lcssa = phi i32 [ 0, %for.end ], [ %add572, %for.end573.loopexit ]
  store i32 %unit.0.lcssa, i32* @pcpu_nr_units, align 4
  br label %for.cond574

for.cond574:                                      ; preds = %do.body579, %for.end573
  %cpu.1 = phi i32 [ -1, %for.end573 ], [ %call575, %do.body579 ]
  %call575 = call i32 @cpumask_next(i32 noundef %cpu.1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %cmp576 = icmp ult i32 %call575, %54
  br i1 %cmp576, label %do.body579, label %for.end611

do.body579:                                       ; preds = %for.cond574
  %idxprom580 = zext i32 %call575 to i64
  %arrayidx581 = getelementptr i32, i32* %20, i64 %idxprom580
  %55 = load i32, i32* %arrayidx581, align 4
  %cmp582 = icmp eq i32 %55, -1
  br i1 %cmp582, label %do.end594, label %for.cond574, !prof !8

do.end594:                                        ; preds = %do.body579
  %call596 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0)) #31
  %56 = load i32, i32* @nr_cpu_ids, align 4
  %call601 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %56, i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0)) #31
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2695; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !29
  unreachable

for.end611:                                       ; preds = %for.cond574
  call fastcc void @pcpu_dump_alloc_info(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), %struct.pcpu_alloc_info* noundef %ai) #26
  %57 = load i32, i32* %nr_groups, align 8
  store i32 %57, i32* @pcpu_nr_groups, align 4
  store i8* %call.i, i8** bitcast (i64** @pcpu_group_offsets to i8**), align 8
  store i8* %call.i800, i8** bitcast (i64** @pcpu_group_sizes to i8**), align 8
  store i8* %call.i801, i8** bitcast (i32** @pcpu_unit_map to i8**), align 8
  store i8* %call.i802, i8** bitcast (i64** @pcpu_unit_offsets to i8**), align 8
  %58 = load i64, i64* %unit_size, align 8
  %shr = lshr i64 %58, 12
  %conv614 = trunc i64 %shr to i32
  store i32 %conv614, i32* @pcpu_unit_pages, align 4
  %shl = shl i32 %conv614, 12
  store i32 %shl, i32* @pcpu_unit_size, align 4
  %atom_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 4
  %59 = load i64, i64* %atom_size, align 8
  %conv615 = trunc i64 %59 to i32
  store i32 %conv615, i32* @pcpu_atom_size, align 4
  %sext = shl i64 %shr, 32
  %conv616 = ashr exact i64 %sext, 32
  %sub = add nsw i64 %conv616, 63
  %div = lshr i64 %sub, 6
  %call618 = call fastcc i64 @__ab_c_size(i64 noundef %div, i64 noundef 8, i64 noundef 120) #26
  store i64 %call618, i64* @pcpu_chunk_struct_size, align 8
  %call619 = call fastcc i32 @__pcpu_size_to_slot(i32 noundef %shl) #26
  %add620 = add i32 %call619, 1
  store i32 %add620, i32* @pcpu_sidelined_slot, align 4
  %add621 = add i32 %call619, 2
  store i32 %add621, i32* @pcpu_free_slot, align 4
  %add622 = add i32 %call619, 3
  store i32 %add622, i32* @pcpu_to_depopulate_slot, align 4
  %add623 = add i32 %call619, 4
  store i32 %add623, i32* @pcpu_nr_slots, align 4
  %conv624 = sext i32 %add623 to i64
  %mul625 = shl nsw i64 %conv624, 4
  %call.i803 = call i8* @memblock_alloc_try_nid(i64 noundef %mul625, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  store i8* %call.i803, i8** bitcast (%struct.list_head** @pcpu_chunk_lists to i8**), align 8
  %tobool627.not = icmp eq i8* %call.i803, null
  %60 = load i32, i32* @pcpu_nr_slots, align 4
  br i1 %tobool627.not, label %if.then628, label %for.cond632.preheader

for.cond632.preheader:                            ; preds = %for.end611
  %cmp633832 = icmp sgt i32 %60, 0
  br i1 %cmp633832, label %for.body635.preheader, label %for.end640

for.body635.preheader:                            ; preds = %for.cond632.preheader
  %61 = bitcast i8* %call.i803 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %61) #26
  %62 = load i32, i32* @pcpu_nr_slots, align 4
  %cmp633845 = icmp sgt i32 %62, 1
  br i1 %cmp633845, label %for.body635.for.body635_crit_edge, label %for.end640

if.then628:                                       ; preds = %for.end611
  %conv629 = sext i32 %60 to i64
  %mul630 = shl nsw i64 %conv629, 4
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pcpu_setup_first_chunk, i64 0, i64 0), i64 noundef %mul630) #32
  unreachable

for.body635.for.body635_crit_edge:                ; preds = %for.body635.preheader, %for.body635.for.body635_crit_edge
  %indvars.iv.next842846 = phi i64 [ %indvars.iv.next842, %for.body635.for.body635_crit_edge ], [ 1, %for.body635.preheader ]
  %.pre844 = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  %arrayidx637 = getelementptr %struct.list_head, %struct.list_head* %.pre844, i64 %indvars.iv.next842846
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %arrayidx637) #26
  %indvars.iv.next842 = add nuw nsw i64 %indvars.iv.next842846, 1
  %63 = load i32, i32* @pcpu_nr_slots, align 4
  %64 = sext i32 %63 to i64
  %cmp633 = icmp slt i64 %indvars.iv.next842, %64
  br i1 %cmp633, label %for.body635.for.body635_crit_edge, label %for.end640

for.end640:                                       ; preds = %for.body635.for.body635_crit_edge, %for.body635.preheader, %for.cond632.preheader
  %65 = load i64, i64* %static_size, align 8
  %add642 = add i64 %65, 3
  %and643 = and i64 %add642, -4
  %66 = load i64, i64* %dyn_size, align 8
  %sub646.neg = sub i64 %65, %and643
  %sub647 = add i64 %sub646.neg, %66
  %add648 = add i64 %and643, %8
  %67 = load i64, i64* %reserved_size, align 8
  %tobool650.not = icmp eq i64 %67, 0
  %cond = select i1 %tobool650.not, i64 %sub647, i64 %67
  %conv651 = trunc i64 %cond to i32
  %call652 = call fastcc %struct.pcpu_chunk* @pcpu_alloc_first_chunk(i64 noundef %add648, i32 noundef %conv651) #33
  %68 = load i64, i64* %reserved_size, align 8
  %tobool654.not = icmp eq i64 %68, 0
  br i1 %tobool654.not, label %if.end661, label %if.then655

if.then655:                                       ; preds = %for.end640
  store %struct.pcpu_chunk* %call652, %struct.pcpu_chunk** @pcpu_reserved_chunk, align 8
  %add658 = add i64 %68, %add648
  %conv659 = trunc i64 %sub647 to i32
  %call660 = call fastcc %struct.pcpu_chunk* @pcpu_alloc_first_chunk(i64 noundef %add658, i32 noundef %conv659) #33
  br label %if.end661

if.end661:                                        ; preds = %if.then655, %for.end640
  %chunk.0 = phi %struct.pcpu_chunk* [ %call660, %if.then655 ], [ %call652, %for.end640 ]
  store %struct.pcpu_chunk* %chunk.0, %struct.pcpu_chunk** @pcpu_first_chunk, align 8
  %nr_empty_pop_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.0, i64 0, i32 14
  %69 = load i32, i32* %nr_empty_pop_pages, align 4
  store i32 %69, i32* @pcpu_nr_empty_pop_pages, align 4
  call fastcc void @pcpu_chunk_relocate(%struct.pcpu_chunk* noundef %chunk.0, i32 noundef -1) #26
  %shr662 = lshr i64 %add1, 12
  %70 = load i64, i64* @pcpu_nr_populated, align 8
  %add663 = add i64 %70, %shr662
  store i64 %add663, i64* @pcpu_nr_populated, align 8
  store i8* %base_addr, i8** @pcpu_base_addr, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_dump_alloc_info(i8* noundef %lvl, %struct.pcpu_alloc_info* nocapture noundef readonly %ai) unnamed_addr #0 {
entry:
  %empty_str = alloca [9 x i8], align 1
  %0 = getelementptr inbounds [9 x i8], [9 x i8]* %empty_str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %0) #29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(9) %0, i8* noundef align 1 dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @__const.pcpu_dump_alloc_info.empty_str, i64 0, i64 0), i64 9, i1 false)
  %nr_groups = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 7
  %1 = load i32, i32* %nr_groups, align 8
  %v.0.off252 = add i32 %1, 9
  %2 = icmp ult i32 %v.0.off252, 19
  br i1 %2, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %group_width.0254 = phi i32 [ %inc, %while.body ], [ 1, %entry ]
  %v.0253 = phi i32 [ %div, %while.body ], [ %1, %entry ]
  %div = sdiv i32 %v.0253, 10
  %inc = add i32 %group_width.0254, 1
  %v.0.off = add nsw i32 %div, 9
  %3 = icmp ult i32 %v.0.off, 19
  br i1 %3, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %group_width.0.lcssa = phi i32 [ 1, %entry ], [ %inc, %while.body ]
  %call = call fastcc i32 @cpumask_weight() #26
  %v.1.off255 = add i32 %call, 9
  %4 = icmp ult i32 %v.1.off255, 19
  br i1 %4, label %while.end6.thread, label %while.body4

while.body4:                                      ; preds = %while.end, %while.body4
  %cpu_width.0257 = phi i32 [ %inc5, %while.body4 ], [ 1, %while.end ]
  %v.1256 = phi i32 [ %div2, %while.body4 ], [ %call, %while.end ]
  %div2 = sdiv i32 %v.1256, 10
  %inc5 = add i32 %cpu_width.0257, 1
  %v.1.off = add nsw i32 %div2, 9
  %5 = icmp ult i32 %v.1.off, 19
  br i1 %5, label %while.end6, label %while.body4

while.end6:                                       ; preds = %while.body4
  %cmp = icmp slt i32 %inc5, 8
  br i1 %cmp, label %while.end6.thread, label %cond.false71

while.end6.thread:                                ; preds = %while.end, %while.end6
  %cpu_width.0.lcssa276 = phi i32 [ %inc5, %while.end6 ], [ 1, %while.end ]
  br label %cond.false71

cond.false71:                                     ; preds = %while.end6, %while.end6.thread
  %cpu_width.0.lcssa275 = phi i32 [ %cpu_width.0.lcssa276, %while.end6.thread ], [ %inc5, %while.end6 ]
  %6 = phi i32 [ %cpu_width.0.lcssa276, %while.end6.thread ], [ 8, %while.end6 ]
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr [9 x i8], [9 x i8]* %empty_str, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %alloc_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 5
  %7 = load i64, i64* %alloc_size, align 8
  %unit_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 3
  %8 = load i64, i64* %unit_size, align 8
  %div7 = udiv i64 %7, %8
  %conv = trunc i64 %div7 to i32
  %add = add i32 %cpu_width.0.lcssa275, 1
  %mul = mul i32 %add, %conv
  %add8 = add i32 %group_width.0.lcssa, 3
  %add9 = add i32 %add8, %mul
  %div10 = sdiv i32 60, %add9
  %cmp12 = icmp sgt i32 %div10, 1
  %cond17 = select i1 %cmp12, i32 %div10, i32 1
  %conv82 = zext i32 %cond17 to i64
  %call83 = call fastcc i64 @__rounddown_pow_of_two(i64 noundef %conv82) #27
  %conv86 = trunc i64 %call83 to i32
  %static_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 0
  %9 = load i64, i64* %static_size, align 8
  %reserved_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 1
  %10 = load i64, i64* %reserved_size, align 8
  %dyn_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 2
  %11 = load i64, i64* %dyn_size, align 8
  %atom_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 4
  %12 = load i64, i64* %atom_size, align 8
  %div90 = udiv i64 %7, %12
  %call92 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i64 0, i64 0), i8* noundef %lvl, i64 noundef %9, i64 noundef %10, i64 noundef %11, i64 noundef %8, i64 noundef %div90, i64 noundef %12) #31
  %13 = load i32, i32* %nr_groups, align 8
  %cmp94267 = icmp sgt i32 %13, 0
  br i1 %cmp94267, label %for.body, label %do.end170

for.body:                                         ; preds = %cond.false71, %for.end164
  %14 = phi i32 [ %22, %for.end164 ], [ %13, %cond.false71 ]
  %alloc.0271 = phi i32 [ %alloc.1.lcssa, %for.end164 ], [ 0, %cond.false71 ]
  %alloc_end.0270 = phi i32 [ %add113, %for.end164 ], [ 0, %cond.false71 ]
  %group.0268 = phi i32 [ %inc166, %for.end164 ], [ 0, %cond.false71 ]
  %idxprom96 = sext i32 %group.0268 to i64
  %nr_units = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 8, i64 %idxprom96, i32 0
  %15 = load i32, i32* %nr_units, align 8
  %.frozen = freeze i32 %15
  %conv.frozen = freeze i32 %conv
  %div112 = sdiv i32 %.frozen, %conv.frozen
  %16 = mul i32 %div112, %conv.frozen
  %rem.decomposed = sub i32 %.frozen, %16
  %tobool99.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool99.not, label %do.end110, label %do.body103, !prof !10

do.body103:                                       ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2515; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !30
  unreachable

do.end110:                                        ; preds = %for.body
  %add113 = add i32 %div112, %alloc_end.0270
  %cmp115262 = icmp slt i32 %alloc.0271, %add113
  br i1 %cmp115262, label %for.body117.lr.ph, label %for.end164

for.body117.lr.ph:                                ; preds = %do.end110
  %cpu_map = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %ai, i64 0, i32 8, i64 %idxprom96, i32 2
  br label %for.body117

for.body117:                                      ; preds = %for.body117.lr.ph, %for.inc162
  %alloc.1265 = phi i32 [ %alloc.0271, %for.body117.lr.ph ], [ %inc163, %for.inc162 ]
  %unit_end.0264 = phi i32 [ 0, %for.body117.lr.ph ], [ %add137, %for.inc162 ]
  %unit.0263 = phi i32 [ 0, %for.body117.lr.ph ], [ %unit.1.lcssa, %for.inc162 ]
  %rem118 = srem i32 %alloc.1265, %conv86
  %tobool119.not = icmp eq i32 %rem118, 0
  br i1 %tobool119.not, label %do.end123, label %do.end134

do.end123:                                        ; preds = %for.body117
  %call125 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0)) #31
  %call130 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8* noundef %lvl) #31
  br label %do.end134

do.end134:                                        ; preds = %for.body117, %do.end123
  %call136 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i32 noundef %group_width.0.lcssa, i32 noundef %group.0268) #31
  %add137 = add i32 %unit_end.0264, %conv
  %cmp139259 = icmp slt i32 %unit.0263, %add137
  br i1 %cmp139259, label %for.body141.preheader, label %for.inc162

for.body141.preheader:                            ; preds = %do.end134
  %17 = sext i32 %unit.0263 to i64
  %18 = sext i32 %add137 to i64
  br label %for.body141

for.body141:                                      ; preds = %for.body141.preheader, %for.inc
  %indvars.iv = phi i64 [ %17, %for.body141.preheader ], [ %indvars.iv.next, %for.inc ]
  %19 = load i32*, i32** %cpu_map, align 8
  %arrayidx143 = getelementptr i32, i32* %19, i64 %indvars.iv
  %20 = load i32, i32* %arrayidx143, align 4
  %cmp144.not = icmp eq i32 %20, 256
  br i1 %cmp144.not, label %do.end157, label %do.end149

do.end149:                                        ; preds = %for.body141
  %call154 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i32 noundef %cpu_width.0.lcssa275, i32 noundef %20) #31
  br label %for.inc

do.end157:                                        ; preds = %for.body141
  %call159 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %0) #31
  br label %for.inc

for.inc:                                          ; preds = %do.end149, %do.end157
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp139 = icmp slt i64 %indvars.iv.next, %18
  br i1 %cmp139, label %for.body141, label %for.inc162.loopexit

for.inc162.loopexit:                              ; preds = %for.inc
  %21 = trunc i64 %indvars.iv.next to i32
  br label %for.inc162

for.inc162:                                       ; preds = %for.inc162.loopexit, %do.end134
  %unit.1.lcssa = phi i32 [ %unit.0263, %do.end134 ], [ %21, %for.inc162.loopexit ]
  %inc163 = add nsw i32 %alloc.1265, 1
  %exitcond.not = icmp eq i32 %inc163, %add113
  br i1 %exitcond.not, label %for.end164.loopexit, label %for.body117

for.end164.loopexit:                              ; preds = %for.inc162
  %.pre = load i32, i32* %nr_groups, align 8
  br label %for.end164

for.end164:                                       ; preds = %for.end164.loopexit, %do.end110
  %22 = phi i32 [ %14, %do.end110 ], [ %.pre, %for.end164.loopexit ]
  %alloc.1.lcssa = phi i32 [ %alloc.0271, %do.end110 ], [ %add113, %for.end164.loopexit ]
  %inc166 = add nuw i32 %group.0268, 1
  %cmp94 = icmp slt i32 %inc166, %22
  br i1 %cmp94, label %for.body, label %do.end170

do.end170:                                        ; preds = %for.end164, %cond.false71
  %call172 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0)) #31
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %0) #29
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpu_possible(i32 noundef %cpu) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) #26
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__pcpu_size_to_slot(i32 noundef %size) unnamed_addr #8 {
entry:
  %tobool.not.i = icmp eq i32 %size, 0
  %0 = call i32 @llvm.ctlz.i32(i32 %size, i1 false) #29, !range !31
  %narrow.i.op = sub nsw i32 29, %0
  %add = select i1 %tobool.not.i, i32 -3, i32 %narrow.i.op
  %cmp = icmp sgt i32 %add, 1
  %cond = select i1 %cmp, i32 %add, i32 1
  ret i32 %cond
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

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc %struct.pcpu_chunk* @pcpu_alloc_first_chunk(i64 noundef %tmp_addr, i32 noundef %map_size) unnamed_addr #7 section ".init.text" {
entry:
  %0 = trunc i64 %tmp_addr to i32
  %conv = and i32 %0, 4095
  %call = call i64 @lcm(i64 noundef 4096, i64 noundef 4096) #27
  %add = add i32 %conv, %map_size
  %conv1 = trunc i64 %call to i32
  %sub2 = add i32 %add, -1
  %add3 = add i32 %sub2, %conv1
  %neg = sub i32 0, %conv1
  %and6 = and i32 %add3, %neg
  %shr = ashr i32 %and6, 12
  %narrow = add nsw i32 %shr, 63
  %sub9 = sext i32 %narrow to i64
  %div = lshr i64 %sub9, 6
  %call10 = call fastcc i64 @__ab_c_size(i64 noundef %div, i64 noundef 8, i64 noundef 120) #26
  %call.i = call i8* @memblock_alloc_try_nid(i64 noundef %call10, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  %1 = bitcast i8* %call.i to %struct.pcpu_chunk*
  %tobool.not = icmp eq i8* %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pcpu_alloc_first_chunk, i64 0, i64 0), i64 noundef %call10) #32
  unreachable

if.end:                                           ; preds = %entry
  %and = and i64 %tmp_addr, -4096
  %list = bitcast i8* %call.i to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %list) #26
  %2 = inttoptr i64 %and to i8*
  %base_addr = getelementptr inbounds i8, i8* %call.i, i64 56
  %3 = bitcast i8* %base_addr to i8**
  store i8* %2, i8** %3, align 8
  %start_offset12 = getelementptr inbounds i8, i8* %call.i, i64 100
  %4 = bitcast i8* %start_offset12 to i32*
  store i32 %conv, i32* %4, align 4
  %sub15 = sub i32 %and6, %add
  %end_offset = getelementptr inbounds i8, i8* %call.i, i64 104
  %5 = bitcast i8* %end_offset to i32*
  store i32 %sub15, i32* %5, align 8
  %nr_pages = getelementptr inbounds i8, i8* %call.i, i64 108
  %6 = bitcast i8* %nr_pages to i32*
  store i32 %shr, i32* %6, align 4
  %call17 = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef nonnull %1) #26
  %conv18 = sext i32 %call17 to i64
  %sub20 = add nsw i64 %conv18, 63
  %7 = lshr i64 %sub20, 3
  %mul = and i64 %7, 2305843009213693944
  %call.i151 = call i8* @memblock_alloc_try_nid(i64 noundef %mul, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  %alloc_map = getelementptr inbounds i8, i8* %call.i, i64 64
  %8 = bitcast i8* %alloc_map to i64**
  %9 = bitcast i8* %alloc_map to i8**
  store i8* %call.i151, i8** %9, align 8
  %tobool24.not = icmp eq i8* %call.i151, null
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pcpu_alloc_first_chunk, i64 0, i64 0), i64 noundef %mul) #32
  unreachable

if.end26:                                         ; preds = %if.end
  %add27 = add i32 %call17, 1
  %conv28 = sext i32 %add27 to i64
  %sub30 = add nsw i64 %conv28, 63
  %10 = lshr i64 %sub30, 3
  %mul32 = and i64 %10, 2305843009213693944
  %call.i152 = call i8* @memblock_alloc_try_nid(i64 noundef %mul32, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  %bound_map = getelementptr inbounds i8, i8* %call.i, i64 72
  %11 = bitcast i8* %bound_map to i64**
  %12 = bitcast i8* %bound_map to i8**
  store i8* %call.i152, i8** %12, align 8
  %tobool35.not = icmp eq i8* %call.i152, null
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end26
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pcpu_alloc_first_chunk, i64 0, i64 0), i64 noundef %mul32) #32
  unreachable

if.end37:                                         ; preds = %if.end26
  %call38 = call fastcc i32 @pcpu_chunk_nr_blocks(%struct.pcpu_chunk* noundef nonnull %1) #26
  %conv39 = sext i32 %call38 to i64
  %mul40 = shl nsw i64 %conv39, 5
  %call.i153 = call i8* @memblock_alloc_try_nid(i64 noundef %mul40, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  %md_blocks = getelementptr inbounds i8, i8* %call.i, i64 80
  %13 = bitcast i8* %md_blocks to i8**
  store i8* %call.i153, i8** %13, align 8
  %tobool43.not = icmp eq i8* %call.i153, null
  br i1 %tobool43.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end37
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.pcpu_alloc_first_chunk, i64 0, i64 0), i64 noundef %mul40) #32
  unreachable

if.end45:                                         ; preds = %if.end37
  call fastcc void @pcpu_init_md_blocks(%struct.pcpu_chunk* noundef nonnull %1) #26
  %14 = getelementptr inbounds i8, i8* %call.i, i64 96
  store i8 1, i8* %14, align 8
  %populated = getelementptr inbounds i8, i8* %call.i, i64 120
  %arraydecay = bitcast i8* %populated to i64*
  %15 = load i32, i32* %6, align 4
  call fastcc void @bitmap_fill(i64* noundef %arraydecay, i32 noundef %15) #26
  %16 = load i32, i32* %6, align 4
  %nr_populated = getelementptr inbounds i8, i8* %call.i, i64 112
  %17 = bitcast i8* %nr_populated to i32*
  store i32 %16, i32* %17, align 8
  %nr_empty_pop_pages = getelementptr inbounds i8, i8* %call.i, i64 116
  %18 = bitcast i8* %nr_empty_pop_pages to i32*
  store i32 %16, i32* %18, align 4
  %free_bytes = getelementptr inbounds i8, i8* %call.i, i64 16
  %19 = bitcast i8* %free_bytes to i32*
  store i32 %map_size, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %tobool50.not = icmp eq i32 %20, 0
  br i1 %tobool50.not, label %if.end58, label %if.then51

if.then51:                                        ; preds = %if.end45
  %div53 = sdiv i32 %20, 4
  %21 = load i64*, i64** %8, align 8
  call void @__bitmap_set(i64* noundef %21, i32 noundef 0, i32 noundef %div53) #28
  %22 = load i64*, i64** %11, align 8
  call fastcc void @set_bit(i64 noundef 0, i64* noundef %22) #26
  %conv56 = sext i32 %div53 to i64
  %23 = load i64*, i64** %11, align 8
  call fastcc void @set_bit(i64 noundef %conv56, i64* noundef %23) #26
  %first_free = getelementptr inbounds i8, i8* %call.i, i64 44
  %24 = bitcast i8* %first_free to i32*
  store i32 %div53, i32* %24, align 4
  call fastcc void @pcpu_block_update_hint_alloc(%struct.pcpu_chunk* noundef nonnull %1, i32 noundef 0, i32 noundef %div53) #26
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %if.end45
  %25 = load i32, i32* %5, align 8
  %tobool60.not = icmp eq i32 %25, 0
  br i1 %tobool60.not, label %if.end75, label %if.then61

if.then61:                                        ; preds = %if.end58
  %div63 = sdiv i32 %25, 4
  %26 = load i64*, i64** %8, align 8
  %call65 = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef nonnull %1) #26
  %sub66 = sub i32 %call65, %div63
  call void @__bitmap_set(i64* noundef %26, i32 noundef %sub66, i32 noundef %div63) #28
  %div68 = sdiv i32 %add, 4
  %conv69 = sext i32 %div68 to i64
  %27 = load i64*, i64** %11, align 8
  call fastcc void @set_bit(i64 noundef %conv69, i64* noundef %27) #26
  %28 = load i64*, i64** %11, align 8
  call fastcc void @set_bit(i64 noundef %conv18, i64* noundef %28) #26
  %call73 = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef nonnull %1) #26
  %sub74 = sub i32 %call73, %div63
  call fastcc void @pcpu_block_update_hint_alloc(%struct.pcpu_chunk* noundef nonnull %1, i32 noundef %sub74, i32 noundef %div63) #26
  br label %if.end75

if.end75:                                         ; preds = %if.then61, %if.end58
  ret %struct.pcpu_chunk* %1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_chunk_relocate(%struct.pcpu_chunk* noundef %chunk, i32 noundef %oslot) unnamed_addr #4 {
entry:
  %call = call fastcc i32 @pcpu_chunk_slot(%struct.pcpu_chunk* noundef %chunk) #26
  %isolated = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 9
  %0 = load i8, i8* %isolated, align 1, !range !13
  %tobool.not = icmp ne i8 %0, 0
  %cmp.not = icmp eq i32 %call, %oslot
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %cleanup, label %if.then1

if.then1:                                         ; preds = %entry
  %cmp2 = icmp sgt i32 %call, %oslot
  call fastcc void @__pcpu_chunk_move(%struct.pcpu_chunk* noundef %chunk, i32 noundef %call, i1 noundef %cmp2) #26
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @percpu_alloc_setup(i8* noundef %str) #7 section ".init.text" {
entry:
  %tobool.not = icmp eq i8* %str, null
  br i1 %tobool.not, label %return, label %do.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.42, i64 0, i64 0), i8* noundef nonnull %str) #31
  br label %return

return:                                           ; preds = %entry, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @pcpu_embed_first_chunk(i64 noundef %reserved_size, i64 noundef %dyn_size, i64 noundef %atom_size, i32 (i32, i32)* noundef %cpu_distance_fn, i8* (i32, i64, i64)* nocapture noundef readonly %alloc_fn, void (i8*, i64)* nocapture noundef readonly %free_fn) local_unnamed_addr #7 section ".init.text" {
entry:
  %call = call fastcc %struct.pcpu_alloc_info* @pcpu_build_alloc_info(i64 noundef %reserved_size, i64 noundef %dyn_size, i64 noundef %atom_size, i32 (i32, i32)* noundef %cpu_distance_fn) #33
  %0 = bitcast %struct.pcpu_alloc_info* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #26
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #26
  %conv = trunc i64 %call2 to i32
  br label %cleanup173

if.end:                                           ; preds = %entry
  %static_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 0
  %1 = load i64, i64* %static_size, align 8
  %reserved_size3 = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 1
  %2 = load i64, i64* %reserved_size3, align 8
  %add = add i64 %2, %1
  %dyn_size4 = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 2
  %3 = load i64, i64* %dyn_size4, align 8
  %add5 = add i64 %add, %3
  %nr_groups = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 7
  %4 = load i32, i32* %nr_groups, align 8
  %conv6 = sext i32 %4 to i64
  %mul = shl nsw i64 %conv6, 3
  %add7 = add nsw i64 %mul, 4095
  %and = and i64 %add7, -4096
  %call.i = call i8* @memblock_alloc_try_nid(i64 noundef %and, i64 noundef 64, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  %5 = bitcast i8* %call.i to i8**
  %tobool.not = icmp eq i8* %call.i, null
  br i1 %tobool.not, label %out_free.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %6 = load i32, i32* %nr_groups, align 8
  %cmp305 = icmp sgt i32 %6, 0
  br i1 %cmp305, label %for.body.lr.ph, label %for.end55

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %unit_size = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 3
  br label %for.body

out_free.thread:                                  ; preds = %if.end
  call void @pcpu_free_alloc_info(%struct.pcpu_alloc_info* noundef %call) #33
  br label %cleanup173

for.body:                                         ; preds = %for.body.lr.ph, %for.inc53
  %indvars.iv323 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next324, %for.inc53 ]
  %base.0308 = phi i8* [ inttoptr (i64 -1 to i8*), %for.body.lr.ph ], [ %cond, %for.inc53 ]
  %highest_group.0307 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.inc53 ]
  %nr_units = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 8, i64 %indvars.iv323, i32 0
  %7 = load i32, i32* %nr_units, align 8
  %cmp14301 = icmp sgt i32 %7, 0
  br i1 %cmp14301, label %for.body18.lr.ph, label %do.body27, !prof !32

for.body18.lr.ph:                                 ; preds = %for.body
  %cpu_map = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 8, i64 %indvars.iv323, i32 2
  %8 = load i32*, i32** %cpu_map, align 8
  %9 = zext i32 %7 to i64
  br label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %for.body18
  %indvars.iv = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next, %for.body18 ]
  %arrayidx20 = getelementptr i32, i32* %8, i64 %indvars.iv
  %10 = load i32, i32* %arrayidx20, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp14 = icmp ult i64 %indvars.iv.next, %9
  %cmp16 = icmp eq i32 %10, 256
  %11 = select i1 %cmp14, i1 %cmp16, i1 false
  br i1 %11, label %for.body18, label %do.body

do.body:                                          ; preds = %for.body18
  br i1 %cmp16, label %do.body27, label %do.end33, !prof !8

do.body27:                                        ; preds = %for.body, %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 3066; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !33
  unreachable

do.end33:                                         ; preds = %do.body
  %conv35 = sext i32 %7 to i64
  %12 = load i64, i64* %unit_size, align 8
  %mul36 = mul i64 %12, %conv35
  %call37 = call i8* %alloc_fn(i32 noundef %10, i64 noundef %mul36, i64 noundef %atom_size) #28
  %tobool38.not = icmp eq i8* %call37, null
  br i1 %tobool38.not, label %for.cond136.preheader, label %for.inc53

for.cond136.preheader:                            ; preds = %do.end33
  %13 = load i32, i32* %nr_groups, align 8
  %cmp138319 = icmp sgt i32 %13, 0
  br i1 %cmp138319, label %for.body140, label %if.then159

for.inc53:                                        ; preds = %do.end33
  %arrayidx42 = getelementptr i8*, i8** %5, i64 %indvars.iv323
  store i8* %call37, i8** %arrayidx42, align 8
  %cmp43 = icmp ult i8* %call37, %base.0308
  %cond = select i1 %cmp43, i8* %call37, i8* %base.0308
  %idxprom45 = sext i32 %highest_group.0307 to i64
  %arrayidx46 = getelementptr i8*, i8** %5, i64 %idxprom45
  %14 = load i8*, i8** %arrayidx46, align 8
  %cmp47 = icmp ugt i8* %call37, %14
  %15 = trunc i64 %indvars.iv323 to i32
  %spec.select = select i1 %cmp47, i32 %15, i32 %highest_group.0307
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1
  %16 = load i32, i32* %nr_groups, align 8
  %17 = sext i32 %16 to i64
  %cmp = icmp slt i64 %indvars.iv.next324, %17
  br i1 %cmp, label %for.body, label %for.end55.loopexit

for.end55.loopexit:                               ; preds = %for.inc53
  %phi.cast = sext i32 %spec.select to i64
  br label %for.end55

for.end55:                                        ; preds = %for.end55.loopexit, %for.cond.preheader
  %18 = phi i32 [ %6, %for.cond.preheader ], [ %16, %for.end55.loopexit ]
  %highest_group.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %phi.cast, %for.end55.loopexit ]
  %base.0.lcssa = phi i8* [ inttoptr (i64 -1 to i8*), %for.cond.preheader ], [ %cond, %for.end55.loopexit ]
  %arrayidx57 = getelementptr i8*, i8** %5, i64 %highest_group.0.lcssa
  %19 = load i8*, i8** %arrayidx57, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %base.0.lcssa to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %unit_size58 = getelementptr inbounds %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 3
  %20 = load i64, i64* %unit_size58, align 8
  %nr_units62 = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 8, i64 %highest_group.0.lcssa, i32 0
  %21 = load i32, i32* %nr_units62, align 8
  %conv63 = sext i32 %21 to i64
  %mul64 = mul i64 %20, %conv63
  %add65 = add i64 %mul64, %sub.ptr.sub
  %cmp66 = icmp ugt i64 %add65, 199313326080
  br i1 %cmp66, label %do.end71, label %if.end74

do.end71:                                         ; preds = %for.end55
  %call73 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i64 0, i64 0), i64 noundef %add65, i64 noundef 265751101440) #31
  %.pre = load i32, i32* %nr_groups, align 8
  br label %if.end74

if.end74:                                         ; preds = %do.end71, %for.end55
  %22 = phi i32 [ %.pre, %do.end71 ], [ %18, %for.end55 ]
  %cmp77315 = icmp sgt i32 %22, 0
  br i1 %cmp77315, label %for.body79, label %do.end129

for.cond111.preheader:                            ; preds = %for.end107
  %cmp113317 = icmp sgt i32 %34, 0
  br i1 %cmp113317, label %for.body115, label %do.end129

for.body79:                                       ; preds = %if.end74, %for.end107
  %23 = phi i32 [ %34, %for.end107 ], [ %22, %if.end74 ]
  %indvars.iv329 = phi i64 [ %indvars.iv.next330, %for.end107 ], [ 0, %if.end74 ]
  %nr_units88 = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 8, i64 %indvars.iv329, i32 0
  %24 = load i32, i32* %nr_units88, align 8
  %cmp89311 = icmp sgt i32 %24, 0
  br i1 %cmp89311, label %for.body91.lr.ph, label %for.end107

for.body91.lr.ph:                                 ; preds = %for.body79
  %arrayidx86 = getelementptr i8*, i8** %5, i64 %indvars.iv329
  %25 = load i8*, i8** %arrayidx86, align 8
  %cpu_map92 = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 8, i64 %indvars.iv329, i32 2
  br label %for.body91

for.body91:                                       ; preds = %for.body91.lr.ph, %for.inc103
  %indvars.iv326 = phi i64 [ 0, %for.body91.lr.ph ], [ %indvars.iv.next327, %for.inc103 ]
  %ptr84.0313 = phi i8* [ %25, %for.body91.lr.ph ], [ %add.ptr106, %for.inc103 ]
  %26 = load i32*, i32** %cpu_map92, align 8
  %arrayidx94 = getelementptr i32, i32* %26, i64 %indvars.iv326
  %27 = load i32, i32* %arrayidx94, align 4
  %cmp95 = icmp eq i32 %27, 256
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %for.body91
  %28 = load i64, i64* %unit_size58, align 8
  call void %free_fn(i8* noundef %ptr84.0313, i64 noundef %28) #28
  br label %for.inc103

if.end99:                                         ; preds = %for.body91
  %29 = load i64, i64* %static_size, align 8
  %call101 = call i8* @memcpy(i8* noundef %ptr84.0313, i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @__per_cpu_load, i64 0, i64 0), i64 noundef %29) #28
  %add.ptr = getelementptr i8, i8* %ptr84.0313, i64 %add5
  %30 = load i64, i64* %unit_size58, align 8
  %sub = sub i64 %30, %add5
  call void %free_fn(i8* noundef %add.ptr, i64 noundef %sub) #28
  br label %for.inc103

for.inc103:                                       ; preds = %if.end99, %if.then97
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1
  %31 = load i64, i64* %unit_size58, align 8
  %add.ptr106 = getelementptr i8, i8* %ptr84.0313, i64 %31
  %32 = load i32, i32* %nr_units88, align 8
  %33 = sext i32 %32 to i64
  %cmp89 = icmp slt i64 %indvars.iv.next327, %33
  br i1 %cmp89, label %for.body91, label %for.end107.loopexit

for.end107.loopexit:                              ; preds = %for.inc103
  %.pre338 = load i32, i32* %nr_groups, align 8
  br label %for.end107

for.end107:                                       ; preds = %for.end107.loopexit, %for.body79
  %34 = phi i32 [ %.pre338, %for.end107.loopexit ], [ %23, %for.body79 ]
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1
  %35 = sext i32 %34 to i64
  %cmp77 = icmp slt i64 %indvars.iv.next330, %35
  br i1 %cmp77, label %for.body79, label %for.cond111.preheader

for.body115:                                      ; preds = %for.cond111.preheader, %for.body115
  %indvars.iv332 = phi i64 [ %indvars.iv.next333, %for.body115 ], [ 0, %for.cond111.preheader ]
  %arrayidx117 = getelementptr i8*, i8** %5, i64 %indvars.iv332
  %36 = load i8*, i8** %arrayidx117, align 8
  %sub.ptr.lhs.cast118 = ptrtoint i8* %36 to i64
  %sub.ptr.sub120 = sub i64 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast
  %base_offset = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 8, i64 %indvars.iv332, i32 1
  store i64 %sub.ptr.sub120, i64* %base_offset, align 8
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1
  %37 = load i32, i32* %nr_groups, align 8
  %38 = sext i32 %37 to i64
  %cmp113 = icmp slt i64 %indvars.iv.next333, %38
  br i1 %cmp113, label %for.body115, label %do.end129

do.end129:                                        ; preds = %for.body115, %if.end74, %for.cond111.preheader
  %shr = lshr i64 %add5, 12
  %39 = load i64, i64* %static_size, align 8
  %40 = load i64, i64* %reserved_size3, align 8
  %41 = load i64, i64* %dyn_size4, align 8
  %42 = load i64, i64* %unit_size58, align 8
  %call135 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i64 0, i64 0), i64 noundef %shr, i64 noundef %39, i64 noundef %40, i64 noundef %41, i64 noundef %42) #31
  call void @pcpu_setup_first_chunk(%struct.pcpu_alloc_info* noundef %call, i8* noundef %base.0.lcssa) #33
  br label %if.then159

for.body140:                                      ; preds = %for.cond136.preheader, %for.inc155
  %43 = phi i32 [ %47, %for.inc155 ], [ %13, %for.cond136.preheader ]
  %indvars.iv335 = phi i64 [ %indvars.iv.next336, %for.inc155 ], [ 0, %for.cond136.preheader ]
  %arrayidx142 = getelementptr i8*, i8** %5, i64 %indvars.iv335
  %44 = load i8*, i8** %arrayidx142, align 8
  %tobool143.not = icmp eq i8* %44, null
  br i1 %tobool143.not, label %for.inc155, label %if.then144

if.then144:                                       ; preds = %for.body140
  %nr_units150 = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %call, i64 0, i32 8, i64 %indvars.iv335, i32 0
  %45 = load i32, i32* %nr_units150, align 8
  %conv151 = sext i32 %45 to i64
  %46 = load i64, i64* %unit_size, align 8
  %mul153 = mul i64 %46, %conv151
  call void %free_fn(i8* noundef nonnull %44, i64 noundef %mul153) #28
  %.pre339 = load i32, i32* %nr_groups, align 8
  br label %for.inc155

for.inc155:                                       ; preds = %for.body140, %if.then144
  %47 = phi i32 [ %43, %for.body140 ], [ %.pre339, %if.then144 ]
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1
  %48 = sext i32 %47 to i64
  %cmp138 = icmp slt i64 %indvars.iv.next336, %48
  br i1 %cmp138, label %for.body140, label %if.then159

if.then159:                                       ; preds = %for.inc155, %do.end129, %for.cond136.preheader
  %rc.2 = phi i32 [ 0, %do.end129 ], [ -12, %for.cond136.preheader ], [ -12, %for.inc155 ]
  call void @pcpu_free_alloc_info(%struct.pcpu_alloc_info* noundef %call) #33
  %49 = ptrtoint i8* %call.i to i64
  %sub161 = add i64 %49, 549755813888
  %cmp162 = icmp ult i64 %sub161, 274877906944
  %50 = load i64, i64* @memstart_addr, align 8
  %add167 = add i64 %50, %sub161
  %51 = load i64, i64* @kimage_voffset, align 8
  %sub169 = sub i64 %49, %51
  %cond171 = select i1 %cmp162, i64 %add167, i64 %sub169
  call fastcc void @memblock_free_early(i64 noundef %cond171, i64 noundef %and) #26
  br label %cleanup173

cleanup173:                                       ; preds = %out_free.thread, %if.then159, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %rc.2, %if.then159 ], [ -12, %out_free.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc %struct.pcpu_alloc_info* @pcpu_build_alloc_info(i64 noundef %reserved_size, i64 noundef %dyn_size, i64 noundef %atom_size, i32 (i32, i32)* noundef readonly %cpu_distance_fn) unnamed_addr #7 section ".init.text" {
entry:
  %call = call i8* @memset(i8* noundef bitcast ([256 x i32]* @pcpu_build_alloc_info.group_map to i8*), i32 noundef 0, i64 noundef 1024) #34
  %call1 = call i8* @memset(i8* noundef bitcast ([256 x i32]* @pcpu_build_alloc_info.group_cnt to i8*), i32 noundef 0, i64 noundef 1024) #34
  call fastcc void @bitmap_zero() #28
  %cmp = icmp ugt i64 %dyn_size, 12288
  %cond = select i1 %cmp, i64 %dyn_size, i64 12288
  %add2 = add i64 %reserved_size, add (i64 sub (i64 ptrtoint ([0 x i8]* @__per_cpu_end to i64), i64 ptrtoint ([0 x i8]* @__per_cpu_start to i64)), i64 4095)
  %add3 = add i64 %add2, %cond
  %and = and i64 %add3, -4096
  %cmp6 = icmp ugt i64 %and, 32768
  %cond10 = select i1 %cmp6, i64 %and, i64 32768
  %sub12 = add i64 %atom_size, -1
  %add13 = add i64 %sub12, %cond10
  %0 = urem i64 %add13, %atom_size
  %mul = sub i64 %add13, %0
  %div14 = udiv i64 %mul, %cond10
  %conv = trunc i64 %div14 to i32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %upa.0 = phi i32 [ %conv, %entry ], [ %dec, %while.body ]
  %conv15 = sext i32 %upa.0 to i64
  %mul.frozen = freeze i64 %mul
  %conv15.frozen = freeze i64 %conv15
  %div17 = udiv i64 %mul.frozen, %conv15.frozen
  %1 = mul i64 %div17, %conv15.frozen
  %rem.decomposed = sub i64 %mul.frozen, %1
  %tobool.not = icmp eq i64 %rem.decomposed, 0
  %and18 = and i64 %div17, 4095
  %tobool19.not = icmp eq i64 %and18, 0
  %or.cond = and i1 %tobool.not, %tobool19.not
  br i1 %or.cond, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %dec = add i32 %upa.0, -1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %add = add i64 %reserved_size, sub (i64 ptrtoint ([0 x i8]* @__per_cpu_end to i64), i64 ptrtoint ([0 x i8]* @__per_cpu_start to i64))
  %sub4 = sub i64 %and, %add
  call fastcc void @bitmap_copy() #28
  %call.i378 = call fastcc i1 @bitmap_empty() #28
  br i1 %call.i378, label %for.cond43.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %while.end
  %tobool29.not = icmp eq i32 (i32, i32)* %cpu_distance_fn, null
  br label %for.body

for.cond43.preheader:                             ; preds = %for.inc, %while.end
  %group.0.lcssa = phi i32 [ 0, %while.end ], [ %inc41, %for.inc ]
  %tobool44.not386 = icmp eq i32 %upa.0, 0
  br i1 %tobool44.not386, label %do.body95, label %for.body45.lr.ph

for.body45.lr.ph:                                 ; preds = %for.cond43.preheader
  %cmp57380 = icmp sgt i32 %group.0.lcssa, 0
  %wide.trip.count = zext i32 %group.0.lcssa to i64
  br label %for.body45

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %group.0379 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %for.inc ]
  %call.i360 = call fastcc i64 @find_first_bit() #28
  %conv.i = trunc i64 %call.i360 to i32
  %idxprom = and i64 %call.i360, 4294967295
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @pcpu_build_alloc_info.group_map, i64 0, i64 %idxprom
  store i32 %group.0379, i32* %arrayidx, align 4
  %idxprom22 = sext i32 %group.0379 to i64
  %arrayidx23 = getelementptr [256 x i32], [256 x i32]* @pcpu_build_alloc_info.group_cnt, i64 0, i64 %idxprom22
  %2 = load i32, i32* %arrayidx23, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %arrayidx23, align 4
  call fastcc void @clear_bit(i64 noundef %idxprom) #28
  %call25375 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @pcpu_build_alloc_info.mask) #35
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp26376 = icmp ult i32 %call25375, %3
  br i1 %cmp26376, label %for.body28, label %for.inc

for.body28:                                       ; preds = %for.body, %if.end
  %call25377 = phi i32 [ %call25, %if.end ], [ %call25375, %for.body ]
  br i1 %tobool29.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body28
  %call30 = call i32 %cpu_distance_fn(i32 noundef %conv.i, i32 noundef %call25377) #34
  %cmp31 = icmp eq i32 %call30, 10
  br i1 %cmp31, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call33 = call i32 %cpu_distance_fn(i32 noundef %call25377, i32 noundef %conv.i) #34
  %cmp34 = icmp eq i32 %call33, 10
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %for.body28
  %idxprom36 = zext i32 %call25377 to i64
  %arrayidx37 = getelementptr [256 x i32], [256 x i32]* @pcpu_build_alloc_info.group_map, i64 0, i64 %idxprom36
  store i32 %group.0379, i32* %arrayidx37, align 4
  %4 = load i32, i32* %arrayidx23, align 4
  %inc40 = add i32 %4, 1
  store i32 %inc40, i32* %arrayidx23, align 4
  call fastcc void @clear_bit(i64 noundef %idxprom36) #28
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %call25 = call i32 @cpumask_next(i32 noundef %call25377, %struct.cpumask* noundef nonnull @pcpu_build_alloc_info.mask) #35
  %5 = load i32, i32* @nr_cpu_ids, align 4
  %cmp26 = icmp ult i32 %call25, %5
  br i1 %cmp26, label %for.body28, label %for.inc

for.inc:                                          ; preds = %if.end, %for.body
  %inc41 = add i32 %group.0379, 1
  %call.i = call fastcc i1 @bitmap_empty() #28
  br i1 %call.i, label %for.cond43.preheader, label %for.body

for.body45:                                       ; preds = %for.body45.lr.ph, %for.inc85
  %upa.1389 = phi i32 [ %upa.0, %for.body45.lr.ph ], [ %dec86, %for.inc85 ]
  %best_upa.0388 = phi i32 [ 0, %for.body45.lr.ph ], [ %best_upa.1371, %for.inc85 ]
  %last_allocs.0387 = phi i32 [ 2147483647, %for.body45.lr.ph ], [ %last_allocs.1370, %for.inc85 ]
  %conv46 = sext i32 %upa.1389 to i64
  %mul.frozen435 = freeze i64 %mul
  %conv46.frozen = freeze i64 %conv46
  %div51 = udiv i64 %mul.frozen435, %conv46.frozen
  %6 = mul i64 %div51, %conv46.frozen
  %rem47.decomposed = sub i64 %mul.frozen435, %6
  %tobool48.not = icmp eq i64 %rem47.decomposed, 0
  %and52 = and i64 %div51, 4095
  %tobool53.not = icmp eq i64 %and52, 0
  %or.cond436 = and i1 %tobool48.not, %tobool53.not
  br i1 %or.cond436, label %for.cond56.preheader, label %for.inc85

for.cond56.preheader:                             ; preds = %for.body45
  br i1 %cmp57380, label %for.body59.lr.ph, label %for.end73.thread

for.end73.thread:                                 ; preds = %for.cond56.preheader
  %call4.i.i429 = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #28
  br label %cleanup

for.body59.lr.ph:                                 ; preds = %for.cond56.preheader
  %add62 = add i32 %upa.1389, -1
  br label %for.body59

for.body59:                                       ; preds = %for.body59.lr.ph, %for.body59
  %indvars.iv = phi i64 [ 0, %for.body59.lr.ph ], [ %indvars.iv.next, %for.body59 ]
  %wasted.0383 = phi i32 [ 0, %for.body59.lr.ph ], [ %add70, %for.body59 ]
  %allocs.0382 = phi i32 [ 0, %for.body59.lr.ph ], [ %add65, %for.body59 ]
  %arrayidx61 = getelementptr [256 x i32], [256 x i32]* @pcpu_build_alloc_info.group_cnt, i64 0, i64 %indvars.iv
  %7 = load i32, i32* %arrayidx61, align 4
  %sub63 = add i32 %add62, %7
  %div64 = sdiv i32 %sub63, %upa.1389
  %add65 = add i32 %div64, %allocs.0382
  %mul66 = mul i32 %div64, %upa.1389
  %sub69 = sub i32 %wasted.0383, %7
  %add70 = add i32 %sub69, %mul66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end73, label %for.body59

for.end73:                                        ; preds = %for.body59
  %call4.i.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #28
  %div75 = udiv i32 %call4.i.i, 3
  %cmp76 = icmp ugt i32 %add70, %div75
  br i1 %cmp76, label %for.inc85, label %cleanup

cleanup:                                          ; preds = %for.end73.thread, %for.end73
  %allocs.0.lcssa432 = phi i32 [ 0, %for.end73.thread ], [ %add65, %for.end73 ]
  %cmp80 = icmp sgt i32 %allocs.0.lcssa432, %last_allocs.0387
  br i1 %cmp80, label %do.body, label %for.inc85

for.inc85:                                        ; preds = %for.end73, %for.body45, %cleanup
  %best_upa.1371 = phi i32 [ %upa.1389, %cleanup ], [ %best_upa.0388, %for.body45 ], [ %best_upa.0388, %for.end73 ]
  %last_allocs.1370 = phi i32 [ %allocs.0.lcssa432, %cleanup ], [ %last_allocs.0387, %for.body45 ], [ %last_allocs.0387, %for.end73 ]
  %dec86 = add i32 %upa.1389, -1
  %tobool44.not = icmp eq i32 %dec86, 0
  br i1 %tobool44.not, label %do.body, label %for.body45

do.body:                                          ; preds = %for.inc85, %cleanup
  %best_upa.2 = phi i32 [ %best_upa.1371, %for.inc85 ], [ %best_upa.0388, %cleanup ]
  %tobool88.not = icmp eq i32 %best_upa.2, 0
  br i1 %tobool88.not, label %do.body95, label %for.cond102.preheader, !prof !8

for.cond102.preheader:                            ; preds = %do.body
  %cmp103393 = icmp sgt i32 %group.0.lcssa, 0
  br i1 %cmp103393, label %for.body105.lr.ph, label %for.end117

for.body105.lr.ph:                                ; preds = %for.cond102.preheader
  %sub110 = add i32 %best_upa.2, -1
  %wide.trip.count414 = zext i32 %group.0.lcssa to i64
  br label %for.body105

do.body95:                                        ; preds = %for.cond43.preheader, %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2951; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !34
  unreachable

for.body105:                                      ; preds = %for.body105.lr.ph, %for.body105
  %indvars.iv411 = phi i64 [ 0, %for.body105.lr.ph ], [ %indvars.iv.next412, %for.body105 ]
  %nr_units.0395 = phi i32 [ 0, %for.body105.lr.ph ], [ %add114, %for.body105 ]
  %arrayidx109 = getelementptr [256 x i32], [256 x i32]* @pcpu_build_alloc_info.group_cnt, i64 0, i64 %indvars.iv411
  %8 = load i32, i32* %arrayidx109, align 4
  %add111 = add i32 %sub110, %8
  %9 = srem i32 %add111, %best_upa.2
  %mul113 = sub i32 %nr_units.0395, %9
  %add114 = add i32 %mul113, %add111
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 1
  %exitcond415.not = icmp eq i64 %indvars.iv.next412, %wide.trip.count414
  br i1 %exitcond415.not, label %for.end117, label %for.body105

for.end117:                                       ; preds = %for.body105, %for.cond102.preheader
  %nr_units.0.lcssa = phi i32 [ 0, %for.cond102.preheader ], [ %add114, %for.body105 ]
  %conv.i363 = sext i32 %group.0.lcssa to i64
  %call.i364 = call fastcc i64 @__ab_c_size(i64 noundef %conv.i363, i64 noundef 24, i64 noundef 64) #28
  %add.i = add i64 %call.i364, 3
  %and.i = and i64 %add.i, -4
  %conv1.i = sext i32 %nr_units.0.lcssa to i64
  %mul.i = shl nsw i64 %conv1.i, 2
  %add2.i = add nsw i64 %mul.i, 4095
  %add3.i = add i64 %add2.i, %and.i
  %and4.i = and i64 %add3.i, -4096
  %call.i.i = call i8* @memblock_alloc_try_nid(i64 noundef %and4.i, i64 noundef 4096, i64 noundef 0, i64 noundef 0, i32 noundef -1) #28
  %tobool.not.i = icmp eq i8* %call.i.i, null
  br i1 %tobool.not.i, label %cleanup211, label %if.end.i

if.end.i:                                         ; preds = %for.end117
  %10 = bitcast i8* %call.i.i to %struct.pcpu_alloc_info*
  %add.ptr.i = getelementptr i8, i8* %call.i.i, i64 %and.i
  %cpu_map.i = getelementptr inbounds i8, i8* %call.i.i, i64 80
  %11 = bitcast i8* %cpu_map.i to i32**
  %12 = bitcast i8* %cpu_map.i to i8**
  store i8* %add.ptr.i, i8** %12, align 8
  %cmp36.i = icmp sgt i32 %nr_units.0.lcssa, 0
  br i1 %cmp36.i, label %for.body.preheader.i, label %pcpu_alloc_alloc_info.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %13 = bitcast i8* %add.ptr.i to i32*
  %wide.trip.count.i = zext i32 %nr_units.0.lcssa to i64
  store i32 256, i32* %13, align 4
  %exitcond.not.i397 = icmp eq i32 %nr_units.0.lcssa, 1
  br i1 %exitcond.not.i397, label %pcpu_alloc_alloc_info.exit, label %for.body.for.body_crit_edge.i

for.body.for.body_crit_edge.i:                    ; preds = %for.body.preheader.i, %for.body.for.body_crit_edge.i
  %indvars.iv.next.i398 = phi i64 [ %indvars.iv.next.i, %for.body.for.body_crit_edge.i ], [ 1, %for.body.preheader.i ]
  %.pre.i = load i32*, i32** %11, align 8
  %arrayidx10.i = getelementptr i32, i32* %.pre.i, i64 %indvars.iv.next.i398
  store i32 256, i32* %arrayidx10.i, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i398, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %pcpu_alloc_alloc_info.exit, label %for.body.for.body_crit_edge.i

pcpu_alloc_alloc_info.exit:                       ; preds = %for.body.for.body_crit_edge.i, %for.body.preheader.i, %if.end.i
  %nr_groups11.i = getelementptr inbounds i8, i8* %call.i.i, i64 56
  %14 = bitcast i8* %nr_groups11.i to i32*
  store i32 %group.0.lcssa, i32* %14, align 8
  %__ai_size.i = getelementptr inbounds i8, i8* %call.i.i, i64 48
  %15 = bitcast i8* %__ai_size.i to i64*
  store i64 %and4.i, i64* %15, align 8
  br i1 %cmp103393, label %for.body128.lr.ph, label %for.end143

for.body128.lr.ph:                                ; preds = %pcpu_alloc_alloc_info.exit
  %16 = load i32*, i32** %11, align 8
  %sub137 = add i32 %best_upa.2, -1
  %wide.trip.count419 = zext i32 %group.0.lcssa to i64
  br label %for.body128

for.body128:                                      ; preds = %for.body128.lr.ph, %for.body128
  %indvars.iv416 = phi i64 [ 0, %for.body128.lr.ph ], [ %indvars.iv.next417, %for.body128 ]
  %cpu_map.0400 = phi i32* [ %16, %for.body128.lr.ph ], [ %add.ptr, %for.body128 ]
  %cpu_map132 = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %10, i64 0, i32 8, i64 %indvars.iv416, i32 2
  store i32* %cpu_map.0400, i32** %cpu_map132, align 8
  %arrayidx136 = getelementptr [256 x i32], [256 x i32]* @pcpu_build_alloc_info.group_cnt, i64 0, i64 %indvars.iv416
  %17 = load i32, i32* %arrayidx136, align 4
  %add138 = add i32 %sub137, %17
  %18 = srem i32 %add138, %best_upa.2
  %mul140 = sub i32 %add138, %18
  %idx.ext = sext i32 %mul140 to i64
  %add.ptr = getelementptr i32, i32* %cpu_map.0400, i64 %idx.ext
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1
  %exitcond420.not = icmp eq i64 %indvars.iv.next417, %wide.trip.count419
  br i1 %exitcond420.not, label %for.end143, label %for.body128

for.end143:                                       ; preds = %for.body128, %pcpu_alloc_alloc_info.exit
  %static_size144 = bitcast i8* %call.i.i to i64*
  store i64 sub (i64 ptrtoint ([0 x i8]* @__per_cpu_end to i64), i64 ptrtoint ([0 x i8]* @__per_cpu_start to i64)), i64* %static_size144, align 8
  %reserved_size145 = getelementptr inbounds i8, i8* %call.i.i, i64 8
  %19 = bitcast i8* %reserved_size145 to i64*
  store i64 %reserved_size, i64* %19, align 8
  %dyn_size146 = getelementptr inbounds i8, i8* %call.i.i, i64 16
  %20 = bitcast i8* %dyn_size146 to i64*
  store i64 %sub4, i64* %20, align 8
  %conv147 = sext i32 %best_upa.2 to i64
  %div148 = udiv i64 %mul, %conv147
  %unit_size = getelementptr inbounds i8, i8* %call.i.i, i64 24
  %21 = bitcast i8* %unit_size to i64*
  store i64 %div148, i64* %21, align 8
  %atom_size149 = getelementptr inbounds i8, i8* %call.i.i, i64 32
  %22 = bitcast i8* %atom_size149 to i64*
  store i64 %atom_size, i64* %22, align 8
  %alloc_size150 = getelementptr inbounds i8, i8* %call.i.i, i64 40
  %23 = bitcast i8* %alloc_size150 to i64*
  store i64 %mul, i64* %23, align 8
  br i1 %cmp103393, label %for.body154.lr.ph, label %do.body191

for.body154.lr.ph:                                ; preds = %for.end143
  %sub181 = add i32 %best_upa.2, -1
  %wide.trip.count424 = zext i32 %group.0.lcssa to i64
  br label %for.body154

for.body154:                                      ; preds = %for.end177.for.body154_crit_edge, %for.body154.lr.ph
  %24 = phi i64 [ %div148, %for.body154.lr.ph ], [ %.pre, %for.end177.for.body154_crit_edge ]
  %indvars.iv421 = phi i64 [ 0, %for.body154.lr.ph ], [ %indvars.iv.next422, %for.end177.for.body154_crit_edge ]
  %unit.0406 = phi i32 [ 0, %for.body154.lr.ph ], [ %add187, %for.end177.for.body154_crit_edge ]
  %arrayidx157 = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %10, i64 0, i32 8, i64 %indvars.iv421
  %conv158 = sext i32 %unit.0406 to i64
  %mul160 = mul i64 %24, %conv158
  %base_offset = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %10, i64 0, i32 8, i64 %indvars.iv421, i32 1
  store i64 %mul160, i64* %base_offset, align 8
  %call162402 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #35
  %25 = load i32, i32* @nr_cpu_ids, align 4
  %cmp163403 = icmp ult i32 %call162402, %25
  br i1 %cmp163403, label %for.body165.lr.ph, label %for.end177

for.body165.lr.ph:                                ; preds = %for.body154
  %cpu_map171 = getelementptr %struct.pcpu_alloc_info, %struct.pcpu_alloc_info* %10, i64 0, i32 8, i64 %indvars.iv421, i32 2
  %nr_units172 = getelementptr inbounds %struct.pcpu_group_info, %struct.pcpu_group_info* %arrayidx157, i64 0, i32 0
  br label %for.body165

for.body165:                                      ; preds = %for.body165.lr.ph, %if.end176
  %26 = phi i32 [ %25, %for.body165.lr.ph ], [ %31, %if.end176 ]
  %call162404 = phi i32 [ %call162402, %for.body165.lr.ph ], [ %call162, %if.end176 ]
  %idxprom166 = zext i32 %call162404 to i64
  %arrayidx167 = getelementptr [256 x i32], [256 x i32]* @pcpu_build_alloc_info.group_map, i64 0, i64 %idxprom166
  %27 = load i32, i32* %arrayidx167, align 4
  %28 = zext i32 %27 to i64
  %cmp168 = icmp eq i64 %indvars.iv421, %28
  br i1 %cmp168, label %if.then170, label %if.end176

if.then170:                                       ; preds = %for.body165
  %29 = load i32*, i32** %cpu_map171, align 8
  %30 = load i32, i32* %nr_units172, align 8
  %inc173 = add i32 %30, 1
  store i32 %inc173, i32* %nr_units172, align 8
  %idxprom174 = sext i32 %30 to i64
  %arrayidx175 = getelementptr i32, i32* %29, i64 %idxprom174
  store i32 %call162404, i32* %arrayidx175, align 4
  %.pre426 = load i32, i32* @nr_cpu_ids, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then170, %for.body165
  %31 = phi i32 [ %.pre426, %if.then170 ], [ %26, %for.body165 ]
  %call162 = call i32 @cpumask_next(i32 noundef %call162404, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #35
  %cmp163 = icmp ult i32 %call162, %31
  br i1 %cmp163, label %for.body165, label %for.end177

for.end177:                                       ; preds = %if.end176, %for.body154
  %nr_units180 = getelementptr inbounds %struct.pcpu_group_info, %struct.pcpu_group_info* %arrayidx157, i64 0, i32 0
  %32 = load i32, i32* %nr_units180, align 8
  %add182 = add i32 %sub181, %32
  %33 = srem i32 %add182, %best_upa.2
  %mul184 = sub i32 %add182, %33
  store i32 %mul184, i32* %nr_units180, align 8
  %add187 = add i32 %mul184, %unit.0406
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1
  %exitcond425.not = icmp eq i64 %indvars.iv.next422, %wide.trip.count424
  br i1 %exitcond425.not, label %do.body191, label %for.end177.for.body154_crit_edge

for.end177.for.body154_crit_edge:                 ; preds = %for.end177
  %.pre = load i64, i64* %21, align 8
  br label %for.body154

do.body191:                                       ; preds = %for.end177, %for.end143
  %unit.0.lcssa = phi i32 [ 0, %for.end143 ], [ %add187, %for.end177 ]
  %cmp192.not = icmp eq i32 %unit.0.lcssa, %nr_units.0.lcssa
  br i1 %cmp192.not, label %cleanup211, label %do.body202, !prof !10

do.body202:                                       ; preds = %do.body191
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2991; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !35
  unreachable

cleanup211:                                       ; preds = %for.end117, %do.body191
  %retval.0 = phi %struct.pcpu_alloc_info* [ %10, %do.body191 ], [ inttoptr (i64 -12 to %struct.pcpu_alloc_info*), %for.end117 ]
  ret %struct.pcpu_alloc_info* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #12 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #12 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @setup_per_cpu_areas() local_unnamed_addr #7 section ".init.text" {
entry:
  %call = call i32 @pcpu_embed_first_chunk(i64 noundef 0, i64 noundef 28672, i64 noundef 4096, i32 (i32, i32)* noundef null, i8* (i32, i64, i64)* noundef nonnull @pcpu_dfl_fc_alloc, void (i8*, i64)* noundef nonnull @pcpu_dfl_fc_free) #33
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0)) #32
  unreachable

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @pcpu_base_addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %sub = sub i64 %1, ptrtoint ([0 x i8]* @__per_cpu_start to i64)
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %call111 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %cmp212 = icmp ult i32 %call111, %2
  br i1 %cmp212, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %3 = load i64*, i64** @pcpu_unit_offsets, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %call113 = phi i32 [ %call111, %for.body.lr.ph ], [ %call1, %for.body ]
  %idxprom = zext i32 %call113 to i64
  %arrayidx = getelementptr i64, i64* %3, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %sub, %4
  %arrayidx4 = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  store i64 %add, i64* %arrayidx4, align 8
  %call1 = call i32 @cpumask_next(i32 noundef %call113, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %cmp2 = icmp ult i32 %call1, %2
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i8* @pcpu_dfl_fc_alloc(i32 noundef %cpu, i64 noundef %size, i64 noundef %align) #7 section ".init.text" {
entry:
  %0 = load i64, i64* @memstart_addr, align 8
  %call = call fastcc i8* @memblock_alloc_from(i64 noundef %size, i64 noundef %align, i64 noundef %0) #26
  ret i8* %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal void @pcpu_dfl_fc_free(i8* noundef %ptr, i64 noundef %size) #7 section ".init.text" {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %sub = add i64 %0, 549755813888
  %cmp = icmp ult i64 %sub, 274877906944
  %1 = load i64, i64* @memstart_addr, align 8
  %add = add i64 %1, %sub
  %2 = load i64, i64* @kimage_voffset, align 8
  %sub3 = sub i64 %0, %2
  %cond = select i1 %cmp, i64 %add, i64 %sub3
  call fastcc void @memblock_free_early(i64 noundef %cond, i64 noundef %size) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i64 @pcpu_nr_pages() local_unnamed_addr #2 {
entry:
  %0 = load i64, i64* @pcpu_nr_populated, align 8
  %1 = load i32, i32* @pcpu_nr_units, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %0, %conv
  ret i64 %mul
}

; Function Attrs: cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly
define internal i32 @percpu_enable_async() #13 section ".init.text" {
entry:
  store i1 true, i1* @pcpu_async_enabled, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @current_gfp_context(i32 noundef %flags) unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #36, !srcloc !36
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %flags1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 4
  %2 = load volatile i32, i32* %flags1, align 4
  %and = and i32 %2, 269221888
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  %and4 = and i32 %2, 524288
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %and7 = and i32 %flags, -193
  br label %if.end12

if.else:                                          ; preds = %if.then
  %and8 = and i32 %2, 262144
  %tobool9.not = icmp eq i32 %and8, 0
  %and11 = and i32 %flags, -129
  %spec.select = select i1 %tobool9.not, i32 %flags, i32 %and11
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then6
  %flags.addr.0 = phi i32 [ %and7, %if.then6 ], [ %spec.select, %if.else ]
  %and13 = and i32 %2, 268435456
  %tobool14.not = icmp eq i32 %and13, 0
  %and16 = and i32 %flags.addr.0, -9
  %spec.select26 = select i1 %tobool14.not, i32 %flags.addr.0, i32 %and16
  br label %if.end18

if.end18:                                         ; preds = %if.end12, %entry
  %flags.addr.1 = phi i32 [ %flags, %entry ], [ %spec.select26, %if.end12 ]
  ret i32 %flags.addr.1
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_power_of_2(i64 noundef %n) unnamed_addr #8 {
entry:
  %0 = call i64 @llvm.ctpop.i64(i64 %n), !range !37
  %cmp1 = icmp ult i64 %0, 2
  ret i1 %cmp1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pcpu_find_block_fit(%struct.pcpu_chunk* noundef %chunk, i32 noundef %alloc_bits, i64 noundef %align, i1 noundef %pop_only) unnamed_addr #0 {
entry:
  %bit_off = alloca i32, align 4
  %bits = alloca i32, align 4
  %next_off = alloca i32, align 4
  %chunk_md1 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2
  %0 = bitcast i32* %bit_off to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #29
  %1 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #29
  %2 = bitcast i32* %next_off to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #29
  store i32 0, i32* %next_off, align 4, !annotation !12
  %call = call fastcc i1 @pcpu_check_block_hint(%struct.pcpu_block_md* noundef %chunk_md1, i32 noundef %alloc_bits, i64 noundef %align) #26
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @pcpu_next_hint(%struct.pcpu_block_md* noundef %chunk_md1, i32 noundef %alloc_bits) #26
  store i32 %call2, i32* %bit_off, align 4
  store i32 0, i32* %bits, align 4
  %conv = trunc i64 %align to i32
  call fastcc void @pcpu_next_fit_region(%struct.pcpu_chunk* noundef %chunk, i32 noundef %alloc_bits, i32 noundef %conv, i32* noundef nonnull %bit_off, i32* noundef nonnull %bits) #26
  %3 = load i32, i32* %bit_off, align 4
  %call330 = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef %chunk) #26
  %cmp31 = icmp slt i32 %3, %call330
  %4 = and i1 %cmp31, %pop_only
  br i1 %4, label %lor.lhs.false, label %for.end

lor.lhs.false:                                    ; preds = %if.end, %if.end8
  %5 = phi i32 [ %8, %if.end8 ], [ %3, %if.end ]
  %6 = load i32, i32* %bits, align 4
  %call5 = call fastcc i1 @pcpu_is_populated(%struct.pcpu_chunk* noundef %chunk, i32 noundef %5, i32 noundef %6, i32* noundef nonnull %next_off) #26
  br i1 %call5, label %for.end, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false
  %7 = load i32, i32* %next_off, align 4
  store i32 %7, i32* %bit_off, align 4
  store i32 0, i32* %bits, align 4
  call fastcc void @pcpu_next_fit_region(%struct.pcpu_chunk* noundef %chunk, i32 noundef %alloc_bits, i32 noundef %conv, i32* noundef nonnull %bit_off, i32* noundef nonnull %bits) #26
  %8 = load i32, i32* %bit_off, align 4
  %call3 = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef %chunk) #26
  %cmp = icmp slt i32 %8, %call3
  br i1 %cmp, label %lor.lhs.false, label %for.end

for.end:                                          ; preds = %lor.lhs.false, %if.end8, %if.end
  %.lcssa = phi i32 [ %3, %if.end ], [ %8, %if.end8 ], [ %5, %lor.lhs.false ]
  %call10 = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef %chunk) #26
  %cmp11 = icmp eq i32 %.lcssa, %call10
  %spec.select = select i1 %cmp11, i32 -1, i32 %.lcssa
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %spec.select, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #29
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pcpu_alloc_area(%struct.pcpu_chunk* noundef %chunk, i32 noundef %alloc_bits, i64 noundef %align, i32 noundef %start) unnamed_addr #0 {
entry:
  %area_off = alloca i64, align 8
  %area_bits = alloca i64, align 8
  %sub = add i64 %align, -1
  %0 = bitcast i64* %area_off to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #29
  store i64 0, i64* %area_off, align 8
  %1 = bitcast i64* %area_bits to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #29
  store i64 0, i64* %area_bits, align 8
  %call = call fastcc i32 @pcpu_chunk_slot(%struct.pcpu_chunk* noundef %chunk) #26
  %add = add i32 %alloc_bits, 1024
  %add2 = add i32 %add, %start
  %call4 = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef %chunk) #26
  %cmp = icmp slt i32 %add2, %call4
  %cond9 = select i1 %cmp, i32 %add2, i32 %call4
  %alloc_map = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 4
  %2 = load i64*, i64** %alloc_map, align 8
  %conv10 = sext i32 %cond9 to i64
  %conv11 = sext i32 %start to i64
  %conv12 = sext i32 %alloc_bits to i64
  %call13 = call fastcc i64 @pcpu_find_zero_area(i64* noundef %2, i64 noundef %conv10, i64 noundef %conv11, i64 noundef %conv12, i64 noundef %sub, i64* noundef nonnull %area_off, i64* noundef nonnull %area_bits) #26
  %conv14 = trunc i64 %call13 to i32
  %cmp15.not = icmp sgt i32 %cond9, %conv14
  br i1 %cmp15.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %area_bits, align 8
  %tobool17.not = icmp eq i64 %3, 0
  br i1 %tobool17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.end
  %4 = load i64, i64* %area_off, align 8
  %conv19 = trunc i64 %4 to i32
  %conv20 = trunc i64 %3 to i32
  call fastcc void @pcpu_block_update_scan(%struct.pcpu_chunk* noundef %chunk, i32 noundef %conv19, i32 noundef %conv20) #26
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end
  %5 = load i64*, i64** %alloc_map, align 8
  call void @__bitmap_set(i64* noundef %5, i32 noundef %conv14, i32 noundef %alloc_bits) #28
  %sext = shl i64 %call13, 32
  %conv23 = ashr exact i64 %sext, 32
  %bound_map = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 5
  %6 = load i64*, i64** %bound_map, align 8
  call fastcc void @set_bit(i64 noundef %conv23, i64* noundef %6) #26
  %7 = load i64*, i64** %bound_map, align 8
  %add25 = add i32 %conv14, 1
  %sub26 = add i32 %alloc_bits, -1
  call void @__bitmap_clear(i64* noundef %7, i32 noundef %add25, i32 noundef %sub26) #28
  %add27 = add i32 %conv14, %alloc_bits
  %conv28 = sext i32 %add27 to i64
  %8 = load i64*, i64** %bound_map, align 8
  call fastcc void @set_bit(i64 noundef %conv28, i64* noundef %8) #26
  %mul.neg = mul i32 %alloc_bits, -4
  %free_bytes = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 1
  %9 = load i32, i32* %free_bytes, align 8
  %sub30 = add i32 %9, %mul.neg
  store i32 %sub30, i32* %free_bytes, align 8
  %first_free = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2, i32 6
  %10 = load i32, i32* %first_free, align 4
  %cmp31 = icmp eq i32 %10, %conv14
  br i1 %cmp31, label %if.then33, label %if.end42

if.then33:                                        ; preds = %if.end21
  %11 = load i64*, i64** %alloc_map, align 8
  %call35 = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef %chunk) #26
  %conv36 = sext i32 %call35 to i64
  %call39 = call fastcc i64 @find_next_zero_bit(i64* noundef %11, i64 noundef %conv36, i64 noundef %conv28) #26
  %conv40 = trunc i64 %call39 to i32
  store i32 %conv40, i32* %first_free, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then33, %if.end21
  call fastcc void @pcpu_block_update_hint_alloc(%struct.pcpu_chunk* noundef %chunk, i32 noundef %conv14, i32 noundef %alloc_bits) #26
  call fastcc void @pcpu_chunk_relocate(%struct.pcpu_chunk* noundef %chunk, i32 noundef %call) #26
  %mul43 = shl i32 %conv14, 2
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end42
  %retval.0 = phi i32 [ %mul43, %if.end42 ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #29
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pcpu_size_to_slot(i32 noundef %size) unnamed_addr #14 {
entry:
  %0 = load i32, i32* @pcpu_unit_size, align 4
  %cmp = icmp eq i32 %0, %size
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @pcpu_free_slot, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @__pcpu_size_to_slot(i32 noundef %size) #26
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @pcpu_chunk_move(%struct.pcpu_chunk* noundef %chunk) unnamed_addr #3 {
entry:
  call fastcc void @__pcpu_chunk_move(%struct.pcpu_chunk* noundef %chunk, i32 noundef 0, i1 noundef true) #26
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_reintegrate_chunk(%struct.pcpu_chunk* noundef %chunk) unnamed_addr #4 {
entry:
  %isolated = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 9
  %0 = load i8, i8* %isolated, align 1, !range !13
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* %isolated, align 1
  %nr_empty_pop_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 14
  %1 = load i32, i32* %nr_empty_pop_pages, align 4
  %2 = load i32, i32* @pcpu_nr_empty_pop_pages, align 4
  %add = add i32 %2, %1
  store i32 %add, i32* @pcpu_nr_empty_pop_pages, align 4
  call fastcc void @pcpu_chunk_relocate(%struct.pcpu_chunk* noundef %chunk, i32 noundef -1) #26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #11 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pcpu_chunk* @pcpu_create_chunk(i32 noundef %gfp) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.pcpu_chunk* @pcpu_alloc_chunk(i32 noundef %gfp) #26
  %tobool.not = icmp eq %struct.pcpu_chunk* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i64*, i64** @pcpu_group_offsets, align 8
  %1 = load i64*, i64** @pcpu_group_sizes, align 8
  %2 = load i32, i32* @pcpu_nr_groups, align 4
  %3 = load i32, i32* @pcpu_atom_size, align 4
  %conv = sext i32 %3 to i64
  %call1 = call %struct.vm_struct** @pcpu_get_vm_areas(i64* noundef %0, i64* noundef %1, i32 noundef %2, i64 noundef %conv) #28
  %tobool2.not = icmp eq %struct.vm_struct** %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call fastcc void @pcpu_free_chunk(%struct.pcpu_chunk* noundef nonnull %call) #26
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %call, i64 0, i32 7
  %4 = bitcast i8** %data to %struct.vm_struct***
  store %struct.vm_struct** %call1, %struct.vm_struct*** %4, align 8
  %5 = load %struct.vm_struct*, %struct.vm_struct** %call1, align 8
  %addr = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %5, i64 0, i32 1
  %6 = load i8*, i8** %addr, align 8
  %7 = load i64*, i64** @pcpu_group_offsets, align 8
  %8 = load i64, i64* %7, align 8
  %idx.neg = sub i64 0, %8
  %add.ptr = getelementptr i8, i8* %6, i64 %idx.neg
  %base_addr = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %call, i64 0, i32 3
  store i8* %add.ptr, i8** %base_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi %struct.pcpu_chunk* [ %call, %if.end4 ], [ null, %if.then3 ], [ null, %entry ]
  ret %struct.pcpu_chunk* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_next_clear_region(i64* noundef %bitmap, i32* nocapture noundef %rs, i32* nocapture noundef writeonly %re, i32 noundef %end) unnamed_addr #0 {
entry:
  %conv = zext i32 %end to i64
  %0 = load i32, i32* %rs, align 4
  %conv1 = zext i32 %0 to i64
  %call = call fastcc i64 @find_next_zero_bit(i64* noundef %bitmap, i64 noundef %conv, i64 noundef %conv1) #26
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %rs, align 4
  %add = add i64 %call, 1
  %conv4 = and i64 %add, 4294967295
  %call5 = call fastcc i64 @find_next_bit(i64* noundef %bitmap, i64 noundef %conv, i64 noundef %conv4) #26
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %re, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pcpu_populate_chunk(%struct.pcpu_chunk* noundef %chunk, i32 noundef %page_start, i32 noundef %page_end, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.page** @pcpu_get_pages() #26
  %tobool.not = icmp eq %struct.page** %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @pcpu_alloc_pages(%struct.page** noundef nonnull %call, i32 noundef %page_start, i32 noundef %page_end, i32 noundef %gfp) #26
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @pcpu_map_pages(%struct.pcpu_chunk* noundef %chunk, %struct.page** noundef nonnull %call, i32 noundef %page_start, i32 noundef %page_end) #26
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %if.end4
  call fastcc void @pcpu_free_pages(%struct.page** noundef nonnull %call, i32 noundef %page_start, i32 noundef %page_end) #26
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %if.then7
  %retval.0 = phi i32 [ -12, %if.then7 ], [ -12, %entry ], [ -12, %if.end ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_chunk_populated(%struct.pcpu_chunk* noundef %chunk, i32 noundef %page_start, i32 noundef %page_end) unnamed_addr #0 {
entry:
  %sub = sub i32 %page_end, %page_start
  %arraydecay = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 15, i64 0
  call void @__bitmap_set(i64* noundef %arraydecay, i32 noundef %page_start, i32 noundef %sub) #28
  %nr_populated = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 13
  %0 = load i32, i32* %nr_populated, align 8
  %add = add i32 %0, %sub
  store i32 %add, i32* %nr_populated, align 8
  %conv = sext i32 %sub to i64
  %1 = load i64, i64* @pcpu_nr_populated, align 8
  %add1 = add i64 %1, %conv
  store i64 %add1, i64* @pcpu_nr_populated, align 8
  call fastcc void @pcpu_update_empty_pages(%struct.pcpu_chunk* noundef %chunk, i32 noundef %sub) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @pcpu_chunk_addr(%struct.pcpu_chunk* nocapture noundef readonly %chunk, i32 noundef %cpu, i32 noundef %page_idx) unnamed_addr #2 {
entry:
  %base_addr = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 3
  %0 = load i8*, i8** %base_addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %call = call fastcc i64 @pcpu_unit_page_offset(i32 noundef %cpu, i32 noundef %page_idx) #26
  %add = add i64 %call, %1
  ret i64 %add
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @pcpu_check_block_hint(%struct.pcpu_block_md* nocapture noundef readonly %block, i32 noundef %bits, i64 noundef %align) unnamed_addr #2 {
entry:
  %contig_hint_start = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 3
  %0 = load i32, i32* %contig_hint_start, align 4
  %conv = trunc i64 %align to i32
  %sub = add i32 %conv, -1
  %add = add i32 %sub, %0
  %neg = sub i32 0, %conv
  %and = and i32 %add, %neg
  %sub4 = sub i32 %bits, %0
  %add5 = add i32 %sub4, %and
  %contig_hint = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 2
  %1 = load i32, i32* %contig_hint, align 4
  %cmp = icmp sle i32 %add5, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pcpu_next_hint(%struct.pcpu_block_md* nocapture noundef readonly %block, i32 noundef %alloc_bits) unnamed_addr #2 {
entry:
  %scan_hint = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 0
  %0 = load i32, i32* %scan_hint, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %contig_hint_start = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 3
  %1 = load i32, i32* %contig_hint_start, align 4
  %scan_hint_start = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 1
  %2 = load i32, i32* %scan_hint_start, align 4
  %cmp = icmp sgt i32 %1, %2
  %cmp3 = icmp slt i32 %0, %alloc_bits
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %add = add i32 %2, %0
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %first_free = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 6
  %3 = load i32, i32* %first_free, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %add, %if.then ], [ %3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @pcpu_next_fit_region(%struct.pcpu_chunk* nocapture noundef readonly %chunk, i32 noundef %alloc_bits, i32 noundef %align, i32* nocapture noundef %bit_off, i32* nocapture noundef %bits) unnamed_addr #15 {
entry:
  %0 = load i32, i32* %bit_off, align 4
  %call = call fastcc i64 @pcpu_off_to_block_index(i32 noundef %0) #26
  %conv = trunc i64 %call to i32
  store i32 0, i32* %bits, align 4
  %call3107 = call fastcc i32 @pcpu_chunk_nr_blocks(%struct.pcpu_chunk* noundef %chunk) #26
  %cmp108 = icmp sgt i32 %call3107, %conv
  br i1 %cmp108, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 6
  %1 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %md_blocks, align 8
  %sext = shl i64 %call, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext
  %call1 = call fastcc i64 @pcpu_off_to_block_off(i32 noundef %0) #26
  %conv2 = trunc i64 %call1 to i32
  %sub = add i32 %align, -1
  %neg = sub i32 0, %align
  %2 = add i32 %align, 1023
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %3 = phi i32 [ 0, %for.body.lr.ph ], [ %12, %for.inc ]
  %i.0113 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.inc ]
  %block.0110 = phi %struct.pcpu_block_md* [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %block_off.0109 = phi i32 [ %conv2, %for.body.lr.ph ], [ %block_off.1, %for.inc ]
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %for.body
  %left_free = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block.0110, i64 0, i32 4
  %4 = load i32, i32* %left_free, align 4
  %add = add i32 %4, %3
  store i32 %add, i32* %bits, align 4
  %cmp5.not = icmp slt i32 %add, %alloc_bits
  br i1 %cmp5.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* %left_free, align 4
  %cmp10 = icmp eq i32 %5, 1024
  br i1 %cmp10, label %for.inc, label %if.end14

if.end14:                                         ; preds = %if.end, %for.body
  %contig_hint_start = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block.0110, i64 0, i32 3
  %6 = load i32, i32* %contig_hint_start, align 4
  %add15 = add i32 %sub, %6
  %and = and i32 %add15, %neg
  %sub18 = sub i32 %and, %6
  store i32 %sub18, i32* %bits, align 4
  %contig_hint = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block.0110, i64 0, i32 2
  %7 = load i32, i32* %contig_hint, align 4
  %tobool19.not = icmp eq i32 %7, 0
  br i1 %tobool19.not, label %if.end36, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %8 = load i32, i32* %contig_hint_start, align 4
  %cmp21.not = icmp slt i32 %8, %block_off.0109
  %add25 = add i32 %sub18, %alloc_bits
  %cmp26.not = icmp slt i32 %7, %add25
  %or.cond = select i1 %cmp21.not, i1 true, i1 %cmp26.not
  br i1 %or.cond, label %if.end36, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  %call29 = call fastcc i32 @pcpu_next_hint(%struct.pcpu_block_md* noundef %block.0110, i32 noundef %alloc_bits) #26
  %sub32 = add i32 %add25, %8
  %add33 = sub i32 %sub32, %call29
  store i32 %add33, i32* %bits, align 4
  %call34 = call fastcc i64 @pcpu_block_off_to_off(i32 noundef %i.0113, i32 noundef %call29) #26
  %conv35 = trunc i64 %call34 to i32
  br label %cleanup.sink.split

if.end36:                                         ; preds = %land.lhs.true, %if.end14
  %right_free = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block.0110, i64 0, i32 5
  %9 = load i32, i32* %right_free, align 4
  %add41 = sub i32 %2, %9
  %and45 = and i32 %add41, %neg
  store i32 %and45, i32* %bit_off, align 4
  %sub48 = sub i32 1024, %and45
  store i32 %sub48, i32* %bits, align 4
  %10 = load i32, i32* %bit_off, align 4
  %call50 = call fastcc i64 @pcpu_block_off_to_off(i32 noundef %i.0113, i32 noundef %10) #26
  %conv51 = trunc i64 %call50 to i32
  store i32 %conv51, i32* %bit_off, align 4
  %11 = load i32, i32* %bits, align 4
  %cmp52.not = icmp slt i32 %11, %alloc_bits
  br i1 %cmp52.not, label %for.inc, label %cleanup

for.inc:                                          ; preds = %if.end36, %if.end
  %12 = phi i32 [ %add, %if.end ], [ %11, %if.end36 ]
  %block_off.1 = phi i32 [ %block_off.0109, %if.end ], [ 0, %if.end36 ]
  %incdec.ptr = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %block.0110, i64 1
  %inc = add nsw i32 %i.0113, 1
  %call3 = call fastcc i32 @pcpu_chunk_nr_blocks(%struct.pcpu_chunk* noundef %chunk) #26
  %cmp = icmp slt i32 %inc, %call3
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %call56 = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef %chunk) #26
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then28, %for.end
  %call56.sink = phi i32 [ %call56, %for.end ], [ %conv35, %if.then28 ]
  store i32 %call56.sink, i32* %bit_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then, %cleanup.sink.split
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* nocapture noundef readonly %chunk) unnamed_addr #2 {
entry:
  %nr_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 12
  %0 = load i32, i32* %nr_pages, align 4
  %call = call fastcc i32 @pcpu_nr_pages_to_map_bits(i32 noundef %0) #26
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @pcpu_is_populated(%struct.pcpu_chunk* noundef %chunk, i32 noundef %bit_off, i32 noundef %bits, i32* nocapture noundef writeonly %next_off) unnamed_addr #0 {
entry:
  %rs = alloca i32, align 4
  %re = alloca i32, align 4
  %0 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #29
  %1 = bitcast i32* %re to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #29
  store i32 0, i32* %re, align 4, !annotation !12
  %mul = shl i32 %bit_off, 2
  %shr = ashr i32 %mul, 12
  %add = add i32 %bits, %bit_off
  %mul1 = shl i32 %add, 2
  %conv = sext i32 %mul1 to i64
  %sub = add nsw i64 %conv, 4095
  %shr3 = lshr i64 %sub, 12
  %conv4 = trunc i64 %shr3 to i32
  store i32 %shr, i32* %rs, align 4
  %arraydecay = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 15, i64 0
  call fastcc void @bitmap_next_clear_region(i64* noundef %arraydecay, i32* noundef nonnull %rs, i32* noundef nonnull %re, i32 noundef %conv4) #26
  %2 = load i32, i32* %rs, align 4
  %cmp.not = icmp ult i32 %2, %conv4
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %re, align 4
  %div = shl i32 %3, 10
  store i32 %div, i32* %next_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %4 = xor i1 %cmp.not, true
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #29
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pcpu_off_to_block_index(i32 noundef %off) unnamed_addr #12 {
entry:
  %conv = sext i32 %off to i64
  %div = lshr i64 %conv, 10
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pcpu_off_to_block_off(i32 noundef %off) unnamed_addr #12 {
entry:
  %0 = and i32 %off, 1023
  %and = zext i32 %0 to i64
  ret i64 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pcpu_chunk_nr_blocks(%struct.pcpu_chunk* nocapture noundef readonly %chunk) unnamed_addr #2 {
entry:
  %nr_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 12
  %0 = load i32, i32* %nr_pages, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @pcpu_block_off_to_off(i32 noundef %index, i32 noundef %off) unnamed_addr #12 {
entry:
  %conv = sext i32 %index to i64
  %mul = shl nsw i64 %conv, 10
  %conv1 = sext i32 %off to i64
  %add = add nsw i64 %mul, %conv1
  ret i64 %add
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @pcpu_nr_pages_to_map_bits(i32 noundef %pages) unnamed_addr #12 {
entry:
  %0 = shl i32 %pages, 10
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pcpu_chunk_slot(%struct.pcpu_chunk* nocapture noundef readonly %chunk) unnamed_addr #14 {
entry:
  %free_bytes = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 1
  %0 = load i32, i32* %free_bytes, align 8
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %contig_hint = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2, i32 2
  %1 = load i32, i32* %contig_hint, align 4
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %mul = shl i32 %1, 2
  %call = call fastcc i32 @pcpu_size_to_slot(i32 noundef %mul) #26
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @pcpu_find_zero_area(i64* noundef %map, i64 noundef %size, i64 noundef %start, i64 noundef %nr, i64 noundef %align_mask, i64* nocapture noundef %largest_off, i64* nocapture noundef %largest_bits) unnamed_addr #0 {
entry:
  %call47 = call fastcc i64 @find_next_zero_bit(i64* noundef %map, i64 noundef %size, i64 noundef %start) #26
  %add48 = add i64 %call47, %align_mask
  %neg = xor i64 %align_mask, -1
  %and49 = and i64 %add48, %neg
  %add150 = add i64 %and49, %nr
  %cmp51 = icmp ugt i64 %add150, %size
  br i1 %cmp51, label %cleanup, label %if.end

if.end:                                           ; preds = %entry, %if.end14
  %add154 = phi i64 [ %add1, %if.end14 ], [ %add150, %entry ]
  %and52 = phi i64 [ %and, %if.end14 ], [ %and49, %entry ]
  %call2 = call fastcc i64 @find_next_bit(i64* noundef %map, i64 noundef %add154, i64 noundef %and52) #26
  %cmp3 = icmp ult i64 %call2, %add154
  br i1 %cmp3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %sub = sub i64 %call2, %and52
  %0 = load i64, i64* %largest_bits, align 8
  %cmp5 = icmp ugt i64 %sub, %0
  br i1 %cmp5, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %cmp6 = icmp eq i64 %sub, %0
  br i1 %cmp6, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %lor.lhs.false
  %1 = load i64, i64* %largest_off, align 8
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end14, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %tobool8.not = icmp eq i64 %and52, 0
  br i1 %tobool8.not, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true7
  %2 = call i64 @llvm.cttz.i64(i64 %and52, i1 true) #29, !range !37
  %3 = call i64 @llvm.cttz.i64(i64 %1, i1 true) #29, !range !37
  %cmp12 = icmp ugt i64 %2, %3
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false9, %land.lhs.true7, %if.then4
  store i64 %and52, i64* %largest_off, align 8
  store i64 %sub, i64* %largest_bits, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %lor.lhs.false9, %land.lhs.true, %lor.lhs.false
  %add15 = add nuw i64 %call2, 1
  %call = call fastcc i64 @find_next_zero_bit(i64* noundef %map, i64 noundef %size, i64 noundef %add15) #26
  %add = add i64 %call, %align_mask
  %and = and i64 %add, %neg
  %add1 = add i64 %and, %nr
  %cmp = icmp ugt i64 %add1, %size
  br i1 %cmp, label %cleanup, label %if.end

cleanup:                                          ; preds = %if.end14, %if.end, %entry
  %retval.0 = phi i64 [ %add150, %entry ], [ %and52, %if.end ], [ %add1, %if.end14 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_block_update_scan(%struct.pcpu_chunk* nocapture noundef readonly %chunk, i32 noundef %bit_off, i32 noundef %bits) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @pcpu_off_to_block_off(i32 noundef %bit_off) #26
  %conv = trunc i64 %call to i32
  %add = add i32 %conv, %bits
  %cmp = icmp ugt i32 %add, 1024
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call fastcc i64 @pcpu_off_to_block_index(i32 noundef %bit_off) #26
  %conv4 = trunc i64 %call3 to i32
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 6
  %0 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %md_blocks, align 8
  %sext = shl i64 %call3, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %0, i64 %idx.ext
  %call5 = call fastcc i64* @pcpu_index_alloc_map(%struct.pcpu_chunk* noundef %chunk, i32 noundef %conv4) #26
  %1 = and i64 %call, 4294967295
  %call7 = call fastcc i64 @find_last_bit(i64* noundef %call5, i64 noundef %1) #26
  %conv8 = trunc i64 %call7 to i32
  %cmp9 = icmp eq i32 %conv, %conv8
  %add11 = add i32 %conv8, 1
  %cond = select i1 %cmp9, i32 0, i32 %add11
  call fastcc void @pcpu_block_update(%struct.pcpu_block_md* noundef %add.ptr, i32 noundef %cond, i32 noundef %add) #26
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
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
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_zero_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call13 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef -1, i64 noundef 0) #28
  ret i64 %call13
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_block_update_hint_alloc(%struct.pcpu_chunk* nocapture noundef %chunk, i32 noundef %bit_off, i32 noundef %bits) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @pcpu_off_to_block_index(i32 noundef %bit_off) #26
  %conv = trunc i64 %call to i32
  %add = add i32 %bits, %bit_off
  %sub = add i32 %add, -1
  %call2 = call fastcc i64 @pcpu_off_to_block_index(i32 noundef %sub) #26
  %conv3 = trunc i64 %call2 to i32
  %call4 = call fastcc i64 @pcpu_off_to_block_off(i32 noundef %bit_off) #26
  %conv5 = trunc i64 %call4 to i32
  %call8 = call fastcc i64 @pcpu_off_to_block_off(i32 noundef %sub) #26
  %0 = trunc i64 %call8 to i32
  %conv10 = add i32 %0, 1
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 6
  %1 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %md_blocks, align 8
  %sext = shl i64 %call, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext
  %sext246 = shl i64 %call2, 32
  %idx.ext12 = ashr exact i64 %sext246, 32
  %add.ptr13 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext12
  %contig_hint = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext, i32 2
  %2 = load i32, i32* %contig_hint, align 4
  %cmp = icmp eq i32 %2, 1024
  %spec.select = zext i1 %cmp to i32
  %first_free = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext, i32 6
  %3 = load i32, i32* %first_free, align 4
  %cmp16 = icmp eq i32 %3, %conv5
  br i1 %cmp16, label %if.then18, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  %.pre = add i32 %conv5, %bits
  br label %if.end25

if.then18:                                        ; preds = %entry
  %call19 = call fastcc i64* @pcpu_index_alloc_map(%struct.pcpu_chunk* noundef %chunk, i32 noundef %conv) #26
  %add20 = add i32 %conv5, %bits
  %conv21 = sext i32 %add20 to i64
  %call22 = call fastcc i64 @find_next_zero_bit(i64* noundef %call19, i64 noundef 1024, i64 noundef %conv21) #26
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, i32* %first_free, align 4
  br label %if.end25

if.end25:                                         ; preds = %entry.if.end25_crit_edge, %if.then18
  %add28.pre-phi = phi i32 [ %.pre, %entry.if.end25_crit_edge ], [ %add20, %if.then18 ]
  %scan_hint_start = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext, i32 1
  %4 = load i32, i32* %scan_hint_start, align 4
  %scan_hint = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr, i64 0, i32 0
  %5 = load i32, i32* %scan_hint, align 4
  %add27 = add i32 %5, %4
  %call29 = call fastcc i1 @pcpu_region_overlap(i32 noundef %4, i32 noundef %add27, i32 noundef %conv5, i32 noundef %add28.pre-phi) #26
  br i1 %call29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end25
  store i32 0, i32* %scan_hint, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end25
  %contig_hint_start = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext, i32 3
  %6 = load i32, i32* %contig_hint_start, align 4
  %7 = load i32, i32* %contig_hint, align 4
  %add35 = add i32 %7, %6
  %call37 = call fastcc i1 @pcpu_region_overlap(i32 noundef %6, i32 noundef %add35, i32 noundef %conv5, i32 noundef %add28.pre-phi) #26
  br i1 %call37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end32
  %tobool.not = icmp eq i32 %conv5, 0
  br i1 %tobool.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then38
  %left_free = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext, i32 4
  store i32 0, i32* %left_free, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then38
  call fastcc void @pcpu_block_refresh_hint(%struct.pcpu_chunk* noundef %chunk, i32 noundef %conv) #26
  br label %if.end62

if.else:                                          ; preds = %if.end32
  %left_free41 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext, i32 4
  %8 = load i32, i32* %left_free41, align 4
  %cmp42 = icmp slt i32 %8, %conv5
  %cond = select i1 %cmp42, i32 %8, i32 %conv5
  store i32 %cond, i32* %left_free41, align 4
  %cmp45 = icmp eq i32 %conv3, %conv
  %right_free = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext, i32 5
  br i1 %cmp45, label %if.then47, label %if.else59

if.then47:                                        ; preds = %if.else
  %9 = load i32, i32* %right_free, align 4
  %sub49 = sub i32 1023, %0
  %cmp52 = icmp slt i32 %9, %sub49
  %cond57 = select i1 %cmp52, i32 %9, i32 %sub49
  store i32 %cond57, i32* %right_free, align 4
  br label %if.end62

if.else59:                                        ; preds = %if.else
  store i32 0, i32* %right_free, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then47, %if.else59, %if.end40
  %cmp63.not = icmp eq i32 %conv3, %conv
  br i1 %cmp63.not, label %if.end120, label %if.then65

if.then65:                                        ; preds = %if.end62
  %contig_hint66 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext12, i32 2
  %10 = load i32, i32* %contig_hint66, align 4
  %cmp68 = icmp eq i32 %10, 1024
  %inc71 = select i1 %cmp, i32 2, i32 1
  %spec.select247 = select i1 %cmp68, i32 %inc71, i32 %spec.select
  %call73 = call fastcc i64* @pcpu_index_alloc_map(%struct.pcpu_chunk* noundef %chunk, i32 noundef %conv3) #26
  %11 = zext i32 %conv10 to i64
  %call75 = call fastcc i64 @find_next_zero_bit(i64* noundef %call73, i64 noundef 1024, i64 noundef %11) #26
  %conv76 = trunc i64 %call75 to i32
  %first_free77 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext12, i32 6
  store i32 %conv76, i32* %first_free77, align 4
  %cmp79 = icmp eq i32 %conv10, 1024
  br i1 %cmp79, label %if.then81, label %if.else82

if.then81:                                        ; preds = %if.then65
  %incdec.ptr = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr13, i64 1
  br label %if.end108

if.else82:                                        ; preds = %if.then65
  %scan_hint_start83 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext12, i32 1
  %12 = load i32, i32* %scan_hint_start83, align 4
  %cmp84 = icmp sgt i32 %conv10, %12
  br i1 %cmp84, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.else82
  %scan_hint87 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr13, i64 0, i32 0
  store i32 0, i32* %scan_hint87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.else82
  %left_free89 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext12, i32 4
  store i32 0, i32* %left_free89, align 4
  %contig_hint_start90 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext12, i32 3
  %13 = load i32, i32* %contig_hint_start90, align 4
  %cmp91 = icmp sgt i32 %conv10, %13
  br i1 %cmp91, label %if.then93, label %if.else94

if.then93:                                        ; preds = %if.end88
  call fastcc void @pcpu_block_refresh_hint(%struct.pcpu_chunk* noundef %chunk, i32 noundef %conv3) #26
  br label %if.end108

if.else94:                                        ; preds = %if.end88
  %right_free95 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext12, i32 5
  %14 = load i32, i32* %right_free95, align 4
  %sub97 = sub i32 1023, %0
  %cmp100 = icmp slt i32 %14, %sub97
  %cond105 = select i1 %cmp100, i32 %14, i32 %sub97
  store i32 %cond105, i32* %right_free95, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then93, %if.else94, %if.then81
  %e_block.0 = phi %struct.pcpu_block_md* [ %incdec.ptr, %if.then81 ], [ %add.ptr13, %if.then93 ], [ %add.ptr13, %if.else94 ]
  %15 = xor i32 %conv, -1
  %sub110 = add i32 %conv3, %15
  %add111 = add i32 %sub110, %spec.select247
  %block.0248 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr, i64 1
  %cmp113249 = icmp ult %struct.pcpu_block_md* %block.0248, %e_block.0
  br i1 %cmp113249, label %for.body, label %if.end120

for.body:                                         ; preds = %if.end108, %for.body
  %block.0251 = phi %struct.pcpu_block_md* [ %block.0, %for.body ], [ %block.0248, %if.end108 ]
  %add.ptr.pn250 = phi %struct.pcpu_block_md* [ %block.0251, %for.body ], [ %add.ptr, %if.end108 ]
  %scan_hint115 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block.0251, i64 0, i32 0
  store i32 0, i32* %scan_hint115, align 4
  %contig_hint116 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr.pn250, i64 1, i32 2
  store i32 0, i32* %contig_hint116, align 4
  %left_free117 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr.pn250, i64 1, i32 4
  store i32 0, i32* %left_free117, align 4
  %right_free118 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr.pn250, i64 1, i32 5
  store i32 0, i32* %right_free118, align 4
  %block.0 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %block.0251, i64 1
  %cmp113 = icmp ult %struct.pcpu_block_md* %block.0, %e_block.0
  br i1 %cmp113, label %for.body, label %if.end120

if.end120:                                        ; preds = %for.body, %if.end108, %if.end62
  %nr_empty_pages.2 = phi i32 [ %spec.select, %if.end62 ], [ %add111, %if.end108 ], [ %add111, %for.body ]
  %tobool121.not = icmp eq i32 %nr_empty_pages.2, 0
  br i1 %tobool121.not, label %if.end124, label %if.then122

if.then122:                                       ; preds = %if.end120
  %sub123 = sub i32 0, %nr_empty_pages.2
  call fastcc void @pcpu_update_empty_pages(%struct.pcpu_chunk* noundef %chunk, i32 noundef %sub123) #26
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.end120
  %scan_hint_start125 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2, i32 1
  %16 = load i32, i32* %scan_hint_start125, align 4
  %scan_hint127 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2, i32 0
  %17 = load i32, i32* %scan_hint127, align 4
  %add128 = add i32 %17, %16
  %call130 = call fastcc i1 @pcpu_region_overlap(i32 noundef %16, i32 noundef %add128, i32 noundef %bit_off, i32 noundef %add) #26
  br i1 %call130, label %if.then131, label %if.end133

if.then131:                                       ; preds = %if.end124
  store i32 0, i32* %scan_hint127, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.end124
  %contig_hint_start134 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2, i32 3
  %18 = load i32, i32* %contig_hint_start134, align 4
  %contig_hint136 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2, i32 2
  %19 = load i32, i32* %contig_hint136, align 4
  %add137 = add i32 %19, %18
  %call139 = call fastcc i1 @pcpu_region_overlap(i32 noundef %18, i32 noundef %add137, i32 noundef %bit_off, i32 noundef %add) #26
  br i1 %call139, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end133
  call fastcc void @pcpu_chunk_refresh_hint(%struct.pcpu_chunk* noundef %chunk, i1 noundef false) #26
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %if.end133
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #28
  ret i64 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #16

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_last_bit(i64* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_last_bit(i64* noundef %addr, i64 noundef %size) #28
  ret i64 %call5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64* @pcpu_index_alloc_map(%struct.pcpu_chunk* nocapture noundef readonly %chunk, i32 noundef %index) unnamed_addr #2 {
entry:
  %alloc_map = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 4
  %0 = load i64*, i64** %alloc_map, align 8
  %conv = sext i32 %index to i64
  %1 = shl nsw i64 %conv, 4
  %div = and i64 %1, 288230376151711728
  %add.ptr = getelementptr i64, i64* %0, i64 %div
  ret i64* %add.ptr
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @pcpu_block_update(%struct.pcpu_block_md* nocapture noundef %block, i32 noundef %start, i32 noundef %end) unnamed_addr #17 {
entry:
  %sub = sub i32 %end, %start
  %first_free = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 6
  %0 = load i32, i32* %first_free, align 4
  %cmp = icmp slt i32 %0, %start
  %cond = select i1 %cmp, i32 %0, i32 %start
  store i32 %cond, i32* %first_free, align 4
  %cmp2 = icmp eq i32 %start, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %left_free = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 4
  store i32 %sub, i32* %left_free, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nr_bits = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 7
  %1 = load i32, i32* %nr_bits, align 4
  %cmp3 = icmp eq i32 %1, %end
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %right_free = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 5
  store i32 %sub, i32* %right_free, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %contig_hint = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 2
  %2 = load i32, i32* %contig_hint, align 4
  %cmp6 = icmp sgt i32 %sub, %2
  br i1 %cmp6, label %if.then7, label %if.else27

if.then7:                                         ; preds = %if.end5
  %contig_hint_start = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 3
  %3 = load i32, i32* %contig_hint_start, align 4
  %cmp8 = icmp slt i32 %3, %start
  %scan_hint = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 0
  br i1 %cmp8, label %if.then9, label %if.end24.sink.split

if.then9:                                         ; preds = %if.then7
  %4 = load i32, i32* %scan_hint, align 4
  %cmp11 = icmp sgt i32 %2, %4
  %scan_hint_start = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  store i32 %3, i32* %scan_hint_start, align 4
  br label %if.end24.sink.split

if.else:                                          ; preds = %if.then9
  %5 = load i32, i32* %scan_hint_start, align 4
  %cmp17 = icmp sgt i32 %5, %start
  br i1 %cmp17, label %if.end24.sink.split, label %if.end24

if.end24.sink.split:                              ; preds = %if.then7, %if.else, %if.then12
  %.sink = phi i32 [ %2, %if.then12 ], [ 0, %if.else ], [ 0, %if.then7 ]
  store i32 %.sink, i32* %scan_hint, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else
  store i32 %start, i32* %contig_hint_start, align 4
  store i32 %sub, i32* %contig_hint, align 4
  br label %if.end86

if.else27:                                        ; preds = %if.end5
  %cmp29 = icmp eq i32 %sub, %2
  %contig_hint_start31 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 3
  %6 = load i32, i32* %contig_hint_start31, align 4
  br i1 %cmp29, label %if.then30, label %if.else65

if.then30:                                        ; preds = %if.else27
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else51, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then30
  br i1 %cmp2, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = call i32 @llvm.cttz.i32(i32 %start, i1 true), !range !31
  %8 = call i32 @llvm.cttz.i32(i32 %6, i1 true), !range !31
  %cmp36 = icmp ugt i32 %7, %8
  br i1 %cmp36, label %if.then38, label %if.else51

if.then38:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 %start, i32* %contig_hint_start31, align 4
  %scan_hint_start40 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 1
  %9 = load i32, i32* %scan_hint_start40, align 4
  %cmp41 = icmp sgt i32 %9, %start
  br i1 %cmp41, label %land.lhs.true43, label %if.end86

land.lhs.true43:                                  ; preds = %if.then38
  %scan_hint45 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 0
  %10 = load i32, i32* %scan_hint45, align 4
  %cmp46 = icmp sgt i32 %sub, %10
  br i1 %cmp46, label %if.then48, label %if.end86

if.then48:                                        ; preds = %land.lhs.true43
  store i32 0, i32* %scan_hint45, align 4
  br label %if.end86

if.else51:                                        ; preds = %lor.lhs.false, %if.then30
  %scan_hint_start52 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 1
  %11 = load i32, i32* %scan_hint_start52, align 4
  %cmp53 = icmp slt i32 %11, %start
  br i1 %cmp53, label %if.then60, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.else51
  %scan_hint57 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 0
  %12 = load i32, i32* %scan_hint57, align 4
  %cmp58 = icmp sgt i32 %sub, %12
  br i1 %cmp58, label %if.then60, label %if.end86

if.then60:                                        ; preds = %lor.lhs.false55, %if.else51
  store i32 %start, i32* %scan_hint_start52, align 4
  %scan_hint62 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 0
  store i32 %sub, i32* %scan_hint62, align 4
  br label %if.end86

if.else65:                                        ; preds = %if.else27
  %cmp67 = icmp sgt i32 %6, %start
  br i1 %cmp67, label %land.lhs.true69, label %if.end86

land.lhs.true69:                                  ; preds = %if.else65
  %scan_hint70 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 0
  %13 = load i32, i32* %scan_hint70, align 4
  %cmp71 = icmp sgt i32 %sub, %13
  br i1 %cmp71, label %if.then81, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %land.lhs.true69
  %cmp75 = icmp eq i32 %sub, %13
  br i1 %cmp75, label %land.lhs.true77, label %if.end86

land.lhs.true77:                                  ; preds = %lor.lhs.false73
  %scan_hint_start78 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 1
  %14 = load i32, i32* %scan_hint_start78, align 4
  %cmp79 = icmp slt i32 %14, %start
  br i1 %cmp79, label %if.then81, label %if.end86

if.then81:                                        ; preds = %land.lhs.true77, %land.lhs.true69
  %scan_hint_start82 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 1
  store i32 %start, i32* %scan_hint_start82, align 4
  store i32 %sub, i32* %scan_hint70, align 4
  br label %if.end86

if.end86:                                         ; preds = %lor.lhs.false55, %if.then60, %if.then38, %land.lhs.true43, %if.then48, %if.then81, %land.lhs.true77, %lor.lhs.false73, %if.else65, %if.end24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_last_bit(i64* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #29, !srcloc !38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(i64* noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @pcpu_region_overlap(i32 noundef %a, i32 noundef %b, i32 noundef %x, i32 noundef %y) unnamed_addr #12 {
entry:
  %cmp = icmp slt i32 %a, %y
  %cmp1 = icmp slt i32 %x, %b
  %0 = and i1 %cmp1, %cmp
  ret i1 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_block_refresh_hint(%struct.pcpu_chunk* nocapture noundef readonly %chunk, i32 noundef %index) unnamed_addr #0 {
entry:
  %rs = alloca i32, align 4
  %re = alloca i32, align 4
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 6
  %0 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %md_blocks, align 8
  %idx.ext = sext i32 %index to i64
  %add.ptr = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %0, i64 %idx.ext
  %call = call fastcc i64* @pcpu_index_alloc_map(%struct.pcpu_chunk* noundef %chunk, i32 noundef %index) #26
  %1 = bitcast i32* %rs to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #29
  %2 = bitcast i32* %re to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #29
  store i32 0, i32* %re, align 4, !annotation !12
  %scan_hint = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr, i64 0, i32 0
  %3 = load i32, i32* %scan_hint, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %scan_hint_start = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %0, i64 %idx.ext, i32 1
  %4 = load i32, i32* %scan_hint_start, align 4
  %add = add i32 %4, %3
  %contig_hint_start = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %0, i64 %idx.ext, i32 3
  store i32 %4, i32* %contig_hint_start, align 4
  store i32 0, i32* %scan_hint, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %first_free = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %0, i64 %idx.ext, i32 6
  %5 = load i32, i32* %first_free, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %start.0 = phi i32 [ %5, %if.else ], [ %add, %if.then ]
  %6 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %0, i64 %idx.ext, i32 2
  store i32 %3, i32* %6, align 4
  %right_free = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %0, i64 %idx.ext, i32 5
  store i32 0, i32* %right_free, align 4
  store i32 %start.0, i32* %rs, align 4
  call fastcc void @bitmap_next_clear_region(i64* noundef %call, i32* noundef nonnull %rs, i32* noundef nonnull %re, i32 noundef 1024) #26
  %7 = load i32, i32* %rs, align 4
  %8 = load i32, i32* %re, align 4
  %cmp26 = icmp ult i32 %7, %8
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %9 = phi i32 [ %12, %for.body ], [ %8, %if.end ]
  %10 = phi i32 [ %11, %for.body ], [ %7, %if.end ]
  call fastcc void @pcpu_block_update(%struct.pcpu_block_md* noundef %add.ptr, i32 noundef %10, i32 noundef %9) #26
  %add6 = add i32 %9, 1
  store i32 %add6, i32* %rs, align 4
  call fastcc void @bitmap_next_clear_region(i64* noundef %call, i32* noundef nonnull %rs, i32* noundef nonnull %re, i32 noundef 1024) #26
  %11 = load i32, i32* %rs, align 4
  %12 = load i32, i32* %re, align 4
  %cmp = icmp ult i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @pcpu_update_empty_pages(%struct.pcpu_chunk* nocapture noundef %chunk, i32 noundef %nr) unnamed_addr #18 {
entry:
  %nr_empty_pop_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 14
  %0 = load i32, i32* %nr_empty_pop_pages, align 4
  %add = add i32 %0, %nr
  store i32 %add, i32* %nr_empty_pop_pages, align 4
  %1 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** @pcpu_reserved_chunk, align 8
  %cmp.not = icmp eq %struct.pcpu_chunk* %1, %chunk
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %isolated = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 9
  %2 = load i8, i8* %isolated, align 1, !range !13
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* @pcpu_nr_empty_pop_pages, align 4
  %add1 = add i32 %3, %nr
  store i32 %add1, i32* @pcpu_nr_empty_pop_pages, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc void @pcpu_chunk_refresh_hint(%struct.pcpu_chunk* nocapture noundef %chunk, i1 noundef %full_scan) unnamed_addr #19 {
entry:
  %bit_off = alloca i32, align 4
  %bits = alloca i32, align 4
  %chunk_md1 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2
  %0 = bitcast i32* %bit_off to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #29
  %1 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #29
  br i1 %full_scan, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %scan_hint = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %chunk_md1, i64 0, i32 0
  %2 = load i32, i32* %scan_hint, align 4
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %scan_hint_start = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2, i32 1
  %3 = load i32, i32* %scan_hint_start, align 4
  %add = add i32 %3, %2
  store i32 %add, i32* %bit_off, align 4
  %contig_hint_start = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2, i32 3
  store i32 %3, i32* %contig_hint_start, align 4
  %contig_hint = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2, i32 2
  store i32 %2, i32* %contig_hint, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %first_free = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2, i32 6
  %4 = load i32, i32* %first_free, align 4
  store i32 %4, i32* %bit_off, align 4
  %contig_hint7 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %contig_hint7.sink = phi i32* [ %contig_hint7, %if.else ], [ %scan_hint, %if.then ]
  store i32 0, i32* %contig_hint7.sink, align 4
  store i32 0, i32* %bits, align 4
  call fastcc void @pcpu_next_md_free_region(%struct.pcpu_chunk* noundef %chunk, i32* noundef nonnull %bit_off, i32* noundef nonnull %bits) #26
  %5 = load i32, i32* %bit_off, align 4
  %call25 = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef %chunk) #26
  %cmp26 = icmp slt i32 %5, %call25
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %6 = phi i32 [ %8, %for.body ], [ %5, %if.end ]
  %7 = load i32, i32* %bits, align 4
  %add8 = add i32 %7, %6
  call fastcc void @pcpu_block_update(%struct.pcpu_block_md* noundef %chunk_md1, i32 noundef %6, i32 noundef %add8) #26
  %add10 = add i32 %add8, 1
  store i32 %add10, i32* %bit_off, align 4
  call fastcc void @pcpu_next_md_free_region(%struct.pcpu_chunk* noundef %chunk, i32* noundef nonnull %bit_off, i32* noundef nonnull %bits) #26
  %8 = load i32, i32* %bit_off, align 4
  %call = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef %chunk) #26
  %cmp = icmp slt i32 %8, %call
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @pcpu_next_md_free_region(%struct.pcpu_chunk* nocapture noundef readonly %chunk, i32* nocapture noundef %bit_off, i32* nocapture noundef %bits) unnamed_addr #15 {
entry:
  %0 = load i32, i32* %bit_off, align 4
  %call = call fastcc i64 @pcpu_off_to_block_index(i32 noundef %0) #26
  %conv = trunc i64 %call to i32
  store i32 0, i32* %bits, align 4
  %call360 = call fastcc i32 @pcpu_chunk_nr_blocks(%struct.pcpu_chunk* noundef %chunk) #26
  %cmp61 = icmp sgt i32 %call360, %conv
  br i1 %cmp61, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %entry
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 6
  %1 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %md_blocks, align 8
  %sext = shl i64 %call, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext
  %call1 = call fastcc i64 @pcpu_off_to_block_off(i32 noundef %0) #26
  %conv2 = trunc i64 %call1 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %2 = phi i32 [ %9, %for.inc ], [ 0, %for.body.preheader ]
  %block.066 = phi %struct.pcpu_block_md* [ %incdec.ptr, %for.inc ], [ %add.ptr, %for.body.preheader ]
  %block_off.065 = phi i32 [ %block_off.1, %for.inc ], [ %conv2, %for.body.preheader ]
  %i.062 = phi i32 [ %inc, %for.inc ], [ %conv, %for.body.preheader ]
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %for.body
  %left_free = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block.066, i64 0, i32 4
  %3 = load i32, i32* %left_free, align 4
  %add = add i32 %3, %2
  store i32 %add, i32* %bits, align 4
  %4 = load i32, i32* %left_free, align 4
  %cmp7 = icmp eq i32 %4, 1024
  br i1 %cmp7, label %for.inc, label %cleanup

if.end10:                                         ; preds = %for.body
  %contig_hint = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block.066, i64 0, i32 2
  %5 = load i32, i32* %contig_hint, align 4
  store i32 %5, i32* %bits, align 4
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %contig_hint_start = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block.066, i64 0, i32 3
  %6 = load i32, i32* %contig_hint_start, align 4
  %cmp12.not = icmp sge i32 %6, %block_off.065
  %add16 = add i32 %6, %5
  %cmp18 = icmp ult i32 %add16, 1024
  %or.cond = select i1 %cmp12.not, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.then20, label %if.end24

if.then20:                                        ; preds = %land.lhs.true
  %call22 = call fastcc i64 @pcpu_block_off_to_off(i32 noundef %i.062, i32 noundef %6) #26
  %conv23 = trunc i64 %call22 to i32
  store i32 %conv23, i32* %bit_off, align 4
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true, %if.end10
  %right_free = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block.066, i64 0, i32 5
  %7 = load i32, i32* %right_free, align 4
  store i32 %7, i32* %bits, align 4
  %add25 = shl i32 %i.062, 10
  %mul = add i32 %add25, 1024
  %8 = load i32, i32* %right_free, align 4
  %sub = sub i32 %mul, %8
  store i32 %sub, i32* %bit_off, align 4
  %.pre = load i32, i32* %bits, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.end24
  %9 = phi i32 [ %add, %if.then ], [ %.pre, %if.end24 ]
  %block_off.1 = phi i32 [ %block_off.065, %if.then ], [ 0, %if.end24 ]
  %incdec.ptr = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %block.066, i64 1
  %inc = add nsw i32 %i.062, 1
  %call3 = call fastcc i32 @pcpu_chunk_nr_blocks(%struct.pcpu_chunk* noundef %chunk) #26
  %cmp = icmp slt i32 %inc, %call3
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %if.then, %for.inc, %entry, %if.then20
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__pcpu_chunk_move(%struct.pcpu_chunk* noundef %chunk, i32 noundef %slot, i1 noundef %move_front) unnamed_addr #3 {
entry:
  %0 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** @pcpu_reserved_chunk, align 8
  %cmp.not = icmp eq %struct.pcpu_chunk* %0, %chunk
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  %idxprom = sext i32 %slot to i64
  %arrayidx = getelementptr %struct.list_head, %struct.list_head* %1, i64 %idxprom
  br i1 %move_front, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %arrayidx) #26
  br label %if.end5

if.else:                                          ; preds = %if.then
  call fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %arrayidx) #26
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.else, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #26
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %list) #26
  call fastcc void @list_add_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %head) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #26
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pcpu_chunk* @pcpu_alloc_chunk(i32 noundef %gfp) unnamed_addr #0 {
entry:
  %0 = load i64, i64* @pcpu_chunk_struct_size, align 8
  %call = call fastcc i8* @pcpu_mem_zalloc(i64 noundef %0, i32 noundef %gfp) #26
  %1 = bitcast i8* %call to %struct.pcpu_chunk*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %list = bitcast i8* %call to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef nonnull %list) #26
  %2 = load i32, i32* @pcpu_unit_pages, align 4
  %nr_pages = getelementptr inbounds i8, i8* %call, i64 108
  %3 = bitcast i8* %nr_pages to i32*
  store i32 %2, i32* %3, align 4
  %call1 = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef nonnull %1) #26
  %conv = sext i32 %call1 to i64
  %sub = add nsw i64 %conv, 63
  %4 = lshr i64 %sub, 3
  %mul = and i64 %4, 2305843009213693944
  %call2 = call fastcc i8* @pcpu_mem_zalloc(i64 noundef %mul, i32 noundef %gfp) #26
  %alloc_map = getelementptr inbounds i8, i8* %call, i64 64
  %5 = bitcast i8* %alloc_map to i8**
  store i8* %call2, i8** %5, align 8
  %tobool4.not = icmp eq i8* %call2, null
  br i1 %tobool4.not, label %alloc_map_fail, label %if.end6

if.end6:                                          ; preds = %if.end
  %add7 = add i32 %call1, 1
  %conv8 = sext i32 %add7 to i64
  %sub10 = add nsw i64 %conv8, 63
  %6 = lshr i64 %sub10, 3
  %mul12 = and i64 %6, 2305843009213693944
  %call13 = call fastcc i8* @pcpu_mem_zalloc(i64 noundef %mul12, i32 noundef %gfp) #26
  %bound_map = getelementptr inbounds i8, i8* %call, i64 72
  %7 = bitcast i8* %bound_map to i8**
  store i8* %call13, i8** %7, align 8
  %tobool15.not = icmp eq i8* %call13, null
  br i1 %tobool15.not, label %bound_map_fail, label %if.end17

if.end17:                                         ; preds = %if.end6
  %call18 = call fastcc i32 @pcpu_chunk_nr_blocks(%struct.pcpu_chunk* noundef nonnull %1) #26
  %conv19 = sext i32 %call18 to i64
  %mul20 = shl nsw i64 %conv19, 5
  %call21 = call fastcc i8* @pcpu_mem_zalloc(i64 noundef %mul20, i32 noundef %gfp) #26
  %md_blocks = getelementptr inbounds i8, i8* %call, i64 80
  %8 = bitcast i8* %md_blocks to i8**
  store i8* %call21, i8** %8, align 8
  %tobool23.not = icmp eq i8* %call21, null
  br i1 %tobool23.not, label %md_blocks_fail, label %if.end25

if.end25:                                         ; preds = %if.end17
  call fastcc void @pcpu_init_md_blocks(%struct.pcpu_chunk* noundef nonnull %1) #26
  %9 = load i32, i32* %3, align 4
  %mul28 = shl i32 %9, 12
  %free_bytes = getelementptr inbounds i8, i8* %call, i64 16
  %10 = bitcast i8* %free_bytes to i32*
  store i32 %mul28, i32* %10, align 8
  br label %cleanup

md_blocks_fail:                                   ; preds = %if.end17
  %11 = load i8*, i8** %7, align 8
  call fastcc void @pcpu_mem_free(i8* noundef %11) #26
  br label %bound_map_fail

bound_map_fail:                                   ; preds = %if.end6, %md_blocks_fail
  %12 = load i8*, i8** %5, align 8
  call fastcc void @pcpu_mem_free(i8* noundef %12) #26
  br label %alloc_map_fail

alloc_map_fail:                                   ; preds = %if.end, %bound_map_fail
  call fastcc void @pcpu_mem_free(i8* noundef nonnull %call) #26
  br label %cleanup

cleanup:                                          ; preds = %entry, %alloc_map_fail, %if.end25
  %retval.0 = phi %struct.pcpu_chunk* [ %1, %if.end25 ], [ null, %alloc_map_fail ], [ null, %entry ]
  ret %struct.pcpu_chunk* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.vm_struct** @pcpu_get_vm_areas(i64* noundef, i64* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_free_chunk(%struct.pcpu_chunk* noundef %chunk) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.pcpu_chunk* %chunk, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 6
  %0 = bitcast %struct.pcpu_block_md** %md_blocks to i8**
  %1 = load i8*, i8** %0, align 8
  call fastcc void @pcpu_mem_free(i8* noundef %1) #26
  %bound_map = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 5
  %2 = bitcast i64** %bound_map to i8**
  %3 = load i8*, i8** %2, align 8
  call fastcc void @pcpu_mem_free(i8* noundef %3) #26
  %alloc_map = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 4
  %4 = bitcast i64** %alloc_map to i8**
  %5 = load i8*, i8** %4, align 8
  call fastcc void @pcpu_mem_free(i8* noundef %5) #26
  %6 = bitcast %struct.pcpu_chunk* %chunk to i8*
  call fastcc void @pcpu_mem_free(i8* noundef nonnull %6) #26
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @pcpu_mem_zalloc(i64 noundef %size, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %call = call i1 @slab_is_available() #28
  br i1 %call, label %if.end17, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 510; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #29, !srcloc !39
  br label %return

if.end17:                                         ; preds = %entry
  %cmp = icmp ult i64 %size, 4097
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end17
  %call20 = call fastcc i8* @kzalloc(i64 noundef %size, i32 noundef %gfp) #26
  br label %return

if.else:                                          ; preds = %if.end17
  %or = or i32 %gfp, 256
  %call21 = call i8* @__vmalloc(i64 noundef %size, i32 noundef %or) #28
  br label %return

return:                                           ; preds = %if.then, %if.else, %if.then19
  %retval.0 = phi i8* [ %call20, %if.then19 ], [ %call21, %if.else ], [ null, %if.then ]
  ret i8* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @pcpu_init_md_blocks(%struct.pcpu_chunk* nocapture noundef %chunk) unnamed_addr #15 {
entry:
  %chunk_md = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2
  %call = call fastcc i32 @pcpu_chunk_map_bits(%struct.pcpu_chunk* noundef %chunk) #26
  call fastcc void @pcpu_init_md_block(%struct.pcpu_block_md* noundef %chunk_md, i32 noundef %call) #26
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 6
  %0 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %md_blocks, align 8
  %call210 = call fastcc i32 @pcpu_chunk_nr_blocks(%struct.pcpu_chunk* noundef %chunk) #26
  %idx.ext11 = sext i32 %call210 to i64
  %add.ptr12 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %0, i64 %idx.ext11
  %cmp.not13 = icmp eq %struct.pcpu_block_md* %0, %add.ptr12
  br i1 %cmp.not13, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %md_block.014 = phi %struct.pcpu_block_md* [ %incdec.ptr, %for.body ], [ %0, %entry ]
  call fastcc void @pcpu_init_md_block(%struct.pcpu_block_md* noundef %md_block.014, i32 noundef 1024) #26
  %incdec.ptr = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %md_block.014, i64 1
  %1 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %md_blocks, align 8
  %call2 = call fastcc i32 @pcpu_chunk_nr_blocks(%struct.pcpu_chunk* noundef %chunk) #26
  %idx.ext = sext i32 %call2 to i64
  %add.ptr = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext
  %cmp.not = icmp eq %struct.pcpu_block_md* %incdec.ptr, %add.ptr
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_mem_free(i8* noundef %ptr) unnamed_addr #0 {
entry:
  call void @kvfree(i8* noundef %ptr) #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @slab_is_available() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 256
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef %or) #28
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__vmalloc(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pcpu_init_md_block(%struct.pcpu_block_md* nocapture noundef writeonly %block, i32 noundef %nr_bits) unnamed_addr #20 {
entry:
  %scan_hint = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 0
  store i32 0, i32* %scan_hint, align 4
  %contig_hint = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 2
  store i32 %nr_bits, i32* %contig_hint, align 4
  %left_free = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 4
  store i32 %nr_bits, i32* %left_free, align 4
  %right_free = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 5
  store i32 %nr_bits, i32* %right_free, align 4
  %first_free = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 6
  store i32 0, i32* %first_free, align 4
  %nr_bits1 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block, i64 0, i32 7
  store i32 %nr_bits, i32* %nr_bits1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page** @pcpu_get_pages() unnamed_addr #0 {
entry:
  %0 = load %struct.page**, %struct.page*** @pcpu_get_pages.pages, align 8
  %tobool.not = icmp eq %struct.page** %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @pcpu_nr_units, align 4
  %2 = load i32, i32* @pcpu_unit_pages, align 4
  %mul = mul i32 %2, %1
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 3
  %call = call fastcc i8* @pcpu_mem_zalloc(i64 noundef %mul1, i32 noundef 3264) #26
  store i8* %call, i8** bitcast (%struct.page*** @pcpu_get_pages.pages to i8**), align 8
  %3 = bitcast i8* %call to %struct.page**
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.page** [ %3, %if.then ], [ %0, %entry ]
  ret %struct.page** %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pcpu_alloc_pages(%struct.page** nocapture noundef %pages, i32 noundef %page_start, i32 noundef %page_end, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %or = or i32 %gfp, 2
  %call6 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp7 = icmp ult i32 %call6, %0
  br i1 %cmp7, label %for.cond1.preheader.lr.ph, label %cleanup28

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp24 = icmp slt i32 %page_start, %page_end
  br label %for.cond1.preheader

for.cond.loopexit.loopexit:                       ; preds = %for.inc
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond.loopexit

for.cond.loopexit:                                ; preds = %for.cond.loopexit.loopexit, %for.cond1.preheader
  %1 = phi i32 [ %.pre, %for.cond.loopexit.loopexit ], [ %2, %for.cond1.preheader ]
  %call = call i32 @cpumask_next(i32 noundef %call9, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.cond1.preheader, label %cleanup28

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.cond.loopexit
  %2 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %1, %for.cond.loopexit ]
  %call9 = phi i32 [ %call6, %for.cond1.preheader.lr.ph ], [ %call, %for.cond.loopexit ]
  br i1 %cmp24, label %for.body3, label %for.cond.loopexit

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %i.05 = phi i32 [ %inc, %for.inc ], [ %page_start, %for.cond1.preheader ]
  %call4 = call fastcc i32 @pcpu_page_idx(i32 noundef %call9, i32 noundef %i.05) #26
  %idxprom = sext i32 %call4 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %idxprom
  %call5 = call fastcc %struct.page* @alloc_pages_node(i32 noundef %or) #26
  store %struct.page* %call5, %struct.page** %arrayidx, align 8
  %tobool.not = icmp eq %struct.page* %call5, null
  br i1 %tobool.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body3
  %dec10 = add i32 %i.05, -1
  %cmp7.not11 = icmp slt i32 %dec10, %page_start
  br i1 %cmp7.not11, label %for.cond11.preheader, label %while.body

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %page_end
  br i1 %exitcond.not, label %for.cond.loopexit.loopexit, label %for.body3

for.cond11.preheader:                             ; preds = %while.body, %while.cond.preheader
  %call1215 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp1316 = icmp uge i32 %call1215, %3
  %cmp1517 = icmp eq i32 %call1215, %call9
  %or.cond18 = select i1 %cmp1316, i1 true, i1 %cmp1517
  br i1 %or.cond18, label %cleanup28, label %for.body20.preheader

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %dec12 = phi i32 [ %dec, %while.body ], [ %dec10, %while.cond.preheader ]
  %call8 = call fastcc i32 @pcpu_page_idx(i32 noundef %call9, i32 noundef %dec12) #26
  %idxprom9 = sext i32 %call8 to i64
  %arrayidx10 = getelementptr %struct.page*, %struct.page** %pages, i64 %idxprom9
  %4 = load %struct.page*, %struct.page** %arrayidx10, align 8
  call void @__free_pages(%struct.page* noundef %4, i32 noundef 0) #28
  %dec = add i32 %dec12, -1
  %cmp7.not = icmp slt i32 %dec, %page_start
  br i1 %cmp7.not, label %for.cond11.preheader, label %while.body

for.cond11.loopexit:                              ; preds = %for.body20
  %.pre24 = load i32, i32* @nr_cpu_ids, align 4
  %call12 = call i32 @cpumask_next(i32 noundef %call1219, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %cmp13 = icmp uge i32 %call12, %.pre24
  %cmp15 = icmp eq i32 %call12, %call9
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp15
  br i1 %or.cond, label %cleanup28, label %for.body20.preheader

for.body20.preheader:                             ; preds = %for.cond11.preheader, %for.cond11.loopexit
  %call1219 = phi i32 [ %call12, %for.cond11.loopexit ], [ %call1215, %for.cond11.preheader ]
  br label %for.body20

for.body20:                                       ; preds = %for.body20.preheader, %for.body20
  %i.214 = phi i32 [ %inc25, %for.body20 ], [ %page_start, %for.body20.preheader ]
  %call21 = call fastcc i32 @pcpu_page_idx(i32 noundef %call1219, i32 noundef %i.214) #26
  %idxprom22 = sext i32 %call21 to i64
  %arrayidx23 = getelementptr %struct.page*, %struct.page** %pages, i64 %idxprom22
  %5 = load %struct.page*, %struct.page** %arrayidx23, align 8
  call void @__free_pages(%struct.page* noundef %5, i32 noundef 0) #28
  %inc25 = add i32 %i.214, 1
  %exitcond23.not = icmp eq i32 %inc25, %page_end
  br i1 %exitcond23.not, label %for.cond11.loopexit, label %for.body20

cleanup28:                                        ; preds = %for.cond.loopexit, %for.cond11.loopexit, %entry, %for.cond11.preheader
  %retval.0 = phi i32 [ -12, %for.cond11.preheader ], [ 0, %entry ], [ -12, %for.cond11.loopexit ], [ 0, %for.cond.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pcpu_map_pages(%struct.pcpu_chunk* noundef %chunk, %struct.page** noundef %pages, i32 noundef %page_start, i32 noundef %page_end) unnamed_addr #0 {
entry:
  %call57 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp58 = icmp ult i32 %call57, %0
  br i1 %cmp58, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sub = sub i32 %page_end, %page_start
  %cmp655 = icmp sgt i32 %page_end, %page_start
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body7, %for.cond5.preheader
  %call = call i32 @cpumask_next(i32 noundef %call59, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.loopexit
  %call59 = phi i32 [ %call57, %for.body.lr.ph ], [ %call, %for.cond.loopexit ]
  %call1 = call fastcc i64 @pcpu_chunk_addr(%struct.pcpu_chunk* noundef %chunk, i32 noundef %call59, i32 noundef %page_start) #26
  %call2 = call fastcc i32 @pcpu_page_idx(i32 noundef %call59, i32 noundef %page_start) #26
  %idxprom = sext i32 %call2 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %idxprom
  %call3 = call fastcc i32 @__pcpu_map_pages(i64 noundef %call1, %struct.page** noundef %arrayidx, i32 noundef %sub) #26
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %for.cond13.preheader, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.body
  br i1 %cmp655, label %for.body7, label %for.cond.loopexit

for.cond13.preheader:                             ; preds = %for.body
  %call1460 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %2 = load i32, i32* @nr_cpu_ids, align 4
  %cmp1561 = icmp uge i32 %call1460, %2
  %cmp1762 = icmp eq i32 %call1460, %call59
  %or.cond63 = or i1 %cmp1561, %cmp1762
  br i1 %or.cond63, label %for.end22, label %if.end19

for.body7:                                        ; preds = %for.cond5.preheader, %for.body7
  %i.056 = phi i32 [ %inc, %for.body7 ], [ %page_start, %for.cond5.preheader ]
  %call8 = call fastcc i32 @pcpu_page_idx(i32 noundef %call59, i32 noundef %i.056) #26
  %idxprom9 = sext i32 %call8 to i64
  %arrayidx10 = getelementptr %struct.page*, %struct.page** %pages, i64 %idxprom9
  %3 = load %struct.page*, %struct.page** %arrayidx10, align 8
  call fastcc void @pcpu_set_page_chunk(%struct.page* noundef %3, %struct.pcpu_chunk* noundef %chunk) #26
  %inc = add nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %page_end
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body7

if.end19:                                         ; preds = %for.cond13.preheader, %if.end19
  %call1464 = phi i32 [ %call14, %if.end19 ], [ %call1460, %for.cond13.preheader ]
  %call20 = call fastcc i64 @pcpu_chunk_addr(%struct.pcpu_chunk* noundef %chunk, i32 noundef %call1464, i32 noundef %page_start) #26
  call fastcc void @__pcpu_unmap_pages(i64 noundef %call20, i32 noundef %sub) #26
  %call14 = call i32 @cpumask_next(i32 noundef %call1464, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %4 = load i32, i32* @nr_cpu_ids, align 4
  %cmp15 = icmp uge i32 %call14, %4
  %cmp17 = icmp eq i32 %call14, %call59
  %or.cond = or i1 %cmp15, %cmp17
  br i1 %or.cond, label %for.end22, label %if.end19

for.end22:                                        ; preds = %if.end19, %for.cond13.preheader
  call fastcc void @pcpu_post_unmap_tlb_flush(%struct.pcpu_chunk* noundef %chunk, i32 noundef %page_start, i32 noundef %page_end) #26
  br label %cleanup

cleanup:                                          ; preds = %for.cond.loopexit, %entry, %for.end22
  %retval.0 = phi i32 [ %call3, %for.end22 ], [ 0, %entry ], [ 0, %for.cond.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_free_pages(%struct.page** nocapture noundef readonly %pages, i32 noundef %page_start, i32 noundef %page_end) unnamed_addr #0 {
entry:
  %call3 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp4 = icmp ult i32 %call3, %0
  br i1 %cmp4, label %for.cond1.preheader.lr.ph, label %for.end5

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp21 = icmp slt i32 %page_start, %page_end
  br label %for.cond1.preheader

for.cond.loopexit.loopexit:                       ; preds = %if.end
  %.pre = load i32, i32* @nr_cpu_ids, align 4
  br label %for.cond.loopexit

for.cond.loopexit:                                ; preds = %for.cond.loopexit.loopexit, %for.cond1.preheader
  %1 = phi i32 [ %.pre, %for.cond.loopexit.loopexit ], [ %2, %for.cond1.preheader ]
  %call = call i32 @cpumask_next(i32 noundef %call5, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.cond1.preheader, label %for.end5

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.cond.loopexit
  %2 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %1, %for.cond.loopexit ]
  %call5 = phi i32 [ %call3, %for.cond1.preheader.lr.ph ], [ %call, %for.cond.loopexit ]
  br i1 %cmp21, label %for.body3, label %for.cond.loopexit

for.body3:                                        ; preds = %for.cond1.preheader, %if.end
  %i.02 = phi i32 [ %inc, %if.end ], [ %page_start, %for.cond1.preheader ]
  %call4 = call fastcc i32 @pcpu_page_idx(i32 noundef %call5, i32 noundef %i.02) #26
  %idxprom = sext i32 %call4 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %idxprom
  %3 = load %struct.page*, %struct.page** %arrayidx, align 8
  %tobool.not = icmp eq %struct.page* %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body3
  call void @__free_pages(%struct.page* noundef nonnull %3, i32 noundef 0) #28
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %inc = add i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, %page_end
  br i1 %exitcond.not, label %for.cond.loopexit.loopexit, label %for.body3

for.end5:                                         ; preds = %for.cond.loopexit, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pcpu_page_idx(i32 noundef %cpu, i32 noundef %page_idx) unnamed_addr #2 {
entry:
  %0 = load i32*, i32** @pcpu_unit_map, align 8
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr i32, i32* %0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32, i32* @pcpu_unit_pages, align 4
  %mul = mul i32 %2, %1
  %add = add i32 %mul, %page_idx
  ret i32 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef %gfp_mask) #26
  ret %struct.page* %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(%struct.page* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %gfp_mask) unnamed_addr #0 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef 0, %struct.nodemask_t* noundef null) #28
  ret %struct.page* %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #21 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #37, !srcloc !40
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #22

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__pcpu_map_pages(i64 noundef %addr, %struct.page** noundef %pages, i32 noundef %nr_pages) unnamed_addr #0 {
entry:
  %shl = shl i32 %nr_pages, 12
  %conv = sext i32 %shl to i64
  %add = add i64 %conv, %addr
  %0 = load i8, i8* @arm64_use_ng_mappings, align 1, !range !13
  %tobool.not = icmp eq i8 %0, 0
  %or4 = select i1 %tobool.not, i64 29273397577910019, i64 29273397577912067
  %call = call i32 @vmap_pages_range_noflush(i64 noundef %addr, i64 noundef %add, i64 %or4, %struct.page** noundef %pages, i32 noundef 12) #28
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @pcpu_set_page_chunk(%struct.page* nocapture noundef writeonly %page, %struct.pcpu_chunk* noundef %pcpu) unnamed_addr #20 {
entry:
  %0 = ptrtoint %struct.pcpu_chunk* %pcpu to i64
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  store i64 %0, i64* %index, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__pcpu_unmap_pages(i64 noundef %addr, i32 noundef %nr_pages) unnamed_addr #0 {
entry:
  %shl = shl i32 %nr_pages, 12
  %conv = sext i32 %shl to i64
  %add = add i64 %conv, %addr
  call void @vunmap_range_noflush(i64 noundef %addr, i64 noundef %add) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_post_unmap_tlb_flush(%struct.pcpu_chunk* nocapture noundef readonly %chunk, i32 noundef %page_start, i32 noundef %page_end) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @pcpu_low_unit_cpu, align 4
  %call = call fastcc i64 @pcpu_chunk_addr(%struct.pcpu_chunk* noundef %chunk, i32 noundef %0, i32 noundef %page_start) #26
  %1 = load i32, i32* @pcpu_high_unit_cpu, align 4
  %call1 = call fastcc i64 @pcpu_chunk_addr(%struct.pcpu_chunk* noundef %chunk, i32 noundef %1, i32 noundef %page_end) #26
  call fastcc void @flush_tlb_kernel_range(i64 noundef %call, i64 noundef %call1) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmap_pages_range_noflush(i64 noundef, i64 noundef, i64, %struct.page** noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap_range_noflush(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_kernel_range(i64 noundef %start, i64 noundef %end) unnamed_addr #0 {
entry:
  %sub = sub i64 %end, %start
  %cmp = icmp ugt i64 %sub, 2097152
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @flush_tlb_all() #26
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i64 %start, 12
  %and = and i64 %shr, 17592186044415
  %shr2 = lshr i64 %end, 12
  %and3 = and i64 %shr2, 17592186044415
  call void asm sideeffect "dsb ishst", "~{memory}"() #29, !srcloc !41
  %cmp620 = icmp ult i64 %and, %and3
  br i1 %cmp620, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %addr.021 = phi i64 [ %add, %for.body ], [ %and, %if.end ]
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vaale1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vaale1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %addr.021) #29, !srcloc !42
  %add = add nuw nsw i64 %addr.021, 1
  %exitcond.not = icmp eq i64 %add, %and3
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  call void asm sideeffect "dsb ish", "~{memory}"() #29, !srcloc !43
  call void asm sideeffect "isb", "~{memory}"() #29, !srcloc !44
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_all() unnamed_addr #0 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #29, !srcloc !45
  call void asm sideeffect ".arch armv8.5-a\0Atlbi vmalle1is\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi vmalle1is\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", ""() #29, !srcloc !46
  call void asm sideeffect "dsb ish", "~{memory}"() #29, !srcloc !47
  call void asm sideeffect "isb", "~{memory}"() #29, !srcloc !48
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #26
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #26
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #28
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pcpu_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #28
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #29, !srcloc !49
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #29, !srcloc !50
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #26
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #29, !srcloc !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #11 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #26
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pcpu_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pcpu_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #29, !srcloc !52
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @pcpu_addr_in_chunk(%struct.pcpu_chunk* noundef readonly %chunk, i8* noundef readnone %addr) unnamed_addr #2 {
entry:
  %tobool.not = icmp eq %struct.pcpu_chunk* %chunk, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %base_addr = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 3
  %0 = load i8*, i8** %base_addr, align 8
  %start_offset = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 10
  %1 = load i32, i32* %start_offset, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext
  %nr_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 12
  %2 = load i32, i32* %nr_pages, align 4
  %conv = sext i32 %2 to i64
  %mul = shl nsw i64 %conv, 12
  %add.ptr2 = getelementptr i8, i8* %0, i64 %mul
  %end_offset = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 11
  %3 = load i32, i32* %end_offset, align 8
  %idx.ext3 = sext i32 %3 to i64
  %idx.neg = sub nsw i64 0, %idx.ext3
  %add.ptr4 = getelementptr i8, i8* %add.ptr2, i64 %idx.neg
  %cmp = icmp ule i8* %add.ptr, %addr
  %cmp6 = icmp ugt i8* %add.ptr4, %addr
  %4 = select i1 %cmp, i1 %cmp6, i1 false
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %4, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pcpu_chunk* @pcpu_get_page_chunk(%struct.page* nocapture noundef readonly %page) unnamed_addr #2 {
entry:
  %index = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1, i32 0, i32 2
  %0 = load i64, i64* %index, align 8
  %1 = inttoptr i64 %0 to %struct.pcpu_chunk*
  ret %struct.pcpu_chunk* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_block_update_hint_free(%struct.pcpu_chunk* nocapture noundef %chunk, i32 noundef %bit_off, i32 noundef %bits) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @pcpu_off_to_block_index(i32 noundef %bit_off) #26
  %conv = trunc i64 %call to i32
  %add = add i32 %bit_off, -1
  %sub = add i32 %add, %bits
  %call1 = call fastcc i64 @pcpu_off_to_block_index(i32 noundef %sub) #26
  %conv2 = trunc i64 %call1 to i32
  %call3 = call fastcc i64 @pcpu_off_to_block_off(i32 noundef %bit_off) #26
  %conv4 = trunc i64 %call3 to i32
  %call7 = call fastcc i64 @pcpu_off_to_block_off(i32 noundef %sub) #26
  %0 = trunc i64 %call7 to i32
  %conv9 = add i32 %0, 1
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 6
  %1 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %md_blocks, align 8
  %sext = shl i64 %call, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext
  %sext147 = shl i64 %call1, 32
  %idx.ext11 = ashr exact i64 %sext147, 32
  %add.ptr12 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext11
  %contig_hint = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext, i32 2
  %2 = load i32, i32* %contig_hint, align 4
  %contig_hint_start = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext, i32 3
  %3 = load i32, i32* %contig_hint_start, align 4
  %add13 = add i32 %3, %2
  %cmp = icmp eq i32 %add13, %conv4
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %call16 = call fastcc i64* @pcpu_index_alloc_map(%struct.pcpu_chunk* noundef %chunk, i32 noundef %conv) #26
  %sext148 = shl i64 %call3, 32
  %conv17 = ashr exact i64 %sext148, 32
  %call18 = call fastcc i64 @find_last_bit(i64* noundef %call16, i64 noundef %conv17) #26
  %conv19 = trunc i64 %call18 to i32
  %cmp20 = icmp eq i32 %conv4, %conv19
  %add22 = add i32 %conv19, 1
  %cond = select i1 %cmp20, i32 0, i32 %add22
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %start.0 = phi i32 [ %cond, %if.else ], [ %3, %entry ]
  %contig_hint_start23 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext11, i32 3
  %4 = load i32, i32* %contig_hint_start23, align 4
  %cmp24 = icmp eq i32 %conv9, %4
  br i1 %cmp24, label %if.then26, label %if.else30

if.then26:                                        ; preds = %if.end
  %contig_hint28 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %1, i64 %idx.ext11, i32 2
  %5 = load i32, i32* %contig_hint28, align 4
  %add29 = add i32 %5, %conv9
  br label %if.end35

if.else30:                                        ; preds = %if.end
  %call31 = call fastcc i64* @pcpu_index_alloc_map(%struct.pcpu_chunk* noundef %chunk, i32 noundef %conv2) #26
  %conv32 = sext i32 %conv9 to i64
  %call33 = call fastcc i64 @find_next_bit(i64* noundef %call31, i64 noundef 1024, i64 noundef %conv32) #26
  %conv34 = trunc i64 %call33 to i32
  br label %if.end35

if.end35:                                         ; preds = %if.else30, %if.then26
  %end.0 = phi i32 [ %add29, %if.then26 ], [ %conv34, %if.else30 ]
  %cmp36 = icmp eq i32 %conv2, %conv
  %conv43 = select i1 %cmp36, i32 %end.0, i32 1024
  %tobool = icmp eq i32 %start.0, 0
  %cmp45 = icmp eq i32 %conv43, 1024
  %or.cond = and i1 %tobool, %cmp45
  %spec.select = zext i1 %or.cond to i32
  call fastcc void @pcpu_block_update(%struct.pcpu_block_md* noundef %add.ptr, i32 noundef %start.0, i32 noundef %conv43) #26
  br i1 %cmp36, label %if.end66, label %if.then51

if.then51:                                        ; preds = %if.end35
  %cmp53 = icmp eq i32 %end.0, 1024
  %inc56 = select i1 %or.cond, i32 2, i32 1
  %spec.select149 = select i1 %cmp53, i32 %inc56, i32 %spec.select
  call fastcc void @pcpu_block_update(%struct.pcpu_block_md* noundef %add.ptr12, i32 noundef 0, i32 noundef %end.0) #26
  %6 = xor i32 %conv, -1
  %sub59 = add i32 %conv2, %6
  %add60 = add i32 %sub59, %spec.select149
  %block.0150 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr, i64 1
  %cmp62151 = icmp ult %struct.pcpu_block_md* %block.0150, %add.ptr12
  br i1 %cmp62151, label %for.body, label %if.end66

for.body:                                         ; preds = %if.then51, %for.body
  %block.0153 = phi %struct.pcpu_block_md* [ %block.0, %for.body ], [ %block.0150, %if.then51 ]
  %add.ptr.pn152 = phi %struct.pcpu_block_md* [ %block.0153, %for.body ], [ %add.ptr, %if.then51 ]
  %first_free = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr.pn152, i64 1, i32 6
  store i32 0, i32* %first_free, align 4
  %scan_hint = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %block.0153, i64 0, i32 0
  store i32 0, i32* %scan_hint, align 4
  %contig_hint_start64 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr.pn152, i64 1, i32 3
  store i32 0, i32* %contig_hint_start64, align 4
  %contig_hint65 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr.pn152, i64 1, i32 2
  store i32 1024, i32* %contig_hint65, align 4
  %left_free = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr.pn152, i64 1, i32 4
  store i32 1024, i32* %left_free, align 4
  %right_free = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %add.ptr.pn152, i64 1, i32 5
  store i32 1024, i32* %right_free, align 4
  %block.0 = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %block.0153, i64 1
  %cmp62 = icmp ult %struct.pcpu_block_md* %block.0, %add.ptr12
  br i1 %cmp62, label %for.body, label %if.end66

if.end66:                                         ; preds = %for.body, %if.then51, %if.end35
  %nr_empty_pages.2 = phi i32 [ %spec.select, %if.end35 ], [ %add60, %if.then51 ], [ %add60, %for.body ]
  %tobool67.not = icmp eq i32 %nr_empty_pages.2, 0
  br i1 %tobool67.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end66
  call fastcc void @pcpu_update_empty_pages(%struct.pcpu_chunk* noundef %chunk, i32 noundef %nr_empty_pages.2) #26
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end66
  %sub70 = sub i32 %end.0, %start.0
  %cmp72 = icmp ugt i32 %sub70, 1023
  %cmp49.not.not = xor i1 %cmp36, true
  %brmerge = select i1 %cmp72, i1 true, i1 %cmp49.not.not
  br i1 %brmerge, label %if.then76, label %if.else77

if.then76:                                        ; preds = %if.end69
  call fastcc void @pcpu_chunk_refresh_hint(%struct.pcpu_chunk* noundef %chunk, i1 noundef true) #26
  br label %if.end80

if.else77:                                        ; preds = %if.end69
  %chunk_md = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 2
  %call78 = call fastcc i64 @pcpu_block_off_to_off(i32 noundef %conv, i32 noundef %start.0) #26
  %conv79 = trunc i64 %call78 to i32
  call fastcc void @pcpu_block_update(%struct.pcpu_block_md* noundef %chunk_md, i32 noundef %conv79, i32 noundef %end.0) #26
  br label %if.end80

if.end80:                                         ; preds = %if.else77, %if.then76
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #26
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #26
  call void asm sideeffect "", "~{memory}"() #29, !srcloc !53
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @pcpu_lock to i8*), i8 0) #29, !srcloc !54
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #29, !srcloc !55
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work() unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef nonnull @pcpu_balance_work) #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pcpu_balance_workfn(%struct.work_struct* nocapture noundef readnone %work) #0 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @pcpu_alloc_mutex) #28
  call fastcc void @__raw_spin_lock_irq() #28
  call fastcc void @pcpu_balance_free(i1 noundef false) #26
  call fastcc void @pcpu_reclaim_populated() #26
  call fastcc void @pcpu_balance_populated() #26
  call fastcc void @pcpu_balance_free(i1 noundef true) #26
  call fastcc void @__raw_spin_unlock_irq() #28
  call void @mutex_unlock(%struct.mutex* noundef nonnull @pcpu_alloc_mutex) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_balance_free(i1 noundef %empty_only) unnamed_addr #0 {
entry:
  %to_free = alloca %struct.list_head, align 8
  %rs = alloca i32, align 4
  %re = alloca i32, align 4
  %0 = bitcast %struct.list_head* %to_free to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #29
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %to_free, i64 0, i32 0
  store %struct.list_head* %to_free, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %to_free, i64 0, i32 1
  store %struct.list_head* %to_free, %struct.list_head** %prev, align 8
  %1 = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  %2 = load i32, i32* @pcpu_free_slot, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr %struct.list_head, %struct.list_head* %1, i64 %idxprom
  %3 = bitcast %struct.list_head* %arrayidx to %struct.pcpu_chunk**
  %4 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %3, align 8
  %list13138 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %4, i64 0, i32 0
  %cmp.not139 = icmp eq %struct.list_head* %list13138, %arrayidx
  br i1 %cmp.not139, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %list13142 = phi %struct.list_head* [ %list13, %for.inc ], [ %list13138, %entry ]
  %chunk.0140 = phi %struct.pcpu_chunk* [ %next1.0141, %for.inc ], [ %4, %entry ]
  %next1.0141.in = bitcast %struct.pcpu_chunk* %chunk.0140 to %struct.pcpu_chunk**
  %next1.0141 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %next1.0141.in, align 8
  %immutable = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.0140, i64 0, i32 8
  %5 = load i8, i8* %immutable, align 8, !range !13
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 1999; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #29, !srcloc !56
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %3, align 8
  %cmp37 = icmp eq %struct.pcpu_chunk* %chunk.0140, %6
  br i1 %cmp37, label %for.inc, label %if.end40

if.end40:                                         ; preds = %if.end
  br i1 %empty_only, label %lor.lhs.false, label %if.then44

lor.lhs.false:                                    ; preds = %if.end40
  %nr_empty_pop_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.0140, i64 0, i32 14
  %7 = load i32, i32* %nr_empty_pop_pages, align 4
  %cmp42 = icmp eq i32 %7, 0
  br i1 %cmp42, label %if.then44, label %for.inc

if.then44:                                        ; preds = %lor.lhs.false, %if.end40
  call fastcc void @list_move(%struct.list_head* noundef %list13142, %struct.list_head* noundef nonnull %to_free) #26
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.then44, %if.end
  %list13 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %next1.0141, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list13, %arrayidx
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef nonnull %to_free) #26
  %tobool55.not = icmp eq i32 %call, 0
  br i1 %tobool55.not, label %if.end57, label %cleanup

if.end57:                                         ; preds = %for.end
  call fastcc void @__raw_spin_unlock_irq() #28
  %8 = bitcast %struct.list_head* %to_free to %struct.pcpu_chunk**
  %9 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %8, align 8
  %list74146 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %9, i64 0, i32 0
  %cmp75.not147 = icmp eq %struct.list_head* %list74146, %to_free
  br i1 %cmp75.not147, label %for.end100, label %for.body79.lr.ph

for.body79.lr.ph:                                 ; preds = %if.end57
  %10 = bitcast i32* %rs to i8*
  %11 = bitcast i32* %re to i8*
  br label %for.body79

for.body79:                                       ; preds = %for.body79.lr.ph, %for.end88
  %chunk.1148 = phi %struct.pcpu_chunk* [ %9, %for.body79.lr.ph ], [ %next1.1149, %for.end88 ]
  %next1.1149.in = bitcast %struct.pcpu_chunk* %chunk.1148 to %struct.pcpu_chunk**
  %next1.1149 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %next1.1149.in, align 8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #29
  store i32 0, i32* %re, align 4, !annotation !12
  store i32 0, i32* %rs, align 4
  %arraydecay = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.1148, i64 0, i32 15, i64 0
  %nr_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.1148, i64 0, i32 12
  %12 = load i32, i32* %nr_pages, align 4
  call fastcc void @bitmap_next_set_region(i64* noundef %arraydecay, i32* noundef nonnull %rs, i32* noundef nonnull %re, i32 noundef %12) #26
  %13 = load i32, i32* %rs, align 4
  %14 = load i32, i32* %re, align 4
  %cmp81143 = icmp ult i32 %13, %14
  br i1 %cmp81143, label %for.body83, label %for.end88

for.body83:                                       ; preds = %for.body79, %for.body83
  %15 = phi i32 [ %19, %for.body83 ], [ %14, %for.body79 ]
  %16 = phi i32 [ %18, %for.body83 ], [ %13, %for.body79 ]
  call fastcc void @pcpu_depopulate_chunk(%struct.pcpu_chunk* noundef %chunk.1148, i32 noundef %16, i32 noundef %15) #26
  call fastcc void @__raw_spin_lock_irq() #28
  call fastcc void @pcpu_chunk_depopulated(%struct.pcpu_chunk* noundef %chunk.1148, i32 noundef %16, i32 noundef %15) #26
  call fastcc void @__raw_spin_unlock_irq() #28
  %add = add i32 %15, 1
  store i32 %add, i32* %rs, align 4
  %17 = load i32, i32* %nr_pages, align 4
  call fastcc void @bitmap_next_set_region(i64* noundef %arraydecay, i32* noundef nonnull %rs, i32* noundef nonnull %re, i32 noundef %17) #26
  %18 = load i32, i32* %rs, align 4
  %19 = load i32, i32* %re, align 4
  %cmp81 = icmp ult i32 %18, %19
  br i1 %cmp81, label %for.body83, label %for.end88

for.end88:                                        ; preds = %for.body83, %for.body79
  call fastcc void @pcpu_destroy_chunk(%struct.pcpu_chunk* noundef %chunk.1148) #26
  call fastcc void @_cond_resched() #26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #29
  %list74 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %next1.1149, i64 0, i32 0
  %cmp75.not = icmp eq %struct.list_head* %list74, %to_free
  br i1 %cmp75.not, label %for.end100, label %for.body79

for.end100:                                       ; preds = %for.end88, %if.end57
  call fastcc void @__raw_spin_lock_irq() #28
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.end100
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #29
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_reclaim_populated() unnamed_addr #0 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  %1 = load i32, i32* @pcpu_to_depopulate_slot, align 4
  %idxprom152 = sext i32 %1 to i64
  %arrayidx153 = getelementptr %struct.list_head, %struct.list_head* %0, i64 %idxprom152
  %call154 = call fastcc i32 @list_empty(%struct.list_head* noundef %arrayidx153) #26
  %tobool.not155 = icmp eq i32 %call154, 0
  br i1 %tobool.not155, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %if.end84
  %2 = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  %3 = load i32, i32* @pcpu_to_depopulate_slot, align 4
  %idxprom1 = sext i32 %3 to i64
  %next = getelementptr %struct.list_head, %struct.list_head* %2, i64 %idxprom1, i32 0
  %4 = bitcast %struct.list_head** %next to %struct.pcpu_chunk**
  %5 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %4, align 8
  %immutable = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %5, i64 0, i32 8
  %6 = load i8, i8* %immutable, align 8, !range !13
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %while.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu.c\22; .popsection; .long 14472b - 14470b; .short 2154; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #29, !srcloc !57
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %nr_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %5, i64 0, i32 12
  %7 = load i32, i32* %nr_pages, align 4
  %nr_empty_pop_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %5, i64 0, i32 14
  %i.0137 = add i32 %7, -1
  %cmp138 = icmp sgt i32 %i.0137, -1
  br i1 %cmp138, label %for.body.lr.ph, label %end_chunk

for.body.lr.ph:                                   ; preds = %if.end
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %5, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0142 = phi i32 [ %i.0137, %for.body.lr.ph ], [ %i.0, %for.inc ]
  %freed_page_start.0141 = phi i32 [ %7, %for.body.lr.ph ], [ %freed_page_start.1, %for.inc ]
  %freed_page_end.0140 = phi i32 [ 0, %for.body.lr.ph ], [ %freed_page_end.1, %for.inc ]
  %end.0139 = phi i32 [ -1, %for.body.lr.ph ], [ %end.3, %for.inc ]
  %8 = load i32, i32* %nr_empty_pop_pages, align 4
  %cmp25 = icmp eq i32 %8, 0
  br i1 %cmp25, label %end_chunk, label %if.end28

if.end28:                                         ; preds = %for.body
  %9 = load i32, i32* @pcpu_nr_empty_pop_pages, align 4
  %cmp29 = icmp slt i32 %9, 4
  br i1 %cmp29, label %end_chunk, label %if.end32

if.end32:                                         ; preds = %if.end28
  %10 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %md_blocks, align 8
  %idx.ext135 = zext i32 %i.0142 to i64
  %contig_hint = getelementptr %struct.pcpu_block_md, %struct.pcpu_block_md* %10, i64 %idx.ext135, i32 2
  %11 = load i32, i32* %contig_hint, align 4
  %cmp35 = icmp eq i32 %11, 1024
  br i1 %cmp35, label %land.lhs.true, label %if.end48

land.lhs.true:                                    ; preds = %if.end32
  %div.i = lshr i32 %i.0142, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.pcpu_chunk, %struct.pcpu_chunk* %5, i64 0, i32 15, i64 %idxprom.i
  %12 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %i.0142, 63
  %sh_prom.i = zext i32 %and.i to i64
  %13 = shl nuw i64 1, %sh_prom.i
  %14 = and i64 %12, %13
  %tobool38.not = icmp eq i64 %14, 0
  br i1 %tobool38.not, label %if.end48, label %if.then39

if.then39:                                        ; preds = %land.lhs.true
  %cmp40 = icmp eq i32 %end.0139, -1
  %spec.select = select i1 %cmp40, i32 %i.0142, i32 %end.0139
  %cmp44.not = icmp eq i32 %i.0142, 0
  br i1 %cmp44.not, label %if.end52, label %for.inc

if.end48:                                         ; preds = %land.lhs.true, %if.end32
  %cmp49 = icmp eq i32 %end.0139, -1
  br i1 %cmp49, label %for.inc, label %if.end52

if.end52:                                         ; preds = %if.then39, %if.end48
  %i.1134 = phi i32 [ %i.0142, %if.end48 ], [ -1, %if.then39 ]
  %end.2133 = phi i32 [ %end.0139, %if.end48 ], [ %spec.select, %if.then39 ]
  call fastcc void @__raw_spin_unlock_irq() #28
  %add = add i32 %i.1134, 1
  %add53 = add nuw i32 %end.2133, 1
  call fastcc void @pcpu_depopulate_chunk(%struct.pcpu_chunk* noundef %5, i32 noundef %add, i32 noundef %add53) #26
  call fastcc void @_cond_resched() #26
  call fastcc void @__raw_spin_lock_irq() #28
  call fastcc void @pcpu_chunk_depopulated(%struct.pcpu_chunk* noundef %5, i32 noundef %add, i32 noundef %add53) #26
  %cmp60 = icmp slt i32 %freed_page_start.0141, %add
  %cond = select i1 %cmp60, i32 %freed_page_start.0141, i32 %add
  %cmp64 = icmp sgt i32 %freed_page_end.0140, %add53
  %cond69 = select i1 %cmp64, i32 %freed_page_end.0140, i32 %add53
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %if.then39, %if.end52
  %end.3 = phi i32 [ %spec.select, %if.then39 ], [ -1, %if.end48 ], [ -1, %if.end52 ]
  %i.2 = phi i32 [ %i.0142, %if.then39 ], [ %i.0142, %if.end48 ], [ %i.1134, %if.end52 ]
  %freed_page_end.1 = phi i32 [ %freed_page_end.0140, %if.then39 ], [ %freed_page_end.0140, %if.end48 ], [ %cond69, %if.end52 ]
  %freed_page_start.1 = phi i32 [ %freed_page_start.0141, %if.then39 ], [ %freed_page_start.0141, %if.end48 ], [ %cond, %if.end52 ]
  %i.0 = add i32 %i.2, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.body, label %end_chunk

end_chunk:                                        ; preds = %for.body, %for.inc, %if.end28, %if.end
  %freed_page_end.0.lcssa = phi i32 [ 0, %if.end ], [ %freed_page_end.0140, %if.end28 ], [ %freed_page_end.1, %for.inc ], [ %freed_page_end.0140, %for.body ]
  %freed_page_start.0.lcssa = phi i32 [ %7, %if.end ], [ %freed_page_start.0141, %if.end28 ], [ %freed_page_start.1, %for.inc ], [ %freed_page_start.0141, %for.body ]
  %reintegrate.0.off0 = phi i1 [ false, %if.end ], [ true, %if.end28 ], [ false, %for.inc ], [ false, %for.body ]
  %cmp71 = icmp slt i32 %freed_page_start.0.lcssa, %freed_page_end.0.lcssa
  br i1 %cmp71, label %if.then73, label %if.end76

if.then73:                                        ; preds = %end_chunk
  call fastcc void @__raw_spin_unlock_irq() #28
  call fastcc void @pcpu_post_unmap_tlb_flush(%struct.pcpu_chunk* noundef %5, i32 noundef %freed_page_start.0.lcssa, i32 noundef %freed_page_end.0.lcssa) #26
  call fastcc void @_cond_resched() #26
  call fastcc void @__raw_spin_lock_irq() #28
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %end_chunk
  br i1 %reintegrate.0.off0, label %if.then81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end76
  %free_bytes = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %5, i64 0, i32 1
  %15 = load i32, i32* %free_bytes, align 8
  %16 = load i32, i32* @pcpu_unit_size, align 4
  %cmp79 = icmp eq i32 %15, %16
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %lor.lhs.false, %if.end76
  call fastcc void @pcpu_reintegrate_chunk(%struct.pcpu_chunk* noundef %5) #26
  br label %if.end84

if.else:                                          ; preds = %lor.lhs.false
  %list = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %5, i64 0, i32 0
  %17 = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  %18 = load i32, i32* @pcpu_sidelined_slot, align 4
  %idxprom82 = sext i32 %18 to i64
  %arrayidx83 = getelementptr %struct.list_head, %struct.list_head* %17, i64 %idxprom82
  call fastcc void @list_move_tail(%struct.list_head* noundef %list, %struct.list_head* noundef %arrayidx83) #26
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then81
  %19 = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  %20 = load i32, i32* @pcpu_to_depopulate_slot, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr %struct.list_head, %struct.list_head* %19, i64 %idxprom
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %arrayidx) #26
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.end:                                        ; preds = %if.end84, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_balance_populated() unnamed_addr #0 {
entry:
  %rs = alloca i32, align 4
  %re = alloca i32, align 4
  %0 = bitcast i32* %rs to i8*
  %1 = bitcast i32* %re to i8*
  br label %retry_pop

retry_pop:                                        ; preds = %if.then77, %entry
  %.b124 = load i1, i1* @pcpu_atomic_alloc_failed, align 1
  br i1 %.b124, label %if.then, label %if.else

if.then:                                          ; preds = %retry_pop
  store i1 false, i1* @pcpu_atomic_alloc_failed, align 1
  br label %if.end

if.else:                                          ; preds = %retry_pop
  %2 = load i32, i32* @pcpu_nr_empty_pop_pages, align 4
  %sub = sub i32 4, %2
  %cmp = icmp sgt i32 %sub, 0
  %cond = select i1 %cmp, i32 %sub, i32 0
  %cmp2 = icmp ult i32 %cond, 4
  %cond6 = select i1 %cmp2, i32 %cond, i32 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nr_to_pop.0 = phi i32 [ 4, %if.then ], [ %cond6, %if.else ]
  %call = call fastcc i32 @pcpu_size_to_slot(i32 noundef 4096) #26
  %3 = load i32, i32* @pcpu_free_slot, align 4
  %cmp7.not148 = icmp sgt i32 %call, %3
  br i1 %cmp7.not148, label %for.end70, label %for.body

for.body:                                         ; preds = %if.end, %for.inc69
  %slot.0151 = phi i32 [ %inc, %for.inc69 ], [ %call, %if.end ]
  %nr_to_pop.1149 = phi i32 [ %nr_to_pop.5.ph, %for.inc69 ], [ %nr_to_pop.0, %if.end ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #29
  store i32 0, i32* %re, align 4, !annotation !12
  %tobool8.not = icmp eq i32 %nr_to_pop.1149, 0
  br i1 %tobool8.not, label %for.end70.thread, label %if.end10

if.end10:                                         ; preds = %for.body
  %4 = load %struct.list_head*, %struct.list_head** @pcpu_chunk_lists, align 8
  %idxprom = sext i32 %slot.0151 to i64
  %next = getelementptr %struct.list_head, %struct.list_head* %4, i64 %idxprom, i32 0
  %5 = bitcast %struct.list_head** %next to %struct.pcpu_chunk**
  %arrayidx17 = getelementptr %struct.list_head, %struct.list_head* %4, i64 %idxprom
  %chunk.0140 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %5, align 8
  %list141 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.0140, i64 0, i32 0
  %cmp18.not142 = icmp eq %struct.list_head* %list141, %arrayidx17
  br i1 %cmp18.not142, label %for.inc69, label %for.body19

for.body19:                                       ; preds = %if.end10, %for.inc
  %chunk.0143 = phi %struct.pcpu_chunk* [ %chunk.0, %for.inc ], [ %chunk.0140, %if.end10 ]
  %nr_pages = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.0143, i64 0, i32 12
  %6 = load i32, i32* %nr_pages, align 4
  %nr_populated = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.0143, i64 0, i32 13
  %7 = load i32, i32* %nr_populated, align 8
  %tobool21.not = icmp eq i32 %6, %7
  br i1 %tobool21.not, label %for.inc, label %if.end34

for.inc:                                          ; preds = %for.body19
  %8 = bitcast %struct.pcpu_chunk* %chunk.0143 to %struct.pcpu_chunk**
  %chunk.0 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %8, align 8
  %list = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.0, i64 0, i32 0
  %cmp18.not = icmp eq %struct.list_head* %list, %arrayidx17
  br i1 %cmp18.not, label %for.inc69, label %for.body19

if.end34:                                         ; preds = %for.body19
  %nr_pages.le = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.0143, i64 0, i32 12
  store i32 0, i32* %rs, align 4
  %arraydecay = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk.0143, i64 0, i32 15, i64 0
  call fastcc void @bitmap_next_clear_region(i64* noundef %arraydecay, i32* noundef nonnull %rs, i32* noundef nonnull %re, i32 noundef %6) #26
  %9 = load i32, i32* %rs, align 4
  %10 = load i32, i32* %re, align 4
  %cmp37144 = icmp ugt i32 %10, %9
  br i1 %cmp37144, label %for.body38, label %for.inc69

for.body38:                                       ; preds = %if.end34, %for.inc58
  %11 = phi i32 [ %15, %for.inc58 ], [ %10, %if.end34 ]
  %12 = phi i32 [ %14, %for.inc58 ], [ %9, %if.end34 ]
  %nr_to_pop.2145 = phi i32 [ %sub51, %for.inc58 ], [ %nr_to_pop.1149, %if.end34 ]
  %sub39 = sub i32 %11, %12
  %cmp41 = icmp slt i32 %sub39, %nr_to_pop.2145
  %cond45 = select i1 %cmp41, i32 %sub39, i32 %nr_to_pop.2145
  call fastcc void @__raw_spin_unlock_irq() #28
  %add = add i32 %cond45, %12
  %call46 = call fastcc i32 @pcpu_populate_chunk(%struct.pcpu_chunk* noundef %chunk.0143, i32 noundef %12, i32 noundef %add, i32 noundef 76992) #26
  call fastcc void @_cond_resched() #26
  call fastcc void @__raw_spin_lock_irq() #28
  %tobool49.not = icmp eq i32 %call46, 0
  br i1 %tobool49.not, label %if.end54, label %for.inc69

if.end54:                                         ; preds = %for.body38
  %sub51 = sub i32 %nr_to_pop.2145, %cond45
  call fastcc void @pcpu_chunk_populated(%struct.pcpu_chunk* noundef %chunk.0143, i32 noundef %12, i32 noundef %add) #26
  %tobool55.not = icmp eq i32 %sub51, 0
  br i1 %tobool55.not, label %for.inc69, label %for.inc58

for.inc58:                                        ; preds = %if.end54
  %add59 = add i32 %11, 1
  store i32 %add59, i32* %rs, align 4
  %13 = load i32, i32* %nr_pages.le, align 4
  call fastcc void @bitmap_next_clear_region(i64* noundef %arraydecay, i32* noundef nonnull %rs, i32* noundef nonnull %re, i32 noundef %13) #26
  %14 = load i32, i32* %rs, align 4
  %15 = load i32, i32* %re, align 4
  %cmp37 = icmp ugt i32 %15, %14
  br i1 %cmp37, label %for.body38, label %for.inc69

for.end70.thread:                                 ; preds = %for.body
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #29
  br label %if.end79

for.inc69:                                        ; preds = %for.inc, %for.inc58, %if.end54, %for.body38, %if.end10, %if.end34
  %nr_to_pop.5.ph = phi i32 [ %nr_to_pop.1149, %if.end34 ], [ %nr_to_pop.1149, %if.end10 ], [ %sub51, %for.inc58 ], [ 0, %if.end54 ], [ 0, %for.body38 ], [ %nr_to_pop.1149, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #29
  %inc = add i32 %slot.0151, 1
  %16 = load i32, i32* @pcpu_free_slot, align 4
  %cmp7.not = icmp sgt i32 %inc, %16
  br i1 %cmp7.not, label %for.end70, label %for.body

for.end70:                                        ; preds = %for.inc69, %if.end
  %nr_to_pop.1.lcssa = phi i32 [ %nr_to_pop.0, %if.end ], [ %nr_to_pop.5.ph, %for.inc69 ]
  %tobool71.not = icmp eq i32 %nr_to_pop.1.lcssa, 0
  br i1 %tobool71.not, label %if.end79, label %if.then72

if.then72:                                        ; preds = %for.end70
  call fastcc void @__raw_spin_unlock_irq() #28
  %call73 = call fastcc %struct.pcpu_chunk* @pcpu_create_chunk(i32 noundef 76992) #26
  call fastcc void @_cond_resched() #26
  call fastcc void @__raw_spin_lock_irq() #28
  %tobool76.not = icmp eq %struct.pcpu_chunk* %call73, null
  br i1 %tobool76.not, label %if.end79, label %if.then77

if.then77:                                        ; preds = %if.then72
  call fastcc void @pcpu_chunk_relocate(%struct.pcpu_chunk* noundef nonnull %call73, i32 noundef -1) #26
  br label %retry_pop

if.end79:                                         ; preds = %if.then72, %for.end70, %for.end70.thread
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #26
  call void asm sideeffect "", "~{memory}"() #29, !srcloc !58
  call fastcc void @do_raw_spin_lock() #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #28
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pcpu_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #28
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_next_set_region(i64* noundef %bitmap, i32* nocapture noundef %rs, i32* nocapture noundef writeonly %re, i32 noundef %end) unnamed_addr #0 {
entry:
  %conv = zext i32 %end to i64
  %0 = load i32, i32* %rs, align 4
  %conv1 = zext i32 %0 to i64
  %call = call fastcc i64 @find_next_bit(i64* noundef %bitmap, i64 noundef %conv, i64 noundef %conv1) #26
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, i32* %rs, align 4
  %add = add i64 %call, 1
  %conv4 = and i64 %add, 4294967295
  %call5 = call fastcc i64 @find_next_zero_bit(i64* noundef %bitmap, i64 noundef %conv, i64 noundef %conv4) #26
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %re, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_depopulate_chunk(%struct.pcpu_chunk* nocapture noundef readonly %chunk, i32 noundef %page_start, i32 noundef %page_end) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.page** @pcpu_get_pages() #26
  %tobool.not = icmp eq %struct.page** %call, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !8

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu-vm.c\22; .popsection; .long 14472b - 14470b; .short 323; .short 0; .popsection; 14471: brk 0x800", ""() #29, !srcloc !59
  unreachable

do.end9:                                          ; preds = %entry
  call fastcc void @pcpu_unmap_pages(%struct.pcpu_chunk* noundef %chunk, %struct.page** noundef nonnull %call, i32 noundef %page_start, i32 noundef %page_end) #26
  call fastcc void @pcpu_free_pages(%struct.page** noundef nonnull %call, i32 noundef %page_start, i32 noundef %page_end) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_chunk_depopulated(%struct.pcpu_chunk* noundef %chunk, i32 noundef %page_start, i32 noundef %page_end) unnamed_addr #0 {
entry:
  %sub = sub i32 %page_end, %page_start
  %arraydecay = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 15, i64 0
  call void @__bitmap_clear(i64* noundef %arraydecay, i32 noundef %page_start, i32 noundef %sub) #28
  %nr_populated = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 13
  %0 = load i32, i32* %nr_populated, align 8
  %sub1 = sub i32 %0, %sub
  store i32 %sub1, i32* %nr_populated, align 8
  %conv = sext i32 %sub to i64
  %1 = load i64, i64* @pcpu_nr_populated, align 8
  %sub2 = sub i64 %1, %conv
  store i64 %sub2, i64* @pcpu_nr_populated, align 8
  %sub3 = sub i32 0, %sub
  call fastcc void @pcpu_update_empty_pages(%struct.pcpu_chunk* noundef %chunk, i32 noundef %sub3) #26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_destroy_chunk(%struct.pcpu_chunk* noundef %chunk) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.pcpu_chunk* %chunk, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 7
  %0 = load i8*, i8** %data, align 8
  %tobool1.not = icmp eq i8* %0, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = bitcast i8* %0 to %struct.vm_struct**
  %2 = load i32, i32* @pcpu_nr_groups, align 4
  call void @pcpu_free_vm_areas(%struct.vm_struct** noundef nonnull %1, i32 noundef %2) #28
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  call fastcc void @pcpu_free_chunk(%struct.pcpu_chunk* noundef nonnull %chunk) #26
  br label %return

return:                                           ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pcpu_unmap_pages(%struct.pcpu_chunk* nocapture noundef readonly %chunk, %struct.page** nocapture noundef writeonly %pages, i32 noundef %page_start, i32 noundef %page_end) unnamed_addr #0 {
entry:
  %call42 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %cmp43 = icmp ult i32 %call42, %0
  br i1 %cmp43, label %for.cond1.preheader.lr.ph, label %for.end22

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp240 = icmp sgt i32 %page_end, %page_start
  %sub = sub i32 %page_end, %page_start
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.end
  %call44 = phi i32 [ %call42, %for.cond1.preheader.lr.ph ], [ %call, %for.end ]
  br i1 %cmp240, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1.preheader, %if.end
  %i.041 = phi i32 [ %inc, %if.end ], [ %page_start, %for.cond1.preheader ]
  %call4 = call fastcc %struct.page* @pcpu_chunk_page(%struct.pcpu_chunk* noundef %chunk, i32 noundef %call44, i32 noundef %i.041) #26
  %tobool.not = icmp eq %struct.page* %call4, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %for.body3
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu-vm.c\22; .popsection; .long 14472b - 14470b; .short 164; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #29, !srcloc !60
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %call20 = call fastcc i32 @pcpu_page_idx(i32 noundef %call44, i32 noundef %i.041) #26
  %idxprom = sext i32 %call20 to i64
  %arrayidx = getelementptr %struct.page*, %struct.page** %pages, i64 %idxprom
  store %struct.page* %call4, %struct.page** %arrayidx, align 8
  %inc = add i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, %page_end
  br i1 %exitcond.not, label %for.end, label %for.body3

for.end:                                          ; preds = %if.end, %for.cond1.preheader
  %call21 = call fastcc i64 @pcpu_chunk_addr(%struct.pcpu_chunk* noundef %chunk, i32 noundef %call44, i32 noundef %page_start) #26
  call fastcc void @__pcpu_unmap_pages(i64 noundef %call21, i32 noundef %sub) #26
  %call = call i32 @cpumask_next(i32 noundef %call44, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #30
  %1 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.cond1.preheader, label %for.end22

for.end22:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @pcpu_chunk_page(%struct.pcpu_chunk* nocapture noundef readonly %chunk, i32 noundef %cpu, i32 noundef %page_idx) unnamed_addr #0 {
entry:
  %immutable = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %chunk, i64 0, i32 8
  %0 = load i8, i8* %immutable, align 8, !range !13
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22mm/percpu-vm.c\22; .popsection; .long 14472b - 14470b; .short 17; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #29, !srcloc !61
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call fastcc i64 @pcpu_chunk_addr(%struct.pcpu_chunk* noundef %chunk, i32 noundef %cpu, i32 noundef %page_idx) #26
  %1 = inttoptr i64 %call to i8*
  %call15 = call %struct.page* @vmalloc_to_page(i8* noundef %1) #28
  ret %struct.page* %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcpu_free_vm_areas(%struct.vm_struct** noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #26
  call fastcc void @arch_local_irq_enable() #26
  call void asm sideeffect "", "~{memory}"() #29, !srcloc !62
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #29, !srcloc !63
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memblock_alloc_try_nid(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_free(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @cpumask_weight() unnamed_addr #0 {
entry:
  %call4.i = call i32 @__bitmap_weight(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 0), i32 noundef 256) #28
  ret i32 %call4.i
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__rounddown_pow_of_two(i64 noundef %n) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @fls_long(i64 noundef %n) #26
  %sub = add i32 %call, -1
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(i64* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #8 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #29, !range !37
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @cpumask_test_cpu(i32 noundef %cpu) unnamed_addr #11 {
entry:
  %div.i = lshr i32 %cpu, 6
  %idxprom.i = zext i32 %div.i to i64
  %arrayidx.i = getelementptr %struct.cpumask, %struct.cpumask* @__cpu_possible_mask, i64 0, i32 0, i64 %idxprom.i
  %0 = load volatile i64, i64* %arrayidx.i, align 8
  %and.i = and i32 %cpu, 63
  %sh_prom.i = zext i32 %and.i to i64
  %shr.i = lshr i64 %0, %sh_prom.i
  %1 = trunc i64 %shr.i to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i64 @lcm(i64 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_fill(i64* noundef %dst, i32 noundef %nbits) unnamed_addr #0 {
entry:
  %conv = zext i32 %nbits to i64
  %sub = add nuw nsw i64 %conv, 63
  %0 = lshr i64 %sub, 3
  %conv1 = and i64 %0, 1073741816
  %1 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 255, i64 noundef %conv1) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero() unnamed_addr #0 {
entry:
  %call = call i8* @memset(i8* noundef bitcast (%struct.cpumask* @pcpu_build_alloc_info.mask to i8*), i32 noundef 0, i64 noundef 32) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_copy() unnamed_addr #0 {
entry:
  %call = call i8* @memcpy(i8* noundef bitcast (%struct.cpumask* @pcpu_build_alloc_info.mask to i8*), i8* noundef bitcast (%struct.cpumask* @__cpu_possible_mask to i8*), i64 noundef 32) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @bitmap_empty() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @find_first_bit() #26
  %cmp5 = icmp eq i64 %call, 256
  ret i1 %cmp5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit() unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef getelementptr inbounds (%struct.cpumask, %struct.cpumask* @pcpu_build_alloc_info.mask, i64 0, i32 0, i64 0), i64 noundef 256) #28
  ret i64 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr %struct.cpumask, %struct.cpumask* @pcpu_build_alloc_info.mask, i64 0, i32 0, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #29, !srcloc !64
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @memblock_alloc_from(i64 noundef %size, i64 noundef %align, i64 noundef %min_addr) unnamed_addr #0 {
entry:
  %call = call i8* @memblock_alloc_try_nid(i64 noundef %size, i64 noundef %align, i64 noundef %min_addr, i64 noundef 0, i32 noundef -1) #28
  ret i8* %call
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #25

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #25

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #25

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { cold mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid optsize willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #21 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #22 = { nofree nounwind readonly }
attributes #23 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #24 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #25 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #26 = { nobuiltin "no-builtins" }
attributes #27 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #28 = { nobuiltin nounwind "no-builtins" }
attributes #29 = { nounwind }
attributes #30 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #31 = { cold nobuiltin nounwind "no-builtins" }
attributes #32 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #33 = { cold nobuiltin "no-builtins" }
attributes #34 = { alwaysinline nobuiltin nounwind "no-builtins" }
attributes #35 = { alwaysinline nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #36 = { nounwind readnone }
attributes #37 = { nounwind readonly }

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
!9 = !{!"branch_weights", i32 6003000, i32 -294967296}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2155306552}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
!14 = !{i64 2155317677}
!15 = !{i64 2149644409}
!16 = !{i64 2155401066}
!17 = !{i64 2155408037}
!18 = !{i64 2155411263}
!19 = !{i64 2155414137}
!20 = !{i64 2155417321}
!21 = !{i64 2155420279}
!22 = !{i64 2155423491}
!23 = !{i64 2155426918}
!24 = !{i64 2155433310}
!25 = !{i64 2155439498}
!26 = !{i64 2155453812}
!27 = !{i64 2155456734}
!28 = !{i64 2155459698}
!29 = !{i64 2155462955}
!30 = !{i64 2155396100}
!31 = !{i32 0, i32 33}
!32 = !{!"branch_weights", i32 2146410443, i32 1073205}
!33 = !{i64 2155478169}
!34 = !{i64 2155474317}
!35 = !{i64 2155476260}
!36 = !{i64 1560653}
!37 = !{i64 0, i64 65}
!38 = !{i64 2147876902, i64 2147877413, i64 2147877443, i64 2147877469, i64 2147877501, i64 2147877530}
!39 = !{i64 2155153013}
!40 = !{i64 2149320295, i64 2149320342, i64 2149320348, i64 2149320385, i64 2149320403, i64 2149321330, i64 2149321378, i64 2149321426, i64 2149321489, i64 2149321538, i64 2149320481, i64 2149320506, i64 2149320532, i64 2149320538, i64 2149320575, i64 2149320581, i64 2149320631, i64 2149320677, i64 2149320710}
!41 = !{i64 2151577162}
!42 = !{i64 2151577639, i64 2151577364, i64 2151578003, i64 2151578049, i64 2151578055, i64 2151579443, i64 2151578092, i64 2151578110, i64 2151579518, i64 2151579566, i64 2151579614, i64 2151579677, i64 2151579726, i64 2151578188, i64 2151578213, i64 2151578239, i64 2151578245, i64 2151579464, i64 2151578282, i64 2151578288, i64 2151578338, i64 2151578384, i64 2151578417}
!43 = !{i64 2151579790}
!44 = !{i64 2151579837}
!45 = !{i64 2151401912}
!46 = !{i64 2151402337, i64 2151402081, i64 2151402689, i64 2151402735, i64 2151402741, i64 2151404129, i64 2151402778, i64 2151402796, i64 2151404198, i64 2151404246, i64 2151404294, i64 2151404357, i64 2151404406, i64 2151402874, i64 2151402899, i64 2151402925, i64 2151402931, i64 2151404150, i64 2151402968, i64 2151402974, i64 2151403024, i64 2151403070, i64 2151403103}
!47 = !{i64 2151404470}
!48 = !{i64 2151404517}
!49 = !{i64 2149297976, i64 2149298023, i64 2149298029, i64 2149298066, i64 2149298084, i64 2149299395, i64 2149299443, i64 2149299491, i64 2149299554, i64 2149299603, i64 2149298162, i64 2149298187, i64 2149298213, i64 2149298219, i64 2149299061, i64 2149299101, i64 2149299119, i64 2149299151, i64 2149299179, i64 2149299233, i64 2149299253, i64 2149299350, i64 2149298242, i64 2149298256, i64 2149298262, i64 2149298312, i64 2149298358, i64 2149298391}
!50 = !{i64 2149300155, i64 2149300202, i64 2149300208, i64 2149300245, i64 2149300263, i64 2149301206, i64 2149301254, i64 2149301302, i64 2149301365, i64 2149301414, i64 2149300341, i64 2149300366, i64 2149300392, i64 2149300398, i64 2149300435, i64 2149300441, i64 2149300491, i64 2149300537, i64 2149300570}
!51 = !{i64 2149292273, i64 2149292320, i64 2149292326, i64 2149292363, i64 2149292381, i64 2149293722, i64 2149293770, i64 2149293818, i64 2149293881, i64 2149293930, i64 2149292459, i64 2149292484, i64 2149292510, i64 2149292516, i64 2149293388, i64 2149293428, i64 2149293446, i64 2149293478, i64 2149293506, i64 2149293560, i64 2149293580, i64 2149293677, i64 2149292539, i64 2149292553, i64 2149292559, i64 2149292609, i64 2149292655, i64 2149292688}
!52 = !{i64 2147903684, i64 2147903717, i64 2147903770, i64 2147903829, i64 2147903863, i64 2147903918, i64 2147903947, i64 2147903967}
!53 = !{i64 2149670252}
!54 = !{i64 2149458921}
!55 = !{i64 2149303989, i64 2149304036, i64 2149304042, i64 2149304079, i64 2149304097, i64 2149309469, i64 2149309517, i64 2149309565, i64 2149309628, i64 2149309677, i64 2149304175, i64 2149304200, i64 2149304226, i64 2149304232, i64 2149309135, i64 2149309175, i64 2149309193, i64 2149309225, i64 2149309253, i64 2149309307, i64 2149309327, i64 2149309424, i64 2149304255, i64 2149304269, i64 2149304275, i64 2149304325, i64 2149304371, i64 2149304404}
!56 = !{i64 2155329357}
!57 = !{i64 2155363671}
!58 = !{i64 2149648702}
!59 = !{i64 2155302047}
!60 = !{i64 2155299263}
!61 = !{i64 2155292166}
!62 = !{i64 2149673555}
!63 = !{i64 2149282817, i64 2149282864, i64 2149282870, i64 2149282907, i64 2149282925, i64 2149284265, i64 2149284313, i64 2149284361, i64 2149284424, i64 2149284473, i64 2149283003, i64 2149283028, i64 2149283054, i64 2149283060, i64 2149283931, i64 2149283971, i64 2149283989, i64 2149284021, i64 2149284049, i64 2149284103, i64 2149284123, i64 2149284220, i64 2149283083, i64 2149283097, i64 2149283103, i64 2149283153, i64 2149283199, i64 2149283232}
!64 = !{i64 2147887472, i64 2147887993, i64 2147888023, i64 2147888049, i64 2147888081, i64 2147888110}
