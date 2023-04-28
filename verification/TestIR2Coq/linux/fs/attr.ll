; ModuleID = 'fs/attr.c'
source_filename = "fs/attr.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

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
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.0, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.6, i8* }
%union.anon.6 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, {}*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.file = type { %union.anon.56, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.18 }
%union.anon.18 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.13, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.12, [0 x i64] }
%struct.anon.12 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.54, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.9 }
%union.anon.9 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.11, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.11 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
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
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.16, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.32 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.55, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.55 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.13 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.14, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.15, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.14 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.15 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.59 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.57, %struct.qspinlock }
%union.anon.57 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.59 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.38 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.fileattr = type opaque
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.62 = type { %struct.callback_head }
%union.anon.63 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type opaque
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.lockref = type { %union.anon.65 }
%union.anon.65 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.8, i32 }
%union.anon.8 = type { %struct.kuid_t }
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
%struct.block_device = type opaque
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
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @setattr_prepare(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* nocapture noundef %attr) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #6
  %ia_valid1 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 0
  %0 = load i32, i32* %ia_valid1, align 8
  %and = and i32 %0, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %ia_size = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 4
  %1 = load i64, i64* %ia_size, align 8
  %call2 = call i32 @inode_newsize_ok(%struct.inode* noundef %call, i64 noundef %1) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %cleanup64

if.end5:                                          ; preds = %if.then, %entry
  %and6 = and i32 %0, 512
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %kill_priv

if.end9:                                          ; preds = %if.end5
  %and10 = and i32 %0, 2
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %coerce.dive = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 2, i32 0
  %2 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %2 to i64
  %call12 = call fastcc i1 @chown_ok(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %call, i64 %coerce.val.ii) #6
  br i1 %call12, label %if.end14, label %cleanup64

if.end14:                                         ; preds = %land.lhs.true, %if.end9
  %and15 = and i32 %0, 4
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end22, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end14
  %coerce.dive18 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 3, i32 0
  %3 = load i32, i32* %coerce.dive18, align 4
  %coerce.val.ii19 = zext i32 %3 to i64
  %call20 = call fastcc i1 @chgrp_ok(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %call, i64 %coerce.val.ii19) #6
  br i1 %call20, label %if.end22, label %cleanup64

if.end22:                                         ; preds = %land.lhs.true17, %if.end14
  %and23 = and i32 %0, 1
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end44, label %if.then25

if.then25:                                        ; preds = %if.end22
  %call26 = call i1 @inode_owner_or_capable(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %call) #7
  br i1 %call26, label %if.end28, label %cleanup64

if.end28:                                         ; preds = %if.then25
  br i1 %tobool16.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end28
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 3, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end28
  %call32 = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef %call) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %agg.tmp.sroa.0.0 = phi i32 [ %agg.tmp.sroa.0.0.copyload, %cond.true ], [ %call32, %cond.false ]
  %coerce.val.ii35 = zext i32 %agg.tmp.sroa.0.0 to i64
  %call36 = call i32 @in_group_p(i64 %coerce.val.ii35) #7
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true38, label %if.end44

land.lhs.true38:                                  ; preds = %cond.end
  %call39 = call i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %call, i32 noundef 4) #7
  br i1 %call39, label %if.end44, label %if.then40

if.then40:                                        ; preds = %land.lhs.true38
  %ia_mode = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 1
  %4 = load i16, i16* %ia_mode, align 4
  %5 = and i16 %4, -1025
  store i16 %5, i16* %ia_mode, align 4
  br label %if.end44

if.end44:                                         ; preds = %cond.end, %land.lhs.true38, %if.then40, %if.end22
  %and45 = and i32 %0, 65920
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %kill_priv, label %if.then47

if.then47:                                        ; preds = %if.end44
  %call48 = call i1 @inode_owner_or_capable(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %call) #7
  br i1 %call48, label %kill_priv, label %cleanup64

kill_priv:                                        ; preds = %if.end44, %if.then47, %if.end5
  %and52 = and i32 %0, 16384
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end63, label %if.then54

if.then54:                                        ; preds = %kill_priv
  %call56 = call fastcc i32 @security_inode_killpriv(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry) #6
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end63, label %cleanup64

if.end63:                                         ; preds = %if.then54, %kill_priv
  br label %cleanup64

cleanup64:                                        ; preds = %if.then47, %if.then25, %land.lhs.true17, %land.lhs.true, %if.then, %if.then54, %if.end63
  %retval.3 = phi i32 [ 0, %if.end63 ], [ %call56, %if.then54 ], [ %call2, %if.then ], [ -1, %land.lhs.true ], [ -1, %land.lhs.true17 ], [ -1, %if.then25 ], [ -1, %if.then47 ]
  ret i32 %retval.3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @d_inode(%struct.dentry* nocapture noundef readonly %dentry) unnamed_addr #1 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @inode_newsize_ok(%struct.inode* nocapture noundef readonly %inode, i64 noundef %offset) local_unnamed_addr #0 {
entry:
  %i_size = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 11
  %0 = load i64, i64* %i_size, align 8
  %cmp = icmp slt i64 %0, %offset
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call fastcc i64 @rlimit() #6
  %cmp2 = icmp ult i64 %call, %offset
  br i1 %cmp2, label %out_sig, label %if.end

if.end:                                           ; preds = %if.then
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %1 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, %struct.super_block* %1, i64 0, i32 4
  %2 = load i64, i64* %s_maxbytes, align 32
  %cmp4 = icmp slt i64 %2, %offset
  br i1 %cmp4, label %return, label %if.end9

if.else:                                          ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 4
  %3 = load i32, i32* %i_flags, align 4
  %and = and i32 %3, 256
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %return

if.end9:                                          ; preds = %if.end, %if.else
  br label %return

out_sig:                                          ; preds = %if.then
  %4 = call i64 asm "mrs $0, sp_el0", "=r"() #8, !srcloc !7
  %5 = inttoptr i64 %4 to %struct.task_struct*
  %call11 = call i32 @send_sig(i32 noundef 25, %struct.task_struct* noundef %5, i32 noundef 0) #7
  br label %return

return:                                           ; preds = %if.end, %out_sig, %if.else, %if.end9
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -26, %if.else ], [ -27, %out_sig ], [ -27, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @chown_ok(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i64 %uid.coerce) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %inode) #6
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #8, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 7, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %coerce.val.ii4 = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %coerce.val.ii6 = zext i32 %call to i64
  %call7 = call fastcc i1 @uid_eq(i64 %coerce.val.ii4, i64 %coerce.val.ii6) #6
  br i1 %call7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %coerce.val.ii9 = and i64 %uid.coerce, 4294967295
  %call12 = call fastcc i1 @uid_eq(i64 %coerce.val.ii9, i64 %coerce.val.ii6) #6
  br i1 %call12, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call13 = call i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef 0) #7
  br i1 %call13, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.end
  %call20 = call fastcc i1 @uid_eq(i64 %coerce.val.ii6, i64 4294967295) #6
  br i1 %call20, label %land.lhs.true21, label %if.end24

land.lhs.true21:                                  ; preds = %if.end15
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 46
  %4 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %call22 = call i1 @ns_capable(%struct.user_namespace* noundef %4, i32 noundef 0) #7
  br i1 %call22, label %cleanup, label %if.end24

if.end24:                                         ; preds = %land.lhs.true21, %if.end15
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true21, %if.end, %land.lhs.true, %if.end24
  %retval.0 = phi i1 [ false, %if.end24 ], [ true, %land.lhs.true ], [ true, %if.end ], [ true, %land.lhs.true21 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @chgrp_ok(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i64 %gid.coerce) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef %inode) #6
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #8, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %agg.tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 7, i32 0
  %agg.tmp.sroa.0.0.copyload = load i32, i32* %agg.tmp.sroa.0.0..sroa_idx, align 4
  %call4 = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %inode) #6
  %coerce.val.ii7 = zext i32 %agg.tmp.sroa.0.0.copyload to i64
  %coerce.val.ii9 = zext i32 %call4 to i64
  %call10 = call fastcc i1 @uid_eq(i64 %coerce.val.ii7, i64 %coerce.val.ii9) #6
  br i1 %call10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %coerce.val.ii12 = and i64 %gid.coerce, 4294967295
  %call13 = call i32 @in_group_p(i64 %coerce.val.ii12) #7
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %coerce.val.ii17 = zext i32 %call to i64
  %call18 = call fastcc i1 @gid_eq(i64 %coerce.val.ii12, i64 %coerce.val.ii17) #6
  br i1 %call18, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry
  %call19 = call i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef 0) #7
  br i1 %call19, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end
  %coerce.val.ii23 = zext i32 %call to i64
  %call26 = call fastcc i1 @gid_eq(i64 %coerce.val.ii23, i64 4294967295) #6
  br i1 %call26, label %land.lhs.true27, label %if.end30

land.lhs.true27:                                  ; preds = %if.end21
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, %struct.super_block* %3, i64 0, i32 46
  %4 = load %struct.user_namespace*, %struct.user_namespace** %s_user_ns, align 8
  %call28 = call i1 @ns_capable(%struct.user_namespace* noundef %4, i32 noundef 0) #7
  br i1 %call28, label %cleanup, label %if.end30

if.end30:                                         ; preds = %land.lhs.true27, %if.end21
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true27, %if.end, %land.lhs.true, %lor.lhs.false, %if.end30
  %retval.0 = phi i1 [ false, %if.end30 ], [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ true, %if.end ], [ true, %land.lhs.true27 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @inode_owner_or_capable(%struct.user_namespace* noundef, %struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p(i64) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_gid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #1 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  %0 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kgid_into_mnt(i64 %coerce.val.ii) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_inode_killpriv(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %call = call i32 @cap_inode_killpriv(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rlimit() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #8, !srcloc !7
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #6
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @setattr_copy(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, %struct.iattr* nocapture noundef readonly %attr) local_unnamed_addr #0 {
entry:
  %ia_valid1 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 0
  %0 = load i32, i32* %ia_valid1, align 8
  %and = and i32 %0, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 2, i32 0
  %2 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  %3 = load i32, i32* %1, align 8
  store i32 %3, i32* %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %and2 = and i32 %0, 4
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %4 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 3, i32 0
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 3, i32 0
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %and6 = and i32 %0, 16
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 12
  %ia_atime = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 5
  %7 = bitcast %struct.timespec64* %i_atime to i8*
  %8 = bitcast %struct.timespec64* %ia_atime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %7, i8* noundef align 8 dereferenceable(16) %8, i64 16, i1 false)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  %and10 = and i32 %0, 32
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 13
  %ia_mtime = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 6
  %9 = bitcast %struct.timespec64* %i_mtime to i8*
  %10 = bitcast %struct.timespec64* %ia_mtime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %9, i8* noundef align 8 dereferenceable(16) %10, i64 16, i1 false)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9
  %and14 = and i32 %0, 64
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  %i_ctime = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 14
  %ia_ctime = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 7
  %11 = bitcast %struct.timespec64* %i_ctime to i8*
  %12 = bitcast %struct.timespec64* %ia_ctime to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %11, i8* noundef align 8 dereferenceable(16) %12, i64 16, i1 false)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  %and18 = and i32 %0, 1
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end29, label %if.then20

if.then20:                                        ; preds = %if.end17
  %ia_mode = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 1
  %13 = load i16, i16* %ia_mode, align 4
  %call = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef %inode) #6
  %coerce.val.ii = zext i32 %call to i64
  %call22 = call i32 @in_group_p(i64 %coerce.val.ii) #7
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.then20
  %call24 = call i1 @capable_wrt_inode_uidgid(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef 4) #7
  %14 = and i16 %13, -1025
  %spec.select = select i1 %call24, i16 %13, i16 %14
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true, %if.then20
  %mode.0 = phi i16 [ %13, %if.then20 ], [ %spec.select, %land.lhs.true ]
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 0
  store i16 %mode.0, i16* %i_mode, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @may_setattr(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef %ia_valid) local_unnamed_addr #0 {
entry:
  %and = and i32 %ia_valid, 65543
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 4
  %0 = load i32, i32* %i_flags, align 4
  %1 = and i32 %0, 12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.then, %entry
  %and8 = and i32 %ia_valid, 131072
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end22, label %if.then10

if.then10:                                        ; preds = %if.end7
  %i_flags11 = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 4
  %3 = load i32, i32* %i_flags11, align 4
  %and12 = and i32 %3, 8
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %if.then10
  %call = call i1 @inode_owner_or_capable(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode) #7
  br i1 %call, label %if.end22, label %if.then16

if.then16:                                        ; preds = %if.end15
  %call17 = call i32 @inode_permission(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %inode, i32 noundef 2) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end22, label %cleanup

if.end22:                                         ; preds = %if.end15, %if.then16, %if.end7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then10, %if.then, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -1, %if.then ], [ -1, %if.then10 ], [ %call17, %if.then16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(%struct.user_namespace* noundef, %struct.inode* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @notify_change(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %attr, %struct.inode** noundef %delegated_inode) local_unnamed_addr #0 {
entry:
  %d_inode = getelementptr inbounds %struct.dentry, %struct.dentry* %dentry, i64 0, i32 5
  %0 = load %struct.inode*, %struct.inode** %d_inode, align 8
  %i_mode = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 0
  %1 = load i16, i16* %i_mode, align 8
  %ia_valid1 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 0
  %2 = load i32, i32* %ia_valid1, align 8
  %call = call fastcc i32 @inode_is_locked(%struct.inode* noundef %0) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/attr.c\22; .popsection; .long 14472b - 14470b; .short 319; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #9, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call17 = call i32 @may_setattr(%struct.user_namespace* noundef %mnt_userns, %struct.inode* noundef %0, i32 noundef %2) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end
  %and = and i32 %2, 1
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end27, label %if.then22

if.then22:                                        ; preds = %if.end20
  %ia_mode = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 1
  %3 = load i16, i16* %ia_mode, align 4
  %call23 = call fastcc i1 @is_sxid(i16 noundef %3) #6
  br i1 %call23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.then22
  %i_flags = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 4
  %4 = load i32, i32* %i_flags, align 4
  %and25 = and i32 %4, -4097
  store i32 %and25, i32* %i_flags, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.then24, %if.end20
  %call29 = call [2 x i64] @current_time(%struct.inode* noundef %0) #7
  %call29.fca.0.extract = extractvalue [2 x i64] %call29, 0
  %call29.fca.1.extract = extractvalue [2 x i64] %call29, 1
  %now.sroa.0.0..sroa_idx = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 7, i32 0
  store i64 %call29.fca.0.extract, i64* %now.sroa.0.0..sroa_idx, align 8
  %now.sroa.7.0..sroa_idx208 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 7, i32 1
  store i64 %call29.fca.1.extract, i64* %now.sroa.7.0..sroa_idx208, align 8
  %and30 = and i32 %2, 128
  %tobool31.not = icmp eq i32 %and30, 0
  %now.sroa.0.0..sroa_idx203 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 5, i32 0
  br i1 %tobool31.not, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end27
  store i64 %call29.fca.0.extract, i64* %now.sroa.0.0..sroa_idx203, align 8
  %now.sroa.7.0..sroa_idx209 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 5, i32 1
  store i64 %call29.fca.1.extract, i64* %now.sroa.7.0..sroa_idx209, align 8
  br label %if.end37

if.else:                                          ; preds = %if.end27
  %.unpack282 = load i64, i64* %now.sroa.0.0..sroa_idx203, align 8
  %5 = insertvalue [2 x i64] undef, i64 %.unpack282, 0
  %6 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 5, i32 1
  %.unpack284 = load i64, i64* %6, align 8
  %7 = insertvalue [2 x i64] %5, i64 %.unpack284, 1
  %call36 = call [2 x i64] @timestamp_truncate([2 x i64] %7, %struct.inode* noundef %0) #7
  %call36.fca.0.extract = extractvalue [2 x i64] %call36, 0
  %call36.fca.1.extract = extractvalue [2 x i64] %call36, 1
  store i64 %call36.fca.0.extract, i64* %now.sroa.0.0..sroa_idx203, align 8
  store i64 %call36.fca.1.extract, i64* %6, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then32
  %and38 = and i32 %2, 256
  %tobool39.not = icmp eq i32 %and38, 0
  %now.sroa.0.0..sroa_idx205 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 6, i32 0
  br i1 %tobool39.not, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.end37
  store i64 %call29.fca.0.extract, i64* %now.sroa.0.0..sroa_idx205, align 8
  %now.sroa.7.0..sroa_idx211 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 6, i32 1
  store i64 %call29.fca.1.extract, i64* %now.sroa.7.0..sroa_idx211, align 8
  br label %if.end46

if.else41:                                        ; preds = %if.end37
  %.unpack = load i64, i64* %now.sroa.0.0..sroa_idx205, align 8
  %8 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %9 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 6, i32 1
  %.unpack280 = load i64, i64* %9, align 8
  %10 = insertvalue [2 x i64] %8, i64 %.unpack280, 1
  %call45 = call [2 x i64] @timestamp_truncate([2 x i64] %10, %struct.inode* noundef %0) #7
  %call45.fca.0.extract = extractvalue [2 x i64] %call45, 0
  %call45.fca.1.extract = extractvalue [2 x i64] %call45, 1
  store i64 %call45.fca.0.extract, i64* %now.sroa.0.0..sroa_idx205, align 8
  store i64 %call45.fca.1.extract, i64* %9, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else41, %if.then40
  %and47 = and i32 %2, 16384
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end60, label %if.then49

if.then49:                                        ; preds = %if.end46
  %call50 = call fastcc i32 @security_inode_need_killpriv(%struct.dentry* noundef %dentry) #6
  %cmp = icmp slt i32 %call50, 0
  br i1 %cmp, label %cleanup, label %if.end53

if.end53:                                         ; preds = %if.then49
  %cmp54 = icmp eq i32 %call50, 0
  br i1 %cmp54, label %if.then56, label %if.end60

if.then56:                                        ; preds = %if.end53
  %11 = load i32, i32* %ia_valid1, align 8
  %and58 = and i32 %11, -16385
  store i32 %and58, i32* %ia_valid1, align 8
  %.pre287 = and i32 %11, 1
  br label %if.end60

if.end60:                                         ; preds = %if.end53, %if.then56, %if.end46
  %and63.pre-phi = phi i32 [ %and, %if.end53 ], [ %.pre287, %if.then56 ], [ %and, %if.end46 ]
  %ia_valid.0 = phi i32 [ %2, %if.end53 ], [ %and58, %if.then56 ], [ %2, %if.end46 ]
  %and61 = and i32 %ia_valid.0, 6144
  %tobool62.not = icmp eq i32 %and61, 0
  %tobool64.not = icmp eq i32 %and63.pre-phi, 0
  %or.cond = or i1 %tobool62.not, %tobool64.not
  br i1 %or.cond, label %if.end69, label %do.body

do.body:                                          ; preds = %if.end60
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22fs/attr.c\22; .popsection; .long 14472b - 14470b; .short 361; .short 0; .popsection; 14471: brk 0x800", ""() #9, !srcloc !10
  unreachable

if.end69:                                         ; preds = %if.end60
  %and70 = and i32 %ia_valid.0, 2048
  %tobool71.not = icmp eq i32 %and70, 0
  %12 = and i16 %1, 2048
  %tobool75.not = icmp eq i16 %12, 0
  %or.cond285 = select i1 %tobool71.not, i1 true, i1 %tobool75.not
  br i1 %or.cond285, label %if.end84, label %if.then76

if.then76:                                        ; preds = %if.end69
  %13 = load i32, i32* %ia_valid1, align 8
  %or = or i32 %13, 1
  store i32 %or, i32* %ia_valid1, align 8
  %14 = load i16, i16* %i_mode, align 8
  %15 = and i16 %14, -2049
  %ia_mode82 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 1
  store i16 %15, i16* %ia_mode82, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then76, %if.end69
  %ia_valid.1 = phi i32 [ %or, %if.then76 ], [ %ia_valid.0, %if.end69 ]
  %and85 = and i32 %ia_valid.1, 4096
  %tobool86.not = icmp ne i32 %and85, 0
  %16 = and i16 %1, 1032
  %cmp90 = icmp eq i16 %16, 1032
  %or.cond286 = select i1 %tobool86.not, i1 %cmp90, i1 false
  br i1 %or.cond286, label %if.then92, label %if.end106

if.then92:                                        ; preds = %if.end84
  %and93 = and i32 %ia_valid.1, 1
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.then95, label %if.then92.if.end100_crit_edge

if.then92.if.end100_crit_edge:                    ; preds = %if.then92
  %ia_mode101.phi.trans.insert = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 1
  br label %if.end100

if.then95:                                        ; preds = %if.then92
  %17 = load i32, i32* %ia_valid1, align 8
  %or97 = or i32 %17, 1
  store i32 %or97, i32* %ia_valid1, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.then92.if.end100_crit_edge, %if.then95
  %.in = phi i16* [ %ia_mode101.phi.trans.insert, %if.then92.if.end100_crit_edge ], [ %i_mode, %if.then95 ]
  %ia_valid.2 = phi i32 [ %ia_valid.1, %if.then92.if.end100_crit_edge ], [ %or97, %if.then95 ]
  %18 = load i16, i16* %.in, align 4
  %ia_mode101 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 1
  %19 = and i16 %18, -1025
  store i16 %19, i16* %ia_mode101, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.end100, %if.end84
  %ia_valid.3 = phi i32 [ %ia_valid.2, %if.end100 ], [ %ia_valid.1, %if.end84 ]
  %20 = load i32, i32* %ia_valid1, align 8
  %and108 = and i32 %20, -6145
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %cleanup, label %if.end111

if.end111:                                        ; preds = %if.end106
  %and112 = and i32 %ia_valid.3, 2
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end117, label %land.lhs.true114

land.lhs.true114:                                 ; preds = %if.end111
  %coerce.dive = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 2, i32 0
  %21 = load i32, i32* %coerce.dive, align 8
  %coerce.val.ii = zext i32 %21 to i64
  %call115 = call fastcc i1 @kuid_has_mapping(i64 %coerce.val.ii) #6
  br i1 %call115, label %if.end117, label %cleanup

if.end117:                                        ; preds = %land.lhs.true114, %if.end111
  %and118 = and i32 %ia_valid.3, 4
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end127, label %land.lhs.true120

land.lhs.true120:                                 ; preds = %if.end117
  %coerce.dive123 = getelementptr inbounds %struct.iattr, %struct.iattr* %attr, i64 0, i32 3, i32 0
  %22 = load i32, i32* %coerce.dive123, align 4
  %coerce.val.ii124 = zext i32 %22 to i64
  %call125 = call fastcc i1 @kgid_has_mapping(i64 %coerce.val.ii124) #6
  br i1 %call125, label %if.end127, label %cleanup

if.end127:                                        ; preds = %land.lhs.true120, %if.end117
  br i1 %tobool113.not, label %land.lhs.true130, label %if.end137

land.lhs.true130:                                 ; preds = %if.end127
  %call131 = call fastcc i32 @i_uid_into_mnt(%struct.inode* noundef %0) #6
  %coerce.val.ii134 = zext i32 %call131 to i64
  %call135 = call fastcc i1 @uid_valid(i64 %coerce.val.ii134) #6
  br i1 %call135, label %if.end137, label %cleanup

if.end137:                                        ; preds = %land.lhs.true130, %if.end127
  br i1 %tobool119.not, label %land.lhs.true140, label %if.end148

land.lhs.true140:                                 ; preds = %if.end137
  %call142 = call fastcc i32 @i_gid_into_mnt(%struct.inode* noundef %0) #6
  %coerce.val.ii145 = zext i32 %call142 to i64
  %call146 = call fastcc i1 @gid_valid(i64 %coerce.val.ii145) #6
  br i1 %call146, label %if.end148, label %cleanup

if.end148:                                        ; preds = %land.lhs.true140, %if.end137
  %call153 = call fastcc i32 @try_break_deleg(%struct.inode* noundef %0, %struct.inode** noundef %delegated_inode) #6
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %cleanup

if.end156:                                        ; preds = %if.end148
  %i_op = getelementptr inbounds %struct.inode, %struct.inode* %0, i64 0, i32 5
  %23 = load %struct.inode_operations*, %struct.inode_operations** %i_op, align 8
  %setattr = getelementptr inbounds %struct.inode_operations, %struct.inode_operations* %23, i64 0, i32 13
  %setattr157 = bitcast {}** %setattr to i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)**
  %24 = load i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)** %setattr157, align 8
  %tobool158.not = icmp eq i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)* %24, null
  br i1 %tobool158.not, label %if.else164, label %if.then159

if.then159:                                       ; preds = %if.end156
  %call163 = call i32 %24(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %attr) #7
  br label %if.end166

if.else164:                                       ; preds = %if.end156
  %call165 = call i32 @simple_setattr(%struct.user_namespace* noundef %mnt_userns, %struct.dentry* noundef %dentry, %struct.iattr* noundef %attr) #7
  br label %if.end166

if.end166:                                        ; preds = %if.else164, %if.then159
  %error.0 = phi i32 [ %call163, %if.then159 ], [ %call165, %if.else164 ]
  %tobool167.not = icmp eq i32 %error.0, 0
  br i1 %tobool167.not, label %if.then168, label %cleanup

if.then168:                                       ; preds = %if.end166
  call fastcc void @fsnotify_change(%struct.dentry* noundef %dentry, i32 noundef %ia_valid.3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end166, %if.then168, %if.end148, %land.lhs.true140, %land.lhs.true130, %land.lhs.true120, %land.lhs.true114, %if.end106, %if.then49, %if.end
  %retval.0 = phi i32 [ %call17, %if.end ], [ %call50, %if.then49 ], [ 0, %if.end106 ], [ -75, %land.lhs.true114 ], [ -75, %land.lhs.true120 ], [ -75, %land.lhs.true130 ], [ -75, %land.lhs.true140 ], [ %call153, %if.end148 ], [ 0, %if.then168 ], [ %error.0, %if.end166 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @inode_is_locked(%struct.inode* noundef %inode) unnamed_addr #4 {
entry:
  %i_rwsem = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 21
  %call = call fastcc i32 @rwsem_is_locked(%struct.rw_semaphore* noundef %i_rwsem) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @is_sxid(i16 noundef %mode) unnamed_addr #5 {
entry:
  %conv = zext i16 %mode to i32
  %and = and i32 %conv, 2048
  %tobool.not = icmp ne i32 %and, 0
  %0 = and i32 %conv, 1032
  %1 = icmp eq i32 %0, 1032
  %2 = or i1 %tobool.not, %1
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @current_time(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @timestamp_truncate([2 x i64], %struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_inode_need_killpriv(%struct.dentry* noundef %dentry) unnamed_addr #0 {
entry:
  %call = call i32 @cap_inode_need_killpriv(%struct.dentry* noundef %dentry) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @kuid_has_mapping(i64 %uid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i1 @uid_valid(i64 %coerce.val.ii2) #6
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @kgid_has_mapping(i64 %gid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i1 @gid_valid(i64 %coerce.val.ii2) #6
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_valid(i64 %uid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #6
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @i_uid_into_mnt(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #1 {
entry:
  %coerce.dive = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 2, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @kuid_into_mnt(i64 %coerce.val.ii) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_valid(i64 %gid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %gid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #6
  %cmp = icmp ne i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @try_break_deleg(%struct.inode* noundef %inode, %struct.inode** noundef writeonly %delegated_inode) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @break_deleg(%struct.inode* noundef %inode) #6
  %cmp = icmp eq i32 %call, -11
  %tobool = icmp ne %struct.inode** %delegated_inode, null
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.inode* %inode, %struct.inode** %delegated_inode, align 8
  call void @ihold(%struct.inode* noundef %inode) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_setattr(%struct.user_namespace* noundef, %struct.dentry* noundef, %struct.iattr* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_change(%struct.dentry* noundef %dentry, i32 noundef %ia_valid) unnamed_addr #4 {
entry:
  %and = shl i32 %ia_valid, 1
  %0 = and i32 %and, 4
  %and1 = and i32 %ia_valid, 4
  %tobool2.not = icmp eq i32 %and1, 0
  %mask.1 = select i1 %tobool2.not, i32 %0, i32 4
  %or9 = or i32 %mask.1, 2
  %and6 = lshr i32 %ia_valid, 2
  %1 = and i32 %and6, 2
  %2 = or i32 %mask.1, %1
  %and11 = and i32 %ia_valid, 48
  %cmp = icmp eq i32 %and11, 48
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %entry
  %or13 = or i32 %1, 4
  br label %if.end25

if.else:                                          ; preds = %entry
  %and14 = and i32 %ia_valid, 16
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.else
  %or17 = or i32 %2, 1
  br label %if.end25

if.else18:                                        ; preds = %if.else
  %and19 = and i32 %ia_valid, 32
  %tobool20.not = icmp eq i32 %and19, 0
  %spec.select49 = select i1 %tobool20.not, i32 %2, i32 %or9
  br label %if.end25

if.end25:                                         ; preds = %if.else18, %if.then16, %if.then12
  %mask.3 = phi i32 [ %or13, %if.then12 ], [ %or17, %if.then16 ], [ %spec.select49, %if.else18 ]
  %and26 = shl i32 %ia_valid, 2
  %3 = and i32 %and26, 4
  %4 = or i32 %mask.3, %3
  %tobool31.not = icmp eq i32 %4, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end25
  call fastcc void @fsnotify_dentry(%struct.dentry* noundef %dentry, i32 noundef %4) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #6
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #6
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @gid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii4) #6
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kgid_val(i64 %coerce.val.ii6) #6
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kgid_val(i64 %gid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii = trunc i64 %gid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kgid_into_mnt(i64 %kgid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %kgid.coerce, 4294967295
  %call = call fastcc i32 @__kgid_val(i64 %coerce.val.ii2) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_killpriv(%struct.user_namespace* noundef, %struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #4 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 1, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @rwsem_is_locked(%struct.rw_semaphore* noundef %sem) unnamed_addr #4 {
entry:
  %counter.i.i = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %sem, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %cmp = icmp ne i64 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_need_killpriv(%struct.dentry* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @kuid_into_mnt(i64 %kuid.coerce) unnamed_addr #5 {
entry:
  %coerce.val.ii2 = and i64 %kuid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @break_deleg(%struct.inode* noundef %inode) unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %i_flctx = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 37
  %0 = load %struct.file_lock_context*, %struct.file_lock_context** %i_flctx, align 8
  %tobool.not = icmp eq %struct.file_lock_context* %0, null
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flc_lease = getelementptr inbounds %struct.file_lock_context, %struct.file_lock_context* %0, i64 0, i32 3
  %call = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %flc_lease) #6
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then, label %return

if.then:                                          ; preds = %land.lhs.true
  %call3 = call i32 @__break_lease(%struct.inode* noundef %inode, i32 noundef 2049, i32 noundef 4) #7
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(%struct.inode* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @list_empty_careful(%struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next1) #9, !srcloc !12
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
define internal fastcc void @fsnotify_dentry(%struct.dentry* noundef %dentry, i32 noundef %mask) unnamed_addr #4 {
entry:
  call fastcc void @fsnotify_parent(%struct.dentry* noundef %dentry, i32 noundef %mask) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @fsnotify_parent(%struct.dentry* noundef readonly %dentry, i32 noundef %mask) unnamed_addr #4 {
entry:
  %call = call fastcc %struct.inode* @d_inode(%struct.dentry* noundef %dentry) #6
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %0 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %counter.i.i = getelementptr inbounds %struct.super_block, %struct.super_block* %0, i64 0, i32 41, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 1415316}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153119895}
!10 = !{i64 2153121190}
!11 = !{i64 2152400860}
!12 = !{i64 2148731694}
