; ModuleID = 'block/blk-mq-tag.c'
source_filename = "block/blk-mq-tag.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kmem_cache = type opaque
%struct.blk_mq_hw_ctx = type { %struct.anon, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.workqueue_struct = type opaque
%struct.cpumask = type { [4 x i64] }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.68, %union.anon.69, %union.anon.70, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.73, void (%struct.request*, i8)*, i8* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.36, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.36 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.4, %union.anon.66, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.77, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.user_namespace = type opaque
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.21, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.56 }
%union.anon.56 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.57, %union.anon.58 }
%union.anon.57 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.58 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.52, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.27 }
%union.anon.27 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ucounts = type opaque
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
%struct.cgroup_namespace = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type {}
%struct.syscall_user_dispatch = type {}
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.37, %union.anon.38, i32 }
%union.anon.37 = type { %struct.list_head }
%union.anon.38 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.51, i32, [12 x i8] }
%union.anon.51 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.52 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.53, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.53 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.18 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.19, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.20, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.19 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.20 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.62 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.60, %struct.qspinlock }
%union.anon.60 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.62 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.26, i32 }
%union.anon.26 = type { %struct.kuid_t }
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
%struct.qstr = type { %union.anon.22, i8* }
%union.anon.22 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.75 = type { %struct.callback_head }
%union.anon.76 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.77 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.66 = type { %struct.atomic_t }
%union.anon.68 = type { %struct.hlist_node }
%union.anon.69 = type { %struct.rb_node }
%union.anon.70 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
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
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.73 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, {}*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, %struct.blk_rq_stat*, i32 (%struct.request*)*, i32, %struct.blk_rq_stat*, void (%struct.blk_stat_callback*)*, i8*, %struct.callback_head }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.54, %struct.list_head, %struct.list_head, %union.anon.55 }
%struct.lockref = type { %union.anon.24 }
%union.anon.24 = type { i64 }
%union.anon.54 = type { %struct.list_head }
%union.anon.55 = type { %struct.hlist_node }
%struct.blk_flush_queue = type { i8, i8, i64, [2 x %struct.list_head], %struct.list_head, %struct.request*, %struct.spinlock }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.blk_mq_ctx = type { %struct.anon.3, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon.3 = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
%struct.blk_mq_ctxs = type { %struct.kobject, %struct.blk_mq_ctx* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.67, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.67 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.sbq_wait = type { %struct.sbitmap_queue*, %struct.wait_queue_entry }
%struct.bt_iter_data = type { %struct.blk_mq_hw_ctx*, i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)*, i8*, i8 }
%struct.bt_tags_iter_data = type { %struct.blk_mq_tags*, i1 (%struct.request*, i8*, i1)*, i8*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"\013blk-mq: tag depth too large\0A\00", align 1
@cpu_number = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @__blk_mq_tag_busy(%struct.blk_mq_hw_ctx* noundef %hctx) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %conv = trunc i64 %0 to i32
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %conv) #10
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 47
  %2 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 11
  %3 = load volatile i64, i64* %queue_flags, align 8
  %4 = and i64 %3, 268435456
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.then
  %call3 = call fastcc i1 @test_and_set_bit(i64 noundef 28, i64* noundef %queue_flags) #10
  br i1 %call3, label %if.end12, label %if.then4

if.then4:                                         ; preds = %land.lhs.true
  %active_queues_shared_sbitmap = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %2, i64 0, i32 11
  br label %if.end12.sink.split

if.else:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 2
  %5 = load volatile i64, i64* %state, align 8
  %6 = and i64 %5, 2
  %tobool6.not = icmp eq i64 %6, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %if.end12

land.lhs.true7:                                   ; preds = %if.else
  %call9 = call fastcc i1 @test_and_set_bit(i64 noundef 1, i64* noundef %state) #10
  br i1 %call9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %land.lhs.true7
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %7 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %active_queues = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %7, i64 0, i32 2
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then10, %if.then4
  %active_queues_shared_sbitmap.sink = phi %struct.atomic_t* [ %active_queues_shared_sbitmap, %if.then4 ], [ %active_queues, %if.then10 ]
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %active_queues_shared_sbitmap.sink) #11
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.then, %land.lhs.true, %if.else, %land.lhs.true7
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %flags) unnamed_addr #1 {
entry:
  %and = and i32 %flags, 8
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #11
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_tag_wakeup_all(%struct.blk_mq_tags* nocapture noundef readonly %tags, i1 noundef %include_reserve) local_unnamed_addr #0 {
entry:
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 3
  %0 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %bitmap_tags, align 8
  call void @sbitmap_queue_wake_all(%struct.sbitmap_queue* noundef %0) #11
  br i1 %include_reserve, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 4
  %1 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %breserved_tags, align 8
  call void @sbitmap_queue_wake_all(%struct.sbitmap_queue* noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_wake_all(%struct.sbitmap_queue* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__blk_mq_tag_idle(%struct.blk_mq_hw_ctx* noundef %hctx) local_unnamed_addr #0 {
entry:
  %tags1 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %0 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags1, align 8
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 47
  %2 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %3 = load i64, i64* %flags, align 64
  %conv = trunc i64 %3 to i32
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %conv) #10
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 11
  %call2 = call fastcc i1 @test_and_clear_bit(i64 noundef 28, i64* noundef %queue_flags) #10
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %active_queues_shared_sbitmap = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %2, i64 0, i32 11
  br label %if.end7

if.else:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 2
  %call4 = call fastcc i1 @test_and_clear_bit(i64 noundef 1, i64* noundef %state) #10
  br i1 %call4, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.else
  %active_queues = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %0, i64 0, i32 2
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %active_queues.sink = phi %struct.atomic_t* [ %active_queues, %if.end6 ], [ %active_queues_shared_sbitmap, %if.end ]
  call fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %active_queues.sink) #11
  call void @blk_mq_tag_wakeup_all(%struct.blk_mq_tags* noundef %0, i1 noundef false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %if.end7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, %shl.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %1) #11
  %and1.i = and i64 %call.i.i.i, %shl.i
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %tobool2.i, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_get_tag(%struct.blk_mq_alloc_data* nocapture noundef %data) local_unnamed_addr #0 {
entry:
  %wait = alloca %struct.sbq_wait, align 8
  %call = call fastcc %struct.blk_mq_tags* @blk_mq_tags_from_data(%struct.blk_mq_alloc_data* noundef %data) #10
  %0 = bitcast %struct.sbq_wait* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #12
  %private = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %wait, i64 0, i32 1, i32 1
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #13, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %3 = bitcast i8** %private to %struct.task_struct**
  %4 = bitcast %struct.sbq_wait* %wait to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store %struct.task_struct* %2, %struct.task_struct** %3, align 8
  %func = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %wait, i64 0, i32 1, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  %entry3 = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %wait, i64 0, i32 1, i32 3
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry3, i64 0, i32 0
  store %struct.list_head* %entry3, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.sbq_wait, %struct.sbq_wait* %wait, i64 0, i32 1, i32 3, i32 1
  store %struct.list_head* %entry3, %struct.list_head** %prev, align 8
  %flags8 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 1
  %5 = load i32, i32* %flags8, align 8
  %and = and i32 %5, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %call, i64 0, i32 1
  %6 = load i32, i32* %nr_reserved_tags, align 4
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %if.then22, label %if.end30, !prof !9

if.then22:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq-tag.c\22; .popsection; .long 14472b - 14470b; .short 101; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !10
  br label %cleanup88

if.end30:                                         ; preds = %if.then
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %call, i64 0, i32 4
  br label %if.end32

if.else:                                          ; preds = %entry
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %call, i64 0, i32 3
  %nr_reserved_tags31 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %call, i64 0, i32 1
  %7 = load i32, i32* %nr_reserved_tags31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end30
  %bt.0.in = phi %struct.sbitmap_queue** [ %breserved_tags, %if.end30 ], [ %bitmap_tags, %if.else ]
  %tag_offset.0 = phi i32 [ 0, %if.end30 ], [ %7, %if.else ]
  %bt.0 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %bt.0.in, align 8
  %call33 = call fastcc i32 @__blk_mq_get_tag(%struct.blk_mq_alloc_data* noundef %data, %struct.sbitmap_queue* noundef %bt.0) #10
  %cmp.not = icmp eq i32 %call33, -1
  br i1 %cmp.not, label %if.end36, label %found_tag

if.end36:                                         ; preds = %if.end32
  %8 = load i32, i32* %flags8, align 8
  %and38 = and i32 %8, 1
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end41, label %cleanup88

if.end41:                                         ; preds = %if.end36
  %hctx = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 5
  %9 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx, align 8
  %call42 = call fastcc %struct.sbq_wait_state* @bt_wait_ptr(%struct.sbitmap_queue* noundef %bt.0, %struct.blk_mq_hw_ctx* noundef %9) #10
  %10 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx, align 8
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %10, i1 noundef false) #11
  %call44153 = call fastcc i32 @__blk_mq_get_tag(%struct.blk_mq_alloc_data* noundef %data, %struct.sbitmap_queue* noundef %bt.0) #10
  %cmp45.not154 = icmp eq i32 %call44153, -1
  br i1 %cmp45.not154, label %if.end48.lr.ph, label %do.end

if.end48.lr.ph:                                   ; preds = %if.end41
  %q = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 0
  %ctx = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 4
  %cmd_flags = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 3
  call void @sbitmap_prepare_to_wait(%struct.sbitmap_queue* noundef %bt.0, %struct.sbq_wait_state* noundef %call42, %struct.sbq_wait* noundef nonnull %wait, i32 noundef 2) #11
  %call49165 = call fastcc i32 @__blk_mq_get_tag(%struct.blk_mq_alloc_data* noundef %data, %struct.sbitmap_queue* noundef %bt.0) #10
  %cmp50.not166 = icmp eq i32 %call49165, -1
  br i1 %cmp50.not166, label %if.end53, label %do.end

if.end48:                                         ; preds = %cleanup
  call void @sbitmap_prepare_to_wait(%struct.sbitmap_queue* noundef %bt.2, %struct.sbq_wait_state* noundef %call73, %struct.sbq_wait* noundef nonnull %wait, i32 noundef 2) #11
  %call49 = call fastcc i32 @__blk_mq_get_tag(%struct.blk_mq_alloc_data* noundef %data, %struct.sbitmap_queue* noundef %bt.2) #10
  %cmp50.not = icmp eq i32 %call49, -1
  br i1 %cmp50.not, label %if.end53, label %do.end

if.end53:                                         ; preds = %if.end48.lr.ph, %if.end48
  %bt.1156168 = phi %struct.sbitmap_queue* [ %bt.2, %if.end48 ], [ %bt.0, %if.end48.lr.ph ]
  %ws.0157167 = phi %struct.sbq_wait_state* [ %call73, %if.end48 ], [ %call42, %if.end48.lr.ph ]
  call void @io_schedule() #11
  call void @sbitmap_finish_wait(%struct.sbitmap_queue* noundef %bt.1156168, %struct.sbq_wait_state* noundef %ws.0157167, %struct.sbq_wait* noundef nonnull %wait) #11
  %11 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %call54 = call fastcc %struct.blk_mq_ctx* @blk_mq_get_ctx(%struct.request_queue* noundef %11) #10
  store %struct.blk_mq_ctx* %call54, %struct.blk_mq_ctx** %ctx, align 8
  %12 = load i32, i32* %cmd_flags, align 8
  %call57 = call fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue(i32 noundef %12, %struct.blk_mq_ctx* noundef %call54) #10
  store %struct.blk_mq_hw_ctx* %call57, %struct.blk_mq_hw_ctx** %hctx, align 8
  %call59 = call fastcc %struct.blk_mq_tags* @blk_mq_tags_from_data(%struct.blk_mq_alloc_data* noundef %data) #10
  %13 = load i32, i32* %flags8, align 8
  %and61 = and i32 %13, 2
  %tobool62.not = icmp eq i32 %and61, 0
  %breserved_tags64 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %call59, i64 0, i32 4
  %bitmap_tags66 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %call59, i64 0, i32 3
  %bt.2.in = select i1 %tobool62.not, %struct.sbitmap_queue** %bitmap_tags66, %struct.sbitmap_queue** %breserved_tags64
  %bt.2 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %bt.2.in, align 8
  %cmp68.not = icmp eq %struct.sbitmap_queue* %bt.2, %bt.1156168
  br i1 %cmp68.not, label %cleanup, label %if.then70

if.then70:                                        ; preds = %if.end53
  call void @sbitmap_queue_wake_up(%struct.sbitmap_queue* noundef %bt.1156168) #11
  %.pre = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then70
  %14 = phi %struct.blk_mq_hw_ctx* [ %call57, %if.end53 ], [ %.pre, %if.then70 ]
  %call73 = call fastcc %struct.sbq_wait_state* @bt_wait_ptr(%struct.sbitmap_queue* noundef %bt.2, %struct.blk_mq_hw_ctx* noundef %14) #10
  %15 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx, align 8
  call void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef %15, i1 noundef false) #11
  %call44 = call fastcc i32 @__blk_mq_get_tag(%struct.blk_mq_alloc_data* noundef %data, %struct.sbitmap_queue* noundef %bt.2) #10
  %cmp45.not = icmp eq i32 %call44, -1
  br i1 %cmp45.not, label %if.end48, label %do.end

do.end:                                           ; preds = %cleanup, %if.end48, %if.end48.lr.ph, %if.end41
  %tags.0.lcssa = phi %struct.blk_mq_tags* [ %call, %if.end41 ], [ %call, %if.end48.lr.ph ], [ %call59, %if.end48 ], [ %call59, %cleanup ]
  %bt.1.lcssa = phi %struct.sbitmap_queue* [ %bt.0, %if.end41 ], [ %bt.0, %if.end48.lr.ph ], [ %bt.2, %if.end48 ], [ %bt.2, %cleanup ]
  %ws.0.lcssa = phi %struct.sbq_wait_state* [ %call42, %if.end41 ], [ %call42, %if.end48.lr.ph ], [ %call73, %if.end48 ], [ %call73, %cleanup ]
  %tag.0.ph = phi i32 [ %call44153, %if.end41 ], [ %call49165, %if.end48.lr.ph ], [ %call49, %if.end48 ], [ %call44, %cleanup ]
  call void @sbitmap_finish_wait(%struct.sbitmap_queue* noundef %bt.1.lcssa, %struct.sbq_wait_state* noundef %ws.0.lcssa, %struct.sbq_wait* noundef nonnull %wait) #11
  br label %found_tag

found_tag:                                        ; preds = %if.end32, %do.end
  %tags.2 = phi %struct.blk_mq_tags* [ %call, %if.end32 ], [ %tags.0.lcssa, %do.end ]
  %tag.1 = phi i32 [ %call33, %if.end32 ], [ %tag.0.ph, %do.end ]
  %hctx74 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 5
  %16 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx74, align 8
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %16, i64 0, i32 0, i32 2
  %17 = load volatile i64, i64* %state, align 8
  %18 = and i64 %17, 8
  %tobool76.not = icmp eq i64 %18, 0
  br i1 %tobool76.not, label %if.end86, label %if.then84, !prof !11

if.then84:                                        ; preds = %found_tag
  %ctx85 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 4
  %19 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %ctx85, align 8
  %add = add i32 %tag.1, %tag_offset.0
  call void @blk_mq_put_tag(%struct.blk_mq_tags* noundef %tags.2, %struct.blk_mq_ctx* noundef %19, i32 noundef %add) #10
  br label %cleanup88

if.end86:                                         ; preds = %found_tag
  %add87 = add i32 %tag.1, %tag_offset.0
  br label %cleanup88

cleanup88:                                        ; preds = %if.end36, %if.end86, %if.then84, %if.then22
  %retval.0 = phi i32 [ -1, %if.then22 ], [ -1, %if.then84 ], [ %add87, %if.end86 ], [ -1, %if.end36 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.blk_mq_tags* @blk_mq_tags_from_data(%struct.blk_mq_alloc_data* nocapture noundef readonly %data) unnamed_addr #4 {
entry:
  %q = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %1, null
  %hctx1 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 5
  %2 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx1, align 8
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %2, i64 0, i32 20
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %2, i64 0, i32 19
  %retval.0.in = select i1 %tobool.not, %struct.blk_mq_tags** %tags, %struct.blk_mq_tags** %sched_tags
  %retval.0 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %retval.0.in, align 8
  ret %struct.blk_mq_tags* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__blk_mq_get_tag(%struct.blk_mq_alloc_data* nocapture noundef readonly %data, %struct.sbitmap_queue* noundef %bt) unnamed_addr #0 {
entry:
  %q = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 0
  %0 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %elevator = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 1
  %1 = load %struct.elevator_queue*, %struct.elevator_queue** %elevator, align 8
  %tobool.not = icmp eq %struct.elevator_queue* %1, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 1
  %2 = load i32, i32* %flags, align 8
  %and = and i32 %2, 2
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %hctx = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 5
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx, align 8
  %call = call fastcc i1 @hctx_may_queue(%struct.blk_mq_hw_ctx* noundef %3, %struct.sbitmap_queue* noundef %bt) #10
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %shallow_depth = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %data, i64 0, i32 2
  %4 = load i32, i32* %shallow_depth, align 4
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %call6 = call i32 @__sbitmap_queue_get_shallow(%struct.sbitmap_queue* noundef %bt, i32 noundef %4) #11
  br label %return

if.else:                                          ; preds = %if.end
  %call7 = call i32 @__sbitmap_queue_get(%struct.sbitmap_queue* noundef %bt) #11
  br label %return

return:                                           ; preds = %land.lhs.true2, %if.else, %if.then4
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ %call7, %if.else ], [ -1, %land.lhs.true2 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sbq_wait_state* @bt_wait_ptr(%struct.sbitmap_queue* nocapture noundef readonly %bt, %struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.blk_mq_hw_ctx* %hctx, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ws = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %bt, i64 0, i32 3
  %0 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws, align 8
  br label %return

if.end:                                           ; preds = %entry
  %wait_index = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 18
  %call = call fastcc %struct.sbq_wait_state* @sbq_wait_ptr(%struct.sbitmap_queue* noundef %bt, %struct.atomic_t* noundef %wait_index) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.sbq_wait_state* [ %call, %if.end ], [ %0, %if.then ]
  ret %struct.sbq_wait_state* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queue(%struct.blk_mq_hw_ctx* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_prepare_to_wait(%struct.sbitmap_queue* noundef, %struct.sbq_wait_state* noundef, %struct.sbq_wait* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_finish_wait(%struct.sbitmap_queue* noundef, %struct.sbq_wait_state* noundef, %struct.sbq_wait* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.blk_mq_ctx* @blk_mq_get_ctx(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #6 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #10
  %add = add i64 %call, ptrtoint (i32* @cpu_number to i64)
  %0 = inttoptr i64 %add to i32*
  %1 = load i32, i32* %0, align 4
  %call2 = call fastcc %struct.blk_mq_ctx* @__blk_mq_get_ctx(%struct.request_queue* noundef %q, i32 noundef %1) #10
  ret %struct.blk_mq_ctx* %call2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.blk_mq_hw_ctx* @blk_mq_map_queue(i32 noundef %flags, %struct.blk_mq_ctx* nocapture noundef readonly %ctx) unnamed_addr #4 {
entry:
  %0 = and i32 %flags, 16777216
  %tobool.not = icmp eq i32 %0, 0
  %and1 = and i32 %flags, 255
  %cmp = icmp eq i32 %and1, 0
  %spec.select = zext i1 %cmp to i64
  %type.0 = select i1 %tobool.not, i64 %spec.select, i64 2
  %arrayidx = getelementptr %struct.blk_mq_ctx, %struct.blk_mq_ctx* %ctx, i64 0, i32 3, i64 %type.0
  %1 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  ret %struct.blk_mq_hw_ctx* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_wake_up(%struct.sbitmap_queue* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_put_tag(%struct.blk_mq_tags* nocapture noundef readonly %tags, %struct.blk_mq_ctx* nocapture noundef readonly %ctx, i32 noundef %tag) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @blk_mq_tag_is_reserved(%struct.blk_mq_tags* noundef %tags, i32 noundef %tag) #10
  %nr_reserved_tags10 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 1
  %0 = load i32, i32* %nr_reserved_tags10, align 4
  br i1 %call, label %do.body9, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub i32 %tag, %0
  %nr_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 0
  %1 = load i32, i32* %nr_tags, align 8
  %cmp.not = icmp ult i32 %sub, %1
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !11

do.body3:                                         ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq-tag.c\22; .popsection; .long 14472b - 14470b; .short 188; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !12
  unreachable

do.end8:                                          ; preds = %if.then
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 3
  br label %if.end31

do.body9:                                         ; preds = %entry
  %cmp11.not = icmp ugt i32 %0, %tag
  br i1 %cmp11.not, label %do.end29, label %do.body21, !prof !11

do.body21:                                        ; preds = %do.body9
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq-tag.c\22; .popsection; .long 14472b - 14470b; .short 191; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !13
  unreachable

do.end29:                                         ; preds = %do.body9
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 4
  br label %if.end31

if.end31:                                         ; preds = %do.end29, %do.end8
  %breserved_tags.sink = phi %struct.sbitmap_queue** [ %breserved_tags, %do.end29 ], [ %bitmap_tags, %do.end8 ]
  %tag.sink = phi i32 [ %tag, %do.end29 ], [ %sub, %do.end8 ]
  %2 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %breserved_tags.sink, align 8
  %cpu30 = getelementptr inbounds %struct.blk_mq_ctx, %struct.blk_mq_ctx* %ctx, i64 0, i32 1
  %3 = load i32, i32* %cpu30, align 64
  call void @sbitmap_queue_clear(%struct.sbitmap_queue* noundef %2, i32 noundef %tag.sink, i32 noundef %3) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_mq_tag_is_reserved(%struct.blk_mq_tags* nocapture noundef readonly %tags, i32 noundef %tag) unnamed_addr #4 {
entry:
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 1
  %0 = load i32, i32* %nr_reserved_tags, align 4
  %cmp = icmp ugt i32 %0, %tag
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear(%struct.sbitmap_queue* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_all_tag_iter(%struct.blk_mq_tags* noundef %tags, i1 (%struct.request*, i8*, i1)* noundef %fn, i8* noundef %priv) local_unnamed_addr #0 {
entry:
  call fastcc void @__blk_mq_all_tag_iter(%struct.blk_mq_tags* noundef %tags, i1 (%struct.request*, i8*, i1)* noundef %fn, i8* noundef %priv, i32 noundef 4) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__blk_mq_all_tag_iter(%struct.blk_mq_tags* noundef %tags, i1 (%struct.request*, i8*, i1)* noundef %fn, i8* noundef %priv, i32 noundef %flags) unnamed_addr #0 {
entry:
  %and = and i32 %flags, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-mq-tag.c\22; .popsection; .long 14472b - 14470b; .short 340; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 1
  %0 = load i32, i32* %nr_reserved_tags, align 4
  %tobool15.not = icmp eq i32 %0, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 4
  %1 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %breserved_tags, align 8
  %or = or i32 %flags, 1
  call fastcc void @bt_tags_for_each(%struct.blk_mq_tags* noundef %tags, %struct.sbitmap_queue* noundef %1, i1 (%struct.request*, i8*, i1)* noundef %fn, i8* noundef %priv, i32 noundef %or) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 3
  %2 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %bitmap_tags, align 8
  call fastcc void @bt_tags_for_each(%struct.blk_mq_tags* noundef %tags, %struct.sbitmap_queue* noundef %2, i1 (%struct.request*, i8*, i1)* noundef %fn, i8* noundef %priv, i32 noundef %flags) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_tagset_busy_iter(%struct.blk_mq_tag_set* nocapture noundef readonly %tagset, i1 (%struct.request*, i8*, i1)* noundef %fn, i8* noundef %priv) local_unnamed_addr #0 {
entry:
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %tagset, i64 0, i32 3
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp14.not = icmp eq i32 %0, 0
  br i1 %cmp14.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %tagset, i64 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %4, %for.inc ]
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %2 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags, align 8
  %tobool.not = icmp eq %struct.blk_mq_tags** %2, null
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %idxprom = sext i32 %i.015 to i64
  %arrayidx = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %2, i64 %idxprom
  %3 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %arrayidx, align 8
  %tobool2.not = icmp eq %struct.blk_mq_tags* %3, null
  br i1 %tobool2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @__blk_mq_all_tag_iter(%struct.blk_mq_tags* noundef nonnull %3, i1 (%struct.request*, i8*, i1)* noundef %fn, i8* noundef %priv, i32 noundef 2) #10
  %.pre = load i32, i32* %nr_hw_queues, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %4 = phi i32 [ %1, %for.body ], [ %1, %land.lhs.true ], [ %.pre, %if.then ]
  %inc = add nuw i32 %i.015, 1
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_tagset_wait_completed_request(%struct.blk_mq_tag_set* nocapture noundef readonly %tagset) local_unnamed_addr #0 {
entry:
  %count = alloca i32, align 4
  %0 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  store i32 0, i32* %count, align 4
  call void @blk_mq_tagset_busy_iter(%struct.blk_mq_tag_set* noundef %tagset, i1 (%struct.request*, i8*, i1)* noundef nonnull @blk_mq_tagset_count_completed_rqs, i8* noundef nonnull %0) #10
  %1 = load i32, i32* %count, align 4
  %tobool.not3 = icmp eq i32 %1, 0
  br i1 %tobool.not3, label %while.end, label %cleanup

cleanup:                                          ; preds = %entry, %cleanup
  call void @msleep(i32 noundef 5) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12
  store i32 0, i32* %count, align 4
  call void @blk_mq_tagset_busy_iter(%struct.blk_mq_tag_set* noundef %tagset, i1 (%struct.request*, i8*, i1)* noundef nonnull @blk_mq_tagset_count_completed_rqs, i8* noundef nonnull %0) #10
  %2 = load i32, i32* %count, align 4
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %while.end, label %cleanup

while.end:                                        ; preds = %cleanup, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal i1 @blk_mq_tagset_count_completed_rqs(%struct.request* noundef %rq, i8* nocapture noundef %data, i1 noundef %reserved) #7 {
entry:
  %0 = bitcast i8* %data to i32*
  %call = call fastcc i32 @blk_mq_request_completed(%struct.request* noundef %rq) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %0, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_queue_tag_busy_iter(%struct.request_queue* noundef %q, i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)* noundef %fn, i8* noundef %priv) local_unnamed_addr #0 {
entry:
  %q_usage_counter = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 2
  %call = call fastcc i1 @percpu_ref_tryget(%struct.percpu_ref* noundef %q_usage_counter) #10
  br i1 %call, label %for.cond.preheader, label %cleanup8

for.cond.preheader:                               ; preds = %entry
  %nr_hw_queues = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 9
  %0 = load i32, i32* %nr_hw_queues, align 8
  %cmp27.not = icmp eq i32 %0, 0
  br i1 %cmp27.not, label %for.end, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_hw_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %cleanup
  %1 = phi i32 [ %0, %land.rhs.lr.ph ], [ %8, %cleanup ]
  %i.028 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %cleanup ]
  %2 = load %struct.blk_mq_hw_ctx**, %struct.blk_mq_hw_ctx*** %queue_hw_ctx, align 8
  %idxprom = sext i32 %i.028 to i64
  %arrayidx = getelementptr %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, i64 %idxprom
  %3 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %arrayidx, align 8
  %tags1 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %3, i64 0, i32 19
  %4 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags1, align 8
  %call2 = call fastcc i1 @blk_mq_hw_queue_mapped(%struct.blk_mq_hw_ctx* noundef %3) #10
  br i1 %call2, label %if.end4, label %cleanup

if.end4:                                          ; preds = %land.rhs
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %4, i64 0, i32 1
  %5 = load i32, i32* %nr_reserved_tags, align 4
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %4, i64 0, i32 4
  %6 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %breserved_tags, align 8
  call fastcc void @bt_for_each(%struct.blk_mq_hw_ctx* noundef %3, %struct.sbitmap_queue* noundef %6, i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)* noundef %fn, i8* noundef %priv, i1 noundef true) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %4, i64 0, i32 3
  %7 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %bitmap_tags, align 8
  call fastcc void @bt_for_each(%struct.blk_mq_hw_ctx* noundef %3, %struct.sbitmap_queue* noundef %7, i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)* noundef %fn, i8* noundef %priv, i1 noundef false) #10
  %.pre = load i32, i32* %nr_hw_queues, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.end7
  %8 = phi i32 [ %1, %land.rhs ], [ %.pre, %if.end7 ]
  %inc = add nuw i32 %i.028, 1
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %land.rhs, label %for.end

for.end:                                          ; preds = %cleanup, %for.cond.preheader
  call void @blk_queue_exit(%struct.request_queue* noundef %q) #11
  br label %cleanup8

cleanup8:                                         ; preds = %entry, %for.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @percpu_ref_tryget(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @percpu_ref_tryget_many(%struct.percpu_ref* noundef %ref) #10
  ret i1 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @blk_mq_hw_queue_mapped(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx) unnamed_addr #4 {
entry:
  %nr_ctx = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 14
  %0 = load i16, i16* %nr_ctx, align 2
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %1 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %tobool1 = icmp ne %struct.blk_mq_tags* %1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bt_for_each(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.sbitmap_queue* noundef %bt, i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)* noundef %fn, i8* noundef %data, i1 noundef %reserved) unnamed_addr #0 {
entry:
  %iter_data = alloca %struct.bt_iter_data, align 8
  %frombool = zext i1 %reserved to i8
  %0 = bitcast %struct.bt_iter_data* %iter_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #12
  %1 = getelementptr inbounds %struct.bt_iter_data, %struct.bt_iter_data* %iter_data, i64 0, i32 3
  %2 = bitcast i8* %1 to i64*, !annotation !15
  store i64 0, i64* %2, align 8, !annotation !15
  %hctx1 = getelementptr inbounds %struct.bt_iter_data, %struct.bt_iter_data* %iter_data, i64 0, i32 0
  store %struct.blk_mq_hw_ctx* %hctx, %struct.blk_mq_hw_ctx** %hctx1, align 8
  %fn2 = getelementptr inbounds %struct.bt_iter_data, %struct.bt_iter_data* %iter_data, i64 0, i32 1
  store i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)* %fn, i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)** %fn2, align 8
  %data3 = getelementptr inbounds %struct.bt_iter_data, %struct.bt_iter_data* %iter_data, i64 0, i32 2
  store i8* %data, i8** %data3, align 8
  %reserved4 = getelementptr inbounds %struct.bt_iter_data, %struct.bt_iter_data* %iter_data, i64 0, i32 3
  store i8 %frombool, i8* %reserved4, align 8
  %sb = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %bt, i64 0, i32 0
  call fastcc void @sbitmap_for_each_set(%struct.sbitmap* noundef %sb, i1 (%struct.sbitmap*, i32, i8*)* noundef nonnull @bt_iter, i8* noundef nonnull %0) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_exit(%struct.request_queue* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_init_bitmaps(%struct.sbitmap_queue* noundef %bitmap_tags, %struct.sbitmap_queue* noundef %breserved_tags, i32 noundef %queue_depth, i32 noundef %reserved, i32 noundef %node, i32 noundef %alloc_policy) local_unnamed_addr #0 {
entry:
  %sub = sub i32 %queue_depth, %reserved
  %cmp = icmp eq i32 %alloc_policy, 1
  %call = call fastcc i32 @bt_alloc(%struct.sbitmap_queue* noundef %bitmap_tags, i32 noundef %sub, i1 noundef %cmp, i32 noundef %node) #10
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @bt_alloc(%struct.sbitmap_queue* noundef %breserved_tags, i32 noundef %reserved, i1 noundef %cmp, i32 noundef %node) #10
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %free_bitmap_tags

free_bitmap_tags:                                 ; preds = %if.end
  call fastcc void @sbitmap_queue_free(%struct.sbitmap_queue* noundef %bitmap_tags) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %free_bitmap_tags
  %retval.0 = phi i32 [ -12, %free_bitmap_tags ], [ -12, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @bt_alloc(%struct.sbitmap_queue* noundef %bt, i32 noundef %depth, i1 noundef %round_robin, i32 noundef %node) unnamed_addr #0 {
entry:
  %call = call i32 @sbitmap_queue_init_node(%struct.sbitmap_queue* noundef %bt, i32 noundef %depth, i32 noundef -1, i1 noundef %round_robin, i32 noundef 3264, i32 noundef %node) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_queue_free(%struct.sbitmap_queue* nocapture noundef %sbq) unnamed_addr #0 {
entry:
  %ws = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 3
  %0 = bitcast %struct.sbq_wait_state** %ws to i8**
  %1 = load i8*, i8** %0, align 8
  call void @kfree(i8* noundef %1) #11
  %sb = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 0
  call fastcc void @sbitmap_free(%struct.sbitmap* noundef %sb) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_init_shared_sbitmap(%struct.blk_mq_tag_set* noundef %set) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 9
  %0 = load i32, i32* %flags, align 8
  %shr = lshr i32 %0, 8
  %and = and i32 %shr, 1
  %__bitmap_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 12
  %__breserved_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 13
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 4
  %1 = load i32, i32* %queue_depth, align 4
  %reserved_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 5
  %2 = load i32, i32* %reserved_tags, align 8
  %numa_node = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 7
  %3 = load i32, i32* %numa_node, align 8
  %call = call i32 @blk_mq_init_bitmaps(%struct.sbitmap_queue* noundef %__bitmap_tags, %struct.sbitmap_queue* noundef %__breserved_tags, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %and) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 3
  %4 = load i32, i32* %nr_hw_queues, align 8
  %cmp23.not = icmp eq i32 %4, 0
  br i1 %cmp23.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tags1 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %5 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %tags1, align 8
  %idxprom = sext i32 %i.024 to i64
  %arrayidx = getelementptr %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, i64 %idxprom
  %6 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %arrayidx, align 8
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %6, i64 0, i32 3
  store %struct.sbitmap_queue* %__bitmap_tags, %struct.sbitmap_queue** %bitmap_tags, align 8
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %6, i64 0, i32 4
  store %struct.sbitmap_queue* %__breserved_tags, %struct.sbitmap_queue** %breserved_tags, align 8
  %inc = add nuw i32 %i.024, 1
  %7 = load i32, i32* %nr_hw_queues, align 8
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %for.cond.preheader ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_exit_shared_sbitmap(%struct.blk_mq_tag_set* nocapture noundef %set) local_unnamed_addr #0 {
entry:
  %__bitmap_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 12
  call fastcc void @sbitmap_queue_free(%struct.sbitmap_queue* noundef %__bitmap_tags) #10
  %__breserved_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 13
  call fastcc void @sbitmap_queue_free(%struct.sbitmap_queue* noundef %__breserved_tags) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.blk_mq_tags* @blk_mq_init_tags(i32 noundef %total_tags, i32 noundef %reserved_tags, i32 noundef %node, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %shr = lshr i32 %flags, 8
  %and = and i32 %shr, 1
  %cmp = icmp eq i32 %total_tags, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0)) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @kzalloc_node() #10
  %0 = bitcast i8* %call1 to %struct.blk_mq_tags*
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %nr_tags = bitcast i8* %call1 to i32*
  store i32 %total_tags, i32* %nr_tags, align 8
  %nr_reserved_tags = getelementptr inbounds i8, i8* %call1, i64 4
  %1 = bitcast i8* %nr_reserved_tags to i32*
  store i32 %reserved_tags, i32* %1, align 4
  %lock = getelementptr inbounds i8, i8* %call1, i64 176
  %2 = bitcast i8* %lock to i32*
  store i32 0, i32* %2, align 8
  %call9 = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %flags) #10
  br i1 %call9, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end3
  %call12 = call fastcc i32 @blk_mq_init_bitmap_tags(%struct.blk_mq_tags* noundef nonnull %0, i32 noundef %node, i32 noundef %and) #10
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @kfree(i8* noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end3, %if.end, %if.then14, %do.end
  %retval.0 = phi %struct.blk_mq_tags* [ null, %do.end ], [ null, %if.then14 ], [ null, %if.end ], [ %0, %if.end3 ], [ %0, %if.end11 ]
  ret %struct.blk_mq_tags* %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc_node() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 8), align 8
  %call.i.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #11
  ret i8* %call.i.i.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @blk_mq_init_bitmap_tags(%struct.blk_mq_tags* noundef %tags, i32 noundef %node, i32 noundef %alloc_policy) unnamed_addr #0 {
entry:
  %__bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 5
  %__breserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 6
  %nr_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 0
  %0 = load i32, i32* %nr_tags, align 8
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 1
  %1 = load i32, i32* %nr_reserved_tags, align 4
  %call = call i32 @blk_mq_init_bitmaps(%struct.sbitmap_queue* noundef %__bitmap_tags, %struct.sbitmap_queue* noundef %__breserved_tags, i32 noundef %0, i32 noundef %1, i32 noundef %node, i32 noundef %alloc_policy) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 3
  store %struct.sbitmap_queue* %__bitmap_tags, %struct.sbitmap_queue** %bitmap_tags, align 8
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 4
  store %struct.sbitmap_queue* %__breserved_tags, %struct.sbitmap_queue** %breserved_tags, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_free_tags(%struct.blk_mq_tags* noundef %tags, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %flags) #10
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 3
  %0 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %bitmap_tags, align 8
  call fastcc void @sbitmap_queue_free(%struct.sbitmap_queue* noundef %0) #10
  %breserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 4
  %1 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %breserved_tags, align 8
  call fastcc void @sbitmap_queue_free(%struct.sbitmap_queue* noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = bitcast %struct.blk_mq_tags* %tags to i8*
  call void @kfree(i8* noundef %2) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blk_mq_tag_update_depth(%struct.blk_mq_hw_ctx* nocapture noundef readonly %hctx, %struct.blk_mq_tags** nocapture noundef %tagsptr, i32 noundef %tdepth, i1 noundef %can_grow) local_unnamed_addr #0 {
entry:
  %0 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tagsptr, align 8
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %0, i64 0, i32 1
  %1 = load i32, i32* %nr_reserved_tags, align 4
  %cmp.not = icmp ult i32 %1, %tdepth
  br i1 %cmp.not, label %if.end, label %cleanup26

if.end:                                           ; preds = %entry
  %nr_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %0, i64 0, i32 0
  %2 = load i32, i32* %nr_tags, align 8
  %cmp1 = icmp ult i32 %2, %tdepth
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %3 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %3, i64 0, i32 47
  %4 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %cmp5 = icmp ult i32 %tdepth, 2049
  %5 = and i1 %cmp5, %can_grow
  br i1 %5, label %if.end7, label %cleanup26

if.end7:                                          ; preds = %if.then2
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 25
  %6 = load i32, i32* %queue_num, align 4
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %4, i64 0, i32 9
  %7 = load i32, i32* %flags, align 8
  %call = call %struct.blk_mq_tags* @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set* noundef %4, i32 noundef %6, i32 noundef %tdepth, i32 noundef %1, i32 noundef %7) #11
  %tobool9.not = icmp eq %struct.blk_mq_tags* %call, null
  br i1 %tobool9.not, label %cleanup26, label %if.end11

if.end11:                                         ; preds = %if.end7
  %8 = load i32, i32* %queue_num, align 4
  %call13 = call i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set* noundef %4, %struct.blk_mq_tags* noundef nonnull %call, i32 noundef %8, i32 noundef %tdepth) #11
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %if.end11
  %9 = load i32, i32* %flags, align 8
  call void @blk_mq_free_rq_map(%struct.blk_mq_tags* noundef nonnull %call, i32 noundef %9) #11
  br label %cleanup26

cleanup:                                          ; preds = %if.end11
  %10 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tagsptr, align 8
  %11 = load i32, i32* %queue_num, align 4
  call void @blk_mq_free_rqs(%struct.blk_mq_tag_set* noundef %4, %struct.blk_mq_tags* noundef %10, i32 noundef %11) #11
  %12 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tagsptr, align 8
  %13 = load i32, i32* %flags, align 8
  call void @blk_mq_free_rq_map(%struct.blk_mq_tags* noundef %12, i32 noundef %13) #11
  store %struct.blk_mq_tags* %call, %struct.blk_mq_tags** %tagsptr, align 8
  br label %cleanup26

if.else:                                          ; preds = %if.end
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %0, i64 0, i32 3
  %14 = load %struct.sbitmap_queue*, %struct.sbitmap_queue** %bitmap_tags, align 8
  %sub = sub i32 %tdepth, %1
  call void @sbitmap_queue_resize(%struct.sbitmap_queue* noundef %14, i32 noundef %sub) #11
  br label %cleanup26

cleanup26:                                        ; preds = %if.end7, %if.then2, %if.then17, %if.else, %cleanup, %entry
  %retval.1 = phi i32 [ -22, %entry ], [ 0, %cleanup ], [ 0, %if.else ], [ -12, %if.end7 ], [ -22, %if.then2 ], [ -12, %if.then17 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.blk_mq_tags* @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set* noundef, %struct.blk_mq_tags* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_rq_map(%struct.blk_mq_tags* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_rqs(%struct.blk_mq_tag_set* noundef, %struct.blk_mq_tags* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_resize(%struct.sbitmap_queue* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_mq_tag_resize_shared_sbitmap(%struct.blk_mq_tag_set* noundef %set, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %__bitmap_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 12
  %reserved_tags = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %set, i64 0, i32 5
  %0 = load i32, i32* %reserved_tags, align 8
  %sub = sub i32 %size, %0
  call void @sbitmap_queue_resize(%struct.sbitmap_queue* noundef %__bitmap_tags, i32 noundef %sub) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @blk_mq_unique_tag(%struct.request* nocapture noundef readonly %rq) local_unnamed_addr #4 {
entry:
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 2
  %0 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %queue_num = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %0, i64 0, i32 25
  %1 = load i32, i32* %queue_num, align 4
  %shl = shl i32 %1, 16
  %tag = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 5
  %2 = load i32, i32* %tag, align 8
  %and = and i32 %2, 65535
  %or = or i32 %and, %shl
  ret i32 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #12, !srcloc !16
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #12, !srcloc !18
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @hctx_may_queue(%struct.blk_mq_hw_ctx* noundef %hctx, %struct.sbitmap_queue* nocapture noundef readonly %bt) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct.blk_mq_hw_ctx* %hctx, null
  br i1 %tobool.not, label %cleanup29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %and = and i64 %0, 2
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %cleanup29, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %depth2 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %bt, i64 0, i32 0, i32 0
  %1 = load i32, i32* %depth2, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %cleanup29, label %if.end4

if.end4:                                          ; preds = %if.end
  %conv = trunc i64 %0 to i32
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %conv) #10
  br i1 %call, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %2 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %tag_set = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 47
  %3 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %tag_set, align 8
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %2, i64 0, i32 11
  %4 = load volatile i64, i64* %queue_flags, align 8
  %5 = and i64 %4, 268435456
  %tobool8.not = icmp eq i64 %5, 0
  br i1 %tobool8.not, label %cleanup29, label %cleanup

cleanup:                                          ; preds = %if.then6
  %counter.i = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %3, i64 0, i32 11, i32 0
  br label %if.end18

if.else:                                          ; preds = %if.end4
  %state = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 0, i32 2
  %6 = load volatile i64, i64* %state, align 8
  %7 = and i64 %6, 2
  %tobool14.not = icmp eq i64 %7, 0
  br i1 %tobool14.not, label %cleanup29, label %if.end16

if.end16:                                         ; preds = %if.else
  %tags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 19
  %8 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags, align 8
  %counter.i52 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %8, i64 0, i32 2, i32 0
  br label %if.end18

if.end18:                                         ; preds = %cleanup, %if.end16
  %users.1.in = phi i32* [ %counter.i, %cleanup ], [ %counter.i52, %if.end16 ]
  %users.1 = load volatile i32, i32* %users.1.in, align 4
  %tobool19.not = icmp eq i32 %users.1, 0
  br i1 %tobool19.not, label %cleanup29, label %if.end21

if.end21:                                         ; preds = %if.end18
  %add = add i32 %1, -1
  %sub = add i32 %add, %users.1
  %div = udiv i32 %sub, %users.1
  %cmp24 = icmp ugt i32 %div, 4
  %cond = select i1 %cmp24, i32 %div, i32 4
  %call26 = call fastcc i32 @__blk_mq_active_requests(%struct.blk_mq_hw_ctx* noundef nonnull %hctx) #10
  %cmp27 = icmp ult i32 %call26, %cond
  br label %cleanup29

cleanup29:                                        ; preds = %if.then6, %if.end18, %if.else, %if.end, %entry, %lor.lhs.false, %if.end21
  %retval.1 = phi i1 [ %cmp27, %if.end21 ], [ true, %lor.lhs.false ], [ true, %entry ], [ true, %if.end ], [ true, %if.else ], [ true, %if.end18 ], [ true, %if.then6 ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get_shallow(%struct.sbitmap_queue* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(%struct.sbitmap_queue* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @__blk_mq_active_requests(%struct.blk_mq_hw_ctx* noundef %hctx) unnamed_addr #7 {
entry:
  %flags = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 5
  %0 = load i64, i64* %flags, align 64
  %conv = trunc i64 %0 to i32
  %call = call fastcc i1 @blk_mq_is_sbitmap_shared(i32 noundef %conv) #10
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 7
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %counter.i = getelementptr inbounds %struct.request_queue, %struct.request_queue* %1, i64 0, i32 27, i32 0
  br label %return

if.end:                                           ; preds = %entry
  %counter.i5 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %hctx, i64 0, i32 26, i32 0
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0.in = phi i32* [ %counter.i, %if.then ], [ %counter.i5, %if.end ]
  %retval.0 = load volatile i32, i32* %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.sbq_wait_state* @sbq_wait_ptr(%struct.sbitmap_queue* nocapture noundef readonly %sbq, %struct.atomic_t* noundef %wait_index) unnamed_addr #0 {
entry:
  %ws1 = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %sbq, i64 0, i32 3
  %0 = load %struct.sbq_wait_state*, %struct.sbq_wait_state** %ws1, align 8
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %wait_index, i64 0, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr %struct.sbq_wait_state, %struct.sbq_wait_state* %0, i64 %idxprom
  call fastcc void @sbq_index_atomic_inc(%struct.atomic_t* noundef %wait_index) #10
  ret %struct.sbq_wait_state* %arrayidx
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbq_index_atomic_inc(%struct.atomic_t* noundef %index) unnamed_addr #0 {
entry:
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %index, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %call1 = call fastcc i32 @sbq_index_inc(i32 noundef %0) #10, !range !20
  %1 = bitcast %struct.atomic_t* %index to i8*
  %call11.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %0, i32 noundef %call1) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @sbq_index_inc(i32 noundef %index) unnamed_addr #1 {
entry:
  %add = add i32 %index, 1
  %and = and i32 %add, 7
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #12, !srcloc !21
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #12, !srcloc !22
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.blk_mq_ctx* @__blk_mq_get_ctx(%struct.request_queue* nocapture noundef readonly %q, i32 noundef %cpu) unnamed_addr #4 {
entry:
  %queue_ctx = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 6
  %0 = load %struct.blk_mq_ctx*, %struct.blk_mq_ctx** %queue_ctx, align 8
  %1 = ptrtoint %struct.blk_mq_ctx* %0 to i64
  %idxprom = zext i32 %cpu to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  %add = add i64 %2, %1
  %3 = inttoptr i64 %add to %struct.blk_mq_ctx*
  ret %struct.blk_mq_ctx* %3
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #6 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #15, !srcloc !23
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bt_tags_for_each(%struct.blk_mq_tags* noundef %tags, %struct.sbitmap_queue* noundef %bt, i1 (%struct.request*, i8*, i1)* noundef %fn, i8* noundef %data, i32 noundef %flags) unnamed_addr #0 {
entry:
  %iter_data = alloca %struct.bt_tags_iter_data, align 8
  %0 = bitcast %struct.bt_tags_iter_data* %iter_data to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #12
  %1 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %iter_data, i64 0, i32 3
  %2 = bitcast i32* %1 to i64*, !annotation !15
  store i64 0, i64* %2, align 8, !annotation !15
  %tags1 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %iter_data, i64 0, i32 0
  store %struct.blk_mq_tags* %tags, %struct.blk_mq_tags** %tags1, align 8
  %fn2 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %iter_data, i64 0, i32 1
  store i1 (%struct.request*, i8*, i1)* %fn, i1 (%struct.request*, i8*, i1)** %fn2, align 8
  %data3 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %iter_data, i64 0, i32 2
  store i8* %data, i8** %data3, align 8
  %flags4 = getelementptr inbounds %struct.bt_tags_iter_data, %struct.bt_tags_iter_data* %iter_data, i64 0, i32 3
  store i32 %flags, i32* %flags4, align 8
  %rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 7
  %3 = load %struct.request**, %struct.request*** %rqs, align 8
  %tobool.not = icmp eq %struct.request** %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sb = getelementptr inbounds %struct.sbitmap_queue, %struct.sbitmap_queue* %bt, i64 0, i32 0
  call fastcc void @sbitmap_for_each_set(%struct.sbitmap* noundef %sb, i1 (%struct.sbitmap*, i32, i8*)* noundef nonnull @bt_tags_iter, i8* noundef nonnull %0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_for_each_set(%struct.sbitmap* noundef %sb, i1 (%struct.sbitmap*, i32, i8*)* nocapture noundef readonly %fn, i8* noundef %data) unnamed_addr #0 {
entry:
  call fastcc void @__sbitmap_for_each_set(%struct.sbitmap* noundef %sb, i1 (%struct.sbitmap*, i32, i8*)* noundef %fn, i8* noundef %data) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @bt_tags_iter(%struct.sbitmap* nocapture noundef readnone %bitmap, i32 noundef %bitnr, i8* nocapture noundef readonly %data) #0 {
entry:
  %tags1 = bitcast i8* %data to %struct.blk_mq_tags**
  %0 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags1, align 8
  %flags = getelementptr inbounds i8, i8* %data, i64 24
  %1 = bitcast i8* %flags to i32*
  %2 = load i32, i32* %1, align 8
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  %and3 = and i32 %2, 4
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %0, i64 0, i32 1
  %3 = load i32, i32* %nr_reserved_tags, align 4
  %add = add i32 %3, %bitnr
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bitnr.addr.0 = phi i32 [ %bitnr, %entry ], [ %add, %if.then ]
  br i1 %tobool4.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %static_rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %0, i64 0, i32 8
  %4 = load %struct.request**, %struct.request*** %static_rqs, align 8
  %idxprom = zext i32 %bitnr.addr.0 to i64
  %arrayidx = getelementptr %struct.request*, %struct.request** %4, i64 %idxprom
  %5 = load %struct.request*, %struct.request** %arrayidx, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call = call fastcc %struct.request* @blk_mq_find_and_get_req(%struct.blk_mq_tags* noundef %0, i32 noundef %bitnr.addr.0) #10
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %rq.0 = phi %struct.request* [ %5, %if.then9 ], [ %call, %if.else ]
  %tobool11.not = icmp eq %struct.request* %rq.0, null
  br i1 %tobool11.not, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.end10
  %6 = load i32, i32* %1, align 8
  %and15 = and i32 %6, 2
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %call17 = call fastcc i32 @blk_mq_request_started(%struct.request* noundef nonnull %rq.0) #10
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end24, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false, %if.end13
  %fn = getelementptr inbounds i8, i8* %data, i64 8
  %7 = bitcast i8* %fn to i1 (%struct.request*, i8*, i1)**
  %8 = load i1 (%struct.request*, i8*, i1)*, i1 (%struct.request*, i8*, i1)** %7, align 8
  %data20 = getelementptr inbounds i8, i8* %data, i64 16
  %9 = bitcast i8* %data20 to i8**
  %10 = load i8*, i8** %9, align 8
  %call22 = call i1 %8(%struct.request* noundef nonnull %rq.0, i8* noundef %10, i1 noundef %tobool) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %lor.lhs.false
  %ret.0.off0 = phi i1 [ %call22, %if.then19 ], [ true, %lor.lhs.false ]
  br i1 %tobool4.not, label %if.then26, label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @blk_mq_put_rq_ref(%struct.request* noundef nonnull %rq.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then26, %if.end10
  %retval.0 = phi i1 [ true, %if.end10 ], [ %ret.0.off0, %if.then26 ], [ %ret.0.off0, %if.end24 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__sbitmap_for_each_set(%struct.sbitmap* noundef %sb, i1 (%struct.sbitmap*, i32, i8*)* nocapture noundef readonly %fn, i8* noundef %data) unnamed_addr #0 {
entry:
  %word = alloca i64, align 8
  %depth = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 0
  %shift = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 1
  %0 = load i32, i32* %depth, align 8
  %cmp39.not14 = icmp eq i32 %0, 0
  br i1 %cmp39.not14, label %cleanup45, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %1 = bitcast i64* %word to i8*
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %map_nr = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %2 = phi i32 [ %0, %while.body.lr.ph ], [ %10, %cleanup ]
  %index.011 = phi i32 [ 0, %while.body.lr.ph ], [ %spec.store.select51, %cleanup ]
  %scanned.010 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12
  store i64 0, i64* %word, align 8, !annotation !15
  %3 = load %struct.sbitmap_word*, %struct.sbitmap_word** %map, align 8
  %idxprom = zext i32 %index.011 to i64
  %depth5 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %3, i64 %idxprom, i32 0
  %4 = load i64, i64* %depth5, align 64
  %5 = trunc i64 %4 to i32
  %sub9 = sub i32 %2, %scanned.010
  %cmp10 = icmp ugt i32 %sub9, %5
  %cond = select i1 %cmp10, i32 %5, i32 %sub9
  %add = add i32 %cond, %scanned.010
  %word15 = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %3, i64 %idxprom, i32 2
  %6 = load i64, i64* %word15, align 64
  %cleared = getelementptr %struct.sbitmap_word, %struct.sbitmap_word* %3, i64 %idxprom, i32 4
  %7 = load i64, i64* %cleared, align 64
  %neg = xor i64 %7, -1
  %and19 = and i64 %6, %neg
  store i64 %and19, i64* %word, align 8
  %tobool.not = icmp eq i64 %and19, 0
  br i1 %tobool.not, label %cleanup, label %while.cond23.preheader

while.cond23.preheader:                           ; preds = %while.body
  %conv25 = zext i32 %cond to i64
  %call4 = call fastcc i64 @find_next_bit(i64* noundef nonnull %word, i64 noundef %conv25, i64 noundef 0) #10
  %conv275 = trunc i64 %call4 to i32
  %cmp28.not6 = icmp ugt i32 %cond, %conv275
  br i1 %cmp28.not6, label %if.end31, label %cleanup

while.cond23:                                     ; preds = %if.end31
  %inc = add i64 %call7, 1
  %conv26 = and i64 %inc, 4294967295
  %call = call fastcc i64 @find_next_bit(i64* noundef nonnull %word, i64 noundef %conv25, i64 noundef %conv26) #10
  %conv27 = trunc i64 %call to i32
  %cmp28.not = icmp ugt i32 %cond, %conv27
  br i1 %cmp28.not, label %if.end31, label %cleanup

if.end31:                                         ; preds = %while.cond23.preheader, %while.cond23
  %conv278 = phi i32 [ %conv27, %while.cond23 ], [ %conv275, %while.cond23.preheader ]
  %call7 = phi i64 [ %call, %while.cond23 ], [ %call4, %while.cond23.preheader ]
  %8 = load i32, i32* %shift, align 4
  %shl33 = shl i32 %index.011, %8
  %add34 = add i32 %shl33, %conv278
  %call35 = call i1 %fn(%struct.sbitmap* noundef %sb, i32 noundef %add34, i8* noundef %data) #11, !callees !24
  br i1 %call35, label %while.cond23, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end31
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  br label %cleanup45

cleanup:                                          ; preds = %while.cond23, %while.cond23.preheader, %while.body
  %inc38 = add i32 %index.011, 1
  %9 = load i32, i32* %map_nr, align 8
  %cmp39.not = icmp ult i32 %inc38, %9
  %spec.store.select51 = select i1 %cmp39.not, i32 %inc38, i32 0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12
  %10 = load i32, i32* %depth, align 8
  %cmp3 = icmp ugt i32 %10, %add
  br i1 %cmp3, label %while.body, label %cleanup45

cleanup45:                                        ; preds = %cleanup, %entry, %cleanup.thread
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #11
  ret i64 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.request* @blk_mq_find_and_get_req(%struct.blk_mq_tags* noundef %tags, i32 noundef %bitnr) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 10, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #10
  %rqs = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %tags, i64 0, i32 7
  %0 = load %struct.request**, %struct.request*** %rqs, align 8
  %idxprom = zext i32 %bitnr to i64
  %arrayidx = getelementptr %struct.request*, %struct.request** %0, i64 %idxprom
  %1 = load %struct.request*, %struct.request** %arrayidx, align 8
  %tobool.not = icmp eq %struct.request* %1, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tag = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 5
  %2 = load i32, i32* %tag, align 8
  %cmp5.not = icmp eq i32 %2, %bitnr
  br i1 %cmp5.not, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %ref = getelementptr inbounds %struct.request, %struct.request* %1, i64 0, i32 24
  %call8 = call fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %ref) #10
  br i1 %call8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false7
  %rq.0 = phi %struct.request* [ null, %if.then ], [ %1, %lor.lhs.false7 ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #11
  ret %struct.request* %rq.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @blk_mq_request_started(%struct.request* noundef %rq) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @blk_mq_rq_state(%struct.request* noundef %rq) #10
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_put_rq_ref(%struct.request* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #10
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) #10
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #10
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !11

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #12, !srcloc !26
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #12, !srcloc !27
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #10
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #12, !srcloc !28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #7 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #12, !srcloc !29
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) #10
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) #10
  %tobool.old.not = icmp eq i32 %call, 0
  br i1 %tobool.old.not, label %if.end4, label %do.cond.preheader

do.cond.preheader:                                ; preds = %entry
  %0 = bitcast %struct.refcount_struct* %r to i8*
  br label %do.cond

do.cond:                                          ; preds = %do.cond.preheader, %atomic_try_cmpxchg_relaxed.exit
  %old.0 = phi i32 [ %call11.i.i.i, %atomic_try_cmpxchg_relaxed.exit ], [ %call, %do.cond.preheader ]
  %add = add i32 %old.0, 1
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_32(i8* noundef %0, i32 noundef %old.0, i32 noundef %add) #11
  %cmp.not.i.i = icmp eq i32 %old.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %if.end4, label %atomic_try_cmpxchg_relaxed.exit, !prof !11

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond
  %tobool = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool, label %if.end4, label %do.cond

if.end4:                                          ; preds = %do.cond, %atomic_try_cmpxchg_relaxed.exit, %entry
  %old.2 = phi i32 [ 0, %entry ], [ %old.0, %do.cond ], [ 0, %atomic_try_cmpxchg_relaxed.exit ]
  %add5 = add i32 %old.2, 1
  %1 = or i32 %add5, %old.2
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %if.end11, label %if.then10, !prof !11

if.then10:                                        ; preds = %if.end4
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 0) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end4
  %tobool12 = icmp ne i32 %old.2, 0
  ret i1 %tobool12
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #12, !srcloc !30
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #12, !srcloc !33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @blk_mq_rq_state(%struct.request* noundef %rq) unnamed_addr #7 {
entry:
  %state = getelementptr inbounds %struct.request, %struct.request* %rq, i64 0, i32 23
  %0 = load volatile i32, i32* %state, align 8
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @blk_mq_request_completed(%struct.request* noundef %rq) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @blk_mq_rq_state(%struct.request* noundef %rq) #10
  %cmp = icmp eq i32 %call, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @percpu_ref_tryget_many(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64* null, i64** %percpu_count, align 8, !annotation !15
  call fastcc void @__rcu_read_lock() #11
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #10
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #10
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3) #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %if.end

if.else:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %4 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %counter.i.i.i.i = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %4, i64 0, i32 0, i32 0
  %5 = load volatile i64, i64* %counter.i.i.i.i, align 8
  %6 = bitcast %struct.percpu_ref_data* %4 to i8*
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond.i.i.i.i, %if.else
  %c.0.i.i.i.i = phi i64 [ %5, %if.else ], [ %call14.i.i.i.i.i.i, %do.cond.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i64 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %atomic_long_add_unless.exit, label %do.cond.i.i.i.i, !prof !9

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i64 %c.0.i.i.i.i, 1
  %call14.i.i.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %6, i64 noundef %c.0.i.i.i.i, i64 noundef %add.i.i.i.i) #11
  %cmp.not.i.i.i.i.i = icmp eq i64 %call14.i.i.i.i.i.i, %c.0.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %atomic_long_add_unless.exit, label %do.body.i.i.i.i, !prof !11

atomic_long_add_unless.exit:                      ; preds = %do.body.i.i.i.i, %do.cond.i.i.i.i
  %7 = xor i1 %cmp.i.i.i.i, true
  br label %if.end

if.end:                                           ; preds = %atomic_long_add_unless.exit, %do.body1
  %ret.0.off0 = phi i1 [ true, %do.body1 ], [ %7, %atomic_long_add_unless.exit ]
  call fastcc void @rcu_read_unlock() #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret i1 %ret.0.off0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** nocapture noundef writeonly %percpu_countp) unnamed_addr #7 {
entry:
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %0 = load volatile i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %0, 3
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !11

if.end:                                           ; preds = %entry
  %1 = inttoptr i64 %0 to i64*
  store i64* %1, i64** %percpu_countp, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 1, i64* elementtype(i64) %0) #12, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !38
  call void @rcu_read_unlock_strict() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @bt_iter(%struct.sbitmap* nocapture noundef readnone %bitmap, i32 noundef %bitnr, i8* nocapture noundef readonly %data) #0 {
entry:
  %hctx1 = bitcast i8* %data to %struct.blk_mq_hw_ctx**
  %0 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %hctx1, align 8
  %tags2 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %0, i64 0, i32 19
  %1 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %tags2, align 8
  %2 = getelementptr inbounds i8, i8* %data, i64 24
  %3 = load i8, i8* %2, align 8, !range !39
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %nr_reserved_tags = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %1, i64 0, i32 1
  %4 = load i32, i32* %nr_reserved_tags, align 4
  %add = add i32 %4, %bitnr
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %bitnr.addr.0 = phi i32 [ %bitnr, %entry ], [ %add, %if.then ]
  %call = call fastcc %struct.request* @blk_mq_find_and_get_req(%struct.blk_mq_tags* noundef %1, i32 noundef %bitnr.addr.0) #10
  %tobool5.not = icmp eq %struct.request* %call, null
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %q = getelementptr inbounds %struct.request, %struct.request* %call, i64 0, i32 0
  %5 = load %struct.request_queue*, %struct.request_queue** %q, align 8
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %0, i64 0, i32 7
  %6 = load %struct.request_queue*, %struct.request_queue** %queue, align 16
  %cmp = icmp eq %struct.request_queue* %5, %6
  br i1 %cmp, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.end7
  %mq_hctx = getelementptr inbounds %struct.request, %struct.request* %call, i64 0, i32 2
  %7 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %mq_hctx, align 8
  %cmp8 = icmp eq %struct.blk_mq_hw_ctx* %7, %0
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  %fn = getelementptr inbounds i8, i8* %data, i64 8
  %8 = bitcast i8* %fn to i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)**
  %9 = load i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)*, i1 (%struct.blk_mq_hw_ctx*, %struct.request*, i8*, i1)** %8, align 8
  %data10 = getelementptr inbounds i8, i8* %data, i64 16
  %10 = bitcast i8* %data10 to i8**
  %11 = load i8*, i8** %10, align 8
  %call12 = call i1 %9(%struct.blk_mq_hw_ctx* noundef %0, %struct.request* noundef nonnull %call, i8* noundef %11, i1 noundef %tobool) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true, %if.end7
  %ret.0.off0 = phi i1 [ %call12, %if.then9 ], [ true, %land.lhs.true ], [ true, %if.end7 ]
  call void @blk_mq_put_rq_ref(%struct.request* noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end14
  %retval.0 = phi i1 [ %ret.0.off0, %if.end14 ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_queue_init_node(%struct.sbitmap_queue* noundef, i32 noundef, i32 noundef, i1 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sbitmap_free(%struct.sbitmap* nocapture noundef %sb) unnamed_addr #0 {
entry:
  %alloc_hint = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 5
  %0 = bitcast i32** %alloc_hint to i8**
  %1 = load i8*, i8** %0, align 8
  call void @free_percpu(i8* noundef %1) #11
  %map = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %sb, i64 0, i32 4
  %2 = bitcast %struct.sbitmap_word** %map to i8**
  %3 = load i8*, i8** %2, align 8
  call void @kfree(i8* noundef %3) #11
  store %struct.sbitmap_word* null, %struct.sbitmap_word** %map, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { nofree nounwind readonly }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind readonly }

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
!8 = !{i64 1455705}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2154334435}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2154335919}
!13 = !{i64 2154337313}
!14 = !{i64 2154339454}
!15 = !{!"auto-init"}
!16 = !{i64 2147807416, i64 2147808068, i64 2147808098, i64 2147808129, i64 2147808161, i64 2147808196, i64 2147808221}
!17 = !{i64 2147737490, i64 2147738006, i64 2147738036, i64 2147738063, i64 2147738097, i64 2147738127}
!18 = !{i64 2147817993, i64 2147818655, i64 2147818685, i64 2147818716, i64 2147818748, i64 2147818783, i64 2147818808}
!19 = !{i64 2147747211, i64 2147747727, i64 2147747757, i64 2147747784, i64 2147747818, i64 2147747848}
!20 = !{i32 0, i32 8}
!21 = !{i64 2147850560, i64 2147850593, i64 2147850645, i64 2147850704, i64 2147850738, i64 2147850794, i64 2147850823, i64 2147850850}
!22 = !{i64 2147852210, i64 2147852243, i64 2147852294, i64 2147852350, i64 2147852383, i64 2147852438, i64 2147852467, i64 2147852494}
!23 = !{i64 2149018010, i64 2149018057, i64 2149018063, i64 2149018100, i64 2149018118, i64 2149019045, i64 2149019093, i64 2149019141, i64 2149019204, i64 2149019253, i64 2149018196, i64 2149018221, i64 2149018247, i64 2149018253, i64 2149018290, i64 2149018296, i64 2149018346, i64 2149018392, i64 2149018425}
!24 = !{i1 (%struct.sbitmap*, i32, i8*)* @bt_iter, i1 (%struct.sbitmap*, i32, i8*)* @bt_tags_iter}
!25 = !{i64 2149472474}
!26 = !{i64 2149251645, i64 2149251692, i64 2149251698, i64 2149251735, i64 2149251753, i64 2149253064, i64 2149253112, i64 2149253160, i64 2149253223, i64 2149253272, i64 2149251831, i64 2149251856, i64 2149251882, i64 2149251888, i64 2149252730, i64 2149252770, i64 2149252788, i64 2149252820, i64 2149252848, i64 2149252902, i64 2149252922, i64 2149253019, i64 2149251911, i64 2149251925, i64 2149251931, i64 2149251981, i64 2149252027, i64 2149252060}
!27 = !{i64 2149253824, i64 2149253871, i64 2149253877, i64 2149253914, i64 2149253932, i64 2149254875, i64 2149254923, i64 2149254971, i64 2149255034, i64 2149255083, i64 2149254010, i64 2149254035, i64 2149254061, i64 2149254067, i64 2149254104, i64 2149254110, i64 2149254160, i64 2149254206, i64 2149254239}
!28 = !{i64 2149245942, i64 2149245989, i64 2149245995, i64 2149246032, i64 2149246050, i64 2149247391, i64 2149247439, i64 2149247487, i64 2149247550, i64 2149247599, i64 2149246128, i64 2149246153, i64 2149246179, i64 2149246185, i64 2149247057, i64 2149247097, i64 2149247115, i64 2149247147, i64 2149247175, i64 2149247229, i64 2149247249, i64 2149247346, i64 2149246208, i64 2149246222, i64 2149246228, i64 2149246278, i64 2149246324, i64 2149246357}
!29 = !{i64 2147833352, i64 2147833385, i64 2147833438, i64 2147833497, i64 2147833531, i64 2147833586, i64 2147833615, i64 2147833635}
!30 = !{i64 2147826814, i64 2147826847, i64 2147826899, i64 2147826958, i64 2147826992, i64 2147827047, i64 2147827076, i64 2147827096}
!31 = !{i64 2149498317}
!32 = !{i64 2149297838}
!33 = !{i64 2149261719, i64 2149261766, i64 2149261772, i64 2149261809, i64 2149261827, i64 2149263138, i64 2149263186, i64 2149263234, i64 2149263297, i64 2149263346, i64 2149261905, i64 2149261930, i64 2149261956, i64 2149261962, i64 2149262804, i64 2149262844, i64 2149262862, i64 2149262894, i64 2149262922, i64 2149262976, i64 2149262996, i64 2149263093, i64 2149261985, i64 2149261999, i64 2149262005, i64 2149262055, i64 2149262101, i64 2149262134}
!34 = !{i64 2152153256}
!35 = !{i64 2152154068}
!36 = !{i64 2149043956, i64 2149043997, i64 2149044053, i64 2149044105}
!37 = !{i64 2149668220}
!38 = !{i64 2149668437}
!39 = !{i8 0, i8 2}
