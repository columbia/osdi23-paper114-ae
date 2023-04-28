; ModuleID = 'block/blk-settings.c'
source_filename = "block/blk-settings.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.68, %union.anon.69, %union.anon.70, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.73, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type { %struct.anon.3, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i64, i8*, %struct.request_queue*, %struct.blk_flush_queue*, i8*, %struct.sbitmap, %struct.blk_mq_ctx*, i32, i16, i16, %struct.blk_mq_ctx**, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, %struct.blk_mq_tags*, %struct.blk_mq_tags*, i64, i64, [7 x i64], i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, i64, i64, i64, %struct.list_head, [0 x %struct.srcu_struct], [56 x i8] }
%struct.anon.3 = type { %struct.spinlock, %struct.list_head, i64, [32 x i8] }
%struct.cpumask = type { [4 x i64] }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue*, %struct.sbitmap_queue*, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.request**, %struct.request**, %struct.list_head, %struct.spinlock }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.lockdep_map = type {}
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
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
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
%struct.kmem_cache = type opaque
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
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
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.77 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.66 = type { %struct.atomic_t }
%union.anon.68 = type { %struct.hlist_node }
%union.anon.69 = type { %struct.rb_node }
%union.anon.70 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%struct.block_device = type { i64, %struct.disk_stats*, i64, i8, i32, i32, %struct.inode*, %struct.super_block*, i8*, %struct.device, i8*, i32, i8, %struct.kobject*, i8, %struct.spinlock, %struct.gendisk*, i32, %struct.mutex, %struct.super_block*, %struct.partition_meta_info* }
%struct.disk_stats = type { [4 x i64], [4 x i64], [4 x i64], [4 x i64], i64, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic64_t }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.73 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type { %struct.request_queue*, i32, i32, i32, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx* }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type { %struct.rq_qos_ops*, %struct.request_queue*, i32, %struct.rq_qos* }
%struct.rq_qos_ops = type { void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*, %struct.bio*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.request*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*, %struct.bio*)*, void (%struct.rq_qos*)*, void (%struct.rq_qos*)*, %struct.blk_mq_debugfs_attr* }
%struct.blk_mq_debugfs_attr = type opaque
%struct.blk_mq_ops = type { i8 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)*, void (%struct.blk_mq_hw_ctx*)*, i32 (%struct.request_queue*)*, void (%struct.request_queue*, i32)*, void (%struct.request*, i32)*, i32 (%struct.request*)*, i32 (%struct.request*, i1)*, i32 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*)*, i32 (%struct.blk_mq_hw_ctx*, i8*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)*, void (%struct.blk_mq_tag_set*, %struct.request*, i32)*, void (%struct.request*)*, void (%struct.request*)*, i1 (%struct.request_queue*)*, i32 (%struct.blk_mq_tag_set*)* }
%struct.blk_mq_queue_data = type { %struct.request*, i8 }
%struct.blk_mq_ctx = type { %struct.anon, i32, [3 x i16], [3 x %struct.blk_mq_hw_ctx*], [2 x i64], i64, [2 x i64], %struct.request_queue*, %struct.blk_mq_ctxs*, %struct.kobject, [32 x i8] }
%struct.anon = type { %struct.spinlock, [3 x %struct.list_head], [8 x i8] }
%struct.blk_mq_ctxs = type { %struct.kobject, %struct.blk_mq_ctx* }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
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
%struct.blk_stat_callback = type { %struct.list_head, %struct.timer_list, %struct.blk_rq_stat*, i32 (%struct.request*)*, i32, %struct.blk_rq_stat*, void (%struct.blk_stat_callback*)*, i8*, %struct.callback_head }
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic_t = type { i32 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type { i8, i8, i64, [2 x %struct.list_head], %struct.list_head, %struct.request*, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, %struct.blk_mq_ops*, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.blk_mq_tags**, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { i32*, i32, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.54, %struct.list_head, %struct.list_head, %union.anon.55 }
%struct.lockref = type { %union.anon.24 }
%union.anon.24 = type { i64 }
%union.anon.54 = type { %struct.list_head }
%union.anon.55 = type { %struct.hlist_node }

@.str = private unnamed_addr constant [25 x i8] c"\016%s: set to minimum %d\0A\00", align 1
@__func__.blk_queue_max_hw_sectors = private unnamed_addr constant [25 x i8] c"blk_queue_max_hw_sectors\00", align 1
@__func__.blk_queue_max_segments = private unnamed_addr constant [23 x i8] c"blk_queue_max_segments\00", align 1
@__func__.blk_queue_max_segment_size = private unnamed_addr constant [27 x i8] c"blk_queue_max_segment_size\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\015%s: Warning: Device %pg is misaligned\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\016%s: set to minimum %lx\0A\00", align 1
@__func__.blk_queue_segment_boundary = private unnamed_addr constant [27 x i8] c"blk_queue_segment_boundary\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_queue_rq_timeout(%struct.request_queue* nocapture noundef writeonly %q, i32 noundef %timeout) local_unnamed_addr #0 {
entry:
  %rq_timeout = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 21
  store i32 %timeout, i32* %rq_timeout, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_set_default_limits(%struct.queue_limits* noundef writeonly %lim) local_unnamed_addr #0 {
entry:
  %max_segments = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 21
  store i16 128, i16* %max_segments, align 8
  %max_discard_segments = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 23
  store i16 1, i16* %max_discard_segments, align 4
  %max_integrity_segments = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 22
  store i16 0, i16* %max_integrity_segments, align 2
  %seg_boundary_mask = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 1
  store i64 4294967295, i64* %seg_boundary_mask, align 8
  %virt_boundary_mask = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 2
  store i64 0, i64* %virt_boundary_mask, align 8
  %max_segment_size = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 7
  store i32 65536, i32* %max_segment_size, align 8
  %max_hw_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 3
  store i32 255, i32* %max_hw_sectors, align 8
  %max_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 6
  store i32 255, i32* %max_sectors, align 4
  %max_dev_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 4
  store i32 0, i32* %max_dev_sectors, align 4
  %chunk_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 5
  store i32 0, i32* %chunk_sectors, align 8
  %max_write_same_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 15
  store i32 0, i32* %max_write_same_sectors, align 8
  %max_write_zeroes_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 16
  store i32 0, i32* %max_write_zeroes_sectors, align 4
  %max_zone_append_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 17
  store i32 0, i32* %max_zone_append_sectors, align 8
  %max_discard_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 13
  store i32 0, i32* %max_discard_sectors, align 8
  %max_hw_discard_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 14
  store i32 0, i32* %max_hw_discard_sectors, align 4
  %discard_granularity = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 18
  store i32 0, i32* %discard_granularity, align 4
  %discard_alignment = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 19
  store i32 0, i32* %discard_alignment, align 8
  %discard_misaligned = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 25
  store i8 0, i8* %discard_misaligned, align 1
  %io_min = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 11
  store i32 512, i32* %io_min, align 8
  %physical_block_size = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 8
  store i32 512, i32* %physical_block_size, align 4
  %logical_block_size = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 9
  store i32 512, i32* %logical_block_size, align 8
  %bounce = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 0
  store i32 0, i32* %bounce, align 8
  %alignment_offset = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 10
  store i32 0, i32* %alignment_offset, align 4
  %io_opt = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 12
  store i32 0, i32* %io_opt, align 4
  %misaligned = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 24
  store i8 0, i8* %misaligned, align 2
  %zoned = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 27
  store i32 0, i32* %zoned, align 4
  %zone_write_granularity = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 20
  store i32 0, i32* %zone_write_granularity, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_set_stacking_limits(%struct.queue_limits* noundef %lim) local_unnamed_addr #0 {
entry:
  call void @blk_set_default_limits(%struct.queue_limits* noundef %lim) #9
  %max_segments = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 21
  store i16 -1, i16* %max_segments, align 8
  %max_discard_segments = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 23
  store i16 -1, i16* %max_discard_segments, align 4
  %max_hw_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 3
  store i32 -1, i32* %max_hw_sectors, align 8
  %max_segment_size = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 7
  store i32 -1, i32* %max_segment_size, align 8
  %max_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 6
  store i32 -1, i32* %max_sectors, align 4
  %max_dev_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 4
  store i32 -1, i32* %max_dev_sectors, align 4
  %max_write_same_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 15
  store i32 -1, i32* %max_write_same_sectors, align 8
  %max_write_zeroes_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 16
  store i32 -1, i32* %max_write_zeroes_sectors, align 4
  %max_zone_append_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 17
  store i32 -1, i32* %max_zone_append_sectors, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_queue_bounce_limit(%struct.request_queue* nocapture noundef writeonly %q, i32 noundef %bounce) local_unnamed_addr #0 {
entry:
  %bounce1 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 0
  store i32 %bounce, i32* %bounce1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_max_hw_sectors(%struct.request_queue* nocapture noundef %q, i32 noundef %max_hw_sectors) local_unnamed_addr #1 {
entry:
  %0 = and i32 %max_hw_sectors, 8388600
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.blk_queue_max_hw_sectors, i64 0, i64 0), i32 noundef 8) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %max_hw_sectors.addr.0 = phi i32 [ 8, %if.then ], [ %max_hw_sectors, %entry ]
  %logical_block_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 9
  %1 = load i32, i32* %logical_block_size, align 8
  %shr = lshr i32 %1, 9
  %neg = sub nsw i32 0, %shr
  %and = and i32 %max_hw_sectors.addr.0, %neg
  %max_hw_sectors3 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 3
  store i32 %and, i32* %max_hw_sectors3, align 8
  %max_dev_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 4
  %2 = load i32, i32* %max_dev_sectors, align 4
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %cond.end18, label %cond.false

cond.false:                                       ; preds = %if.end
  %cmp7 = icmp eq i32 %2, 0
  br i1 %cmp7, label %cond.end18, label %cond.false10

cond.false10:                                     ; preds = %cond.false
  %cmp12 = icmp ult i32 %and, %2
  %cond = select i1 %cmp12, i32 %and, i32 %2
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false, %if.end, %cond.false10
  %cond19 = phi i32 [ %cond, %cond.false10 ], [ %2, %if.end ], [ %and, %cond.false ]
  %cmp21 = icmp ult i32 %cond19, 2560
  %cond26 = select i1 %cmp21, i32 %cond19, i32 2560
  %and31 = and i32 %cond26, %neg
  %max_sectors32 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 6
  store i32 %and31, i32* %max_sectors32, align 4
  %disk = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 15
  %3 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %tobool.not = icmp eq %struct.gendisk* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end34

if.end34:                                         ; preds = %cond.end18
  %shr35 = lshr i32 %and31, 3
  %conv36 = zext i32 %shr35 to i64
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %3, i64 0, i32 15
  %4 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %io_pages = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %4, i64 0, i32 4
  store i64 %conv36, i64* %io_pages, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end18, %if.end34
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_queue_chunk_sectors(%struct.request_queue* nocapture noundef writeonly %q, i32 noundef %chunk_sectors) local_unnamed_addr #0 {
entry:
  %chunk_sectors1 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 5
  store i32 %chunk_sectors, i32* %chunk_sectors1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_queue_max_discard_sectors(%struct.request_queue* nocapture noundef writeonly %q, i32 noundef %max_discard_sectors) local_unnamed_addr #0 {
entry:
  %max_hw_discard_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 14
  store i32 %max_discard_sectors, i32* %max_hw_discard_sectors, align 4
  %max_discard_sectors2 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 13
  store i32 %max_discard_sectors, i32* %max_discard_sectors2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_queue_max_write_same_sectors(%struct.request_queue* nocapture noundef writeonly %q, i32 noundef %max_write_same_sectors) local_unnamed_addr #0 {
entry:
  %max_write_same_sectors1 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 15
  store i32 %max_write_same_sectors, i32* %max_write_same_sectors1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_queue_max_write_zeroes_sectors(%struct.request_queue* nocapture noundef writeonly %q, i32 noundef %max_write_zeroes_sectors) local_unnamed_addr #0 {
entry:
  %max_write_zeroes_sectors1 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 16
  store i32 %max_write_zeroes_sectors, i32* %max_write_zeroes_sectors1, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_max_zone_append_sectors(%struct.request_queue* nocapture noundef readnone %q, i32 noundef %max_zone_append_sectors) local_unnamed_addr #1 {
entry:
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-settings.c\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_max_segments(%struct.request_queue* nocapture noundef writeonly %q, i16 noundef %max_segments) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq i16 %max_segments, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.blk_queue_max_segments, i64 0, i64 0), i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %max_segments.addr.0 = phi i16 [ %max_segments, %entry ], [ 1, %if.then ]
  %max_segments1 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 21
  store i16 %max_segments.addr.0, i16* %max_segments1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_queue_max_discard_segments(%struct.request_queue* nocapture noundef writeonly %q, i16 noundef %max_segments) local_unnamed_addr #0 {
entry:
  %max_discard_segments = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 23
  store i16 %max_segments, i16* %max_discard_segments, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_max_segment_size(%struct.request_queue* nocapture noundef %q, i32 noundef %max_size) local_unnamed_addr #1 {
entry:
  %cmp = icmp ult i32 %max_size, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.blk_queue_max_segment_size, i64 0, i64 0), i32 noundef 4096) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %max_size.addr.0 = phi i32 [ 4096, %if.then ], [ %max_size, %entry ]
  %virt_boundary_mask = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 2
  %0 = load i64, i64* %virt_boundary_mask, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end11, label %if.then10, !prof !8

if.then10:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-settings.c\22; .popsection; .long 14472b - 14470b; .short 288; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %max_segment_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 7
  store i32 %max_size.addr.0, i32* %max_segment_size, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @blk_queue_logical_block_size(%struct.request_queue* nocapture noundef %q, i32 noundef %size) local_unnamed_addr #3 {
entry:
  %logical_block_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 9
  store i32 %size, i32* %logical_block_size, align 8
  %physical_block_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 8
  %0 = load i32, i32* %physical_block_size, align 4
  %cmp = icmp ult i32 %0, %size
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %size, i32* %physical_block_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %size, %if.then ], [ %0, %entry ]
  %io_min = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 11
  %2 = load i32, i32* %io_min, align 8
  %cmp4 = icmp ult i32 %2, %1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  store i32 %1, i32* %io_min, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %max_hw_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 3
  %3 = load i32, i32* %max_hw_sectors, align 8
  %shr = lshr i32 %size, 9
  %neg = sub nsw i32 0, %shr
  %and = and i32 %3, %neg
  store i32 %and, i32* %max_hw_sectors, align 8
  %max_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 6
  %4 = load i32, i32* %max_sectors, align 4
  %and13 = and i32 %4, %neg
  store i32 %and13, i32* %max_sectors, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @blk_queue_physical_block_size(%struct.request_queue* nocapture noundef %q, i32 noundef %size) local_unnamed_addr #3 {
entry:
  %physical_block_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 8
  %logical_block_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 9
  %0 = load i32, i32* %logical_block_size, align 8
  %cmp = icmp ugt i32 %0, %size
  %spec.store.select = select i1 %cmp, i32 %0, i32 %size
  store i32 %spec.store.select, i32* %physical_block_size, align 4
  %io_min = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 11
  %1 = load i32, i32* %io_min, align 8
  %cmp11 = icmp ult i32 %1, %spec.store.select
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %entry
  store i32 %spec.store.select, i32* %io_min, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_zone_write_granularity(%struct.request_queue* nocapture readnone %q, i32 %size) local_unnamed_addr #1 {
entry:
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-settings.c\22; .popsection; .long 14472b - 14470b; .short 357; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @blk_queue_alignment_offset(%struct.request_queue* nocapture noundef %q, i32 noundef %offset) local_unnamed_addr #3 {
entry:
  %physical_block_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 8
  %0 = load i32, i32* %physical_block_size, align 4
  %sub = add i32 %0, -1
  %and = and i32 %sub, %offset
  %alignment_offset = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 10
  store i32 %and, i32* %alignment_offset, align 4
  %misaligned = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 24
  store i8 0, i8* %misaligned, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @disk_update_readahead(%struct.gendisk* nocapture noundef readonly %disk) local_unnamed_addr #3 {
entry:
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 9
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %call = call fastcc i32 @queue_io_opt(%struct.request_queue* noundef %0) #9
  %1 = lshr i32 %call, 11
  %2 = and i32 %1, 1048575
  %div = zext i32 %2 to i64
  %cmp = icmp ugt i64 %div, 32
  %cond = select i1 %cmp, i64 %div, i64 32
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 15
  %3 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %3, i64 0, i32 3
  store i64 %cond, i64* %ra_pages, align 8
  %call2 = call fastcc i32 @queue_max_sectors(%struct.request_queue* noundef %0) #9
  %shr = lshr i32 %call2, 3
  %conv3 = zext i32 %shr to i64
  %4 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %io_pages = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %4, i64 0, i32 4
  store i64 %conv3, i64* %io_pages, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_io_opt(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #4 {
entry:
  %io_opt = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 12
  %0 = load i32, i32* %io_opt, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_max_sectors(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #4 {
entry:
  %max_sectors = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 6
  %0 = load i32, i32* %max_sectors, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @blk_limits_io_min(%struct.queue_limits* nocapture noundef %limits, i32 noundef %min) local_unnamed_addr #3 {
entry:
  %io_min = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %limits, i64 0, i32 11
  %logical_block_size = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %limits, i64 0, i32 9
  %0 = load i32, i32* %logical_block_size, align 8
  %cmp = icmp ugt i32 %0, %min
  %spec.store.select = select i1 %cmp, i32 %0, i32 %min
  %physical_block_size = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %limits, i64 0, i32 8
  %1 = load i32, i32* %physical_block_size, align 4
  %cmp5 = icmp ult i32 %spec.store.select, %1
  %spec.store.select19 = select i1 %cmp5, i32 %1, i32 %spec.store.select
  store i32 %spec.store.select19, i32* %io_min, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @blk_queue_io_min(%struct.request_queue* nocapture noundef %q, i32 noundef %min) local_unnamed_addr #3 {
entry:
  %limits = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31
  call void @blk_limits_io_min(%struct.queue_limits* noundef %limits, i32 noundef %min) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_limits_io_opt(%struct.queue_limits* nocapture noundef writeonly %limits, i32 noundef %opt) local_unnamed_addr #0 {
entry:
  %io_opt = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %limits, i64 0, i32 12
  store i32 %opt, i32* %io_opt, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @blk_queue_io_opt(%struct.request_queue* nocapture noundef %q, i32 noundef %opt) local_unnamed_addr #3 {
entry:
  %limits = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31
  call void @blk_limits_io_opt(%struct.queue_limits* noundef %limits, i32 noundef %opt) #9
  %disk = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 15
  %0 = load %struct.gendisk*, %struct.gendisk** %disk, align 8
  %tobool.not = icmp eq %struct.gendisk* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @queue_io_opt(%struct.request_queue* noundef %q) #9
  %1 = lshr i32 %call, 11
  %2 = and i32 %1, 1048575
  %div = zext i32 %2 to i64
  %cmp = icmp ugt i64 %div, 32
  %cond = select i1 %cmp, i64 %div, i64 32
  %bdi = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 15
  %3 = load %struct.backing_dev_info*, %struct.backing_dev_info** %bdi, align 8
  %ra_pages = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %3, i64 0, i32 3
  store i64 %cond, i64* %ra_pages, align 8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local i32 @blk_stack_limits(%struct.queue_limits* noundef %t, %struct.queue_limits* noundef readonly %b, i64 noundef %start) local_unnamed_addr #5 {
entry:
  %max_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 6
  %0 = load i32, i32* %max_sectors, align 4
  %max_sectors1 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 6
  %1 = load i32, i32* %max_sectors1, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.end11, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %cond.end11, label %cond.false4

cond.false4:                                      ; preds = %cond.false
  %cmp6 = icmp ult i32 %0, %1
  %cond = select i1 %cmp6, i32 %0, i32 %1
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false, %entry, %cond.false4
  %cond12 = phi i32 [ %cond, %cond.false4 ], [ %1, %entry ], [ %0, %cond.false ]
  store i32 %cond12, i32* %max_sectors, align 4
  %max_hw_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 3
  %2 = load i32, i32* %max_hw_sectors, align 8
  %max_hw_sectors16 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 3
  %3 = load i32, i32* %max_hw_sectors16, align 8
  %cmp18 = icmp eq i32 %2, 0
  br i1 %cmp18, label %cond.end32, label %cond.false20

cond.false20:                                     ; preds = %cond.end11
  %cmp21 = icmp eq i32 %3, 0
  br i1 %cmp21, label %cond.end32, label %cond.false23

cond.false23:                                     ; preds = %cond.false20
  %cmp25 = icmp ult i32 %2, %3
  %cond29 = select i1 %cmp25, i32 %2, i32 %3
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false20, %cond.end11, %cond.false23
  %cond33 = phi i32 [ %cond29, %cond.false23 ], [ %3, %cond.end11 ], [ %2, %cond.false20 ]
  store i32 %cond33, i32* %max_hw_sectors, align 8
  %max_dev_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 4
  %4 = load i32, i32* %max_dev_sectors, align 4
  %max_dev_sectors37 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 4
  %5 = load i32, i32* %max_dev_sectors37, align 4
  %cmp39 = icmp eq i32 %4, 0
  br i1 %cmp39, label %cond.end53, label %cond.false41

cond.false41:                                     ; preds = %cond.end32
  %cmp42 = icmp eq i32 %5, 0
  br i1 %cmp42, label %cond.end53, label %cond.false44

cond.false44:                                     ; preds = %cond.false41
  %cmp46 = icmp ult i32 %4, %5
  %cond50 = select i1 %cmp46, i32 %4, i32 %5
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false41, %cond.end32, %cond.false44
  %cond54 = phi i32 [ %cond50, %cond.false44 ], [ %5, %cond.end32 ], [ %4, %cond.false41 ]
  store i32 %cond54, i32* %max_dev_sectors, align 4
  %max_write_same_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 15
  %6 = load i32, i32* %max_write_same_sectors, align 8
  %max_write_same_sectors56 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 15
  %7 = load i32, i32* %max_write_same_sectors56, align 8
  %cmp58 = icmp ult i32 %6, %7
  %cond62 = select i1 %cmp58, i32 %6, i32 %7
  store i32 %cond62, i32* %max_write_same_sectors, align 8
  %max_write_zeroes_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 16
  %8 = load i32, i32* %max_write_zeroes_sectors, align 4
  %max_write_zeroes_sectors64 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 16
  %9 = load i32, i32* %max_write_zeroes_sectors64, align 4
  %cmp66 = icmp ult i32 %8, %9
  %cond70 = select i1 %cmp66, i32 %8, i32 %9
  store i32 %cond70, i32* %max_write_zeroes_sectors, align 4
  %max_zone_append_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 17
  %10 = load i32, i32* %max_zone_append_sectors, align 8
  %max_zone_append_sectors72 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 17
  %11 = load i32, i32* %max_zone_append_sectors72, align 8
  %cmp74 = icmp ult i32 %10, %11
  %cond78 = select i1 %cmp74, i32 %10, i32 %11
  store i32 %cond78, i32* %max_zone_append_sectors, align 8
  %bounce = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 0
  %12 = load i32, i32* %bounce, align 8
  %bounce80 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 0
  %13 = load i32, i32* %bounce80, align 8
  %cmp82 = icmp ugt i32 %12, %13
  %cond86 = select i1 %cmp82, i32 %12, i32 %13
  store i32 %cond86, i32* %bounce, align 8
  %seg_boundary_mask = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 1
  %14 = load i64, i64* %seg_boundary_mask, align 8
  %seg_boundary_mask90 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 1
  %15 = load i64, i64* %seg_boundary_mask90, align 8
  %cmp92 = icmp eq i64 %14, 0
  br i1 %cmp92, label %cond.end106, label %cond.false94

cond.false94:                                     ; preds = %cond.end53
  %cmp95 = icmp eq i64 %15, 0
  br i1 %cmp95, label %cond.end106, label %cond.false97

cond.false97:                                     ; preds = %cond.false94
  %cmp99 = icmp ult i64 %14, %15
  %cond103 = select i1 %cmp99, i64 %14, i64 %15
  br label %cond.end106

cond.end106:                                      ; preds = %cond.false94, %cond.end53, %cond.false97
  %cond107 = phi i64 [ %cond103, %cond.false97 ], [ %15, %cond.end53 ], [ %14, %cond.false94 ]
  store i64 %cond107, i64* %seg_boundary_mask, align 8
  %virt_boundary_mask = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 2
  %16 = load i64, i64* %virt_boundary_mask, align 8
  %virt_boundary_mask111 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 2
  %17 = load i64, i64* %virt_boundary_mask111, align 8
  %cmp113 = icmp eq i64 %16, 0
  br i1 %cmp113, label %cond.end127, label %cond.false115

cond.false115:                                    ; preds = %cond.end106
  %cmp116 = icmp eq i64 %17, 0
  br i1 %cmp116, label %cond.end127, label %cond.false118

cond.false118:                                    ; preds = %cond.false115
  %cmp120 = icmp ult i64 %16, %17
  %cond124 = select i1 %cmp120, i64 %16, i64 %17
  br label %cond.end127

cond.end127:                                      ; preds = %cond.false115, %cond.end106, %cond.false118
  %cond128 = phi i64 [ %cond124, %cond.false118 ], [ %17, %cond.end106 ], [ %16, %cond.false115 ]
  store i64 %cond128, i64* %virt_boundary_mask, align 8
  %max_segments = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 21
  %18 = load i16, i16* %max_segments, align 8
  %max_segments132 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 21
  %19 = load i16, i16* %max_segments132, align 8
  %cmp134 = icmp eq i16 %18, 0
  br i1 %cmp134, label %cond.end158, label %cond.false138

cond.false138:                                    ; preds = %cond.end127
  %cmp140 = icmp eq i16 %19, 0
  br i1 %cmp140, label %cond.end158, label %cond.false144

cond.false144:                                    ; preds = %cond.false138
  %cmp148 = icmp ult i16 %18, %19
  %cond155 = select i1 %cmp148, i16 %18, i16 %19
  br label %cond.end158

cond.end158:                                      ; preds = %cond.false138, %cond.end127, %cond.false144
  %cond159 = phi i16 [ %cond155, %cond.false144 ], [ %19, %cond.end127 ], [ %18, %cond.false138 ]
  store i16 %cond159, i16* %max_segments, align 8
  %max_discard_segments = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 23
  %20 = load i16, i16* %max_discard_segments, align 4
  %max_discard_segments164 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 23
  %21 = load i16, i16* %max_discard_segments164, align 4
  %cmp167 = icmp eq i16 %20, 0
  br i1 %cmp167, label %cond.end191, label %cond.false171

cond.false171:                                    ; preds = %cond.end158
  %cmp173 = icmp eq i16 %21, 0
  br i1 %cmp173, label %cond.end191, label %cond.false177

cond.false177:                                    ; preds = %cond.false171
  %cmp181 = icmp ult i16 %20, %21
  %cond188 = select i1 %cmp181, i16 %20, i16 %21
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false171, %cond.end158, %cond.false177
  %cond192 = phi i16 [ %cond188, %cond.false177 ], [ %21, %cond.end158 ], [ %20, %cond.false171 ]
  store i16 %cond192, i16* %max_discard_segments, align 4
  %max_integrity_segments = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 22
  %22 = load i16, i16* %max_integrity_segments, align 2
  %max_integrity_segments197 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 22
  %23 = load i16, i16* %max_integrity_segments197, align 2
  %cmp200 = icmp eq i16 %22, 0
  br i1 %cmp200, label %cond.end224, label %cond.false204

cond.false204:                                    ; preds = %cond.end191
  %cmp206 = icmp eq i16 %23, 0
  br i1 %cmp206, label %cond.end224, label %cond.false210

cond.false210:                                    ; preds = %cond.false204
  %cmp214 = icmp ult i16 %22, %23
  %cond221 = select i1 %cmp214, i16 %22, i16 %23
  br label %cond.end224

cond.end224:                                      ; preds = %cond.false204, %cond.end191, %cond.false210
  %cond225 = phi i16 [ %cond221, %cond.false210 ], [ %23, %cond.end191 ], [ %22, %cond.false204 ]
  store i16 %cond225, i16* %max_integrity_segments, align 2
  %max_segment_size = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 7
  %24 = load i32, i32* %max_segment_size, align 8
  %max_segment_size230 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 7
  %25 = load i32, i32* %max_segment_size230, align 8
  %cmp232 = icmp eq i32 %24, 0
  br i1 %cmp232, label %cond.end249, label %cond.false235

cond.false235:                                    ; preds = %cond.end224
  %cmp236 = icmp eq i32 %25, 0
  br i1 %cmp236, label %cond.end249, label %cond.false239

cond.false239:                                    ; preds = %cond.false235
  %cmp241 = icmp ult i32 %24, %25
  %cond246 = select i1 %cmp241, i32 %24, i32 %25
  br label %cond.end249

cond.end249:                                      ; preds = %cond.false235, %cond.end224, %cond.false239
  %cond250 = phi i32 [ %cond246, %cond.false239 ], [ %25, %cond.end224 ], [ %24, %cond.false235 ]
  store i32 %cond250, i32* %max_segment_size, align 8
  %misaligned = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 24
  %26 = load i8, i8* %misaligned, align 2
  %misaligned253 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 24
  %27 = load i8, i8* %misaligned253, align 2
  %or886 = or i8 %27, %26
  store i8 %or886, i8* %misaligned253, align 2
  %call = call fastcc i32 @queue_limit_alignment_offset(%struct.queue_limits* noundef %b, i64 noundef %start) #9
  %alignment_offset = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 10
  %28 = load i32, i32* %alignment_offset, align 4
  %cmp256.not = icmp eq i32 %28, %call
  %physical_block_size302.phi.trans.insert = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 8
  %.pre = load i32, i32* %physical_block_size302.phi.trans.insert, align 4
  %io_min312.phi.trans.insert = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 11
  %.pre887 = load i32, i32* %io_min312.phi.trans.insert, align 8
  br i1 %cmp256.not, label %if.end292, label %if.then

if.then:                                          ; preds = %cond.end249
  %cmp259 = icmp ugt i32 %.pre, %.pre887
  %cond264 = select i1 %cmp259, i32 %.pre, i32 %.pre887
  %add = add i32 %cond264, %28
  %physical_block_size266 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 8
  %29 = load i32, i32* %physical_block_size266, align 4
  %io_min267 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 11
  %30 = load i32, i32* %io_min267, align 8
  %cmp269 = icmp ugt i32 %29, %30
  %cond274 = select i1 %cmp269, i32 %29, i32 %30
  %add275 = add i32 %cond274, %call
  %cmp277 = icmp ugt i32 %add, %add275
  %cond282 = select i1 %cmp277, i32 %add, i32 %add275
  %cmp284 = icmp ult i32 %add, %add275
  %cond289 = select i1 %cmp284, i32 %add, i32 %add275
  %rem = urem i32 %cond282, %cond289
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end292, label %if.then290

if.then290:                                       ; preds = %if.then
  store i8 1, i8* %misaligned253, align 2
  br label %if.end292

if.end292:                                        ; preds = %cond.end249, %if.then, %if.then290
  %ret.0 = phi i32 [ -1, %if.then290 ], [ 0, %if.then ], [ 0, %cond.end249 ]
  %logical_block_size = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 9
  %31 = load i32, i32* %logical_block_size, align 8
  %logical_block_size293 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 9
  %32 = load i32, i32* %logical_block_size293, align 8
  %cmp295 = icmp ugt i32 %31, %32
  %cond300 = select i1 %cmp295, i32 %31, i32 %32
  store i32 %cond300, i32* %logical_block_size, align 8
  %physical_block_size302 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 8
  %physical_block_size303 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 8
  %33 = load i32, i32* %physical_block_size303, align 4
  %cmp305 = icmp ugt i32 %.pre, %33
  %cond310 = select i1 %cmp305, i32 %.pre, i32 %33
  store i32 %cond310, i32* %physical_block_size302, align 4
  %io_min312 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 11
  %io_min313 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 11
  %34 = load i32, i32* %io_min313, align 8
  %cmp315 = icmp ugt i32 %.pre887, %34
  %cond320 = select i1 %cmp315, i32 %.pre887, i32 %34
  store i32 %cond320, i32* %io_min312, align 8
  %io_opt = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 12
  %35 = load i32, i32* %io_opt, align 4
  %conv322 = zext i32 %35 to i64
  %io_opt323 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 12
  %36 = load i32, i32* %io_opt323, align 4
  %conv324 = zext i32 %36 to i64
  %call325 = call i64 @lcm_not_zero(i64 noundef %conv322, i64 noundef %conv324) #12
  %conv326 = trunc i64 %call325 to i32
  store i32 %conv326, i32* %io_opt, align 4
  %chunk_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 5
  %37 = load i32, i32* %chunk_sectors, align 8
  %tobool328.not = icmp eq i32 %37, 0
  br i1 %tobool328.not, label %if.end337, label %if.then329

if.then329:                                       ; preds = %if.end292
  %chunk_sectors330 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 5
  %38 = load i32, i32* %chunk_sectors330, align 8
  %conv331 = zext i32 %38 to i64
  %conv333 = zext i32 %37 to i64
  %call334 = call i64 @gcd(i64 noundef %conv331, i64 noundef %conv333) #12
  %conv335 = trunc i64 %call334 to i32
  store i32 %conv335, i32* %chunk_sectors330, align 8
  br label %if.end337

if.end337:                                        ; preds = %if.then329, %if.end292
  %sub = add i32 %cond300, -1
  %and = and i32 %cond310, %sub
  %tobool340.not = icmp eq i32 %and, 0
  br i1 %tobool340.not, label %if.end337.if.end345_crit_edge, label %if.then341

if.end337.if.end345_crit_edge:                    ; preds = %if.end337
  %.pre888 = add i32 %cond310, -1
  br label %if.end345

if.then341:                                       ; preds = %if.end337
  store i32 %cond300, i32* %physical_block_size302, align 4
  store i8 1, i8* %misaligned253, align 2
  br label %if.end345

if.end345:                                        ; preds = %if.end337.if.end345_crit_edge, %if.then341
  %sub348.pre-phi = phi i32 [ %.pre888, %if.end337.if.end345_crit_edge ], [ %sub, %if.then341 ]
  %39 = phi i32 [ %cond310, %if.end337.if.end345_crit_edge ], [ %cond300, %if.then341 ]
  %ret.1 = phi i32 [ %ret.0, %if.end337.if.end345_crit_edge ], [ -1, %if.then341 ]
  %and349 = and i32 %sub348.pre-phi, %cond320
  %tobool350.not = icmp eq i32 %and349, 0
  br i1 %tobool350.not, label %if.end355, label %if.then351

if.then351:                                       ; preds = %if.end345
  store i32 %39, i32* %io_min312, align 8
  store i8 1, i8* %misaligned253, align 2
  br label %if.end355

if.end355:                                        ; preds = %if.then351, %if.end345
  %40 = phi i32 [ %39, %if.then351 ], [ %cond320, %if.end345 ]
  %ret.2 = phi i32 [ -1, %if.then351 ], [ %ret.1, %if.end345 ]
  %and359 = and i32 %sub348.pre-phi, %conv326
  %tobool360.not = icmp eq i32 %and359, 0
  br i1 %tobool360.not, label %if.end364, label %if.then361

if.then361:                                       ; preds = %if.end355
  store i32 0, i32* %io_opt, align 4
  store i8 1, i8* %misaligned253, align 2
  br label %if.end364

if.end364:                                        ; preds = %if.then361, %if.end355
  %ret.3 = phi i32 [ -1, %if.then361 ], [ %ret.2, %if.end355 ]
  %chunk_sectors365 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 5
  %41 = load i32, i32* %chunk_sectors365, align 8
  %shl = shl i32 %41, 9
  %and368 = and i32 %shl, %sub348.pre-phi
  %tobool369.not = icmp eq i32 %and368, 0
  br i1 %tobool369.not, label %if.end373, label %if.then370

if.then370:                                       ; preds = %if.end364
  store i32 0, i32* %chunk_sectors365, align 8
  store i8 1, i8* %misaligned253, align 2
  br label %if.end373

if.end373:                                        ; preds = %if.then370, %if.end364
  %ret.4 = phi i32 [ -1, %if.then370 ], [ %ret.3, %if.end364 ]
  %raid_partial_stripes_expensive = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 26
  %42 = load i8, i8* %raid_partial_stripes_expensive, align 8
  %raid_partial_stripes_expensive374 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 26
  %43 = load i8, i8* %raid_partial_stripes_expensive374, align 8
  %cmp378 = icmp ugt i8 %42, %43
  %cond385 = select i1 %cmp378, i8 %42, i8 %43
  store i8 %cond385, i8* %raid_partial_stripes_expensive, align 8
  %conv389 = zext i32 %28 to i64
  %conv390 = zext i32 %call to i64
  %call391 = call i64 @lcm_not_zero(i64 noundef %conv389, i64 noundef %conv390) #12
  %cmp395 = icmp ugt i32 %39, %40
  %cond400 = select i1 %cmp395, i32 %39, i32 %40
  %conv401 = zext i32 %cond400 to i64
  %rem402 = urem i64 %call391, %conv401
  %conv403 = trunc i64 %rem402 to i32
  store i32 %conv403, i32* %alignment_offset, align 4
  %and408 = and i32 %sub, %conv403
  %tobool409.not = icmp eq i32 %and408, 0
  br i1 %tobool409.not, label %if.end412, label %if.then410

if.then410:                                       ; preds = %if.end373
  store i8 1, i8* %misaligned253, align 2
  br label %if.end412

if.end412:                                        ; preds = %if.then410, %if.end373
  %ret.5 = phi i32 [ -1, %if.then410 ], [ %ret.4, %if.end373 ]
  %call415 = call fastcc i32 @blk_round_down_sectors(i32 noundef %cond12, i32 noundef %cond300) #9
  store i32 %call415, i32* %max_sectors, align 4
  %call419 = call fastcc i32 @blk_round_down_sectors(i32 noundef %cond33, i32 noundef %cond300) #9
  store i32 %call419, i32* %max_hw_sectors, align 8
  %call423 = call fastcc i32 @blk_round_down_sectors(i32 noundef %cond54, i32 noundef %cond300) #9
  store i32 %call423, i32* %max_dev_sectors, align 4
  %discard_granularity = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 18
  %44 = load i32, i32* %discard_granularity, align 4
  %tobool425.not = icmp eq i32 %44, 0
  br i1 %tobool425.not, label %if.end526, label %if.then426

if.then426:                                       ; preds = %if.end412
  %call427 = call fastcc i32 @queue_limit_discard_alignment(%struct.queue_limits* noundef %b, i64 noundef %start) #9
  %discard_granularity428 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 18
  %45 = load i32, i32* %discard_granularity428, align 4
  %cmp429.not = icmp eq i32 %45, 0
  br i1 %cmp429.not, label %if.end458, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then426
  %discard_alignment = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 19
  %46 = load i32, i32* %discard_alignment, align 8
  %cmp431.not = icmp eq i32 %46, %call427
  br i1 %cmp431.not, label %if.end458, label %if.then433

if.then433:                                       ; preds = %land.lhs.true
  %add436 = add i32 %46, %45
  %add438 = add i32 %call427, %44
  %cmp440 = icmp ugt i32 %add436, %add438
  %cond445 = select i1 %cmp440, i32 %add436, i32 %add438
  %cmp447 = icmp ult i32 %add436, %add438
  %cond452 = select i1 %cmp447, i32 %add436, i32 %add438
  %rem453 = urem i32 %cond445, %cond452
  %cmp454.not = icmp eq i32 %rem453, 0
  br i1 %cmp454.not, label %if.end458, label %if.then456

if.then456:                                       ; preds = %if.then433
  %discard_misaligned = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 25
  store i8 1, i8* %discard_misaligned, align 1
  br label %if.end458

if.end458:                                        ; preds = %if.then433, %if.then456, %land.lhs.true, %if.then426
  %max_discard_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 13
  %47 = load i32, i32* %max_discard_sectors, align 8
  %max_discard_sectors461 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 13
  %48 = load i32, i32* %max_discard_sectors461, align 8
  %cmp463 = icmp eq i32 %47, 0
  br i1 %cmp463, label %cond.end480, label %cond.false466

cond.false466:                                    ; preds = %if.end458
  %cmp467 = icmp eq i32 %48, 0
  br i1 %cmp467, label %cond.end480, label %cond.false470

cond.false470:                                    ; preds = %cond.false466
  %cmp472 = icmp ult i32 %47, %48
  %cond477 = select i1 %cmp472, i32 %47, i32 %48
  br label %cond.end480

cond.end480:                                      ; preds = %cond.false466, %if.end458, %cond.false470
  %cond481 = phi i32 [ %cond477, %cond.false470 ], [ %48, %if.end458 ], [ %47, %cond.false466 ]
  store i32 %cond481, i32* %max_discard_sectors, align 8
  %max_hw_discard_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 14
  %49 = load i32, i32* %max_hw_discard_sectors, align 4
  %max_hw_discard_sectors485 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 14
  %50 = load i32, i32* %max_hw_discard_sectors485, align 4
  %cmp487 = icmp eq i32 %49, 0
  br i1 %cmp487, label %cond.end504, label %cond.false490

cond.false490:                                    ; preds = %cond.end480
  %cmp491 = icmp eq i32 %50, 0
  br i1 %cmp491, label %cond.end504, label %cond.false494

cond.false494:                                    ; preds = %cond.false490
  %cmp496 = icmp ult i32 %49, %50
  %cond501 = select i1 %cmp496, i32 %49, i32 %50
  br label %cond.end504

cond.end504:                                      ; preds = %cond.false490, %cond.end480, %cond.false494
  %cond505 = phi i32 [ %cond501, %cond.false494 ], [ %50, %cond.end480 ], [ %49, %cond.false490 ]
  store i32 %cond505, i32* %max_hw_discard_sectors, align 4
  %51 = load i32, i32* %discard_granularity, align 4
  %cmp510 = icmp ugt i32 %45, %51
  %cond515 = select i1 %cmp510, i32 %45, i32 %51
  store i32 %cond515, i32* %discard_granularity428, align 4
  %discard_alignment517 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 19
  %52 = load i32, i32* %discard_alignment517, align 8
  %conv518 = zext i32 %52 to i64
  %conv519 = zext i32 %call427 to i64
  %call520 = call i64 @lcm_not_zero(i64 noundef %conv518, i64 noundef %conv519) #12
  %conv522 = zext i32 %cond515 to i64
  %rem523 = urem i64 %call520, %conv522
  %conv524 = trunc i64 %rem523 to i32
  store i32 %conv524, i32* %discard_alignment517, align 8
  br label %if.end526

if.end526:                                        ; preds = %cond.end504, %if.end412
  %zone_write_granularity = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 20
  %53 = load i32, i32* %zone_write_granularity, align 4
  %zone_write_granularity527 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 20
  %54 = load i32, i32* %zone_write_granularity527, align 4
  %cmp529 = icmp ugt i32 %53, %54
  %cond534 = select i1 %cmp529, i32 %53, i32 %54
  store i32 %cond534, i32* %zone_write_granularity, align 4
  %zoned = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %t, i64 0, i32 27
  %55 = load i32, i32* %zoned, align 4
  %zoned536 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %b, i64 0, i32 27
  %56 = load i32, i32* %zoned536, align 4
  %cmp538 = icmp ugt i32 %55, %56
  %cond543 = select i1 %cmp538, i32 %55, i32 %56
  store i32 %cond543, i32* %zoned, align 4
  ret i32 %ret.5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_limit_alignment_offset(%struct.queue_limits* nocapture noundef readonly %lim, i64 noundef %sector) unnamed_addr #4 {
entry:
  %physical_block_size = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 8
  %0 = load i32, i32* %physical_block_size, align 4
  %io_min = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 11
  %1 = load i32, i32* %io_min, align 8
  %cmp = icmp ugt i32 %0, %1
  %cond = select i1 %cmp, i32 %0, i32 %1
  %shr = lshr i32 %cond, 9
  %conv = zext i32 %shr to i64
  %rem = urem i64 %sector, %conv
  %conv1 = trunc i64 %rem to i32
  %shl.neg = mul i32 %conv1, -512
  %alignment_offset = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 10
  %2 = load i32, i32* %alignment_offset, align 4
  %add = add i32 %cond, %2
  %sub = add i32 %add, %shl.neg
  %rem4 = urem i32 %sub, %cond
  ret i32 %rem4
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i64 @lcm_not_zero(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i64 @gcd(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @blk_round_down_sectors(i32 noundef %sectors, i32 noundef %lbs) unnamed_addr #7 {
entry:
  %shr = lshr i32 %lbs, 9
  %neg = sub nsw i32 0, %shr
  %and = and i32 %neg, %sectors
  %0 = icmp ugt i32 %and, 8
  %spec.store.select = select i1 %0, i32 %and, i32 8
  ret i32 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @queue_limit_discard_alignment(%struct.queue_limits* nocapture noundef readonly %lim, i64 noundef %sector) unnamed_addr #4 {
entry:
  %max_discard_sectors = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 13
  %0 = load i32, i32* %max_discard_sectors, align 8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %discard_granularity = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 18
  %1 = load i32, i32* %discard_granularity, align 4
  %shr1 = lshr i32 %1, 9
  %tobool2.not = icmp ult i32 %1, 512
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %discard_alignment = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %lim, i64 0, i32 19
  %2 = load i32, i32* %discard_alignment, align 8
  %shr = lshr i32 %2, 9
  %conv = zext i32 %shr1 to i64
  %rem = urem i64 %sector, %conv
  %conv5 = trunc i64 %rem to i32
  %add = add nuw nsw i32 %shr, %shr1
  %sub = sub nsw i32 %add, %conv5
  %rem7 = urem i32 %sub, %shr1
  %shl = shl nuw i32 %rem7, 9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %shl, %if.end4 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @disk_stack_limits(%struct.gendisk* noundef %disk, %struct.block_device* noundef %bdev, i64 noundef %offset) local_unnamed_addr #1 {
entry:
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 9
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  %limits = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 31
  %call = call fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* noundef %bdev) #9
  %limits1 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %call, i64 0, i32 31
  %call2 = call fastcc i64 @get_start_sect(%struct.block_device* noundef %bdev) #9
  %shr = lshr i64 %offset, 9
  %add = add i64 %call2, %shr
  %call3 = call i32 @blk_stack_limits(%struct.queue_limits* noundef %limits, %struct.queue_limits* noundef %limits1, i64 noundef %add) #9
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 3, i64 0
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* noundef %arraydecay, %struct.block_device* noundef %bdev) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  call void @disk_update_readahead(%struct.gendisk* noundef %disk) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.request_queue* @bdev_get_queue(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #4 {
entry:
  %bd_disk = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 16
  %0 = load %struct.gendisk*, %struct.gendisk** %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %0, i64 0, i32 9
  %1 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  ret %struct.request_queue* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @get_start_sect(%struct.block_device* nocapture noundef readonly %bdev) unnamed_addr #4 {
entry:
  %bd_start_sect = getelementptr inbounds %struct.block_device, %struct.block_device* %bdev, i64 0, i32 0
  %0 = load i64, i64* %bd_start_sect, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @blk_queue_update_dma_pad(%struct.request_queue* nocapture noundef %q, i32 noundef %mask) local_unnamed_addr #3 {
entry:
  %dma_pad_mask = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 19
  %0 = load i32, i32* %dma_pad_mask, align 8
  %cmp = icmp ult i32 %0, %mask
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %mask, i32* %dma_pad_mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_segment_boundary(%struct.request_queue* nocapture noundef writeonly %q, i64 noundef %mask) local_unnamed_addr #1 {
entry:
  %cmp = icmp ult i64 %mask, 4095
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.blk_queue_segment_boundary, i64 0, i64 0), i64 noundef 4095) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %mask.addr.0 = phi i64 [ 4095, %if.then ], [ %mask, %entry ]
  %seg_boundary_mask = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 1
  store i64 %mask.addr.0, i64* %seg_boundary_mask, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_queue_virt_boundary(%struct.request_queue* nocapture noundef writeonly %q, i64 noundef %mask) local_unnamed_addr #0 {
entry:
  %virt_boundary_mask = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 2
  store i64 %mask, i64* %virt_boundary_mask, align 8
  %tobool.not = icmp eq i64 %mask, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %max_segment_size = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 31, i32 7
  store i32 -1, i32* %max_segment_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_queue_dma_alignment(%struct.request_queue* nocapture noundef writeonly %q, i32 noundef %mask) local_unnamed_addr #0 {
entry:
  %dma_alignment = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 20
  store i32 %mask, i32* %dma_alignment, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_update_dma_alignment(%struct.request_queue* nocapture noundef %q, i32 noundef %mask) local_unnamed_addr #1 {
entry:
  %cmp = icmp ugt i32 %mask, 4096
  br i1 %cmp, label %do.body4, label %do.end7, !prof !11

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-settings.c\22; .popsection; .long 14472b - 14470b; .short 764; .short 0; .popsection; 14471: brk 0x800", ""() #11, !srcloc !12
  unreachable

do.end7:                                          ; preds = %entry
  %dma_alignment = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 20
  %0 = load i32, i32* %dma_alignment, align 4
  %cmp8 = icmp ult i32 %0, %mask
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %do.end7
  store i32 %mask, i32* %dma_alignment, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_set_queue_depth(%struct.request_queue* nocapture noundef %q, i32 noundef %depth) local_unnamed_addr #1 {
entry:
  %queue_depth = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 7
  store i32 %depth, i32* %queue_depth, align 8
  call fastcc void @rq_qos_queue_depth_changed(%struct.request_queue* noundef %q) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rq_qos_queue_depth_changed(%struct.request_queue* nocapture noundef readonly %q) unnamed_addr #1 {
entry:
  %rq_qos = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 4
  %0 = load %struct.rq_qos*, %struct.rq_qos** %rq_qos, align 8
  %tobool.not = icmp eq %struct.rq_qos* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__rq_qos_queue_depth_changed(%struct.rq_qos* noundef nonnull %0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_write_cache(%struct.request_queue* noundef %q, i1 noundef %wc, i1 noundef %fua) local_unnamed_addr #1 {
entry:
  br i1 %wc, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @blk_queue_flag_set(i32 noundef 17, %struct.request_queue* noundef %q) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @blk_queue_flag_clear(i32 noundef 17, %struct.request_queue* noundef %q) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br i1 %fua, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  call void @blk_queue_flag_set(i32 noundef 18, %struct.request_queue* noundef %q) #13
  br label %if.end5

if.else4:                                         ; preds = %if.end
  call void @blk_queue_flag_clear(i32 noundef 18, %struct.request_queue* noundef %q) #13
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3
  %queue_flags = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 11
  %0 = load volatile i64, i64* %queue_flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, %struct.request_queue* noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, %struct.request_queue* noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define dso_local void @blk_queue_required_elevator_features(%struct.request_queue* nocapture noundef writeonly %q, i32 noundef %features) local_unnamed_addr #0 {
entry:
  %required_elevator_features = getelementptr inbounds %struct.request_queue, %struct.request_queue* %q, i64 0, i32 32
  store i32 %features, i32* %required_elevator_features, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @blk_queue_can_use_dma_map_merging(%struct.request_queue* nocapture noundef writeonly %q, %struct.device* noundef %dev) local_unnamed_addr #1 {
entry:
  %call = call i64 @dma_get_merge_boundary(%struct.device* noundef %dev) #13
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @blk_queue_virt_boundary(%struct.request_queue* noundef %q, i64 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %0 = xor i1 %tobool.not, true
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_get_merge_boundary(%struct.device* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @blk_queue_set_zoned(%struct.gendisk* nocapture noundef readonly %disk, i32 noundef %model) local_unnamed_addr #1 {
entry:
  %queue = getelementptr inbounds %struct.gendisk, %struct.gendisk* %disk, i64 0, i32 9
  %0 = load %struct.request_queue*, %struct.request_queue** %queue, align 8
  switch i32 %model, label %if.then26 [
    i32 2, label %if.then
    i32 1, label %sw.epilog
    i32 0, label %sw.epilog
  ], !prof !13

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-settings.c\22; .popsection; .long 14472b - 14470b; .short 885; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !14
  %zoned.c54 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 31, i32 27
  store i32 2, i32* %zoned.c54, align 4
  call void @blk_queue_zone_write_granularity(%struct.request_queue* undef, i32 undef) #9
  br label %if.end42

if.then26:                                        ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22block/blk-settings.c\22; .popsection; .long 14472b - 14470b; .short 902; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #11, !srcloc !15
  %zoned.c = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 31, i32 27
  store i32 0, i32* %zoned.c, align 4
  br label %if.end42

sw.epilog:                                        ; preds = %entry, %entry
  %zoned = getelementptr inbounds %struct.request_queue, %struct.request_queue* %0, i64 0, i32 31, i32 27
  store i32 0, i32* %zoned, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then26, %sw.epilog, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_queue_depth_changed(%struct.rq_qos* noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { cold nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2154492892}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2154504859}
!10 = !{i64 2154507172}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2154560727}
!13 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!14 = !{i64 2154568341}
!15 = !{i64 2154570846}
