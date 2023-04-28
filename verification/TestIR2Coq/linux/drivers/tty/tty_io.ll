; ModuleID = 'drivers/tty/tty_io.c'
source_filename = "drivers/tty/tty_io.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall2.init\22, \22a\22\09\09"
module asm "__initcall__kmod_tty_io__296_3546_tty_class_init2:\09\09\09"
module asm ".long\09tty_class_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.5, i32 }
%union.anon.5 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.62, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.8 = type { i32 }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.9, [0 x i64] }
%struct.anon.9 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.10, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.10 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.11, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.12, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.11 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.12 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.13, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.32 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, %struct.fdtable*, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x %struct.file*], [32 x i8] }
%struct.fdtable = type { i32, %struct.file**, i64*, i64*, i64*, %struct.callback_head }
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
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.45, %struct.anon.46, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
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
%struct.sock = type opaque
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.39, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.39 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, i8*, i16, i32, i64 }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.45 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.46 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.40, %struct.qspinlock }
%union.anon.40 = type { %struct.atomic_t }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.44, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.44 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.47, %union.anon.48, i32 }
%struct.request_queue = type opaque
%union.anon.47 = type { %struct.list_head }
%union.anon.48 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.49 }
%struct.anon.49 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.53 }
%struct.anon.53 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.61, i32, [12 x i8] }
%union.anon.61 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.62 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.63, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.63 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.lockref = type { %union.anon.68 }
%union.anon.68 = type { i64 }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.67, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.65 = type { %struct.callback_head }
%union.anon.66 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.67 = type { %struct.pipe_inode_info* }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.38 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.15 }
%union.anon.15 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.16, %union.anon.17 }
%union.anon.16 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.17 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.42 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.42 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.console = type { [16 x i8], void (%struct.console*, i8*, i32)*, i32 (%struct.console*, i8*, i32)*, %struct.tty_driver* (%struct.console*, i32*)*, void ()*, i32 (%struct.console*, i8*)*, i32 (%struct.console*)*, i32 (%struct.console*, i8*, i32, i8*)*, i16, i16, i32, i8*, %struct.console* }
%struct.tty_file_private = type { %struct.tty_struct*, %struct.file*, %struct.list_head }

@tty_std_termios = dso_local local_unnamed_addr global %struct.ktermios { i32 1280, i32 5, i32 1215, i32 35387, i8 0, [19 x i8] c"\03\1C\7F\15\04\00\01\00\11\13\1A\00\12\0F\17\16\00\00\00", i32 38400, i32 38400 }, align 4
@tty_drivers = dso_local global %struct.list_head { %struct.list_head* @tty_drivers, %struct.list_head* @tty_drivers }, align 8
@tty_mutex = dso_local global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @tty_mutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @tty_mutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@.str = private unnamed_addr constant [9 x i8] c"NULL tty\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hung_up_tty_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @hung_up_tty_read, i64 (%struct.kiocb*, %struct.iov_iter*)* @hung_up_tty_write, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @hung_up_tty_poll, i64 (%struct.file*, i32, i64)* @hung_up_tty_ioctl, i64 (%struct.file*, i32, i64)* @hung_up_tty_compat_ioctl, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @tty_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* @hung_up_tty_fasync, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@redirect_lock = internal global %struct.spinlock zeroinitializer, align 4
@redirect = internal unnamed_addr global %struct.file* null, align 8
@tty_init_dev._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.tty_init_dev = private unnamed_addr constant [13 x i8] c"tty_init_dev\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"%s: %s driver does not set tty->port. This would crash the kernel. Fix the driver!\0A\00", align 1
@tty_init_dev._rs.3 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"\016%s %s: ldisc open failed (%d), clearing slot %d\0A\00", align 1
@__func__.tty_release = private unnamed_addr constant [12 x i8] c"tty_release\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\014%s %s: read/write wait queue active!\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\014%s %s: bad slave count (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\014%s %s: bad tty->count (%d)\0A\00", align 1
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"tty_ioctl\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"\015%s %s: SAK: killed process %d (%s): by session\0A\00", align 1
@init_task = external dso_local global %struct.task_struct, align 64
@.str.10 = private unnamed_addr constant [58 x i8] c"\015%s %s: SAK: killed process %d (%s): by controlling tty\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"\015%s %s: SAK: killed process %d (%s): by fd#%d\0A\00", align 1
@alloc_tty_struct.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"&tty->legacy_mutex\00", align 1
@alloc_tty_struct.__key.13 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"&tty->throttle_mutex\00", align 1
@alloc_tty_struct.__key.15 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"&tty->termios_rwsem\00", align 1
@alloc_tty_struct.__key.17 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"&tty->winsize_mutex\00", align 1
@alloc_tty_struct.__key.19 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"&tty->ldisc_sem\00", align 1
@alloc_tty_struct.__key.21 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"&tty->write_wait\00", align 1
@alloc_tty_struct.__key.23 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"&tty->read_wait\00", align 1
@alloc_tty_struct.__key.25 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"&tty->atomic_write_lock\00", align 1
@.str.27 = private unnamed_addr constant [56 x i8] c"\013%s: Attempt to register invalid tty line number (%d)\0A\00", align 1
@tty_class = dso_local local_unnamed_addr global %struct.class* null, align 8
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tty_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @tty_read, i64 (%struct.kiocb*, %struct.iov_iter*)* @tty_write, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @tty_poll, i64 (%struct.file*, i32, i64)* @tty_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @tty_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @tty_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* @tty_fasync, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* @iter_file_splice_write, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* @generic_file_splice_read, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* @tty_show_fdinfo, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@__UNIQUE_ID___addressable_tty_class_init297 = internal global i8* bitcast (i32 ()* @tty_class_init to i8*), section ".discard.addressable", align 8
@consdev = internal unnamed_addr global %struct.device* null, align 8
@.str.29 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@tty_cdev = internal global %struct.cdev zeroinitializer, align 8
@.str.30 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"Couldn't register /dev/tty driver\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@console_cdev = internal global %struct.cdev zeroinitializer, align 8
@console_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* @tty_read, i64 (%struct.kiocb*, %struct.iov_iter*)* @redirected_tty_write, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @tty_poll, i64 (%struct.file*, i32, i64)* @tty_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @tty_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @tty_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* @tty_fasync, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* @iter_file_splice_write, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* @generic_file_splice_read, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@.str.33 = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"Couldn't register /dev/console driver\0A\00", align 1
@cons_dev_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @cons_dev_group, %struct.attribute_group* null], align 8
@.str.35 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str.36 = private unnamed_addr constant [11 x i8] c"tty_hangup\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.37 = private unnamed_addr constant [10 x i8] c"tty_write\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"\013%s %s: missing write_room method\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"\014(%d:%d): %s: NULL tty\0A\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"\014(%d:%d): %s: bad magic number\0A\00", align 1
@.str.43 = private unnamed_addr constant [59 x i8] c"\014%s %s: %s: tty->count(%d) != (#fd's(%d) + #kopen's(%d))\0A\00", align 1
@console_driver = external dso_local local_unnamed_addr global %struct.tty_driver*, align 8
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@.str.44 = private unnamed_addr constant [11 x i8] c"tty_fasync\00", align 1
@tty_set_serial._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8
@__func__.tty_set_serial = private unnamed_addr constant [15 x i8] c"tty_set_serial\00", align 1
@.str.45 = private unnamed_addr constant [68 x i8] c"\014%s: '%s' is using deprecated serial flags (with no effect): %.8x\0A\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"tty_read\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@pty_line_name.ptychar = internal unnamed_addr constant [17 x i8] c"pqrstuvwxyzabcde\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"%s%c%x\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"tty_poll\00", align 1
@__func__.tty_open = private unnamed_addr constant [9 x i8] c"tty_open\00", align 1
@tty_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@cons_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @cons_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8
@cons_dev_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_active, i32 0, i32 0), %struct.attribute* null], align 8
@dev_attr_active = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_cons_active, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8
@console_drivers = external dso_local local_unnamed_addr global %struct.console*, align 8
@.str.50 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_tty_class_init297 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_alloc_file(%struct.file* nocapture noundef writeonly %file) local_unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #16
  %tobool.not = icmp eq i8* %call.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  store i8* %call.i.i, i8** %private_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_add_file(%struct.tty_struct* noundef %tty, %struct.file* noundef %file) local_unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.tty_file_private**
  %1 = load %struct.tty_file_private*, %struct.tty_file_private** %0, align 8
  %tty1 = getelementptr inbounds %struct.tty_file_private, %struct.tty_file_private* %1, i64 0, i32 0
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty1, align 8
  %file2 = getelementptr inbounds %struct.tty_file_private, %struct.tty_file_private* %1, i64 0, i32 1
  store %struct.file* %file, %struct.file** %file2, align 8
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 31, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %list = getelementptr inbounds %struct.tty_file_private, %struct.tty_file_private* %1, i64 0, i32 2
  %tty_files = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 32
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %tty_files) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_free_file(%struct.file* nocapture noundef %file) local_unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = load i8*, i8** %private_data, align 8
  store i8* null, i8** %private_data, align 8
  call void @kfree(i8* noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local i8* @tty_name(%struct.tty_struct* noundef readnone %tty) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  %arraydecay = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 15, i64 0
  %retval.0 = select i1 %tobool.not, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %arraydecay
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i8* @tty_driver_name(%struct.tty_struct* noundef readonly %tty) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %0 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %tobool1.not = icmp eq %struct.tty_driver* %0, null
  br i1 %tobool1.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 5
  %1 = load i8*, i8** %name, align 8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i8* [ %1, %if.end ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %lor.lhs.false ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_dev_name_to_number(i8* noundef %name, i32* nocapture noundef writeonly %number) local_unnamed_addr #0 {
entry:
  %index = alloca i32, align 4
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  store i32 0, i32* %index, align 4, !annotation !7
  %1 = load i8, i8* %name, align 1
  %tobool.not66 = icmp eq i8 %1, 0
  br i1 %tobool.not66, label %cleanup, label %land.rhs

land.rhs:                                         ; preds = %entry, %for.inc
  %2 = phi i8 [ %3, %for.inc ], [ %1, %entry ]
  %str.067 = phi i8* [ %incdec.ptr, %for.inc ], [ %name, %entry ]
  %conv = zext i8 %2 to i32
  %call = call fastcc i32 @isdigit(i32 noundef %conv) #17
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.inc, label %if.end

for.inc:                                          ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, i8* %str.067, i64 1
  %3 = load i8, i8* %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %cleanup, label %land.rhs

if.end:                                           ; preds = %land.rhs
  %call4 = call i32 @kstrtoint(i8* noundef %str.067, i32 noundef 10, i32* noundef nonnull %index) #16
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  call void @mutex_lock(%struct.mutex* noundef nonnull @tty_mutex) #16
  %.pn68 = load i8*, i8** bitcast (%struct.list_head* @tty_drivers to i8**), align 8
  %cmp.not69 = icmp eq i8* %.pn68, bitcast (%struct.list_head* @tty_drivers to i8*)
  br i1 %cmp.not69, label %out, label %for.body12.lr.ph

for.body12.lr.ph:                                 ; preds = %if.end7
  %sub.ptr.lhs.cast = ptrtoint i8* %str.067 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %name to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sext = shl i64 %sub.ptr.sub, 32
  %conv13 = ashr exact i64 %sext, 32
  br label %for.body12

for.body12:                                       ; preds = %for.body12.lr.ph, %for.inc29
  %.pn70 = phi i8* [ %.pn68, %for.body12.lr.ph ], [ %.pn, %for.inc29 ]
  %name14 = getelementptr i8, i8* %.pn70, i64 -136
  %4 = bitcast i8* %name14 to i8**
  %5 = load i8*, i8** %4, align 8
  %call15 = call i64 @strlen(i8* noundef %5) #16
  %cmp16 = icmp eq i64 %conv13, %call15
  br i1 %cmp16, label %land.lhs.true, label %for.inc29

land.lhs.true:                                    ; preds = %for.body12
  %6 = load i8*, i8** %4, align 8
  %call20 = call i32 @strncmp(i8* noundef %name, i8* noundef %6, i64 noundef %conv13) #16
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %for.inc29

if.then23:                                        ; preds = %land.lhs.true
  %7 = load i32, i32* %index, align 4
  %num = getelementptr i8, i8* %.pn70, i64 -116
  %8 = bitcast i8* %num to i32*
  %9 = load i32, i32* %8, align 4
  %cmp24 = icmp ult i32 %7, %9
  br i1 %cmp24, label %if.then26, label %for.inc29

if.then26:                                        ; preds = %if.then23
  %major = getelementptr i8, i8* %.pn70, i64 -124
  %10 = bitcast i8* %major to i32*
  %11 = load i32, i32* %10, align 4
  %shl = shl i32 %11, 20
  %minor_start = getelementptr i8, i8* %.pn70, i64 -120
  %12 = bitcast i8* %minor_start to i32*
  %13 = load i32, i32* %12, align 8
  %add = add i32 %13, %7
  %or = or i32 %add, %shl
  store i32 %or, i32* %number, align 4
  br label %out

for.inc29:                                        ; preds = %for.body12, %land.lhs.true, %if.then23
  %14 = bitcast i8* %.pn70 to i8**
  %.pn = load i8*, i8** %14, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @tty_drivers to i8*)
  br i1 %cmp.not, label %out, label %for.body12

out:                                              ; preds = %for.inc29, %if.end7, %if.then26
  %ret.0 = phi i32 [ 0, %if.then26 ], [ -19, %if.end7 ], [ -19, %for.inc29 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %entry, %if.end, %out
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call4, %if.end ], [ -22, %entry ], [ -22, %for.inc ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @isdigit(i32 noundef %c) unnamed_addr #4 {
entry:
  %0 = add i32 %c, -48
  %1 = icmp ult i32 %0, 10
  %land.ext = zext i1 %1 to i32
  ret i32 %land.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_wakeup(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 32
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* noundef %tty) #16
  %tobool2.not = icmp eq %struct.tty_ldisc* %call1, null
  br i1 %tobool2.not, label %if.end9, label %if.then3

if.then3:                                         ; preds = %if.then
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %call1, i64 0, i32 0
  %2 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %write_wakeup = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %2, i64 0, i32 14
  %3 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %write_wakeup, align 8
  %tobool4.not = icmp eq void (%struct.tty_struct*)* %3, null
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void %3(%struct.tty_struct* noundef %tty) #16
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call1) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.end, %entry
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 26
  call void @__wake_up(%struct.wait_queue_head* noundef %write_wait, i32 noundef 1, i32 noundef 1, i8* noundef nonnull inttoptr (i64 4 to i8*)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(%struct.tty_ldisc* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_hangup(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %hangup_work = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 28
  call fastcc void @schedule_work(%struct.work_struct* noundef %hangup_work) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_vhangup(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  call fastcc void @__tty_hangup(%struct.tty_struct* noundef %tty, i32 noundef 0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__tty_hangup(%struct.tty_struct* noundef %tty, i32 noundef %exit_session) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.file* @tty_release_redirect(%struct.tty_struct* noundef nonnull %tty) #17
  call void @tty_lock(%struct.tty_struct* noundef nonnull %tty) #16
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 262144
  %tobool2.not = icmp eq i64 %1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @tty_unlock(%struct.tty_struct* noundef nonnull %tty) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call fastcc void @set_bit(i64 noundef 19, i64* noundef %flags) #17
  call fastcc void @check_tty_count(%struct.tty_struct* noundef nonnull %tty, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0)) #17
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 31, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %tty_files = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 32
  %2 = bitcast %struct.list_head* %tty_files to i8**
  %.pn126 = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn126 to %struct.list_head*
  %cmp.not127 = icmp eq %struct.list_head* %tty_files, %3
  br i1 %cmp.not127, label %for.end, label %for.body

for.body:                                         ; preds = %if.end4, %for.inc
  %.pn130 = phi i8* [ %.pn, %for.inc ], [ %.pn126, %if.end4 ]
  %cons_filp.0129 = phi %struct.file* [ %spec.select, %for.inc ], [ null, %if.end4 ]
  %closecount.0128 = phi i32 [ %closecount.1, %for.inc ], [ 0, %if.end4 ]
  %file = getelementptr i8, i8* %.pn130, i64 -8
  %4 = bitcast i8* %file to %struct.file**
  %5 = load %struct.file*, %struct.file** %4, align 8
  %f_op = getelementptr inbounds %struct.file, %struct.file* %5, i64 0, i32 3
  %6 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %6, i64 0, i32 5
  %7 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %cmp8 = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %7, @redirected_tty_write
  %spec.select = select i1 %cmp8, %struct.file* %5, %struct.file* %cons_filp.0129
  %cmp13.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %7, @tty_write
  br i1 %cmp13.not, label %if.end15, label %for.inc

if.end15:                                         ; preds = %for.body
  %inc = add i32 %closecount.0128, 1
  %call16 = call fastcc i32 @__tty_fasync(i32 noundef -1, %struct.file* noundef %5, i32 noundef 0) #17
  store %struct.file_operations* @hung_up_tty_fops, %struct.file_operations** %f_op, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end15
  %closecount.1 = phi i32 [ %closecount.0128, %for.body ], [ %inc, %if.end15 ]
  %8 = bitcast i8* %.pn130 to i8**
  %.pn = load i8*, i8** %8, align 8
  %9 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %tty_files, %9
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end4
  %closecount.0.lcssa = phi i32 [ 0, %if.end4 ], [ %closecount.1, %for.inc ]
  %cons_filp.0.lcssa = phi %struct.file* [ null, %if.end4 ], [ %spec.select, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  %call27 = call i32 @tty_signal_session_leader(%struct.tty_struct* noundef nonnull %tty, i32 noundef %exit_session) #16
  %tobool28.not132 = icmp eq i32 %call27, 0
  br i1 %tobool28.not132, label %while.end, label %while.body

while.body:                                       ; preds = %for.end, %while.body
  %refs.0133 = phi i32 [ %dec, %while.body ], [ %call27, %for.end ]
  %dec = add i32 %refs.0133, -1
  call void @tty_kref_put(%struct.tty_struct* noundef nonnull %tty) #17
  %tobool28.not = icmp eq i32 %dec, 0
  br i1 %tobool28.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %for.end
  %cmp29 = icmp ne %struct.file* %cons_filp.0.lcssa, null
  call void @tty_ldisc_hangup(%struct.tty_struct* noundef nonnull %tty, i1 noundef %cmp29) #16
  %rlock.i124 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i124) #16
  call fastcc void @clear_bit(i64 noundef 0, i64* noundef %flags) #17
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %flags) #17
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 2
  %10 = load %struct.pid*, %struct.pid** %session, align 8
  call void @put_pid(%struct.pid* noundef %10) #16
  %pgrp = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 1
  %11 = load %struct.pid*, %struct.pid** %pgrp, align 8
  call void @put_pid(%struct.pid* noundef %11) #16
  store %struct.pid* null, %struct.pid** %session, align 8
  store %struct.pid* null, %struct.pid** %pgrp, align 8
  %pktstatus = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 3
  store i8 0, i8* %pktstatus, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i124) #16
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %12 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  br i1 %cmp29, label %if.then42, label %if.else

if.then42:                                        ; preds = %while.end
  %close = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %12, i64 0, i32 4
  %13 = load void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)** %close, align 8
  %tobool43.not = icmp ne void (%struct.tty_struct*, %struct.file*)* %13, null
  %cmp46134 = icmp sgt i32 %closecount.0.lcssa, 0
  %or.cond = select i1 %tobool43.not, i1 %cmp46134, i1 false
  br i1 %or.cond, label %for.body47.preheader, label %if.end60

for.body47.preheader:                             ; preds = %if.then42
  call void %13(%struct.tty_struct* noundef nonnull %tty, %struct.file* noundef nonnull %cons_filp.0.lcssa) #16
  %exitcond.not137 = icmp eq i32 %closecount.0.lcssa, 1
  br i1 %exitcond.not137, label %if.end60, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47.preheader, %for.body47.for.body47_crit_edge
  %inc51138 = phi i32 [ %inc51, %for.body47.for.body47_crit_edge ], [ 1, %for.body47.preheader ]
  %.pre = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %close49.phi.trans.insert = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %.pre, i64 0, i32 4
  %.pre136 = load void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)** %close49.phi.trans.insert, align 8
  call void %.pre136(%struct.tty_struct* noundef nonnull %tty, %struct.file* noundef nonnull %cons_filp.0.lcssa) #16
  %inc51 = add nuw nsw i32 %inc51138, 1
  %exitcond.not = icmp eq i32 %inc51, %closecount.0.lcssa
  br i1 %exitcond.not, label %if.end60, label %for.body47.for.body47_crit_edge

if.else:                                          ; preds = %while.end
  %hangup = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %12, i64 0, i32 19
  %14 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %hangup, align 8
  %tobool55.not = icmp eq void (%struct.tty_struct*)* %14, null
  br i1 %tobool55.not, label %if.end60, label %if.then56

if.then56:                                        ; preds = %if.else
  call void %14(%struct.tty_struct* noundef nonnull %tty) #16
  br label %if.end60

if.end60:                                         ; preds = %for.body47.for.body47_crit_edge, %for.body47.preheader, %if.else, %if.then56, %if.then42
  call fastcc void @set_bit(i64 noundef 18, i64* noundef %flags) #17
  call fastcc void @clear_bit(i64 noundef 19, i64* noundef %flags) #17
  call void @tty_unlock(%struct.tty_struct* noundef nonnull %tty) #16
  %tobool63.not = icmp eq %struct.file* %call, null
  br i1 %tobool63.not, label %cleanup, label %if.then64

if.then64:                                        ; preds = %if.end60
  call void @fput(%struct.file* noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then64, %entry, %if.then3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_vhangup_self() local_unnamed_addr #0 {
entry:
  %call = call %struct.tty_struct* @get_current_tty() #16
  %tobool.not = icmp eq %struct.tty_struct* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @tty_vhangup(%struct.tty_struct* noundef nonnull %call) #17
  call void @tty_kref_put(%struct.tty_struct* noundef nonnull %call) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tty_struct* @get_current_tty() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_kref_put(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 1
  call fastcc void @kref_put(%struct.kref* noundef %kref, void (%struct.kref*)* noundef nonnull @queue_release_one_tty) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_vhangup_session(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  call fastcc void @__tty_hangup(%struct.tty_struct* noundef %tty, i32 noundef 1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @tty_hung_up_p(%struct.file* noundef readonly %filp) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.file* %filp, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %cmp = icmp eq %struct.file_operations* %0, @hung_up_tty_fops
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__stop_tty(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 1
  %0 = load i8, i8* %stopped, align 4, !range !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.end7

if.end:                                           ; preds = %entry
  store i8 1, i8* %stopped, align 4
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %1 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %stop = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %1, i64 0, i32 17
  %2 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %stop, align 8
  %tobool3.not = icmp eq void (%struct.tty_struct*)* %2, null
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void %2(%struct.tty_struct* noundef %tty) #16
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @stop_tty(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  call void @__stop_tty(%struct.tty_struct* noundef %tty) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #17
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !9
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__start_tty(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 1
  %0 = load i8, i8* %stopped, align 4, !range !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tco_stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 2
  %1 = load i8, i8* %tco_stopped, align 1, !range !8
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  store i8 0, i8* %stopped, align 4
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %2 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %start = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %2, i64 0, i32 18
  %3 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %start, align 8
  %tobool5.not = icmp eq void (%struct.tty_struct*)* %3, null
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  call void %3(%struct.tty_struct* noundef %tty) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  call void @tty_wakeup(%struct.tty_struct* noundef %tty) #17
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @start_tty(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  call void @__start_tty(%struct.tty_struct* noundef %tty) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_write_message(%struct.tty_struct* noundef %tty, i8* noundef %msg) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %atomic_write_lock = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 8
  call void @mutex_lock(%struct.mutex* noundef %atomic_write_lock) #16
  call void @tty_lock(%struct.tty_struct* noundef nonnull %tty) #16
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %write = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 7
  %1 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %write, align 8
  %tobool1.not = icmp eq i32 (%struct.tty_struct*, i8*, i32)* %1, null
  br i1 %tobool1.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %count = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 17
  %2 = load i32, i32* %count, align 8
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %land.lhs.true
  %call = call i64 @strlen(i8* noundef %msg) #16
  %conv = trunc i64 %call to i32
  %call5 = call i32 %1(%struct.tty_struct* noundef nonnull %tty, i8* noundef %msg, i32 noundef %conv) #16
  br label %if.end

if.end:                                           ; preds = %if.then2, %land.lhs.true, %if.then
  call void @tty_unlock(%struct.tty_struct* noundef nonnull %tty) #16
  call fastcc void @tty_write_unlock(%struct.tty_struct* noundef nonnull %tty) #17
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_write_unlock(%struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %atomic_write_lock = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 8
  call void @mutex_unlock(%struct.mutex* noundef %atomic_write_lock) #16
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 26
  call void @__wake_up(%struct.wait_queue_head* noundef %write_wait, i32 noundef 1, i32 noundef 1, i8* noundef nonnull inttoptr (i64 4 to i8*)) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @redirected_tty_write(%struct.kiocb* nocapture noundef readonly %iocb, %struct.iov_iter* noundef %iter) #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @redirect_lock, i64 0, i32 0, i32 0)) #16
  %0 = load %struct.file*, %struct.file** @redirect, align 8
  %tobool.not = icmp eq %struct.file* %0, null
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @redirect_lock, i64 0, i32 0, i32 0)) #16
  %call5 = call i64 @tty_write(%struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.file* @get_file(%struct.file* noundef nonnull %0) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @redirect_lock, i64 0, i32 0, i32 0)) #16
  %call3 = call fastcc i64 @file_tty_write(%struct.file* noundef nonnull %0, %struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %iter) #17
  call void @fput(%struct.file* noundef nonnull %0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end.thread, %if.end
  %retval.0 = phi i64 [ %call3, %if.end ], [ %call5, %if.end.thread ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @get_file(%struct.file* noundef returned %f) unnamed_addr #0 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 6
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %f_count) #16
  ret %struct.file* %f
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @file_tty_write(%struct.file* noundef %file, %struct.kiocb* nocapture noundef readnone %iocb, %struct.iov_iter* noundef %from) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.tty_struct* @file_tty(%struct.file* noundef %file) #17
  %call1 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #17
  %call2 = call fastcc i32 @tty_paranoia_check(%struct.tty_struct* noundef %call, %struct.inode* noundef %call1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0)) #17
  %tobool.not = icmp ne i32 %call2, 0
  %tobool3.not = icmp eq %struct.tty_struct* %call, null
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 4
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %write = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 7
  %1 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %write, align 8
  %tobool4.not = icmp eq i32 (%struct.tty_struct*, i8*, i32)* %1, null
  br i1 %tobool4.not, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call fastcc i1 @tty_io_error(%struct.tty_struct* noundef nonnull %call) #17
  br i1 %call6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false5
  %2 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %write_room = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %2, i64 0, i32 10
  %3 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %write_room, align 8
  %cmp = icmp eq i32 (%struct.tty_struct*)* %3, null
  br i1 %cmp, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end8
  %call11 = call i8* @tty_driver_name(%struct.tty_struct* noundef nonnull %call) #17
  %call12 = call i8* @tty_name(%struct.tty_struct* noundef nonnull %call) #17
  %call13 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i64 0, i64 0), i8* noundef %call11, i8* noundef %call12) #19
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end8
  %call15 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef nonnull %call) #16
  %tobool16.not = icmp eq %struct.tty_ldisc* %call15, null
  br i1 %tobool16.not, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end14
  %ops20 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %call15, i64 0, i32 0
  %4 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops20, align 8
  %write21 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %4, i64 0, i32 7
  %5 = load i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)** %write21, align 8
  %tobool22.not = icmp eq i64 (%struct.tty_struct*, %struct.file*, i8*, i64)* %5, null
  br i1 %tobool22.not, label %if.end27, label %if.else

if.else:                                          ; preds = %if.end19
  %call26 = call fastcc i64 @do_tty_write(i64 (%struct.tty_struct*, %struct.file*, i8*, i64)* noundef nonnull %5, %struct.tty_struct* noundef nonnull %call, %struct.file* noundef %file, %struct.iov_iter* noundef %from) #17
  br label %if.end27

if.end27:                                         ; preds = %if.end19, %if.else
  %ret.0 = phi i64 [ %call26, %if.else ], [ -5, %if.end19 ]
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call15) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %lor.lhs.false, %lor.lhs.false5, %entry, %if.end27
  %retval.0 = phi i64 [ %ret.0, %if.end27 ], [ -5, %entry ], [ -5, %lor.lhs.false5 ], [ -5, %lor.lhs.false ], [ -5, %if.end14 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @tty_write(%struct.kiocb* nocapture noundef readonly %iocb, %struct.iov_iter* noundef %from) #0 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call = call fastcc i64 @file_tty_write(%struct.file* noundef %0, %struct.kiocb* noundef %iocb, %struct.iov_iter* noundef %from) #17
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_send_xchar(%struct.tty_struct* noundef %tty, i8 noundef %ch) local_unnamed_addr #0 {
entry:
  %ch.addr = alloca i8, align 4
  store i8 %ch, i8* %ch.addr, align 4
  %stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 19, i32 1
  %0 = load i8, i8* %stopped, align 4, !range !8
  %tobool.not = icmp eq i8 %0, 0
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %1 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %send_xchar = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %1, i64 0, i32 24
  %2 = load void (%struct.tty_struct*, i8)*, void (%struct.tty_struct*, i8)** %send_xchar, align 8
  %tobool1.not = icmp eq void (%struct.tty_struct*, i8)* %2, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem) #16
  %3 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %send_xchar3 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %3, i64 0, i32 24
  %4 = load void (%struct.tty_struct*, i8)*, void (%struct.tty_struct*, i8)** %send_xchar3, align 8
  call void %4(%struct.tty_struct* noundef %tty, i8 noundef %ch) #16
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @tty_write_lock(%struct.tty_struct* noundef %tty, i32 noundef 0) #17
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %termios_rwsem7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 11
  call void @down_read(%struct.rw_semaphore* noundef %termios_rwsem7) #16
  br i1 %tobool.not, label %if.end15.critedge, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @start_tty(%struct.tty_struct* noundef %tty) #17
  %5 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %write = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %5, i64 0, i32 7
  %6 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %write, align 8
  %call12 = call i32 %6(%struct.tty_struct* noundef %tty, i8* noundef nonnull %ch.addr, i32 noundef 1) #16
  call void @stop_tty(%struct.tty_struct* noundef %tty) #17
  br label %if.end15

if.end15.critedge:                                ; preds = %if.end6
  %7 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %write.c = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %7, i64 0, i32 7
  %8 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %write.c, align 8
  %call12.c = call i32 %8(%struct.tty_struct* noundef %tty, i8* noundef nonnull %ch.addr, i32 noundef 1) #16
  br label %if.end15

if.end15:                                         ; preds = %if.end15.critedge, %if.then9
  call void @up_read(%struct.rw_semaphore* noundef %termios_rwsem7) #16
  call fastcc void @tty_write_unlock(%struct.tty_struct* noundef %tty) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end15, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end15 ], [ -512, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_write_lock(%struct.tty_struct* noundef %tty, i32 noundef %ndelay) unnamed_addr #0 {
entry:
  %atomic_write_lock = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 8
  %call = call i32 @mutex_trylock(%struct.mutex* noundef %atomic_write_lock) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq i32 %ndelay, 0
  br i1 %tobool1.not, label %if.end, label %return

if.end:                                           ; preds = %if.then
  %call4 = call i32 @mutex_lock_interruptible(%struct.mutex* noundef %atomic_write_lock) #16
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %return

if.end8:                                          ; preds = %if.end, %entry
  br label %return

return:                                           ; preds = %if.end, %if.then, %if.end8
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -11, %if.then ], [ -512, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_init_termios(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %0 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %flags = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 13
  %1 = load i64, i64* %flags, align 8
  %and = and i64 %1, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13
  %init_termios = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 12
  %2 = bitcast %struct.ktermios* %termios to i8*
  %3 = bitcast %struct.ktermios* %init_termios to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(44) %2, i8* noundef align 4 dereferenceable(44) %3, i64 44, i1 false)
  br label %if.end14

if.else:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %4 = load i32, i32* %index, align 8
  %termios3 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 18
  %5 = load %struct.ktermios**, %struct.ktermios*** %termios3, align 8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr %struct.ktermios*, %struct.ktermios** %5, i64 %idxprom
  %6 = load %struct.ktermios*, %struct.ktermios** %arrayidx, align 8
  %cmp.not = icmp eq %struct.ktermios* %6, null
  %termios11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13
  br i1 %cmp.not, label %if.else10, label %if.then4

if.then4:                                         ; preds = %if.else
  %7 = bitcast %struct.ktermios* %termios11 to i8*
  %8 = bitcast %struct.ktermios* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(44) %7, i8* noundef nonnull align 4 dereferenceable(44) %8, i64 44, i1 false)
  %c_line = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 12, i32 4
  %9 = load i8, i8* %c_line, align 4
  %c_line9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 4
  store i8 %9, i8* %c_line9, align 8
  br label %if.end14

if.else10:                                        ; preds = %if.else
  %init_termios13 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 12
  %10 = bitcast %struct.ktermios* %termios11 to i8*
  %11 = bitcast %struct.ktermios* %init_termios13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(44) %10, i8* noundef align 4 dereferenceable(44) %11, i64 44, i1 false)
  br label %if.end14

if.end14:                                         ; preds = %if.then4, %if.else10, %if.then
  %termios15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13
  %call = call i32 @tty_termios_input_baud_rate(%struct.ktermios* noundef %termios15) #16
  %c_ispeed = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 6
  store i32 %call, i32* %c_ispeed, align 4
  %call18 = call i32 @tty_termios_baud_rate(%struct.ktermios* noundef %termios15) #16
  %c_ospeed = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 7
  store i32 %call18, i32* %c_ospeed, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_input_baud_rate(%struct.ktermios* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_standard_install(%struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  call void @tty_init_termios(%struct.tty_struct* noundef %tty) #17
  %call = call fastcc %struct.tty_driver* @tty_driver_kref_get(%struct.tty_driver* noundef %driver) #17
  %count = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 17
  %0 = load i32, i32* %count, align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* %count, align 8
  %ttys = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 16
  %1 = load %struct.tty_struct**, %struct.tty_struct*** %ttys, align 8
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %2 = load i32, i32* %index, align 8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr %struct.tty_struct*, %struct.tty_struct** %1, i64 %idxprom
  store %struct.tty_struct* %tty, %struct.tty_struct** %arrayidx, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tty_driver* @tty_driver_kref_get(%struct.tty_driver* noundef returned %d) unnamed_addr #0 {
entry:
  %kref = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %d, i64 0, i32 1
  call fastcc void @kref_get(%struct.kref* noundef %kref) #17
  ret %struct.tty_driver* %d
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.tty_struct* @tty_init_dev(%struct.tty_driver* noundef %driver, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %call3 = call %struct.tty_struct* @alloc_tty_struct(%struct.tty_driver* noundef %driver, i32 noundef %idx) #17
  %tobool.not = icmp eq %struct.tty_struct* %call3, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end5

if.end5:                                          ; preds = %entry
  call void @tty_lock(%struct.tty_struct* noundef nonnull %call3) #16
  %call6 = call fastcc i32 @tty_driver_install_tty(%struct.tty_driver* noundef %driver, %struct.tty_struct* noundef nonnull %call3) #17
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %err_free_tty, label %if.end8

if.end8:                                          ; preds = %if.end5
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call3, i64 0, i32 37
  %0 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %tobool9.not = icmp eq %struct.tty_port* %0, null
  br i1 %tobool9.not, label %if.end12, label %if.end59

if.end12:                                         ; preds = %if.end8
  %ports = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 17
  %1 = load %struct.tty_port**, %struct.tty_port*** %ports, align 8
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr %struct.tty_port*, %struct.tty_port** %1, i64 %idxprom
  %2 = load %struct.tty_port*, %struct.tty_port** %arrayidx, align 8
  store %struct.tty_port* %2, %struct.tty_port** %port, align 8
  %tobool14.not = icmp eq %struct.tty_port* %2, null
  br i1 %tobool14.not, label %land.rhs, label %if.end59

land.rhs:                                         ; preds = %if.end12
  %call18 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @tty_init_dev._rs, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.tty_init_dev, i64 0, i64 0)) #16
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err_release_lock, label %do.end, !prof !10

do.end:                                           ; preds = %land.rhs
  %driver41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call3, i64 0, i32 3
  %3 = load %struct.tty_driver*, %struct.tty_driver** %driver41, align 8
  %name = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %3, i64 0, i32 5
  %4 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.tty_init_dev, i64 0, i64 0), i8* noundef %4) #16
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_io.c\22; .popsection; .long 14472b - 14470b; .short 1438; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !11
  br label %err_release_lock

if.end59:                                         ; preds = %if.end8, %if.end12
  %call60 = call i32 @tty_ldisc_lock(%struct.tty_struct* noundef nonnull %call3, i64 noundef 1250) #16
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %err_release_lock

if.end63:                                         ; preds = %if.end59
  %5 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %itty = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i64 0, i32 2
  store %struct.tty_struct* %call3, %struct.tty_struct** %itty, align 8
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call3, i64 0, i32 24
  %6 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %call65 = call i32 @tty_ldisc_setup(%struct.tty_struct* noundef nonnull %call3, %struct.tty_struct* noundef %6) #16
  %tobool66.not = icmp eq i32 %call65, 0
  call void @tty_ldisc_unlock(%struct.tty_struct* noundef nonnull %call3) #16
  br i1 %tobool66.not, label %cleanup, label %err_release_tty

err_free_tty:                                     ; preds = %if.end5
  call void @tty_unlock(%struct.tty_struct* noundef nonnull %call3) #16
  call fastcc void @free_tty_struct(%struct.tty_struct* noundef nonnull %call3) #17
  %phi.cast = sext i32 %call6 to i64
  br label %cleanup.sink.split

err_release_tty:                                  ; preds = %if.end63
  %call72 = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @tty_init_dev._rs.3, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.tty_init_dev, i64 0, i64 0)) #16
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err_release_lock, label %do.end77

do.end77:                                         ; preds = %err_release_tty
  %call79 = call i8* @tty_driver_name(%struct.tty_struct* noundef nonnull %call3) #17
  %call80 = call i8* @tty_name(%struct.tty_struct* noundef nonnull %call3) #17
  %call81 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call79, i8* noundef %call80, i32 noundef %call65, i32 noundef %idx) #19
  br label %err_release_lock

err_release_lock:                                 ; preds = %land.rhs, %do.end, %err_release_tty, %do.end77, %if.end59
  %retval1.1 = phi i32 [ %call60, %if.end59 ], [ %call65, %do.end77 ], [ %call65, %err_release_tty ], [ -22, %do.end ], [ -22, %land.rhs ]
  call void @tty_unlock(%struct.tty_struct* noundef nonnull %call3) #16
  call fastcc void @release_tty(%struct.tty_struct* noundef nonnull %call3, i32 noundef %idx) #17
  %conv83 = sext i32 %retval1.1 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_free_tty, %entry, %err_release_lock
  %conv83.sink = phi i64 [ %conv83, %err_release_lock ], [ %phi.cast, %err_free_tty ], [ -12, %entry ]
  %call84 = call fastcc i8* @ERR_PTR(i64 noundef %conv83.sink) #17
  %7 = bitcast i8* %call84 to %struct.tty_struct*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end63
  %retval.0 = phi %struct.tty_struct* [ %call3, %if.end63 ], [ %7, %cleanup.sink.split ]
  ret %struct.tty_struct* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #4 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.tty_struct* @alloc_tty_struct(%struct.tty_driver* noundef %driver, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 696) #17
  %0 = bitcast i8* %call to %struct.tty_struct*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %kref to %struct.kref*
  call fastcc void @kref_init(%struct.kref* noundef %1) #17
  %magic = bitcast i8* %call to i32*
  store i32 21505, i32* %magic, align 8
  %call1 = call i32 @tty_ldisc_init(%struct.tty_struct* noundef nonnull %0) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ctrl = getelementptr inbounds i8, i8* %call, i64 448
  %session = getelementptr inbounds i8, i8* %call, i64 464
  %2 = bitcast i8* %session to %struct.pid**
  store %struct.pid* null, %struct.pid** %2, align 8
  %pgrp = getelementptr inbounds i8, i8* %call, i64 456
  %3 = bitcast i8* %pgrp to %struct.pid**
  store %struct.pid* null, %struct.pid** %3, align 8
  %legacy_mutex = getelementptr inbounds i8, i8* %call, i64 128
  %4 = bitcast i8* %legacy_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_tty_struct.__key) #16
  %throttle_mutex = getelementptr inbounds i8, i8* %call, i64 160
  %5 = bitcast i8* %throttle_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_tty_struct.__key.13) #16
  %termios_rwsem = getelementptr inbounds i8, i8* %call, i64 192
  %6 = bitcast i8* %termios_rwsem to %struct.rw_semaphore*
  call void @__init_rwsem(%struct.rw_semaphore* noundef %6, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_tty_struct.__key.15) #16
  %winsize_mutex = getelementptr inbounds i8, i8* %call, i64 232
  %7 = bitcast i8* %winsize_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_tty_struct.__key.17) #16
  %ldisc_sem = getelementptr inbounds i8, i8* %call, i64 40
  %8 = bitcast i8* %ldisc_sem to %struct.ld_semaphore*
  call void @__init_ldsem(%struct.ld_semaphore* noundef %8, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_tty_struct.__key.19) #16
  %write_wait = getelementptr inbounds i8, i8* %call, i64 512
  %9 = bitcast i8* %write_wait to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %9, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_tty_struct.__key.21) #16
  %read_wait = getelementptr inbounds i8, i8* %call, i64 536
  %10 = bitcast i8* %read_wait to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %10, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_tty_struct.__key.23) #16
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call, i64 560
  %11 = bitcast i8* %.compoundliteral.sroa.0.0..sroa_idx to i64*
  store i64 68719476704, i64* %11, align 8
  %entry27 = getelementptr inbounds i8, i8* %call, i64 568
  %12 = bitcast i8* %entry27 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %12) #17
  %func = getelementptr inbounds i8, i8* %call, i64 584
  %13 = bitcast i8* %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @do_tty_hangup, void (%struct.work_struct*)** %13, align 8
  %atomic_write_lock = getelementptr inbounds i8, i8* %call, i64 96
  %14 = bitcast i8* %atomic_write_lock to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %14, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @alloc_tty_struct.__key.25) #16
  %15 = bitcast i8* %ctrl to i32*
  store i32 0, i32* %15, align 8
  %flow = getelementptr inbounds i8, i8* %call, i64 440
  %16 = bitcast i8* %flow to i32*
  store i32 0, i32* %16, align 8
  %files_lock = getelementptr inbounds i8, i8* %call, i64 608
  %17 = bitcast i8* %files_lock to i32*
  store i32 0, i32* %17, align 8
  %tty_files = getelementptr inbounds i8, i8* %call, i64 616
  %18 = bitcast i8* %tty_files to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %18) #17
  %.compoundliteral68.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call, i64 656
  %19 = bitcast i8* %.compoundliteral68.sroa.0.0..sroa_idx to i64*
  store i64 68719476704, i64* %19, align 8
  %entry71 = getelementptr inbounds i8, i8* %call, i64 664
  %20 = bitcast i8* %entry71 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %20) #17
  %func73 = getelementptr inbounds i8, i8* %call, i64 680
  %21 = bitcast i8* %func73 to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @do_SAK_work, void (%struct.work_struct*)** %21, align 8
  %driver76 = getelementptr inbounds i8, i8* %call, i64 16
  %22 = bitcast i8* %driver76 to %struct.tty_driver**
  store %struct.tty_driver* %driver, %struct.tty_driver** %22, align 8
  %ops = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 20
  %23 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %ops77 = getelementptr inbounds i8, i8* %call, i64 24
  %24 = bitcast i8* %ops77 to %struct.tty_operations**
  store %struct.tty_operations* %23, %struct.tty_operations** %24, align 8
  %index = getelementptr inbounds i8, i8* %call, i64 32
  %25 = bitcast i8* %index to i32*
  store i32 %idx, i32* %25, align 8
  %name = getelementptr inbounds i8, i8* %call, i64 352
  %call78 = call fastcc i64 @tty_line_name(%struct.tty_driver* noundef %driver, i32 noundef %idx, i8* noundef %name) #17
  %call79 = call fastcc %struct.device* @tty_get_device(%struct.tty_struct* noundef %0) #17
  %dev = getelementptr inbounds i8, i8* %call, i64 8
  %26 = bitcast i8* %dev to %struct.device**
  store %struct.device* %call79, %struct.device** %26, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then3
  %retval.0 = phi %struct.tty_struct* [ null, %if.then3 ], [ %0, %if.end4 ], [ null, %entry ]
  ret %struct.tty_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_driver_install_tty(%struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 20
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %install = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 1
  %1 = load i32 (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_driver*, %struct.tty_struct*)** %install, align 8
  %tobool.not = icmp eq i32 (%struct.tty_driver*, %struct.tty_struct*)* %1, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = call i32 %1(%struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call3 = call i32 @tty_standard_install(%struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) #17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(%struct.ratelimit_state* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_lock(%struct.tty_struct* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_setup(%struct.tty_struct* noundef, %struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_unlock(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_tty_struct(%struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  call void @tty_ldisc_deinit(%struct.tty_struct* noundef %tty) #16
  %dev = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 2
  %0 = load %struct.device*, %struct.device** %dev, align 8
  call void @put_device(%struct.device* noundef %0) #16
  %write_buf = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 34
  %1 = load i8*, i8** %write_buf, align 8
  call void @kfree(i8* noundef %1) #16
  %magic = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 0
  store i32 -559030611, i32* %magic, align 8
  %2 = bitcast %struct.tty_struct* %tty to i8*
  call void @kfree(i8* noundef %2) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @release_tty(%struct.tty_struct* noundef %tty, i32 noundef %idx) unnamed_addr #0 {
entry:
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %0 = load i32, i32* %index, align 8
  %cmp.not = icmp eq i32 %0, %idx
  br i1 %cmp.not, label %if.end, label %if.then, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_io.c\22; .popsection; .long 14472b - 14470b; .short 1602; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i1 @mutex_is_locked(%struct.mutex* noundef nonnull @tty_mutex) #16
  br i1 %call, label %if.end30, label %if.then29, !prof !10

if.then29:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/tty/tty_io.c\22; .popsection; .long 14472b - 14470b; .short 1603; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !13
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %1 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %shutdown = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %1, i64 0, i32 5
  %2 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %shutdown, align 8
  %tobool39.not = icmp eq void (%struct.tty_struct*)* %2, null
  br i1 %tobool39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end30
  call void %2(%struct.tty_struct* noundef %tty) #16
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end30
  call void @tty_save_termios(%struct.tty_struct* noundef %tty) #17
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %3 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  call fastcc void @tty_driver_remove_tty(%struct.tty_driver* noundef %3, %struct.tty_struct* noundef %tty) #17
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %4 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %tobool44.not = icmp eq %struct.tty_port* %4, null
  br i1 %tobool44.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %if.end43
  %itty = getelementptr inbounds %struct.tty_port, %struct.tty_port* %4, i64 0, i32 2
  store %struct.tty_struct* null, %struct.tty_struct** %itty, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end43
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %5 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool48.not = icmp eq %struct.tty_struct* %5, null
  br i1 %tobool48.not, label %if.end53, label %if.then49

if.then49:                                        ; preds = %if.end47
  %port51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i64 0, i32 37
  %6 = load %struct.tty_port*, %struct.tty_port** %port51, align 8
  %itty52 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %6, i64 0, i32 2
  store %struct.tty_struct* null, %struct.tty_struct** %itty52, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end47
  %7 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %tobool55.not = icmp eq %struct.tty_port* %7, null
  br i1 %tobool55.not, label %if.end59, label %if.then56

if.then56:                                        ; preds = %if.end53
  %call58 = call i1 @tty_buffer_cancel_work(%struct.tty_port* noundef nonnull %7) #16
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end53
  %8 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool61.not = icmp eq %struct.tty_struct* %8, null
  br i1 %tobool61.not, label %if.end66, label %if.then62

if.then62:                                        ; preds = %if.end59
  %port64 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i64 0, i32 37
  %9 = load %struct.tty_port*, %struct.tty_port** %port64, align 8
  %call65 = call i1 @tty_buffer_cancel_work(%struct.tty_port* noundef %9) #16
  %.pre = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end59
  %10 = phi %struct.tty_struct* [ %.pre, %if.then62 ], [ null, %if.end59 ]
  call void @tty_kref_put(%struct.tty_struct* noundef %10) #17
  call void @tty_kref_put(%struct.tty_struct* noundef %tty) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_save_termios(%struct.tty_struct* nocapture noundef readonly %tty) local_unnamed_addr #0 {
entry:
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %0 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %flags = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 13
  %1 = load i64, i64* %flags, align 8
  %and = and i64 %1, 2
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %2 = load i32, i32* %index, align 8
  %termios = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 18
  %3 = load %struct.ktermios**, %struct.ktermios*** %termios, align 8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr %struct.ktermios*, %struct.ktermios** %3, i64 %idxprom
  %4 = load %struct.ktermios*, %struct.ktermios** %arrayidx, align 8
  %cmp = icmp eq %struct.ktermios* %4, null
  br i1 %cmp, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %5 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %5, i32 noundef 3264) #16
  %cmp3 = icmp eq i8* %call.i.i, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then2
  %6 = bitcast i8* %call.i.i to %struct.ktermios*
  %7 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %termios7 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %7, i64 0, i32 18
  %8 = load %struct.ktermios**, %struct.ktermios*** %termios7, align 8
  %arrayidx9 = getelementptr %struct.ktermios*, %struct.ktermios** %8, i64 %idxprom
  %9 = bitcast %struct.ktermios** %arrayidx9 to i8**
  store i8* %call.i.i, i8** %9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end5, %if.end
  %tp.0 = phi %struct.ktermios* [ %6, %if.end5 ], [ %4, %if.end ]
  %termios11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13
  %10 = bitcast %struct.ktermios* %tp.0 to i8*
  %11 = bitcast %struct.ktermios* %termios11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 4 dereferenceable(44) %10, i8* noundef align 8 dereferenceable(44) %11, i64 44, i1 false)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry, %if.end10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_put(%struct.kref* noundef %kref, void (%struct.kref*)* nocapture noundef readonly %release) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refcount) #17
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  call void %release(%struct.kref* noundef %kref) #16, !callees !14
  br label %return

return:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @queue_release_one_tty(%struct.kref* noundef %kref) #0 {
entry:
  %hangup_work = getelementptr %struct.kref, %struct.kref* %kref, i64 139
  %0 = bitcast %struct.kref* %hangup_work to %struct.work_struct*
  %1 = bitcast %struct.kref* %hangup_work to i64*
  store i64 68719476704, i64* %1, align 8
  %entry4 = getelementptr %struct.kref, %struct.kref* %kref, i64 141
  %2 = bitcast %struct.kref* %entry4 to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %2) #17
  %func = getelementptr %struct.kref, %struct.kref* %kref, i64 145
  %3 = bitcast %struct.kref* %func to void (%struct.work_struct*)**
  store void (%struct.work_struct*)* @release_one_tty, void (%struct.work_struct*)** %3, align 8
  call fastcc void @schedule_work(%struct.work_struct* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_kclose(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  call void @tty_ldisc_release(%struct.tty_struct* noundef %tty) #16
  call fastcc void @tty_flush_works(%struct.tty_struct* noundef %tty) #17
  call void @mutex_lock(%struct.mutex* noundef nonnull @tty_mutex) #16
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %0 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call fastcc void @tty_port_set_kopened(%struct.tty_port* noundef %0, i1 noundef false) #17
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %1 = load i32, i32* %index, align 8
  call fastcc void @release_tty(%struct.tty_struct* noundef %tty, i32 noundef %1) #17
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_release(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_flush_works(%struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %SAK_work = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 36
  %call = call i1 @flush_work(%struct.work_struct* noundef %SAK_work) #16
  %hangup_work = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 28
  %call1 = call i1 @flush_work(%struct.work_struct* noundef %hangup_work) #16
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %0 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool.not = icmp eq %struct.tty_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %SAK_work3 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 36
  %call4 = call i1 @flush_work(%struct.work_struct* noundef %SAK_work3) #16
  %1 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %hangup_work6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i64 0, i32 28
  %call7 = call i1 @flush_work(%struct.work_struct* noundef %hangup_work6) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_port_set_kopened(%struct.tty_port* noundef %port, i1 noundef %val) unnamed_addr #0 {
entry:
  %iflags = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 11
  br i1 %val, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call fastcc void @set_bit(i64 noundef 5, i64* noundef %iflags) #16
  br label %assign_bit.exit

if.else.i:                                        ; preds = %entry
  call fastcc void @clear_bit(i64 noundef 5, i64* noundef %iflags) #16
  br label %assign_bit.exit

assign_bit.exit:                                  ; preds = %if.then.i, %if.else.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_release_struct(%struct.tty_struct* noundef %tty, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  call void @tty_ldisc_release(%struct.tty_struct* noundef %tty) #16
  call fastcc void @tty_flush_works(%struct.tty_struct* noundef %tty) #17
  call void @mutex_lock(%struct.mutex* noundef nonnull @tty_mutex) #16
  call fastcc void @release_tty(%struct.tty_struct* noundef %tty, i32 noundef %idx) #17
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_release(%struct.inode* nocapture noundef readonly %inode, %struct.file* noundef %filp) #0 {
entry:
  %call = call fastcc %struct.tty_struct* @file_tty(%struct.file* noundef %filp) #17
  %call1 = call fastcc i32 @tty_paranoia_check(%struct.tty_struct* noundef %call, %struct.inode* noundef %inode, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.tty_release, i64 0, i64 0)) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @tty_lock(%struct.tty_struct* noundef %call) #16
  call fastcc void @check_tty_count(%struct.tty_struct* noundef %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.tty_release, i64 0, i64 0)) #17
  %call3 = call fastcc i32 @__tty_fasync(i32 noundef -1, %struct.file* noundef %filp, i32 noundef 0) #17
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 5
  %0 = load i32, i32* %index, align 8
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 3
  %1 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %1, i64 0, i32 10
  %2 = load i16, i16* %type, align 8
  %cmp = icmp eq i16 %2, 4
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %1, i64 0, i32 11
  %3 = load i16, i16* %subtype, align 2
  %cmp7 = icmp eq i16 %3, 1
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 24
  %4 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %if.end
  %o_tty.0 = phi %struct.tty_struct* [ %4, %if.then9 ], [ null, %land.lhs.true ], [ null, %if.end ]
  %call11 = call fastcc i32 @tty_release_checks(%struct.tty_struct* noundef %call, i32 noundef %0) #17
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @tty_unlock(%struct.tty_struct* noundef %call) #16
  br label %cleanup

do.end:                                           ; preds = %if.end10
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 4
  %5 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %close = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %5, i64 0, i32 4
  %6 = load void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)** %close, align 8
  %tobool15.not = icmp eq void (%struct.tty_struct*, %struct.file*)* %6, null
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %do.end
  call void %6(%struct.tty_struct* noundef %call, %struct.file* noundef %filp) #16
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %do.end
  call void @tty_lock_slave(%struct.tty_struct* noundef %o_tty.0) #16
  %count = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 17
  %tobool35.not205 = icmp eq %struct.tty_struct* %o_tty.0, null
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 27
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 26
  %count37 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %o_tty.0, i64 0, i32 17
  %read_wait41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %o_tty.0, i64 0, i32 27
  %write_wait48 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %o_tty.0, i64 0, i32 26
  br label %while.cond

while.cond:                                       ; preds = %if.end67, %if.end19
  %timeout.0 = phi i64 [ 0, %if.end19 ], [ %timeout.1, %if.end67 ]
  %tobool59.not = phi i1 [ false, %if.end19 ], [ true, %if.end67 ]
  %7 = load i32, i32* %count, align 8
  %cmp20 = icmp slt i32 %7, 2
  br i1 %cmp20, label %if.then22, label %if.end34.thread

if.then22:                                        ; preds = %while.cond
  %call23 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %read_wait) #17
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.then22
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait, i32 noundef 3, i32 noundef 1, i8* noundef nonnull inttoptr (i64 1 to i8*)) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22
  %do_sleep.0 = phi i32 [ 1, %if.then25 ], [ 0, %if.then22 ]
  %call28 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %write_wait) #17
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.end27
  call void @__wake_up(%struct.wait_queue_head* noundef %write_wait, i32 noundef 3, i32 noundef 1, i8* noundef nonnull inttoptr (i64 4 to i8*)) #16
  %inc32 = add nuw nsw i32 %do_sleep.0, 1
  br label %if.end34

if.end34:                                         ; preds = %if.end27, %if.then30
  %do_sleep.1 = phi i32 [ %inc32, %if.then30 ], [ %do_sleep.0, %if.end27 ]
  br i1 %tobool35.not205, label %if.end55.thread197, label %land.lhs.true36

if.end34.thread:                                  ; preds = %while.cond
  br i1 %tobool35.not205, label %if.end89, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.end34.thread, %if.end34
  %do_sleep.1206 = phi i32 [ 0, %if.end34.thread ], [ %do_sleep.1, %if.end34 ]
  %8 = load i32, i32* %count37, align 8
  %cmp38 = icmp slt i32 %8, 2
  br i1 %cmp38, label %if.then40, label %if.end55

if.then40:                                        ; preds = %land.lhs.true36
  %call42 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %read_wait41) #17
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end47, label %if.then44

if.then44:                                        ; preds = %if.then40
  call void @__wake_up(%struct.wait_queue_head* noundef %read_wait41, i32 noundef 3, i32 noundef 1, i8* noundef nonnull inttoptr (i64 1 to i8*)) #16
  %inc46 = add nuw nsw i32 %do_sleep.1206, 1
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.then40
  %do_sleep.2 = phi i32 [ %inc46, %if.then44 ], [ %do_sleep.1206, %if.then40 ]
  %call49 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %write_wait48) #17
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end55, label %if.end55.thread

if.end55.thread:                                  ; preds = %if.end47
  call void @__wake_up(%struct.wait_queue_head* noundef %write_wait48, i32 noundef 3, i32 noundef 1, i8* noundef nonnull inttoptr (i64 4 to i8*)) #16
  br label %if.end58

if.end55:                                         ; preds = %if.end47, %land.lhs.true36
  %do_sleep.3 = phi i32 [ %do_sleep.2, %if.end47 ], [ %do_sleep.1206, %land.lhs.true36 ]
  %tobool56.not = icmp eq i32 %do_sleep.3, 0
  br i1 %tobool56.not, label %if.then74, label %if.end58

if.end55.thread197:                               ; preds = %if.end34
  %tobool56.not199 = icmp eq i32 %do_sleep.1, 0
  br i1 %tobool56.not199, label %if.end89, label %if.end58

if.end58:                                         ; preds = %if.end55.thread197, %if.end55.thread, %if.end55
  br i1 %tobool59.not, label %if.end67, label %if.then60

if.then60:                                        ; preds = %if.end58
  %call64 = call i8* @tty_driver_name(%struct.tty_struct* noundef %call) #17
  %call65 = call i8* @tty_name(%struct.tty_struct* noundef %call) #17
  %call66 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* noundef %call64, i8* noundef %call65) #19
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %if.end58
  %call68 = call i64 @schedule_timeout_killable(i64 noundef %timeout.0) #16
  %cmp69 = icmp slt i64 %timeout.0, 30000
  %mul = shl i64 %timeout.0, 1
  %add = or i64 %mul, 1
  %timeout.1 = select i1 %cmp69, i64 %add, i64 9223372036854775807
  br label %while.cond

if.then74:                                        ; preds = %if.end55
  %9 = load i32, i32* %count37, align 8
  %dec = add i32 %9, -1
  store i32 %dec, i32* %count37, align 8
  %cmp76 = icmp slt i32 %dec, 0
  br i1 %cmp76, label %do.end81, label %if.end89

do.end81:                                         ; preds = %if.then74
  %call83 = call i8* @tty_driver_name(%struct.tty_struct* noundef %call) #17
  %call84 = call i8* @tty_name(%struct.tty_struct* noundef %call) #17
  %call86 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call83, i8* noundef %call84, i32 noundef %dec) #19
  store i32 0, i32* %count37, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.end34.thread, %if.end55.thread197, %if.then74, %do.end81
  %tobool35.not209 = phi i1 [ false, %if.then74 ], [ false, %do.end81 ], [ true, %if.end55.thread197 ], [ true, %if.end34.thread ]
  %10 = load i32, i32* %count, align 8
  %dec91 = add i32 %10, -1
  store i32 %dec91, i32* %count, align 8
  %cmp92 = icmp slt i32 %dec91, 0
  br i1 %cmp92, label %do.end97, label %if.end104

do.end97:                                         ; preds = %if.end89
  %call99 = call i8* @tty_driver_name(%struct.tty_struct* noundef %call) #17
  %call100 = call i8* @tty_name(%struct.tty_struct* noundef %call) #17
  %call102 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call99, i8* noundef %call100, i32 noundef %dec91) #19
  store i32 0, i32* %count, align 8
  br label %if.end104

if.end104:                                        ; preds = %do.end97, %if.end89
  call fastcc void @tty_del_file(%struct.file* noundef %filp) #17
  %11 = load i32, i32* %count, align 8
  %tobool106.not = icmp eq i32 %11, 0
  br i1 %tobool106.not, label %if.then107, label %if.then122.critedge

if.then107:                                       ; preds = %if.end104
  call fastcc void @__raw_read_lock() #17
  %session = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 20, i32 2
  %12 = load %struct.pid*, %struct.pid** %session, align 8
  call void @session_clear_tty(%struct.pid* noundef %12) #16
  br i1 %tobool35.not209, label %if.end113, label %if.end113.thread201

if.end113:                                        ; preds = %if.then107
  call fastcc void @__raw_read_unlock() #17
  %.pr = load i32, i32* %count, align 8
  %tobool115.not = icmp eq i32 %.pr, 0
  br i1 %tobool115.not, label %do.end126.critedge, label %if.then122.critedge

if.end113.thread201:                              ; preds = %if.then107
  %session111 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %o_tty.0, i64 0, i32 20, i32 2
  %13 = load %struct.pid*, %struct.pid** %session111, align 8
  call void @session_clear_tty(%struct.pid* noundef %13) #16
  call fastcc void @__raw_read_unlock() #17
  %.pr202 = load i32, i32* %count, align 8
  %tobool115.not203 = icmp eq i32 %.pr202, 0
  br i1 %tobool115.not203, label %land.rhs117, label %if.then122.critedge

land.rhs117:                                      ; preds = %if.end113.thread201
  %14 = load i32, i32* %count37, align 8
  %tobool119 = icmp eq i32 %14, 0
  call void @tty_unlock_slave(%struct.tty_struct* noundef %o_tty.0) #16
  call void @tty_unlock(%struct.tty_struct* noundef %call) #16
  br i1 %tobool119, label %do.end126, label %cleanup

if.then122.critedge:                              ; preds = %if.end104, %if.end113.thread201, %if.end113
  call void @tty_unlock_slave(%struct.tty_struct* noundef %o_tty.0) #16
  call void @tty_unlock(%struct.tty_struct* noundef %call) #16
  br label %cleanup

do.end126.critedge:                               ; preds = %if.end113
  call void @tty_unlock_slave(%struct.tty_struct* noundef %o_tty.0) #16
  call void @tty_unlock(%struct.tty_struct* noundef %call) #16
  br label %do.end126

do.end126:                                        ; preds = %do.end126.critedge, %land.rhs117
  call void @tty_release_struct(%struct.tty_struct* noundef %call, i32 noundef %0) #17
  br label %cleanup

cleanup:                                          ; preds = %land.rhs117, %if.then122.critedge, %entry, %do.end126, %if.then13
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.tty_struct* @file_tty(%struct.file* nocapture noundef readonly %file) unnamed_addr #5 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.tty_file_private**
  %1 = load %struct.tty_file_private*, %struct.tty_file_private** %0, align 8
  %tty = getelementptr inbounds %struct.tty_file_private, %struct.tty_file_private* %1, i64 0, i32 0
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8
  ret %struct.tty_struct* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_paranoia_check(%struct.tty_struct* noundef readonly %tty, %struct.inode* nocapture noundef readonly %inode, i8* noundef %routine) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %return.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 0
  %0 = load i32, i32* %magic, align 8
  %cmp.not = icmp eq i32 %0, 21505
  br i1 %cmp.not, label %return, label %return.sink.split

return.sink.split:                                ; preds = %if.end, %entry
  %.sink = phi i8* [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i64 0, i64 0), %entry ], [ getelementptr inbounds ([33 x i8], [33 x i8]* @.str.42, i64 0, i64 0), %if.end ]
  %call7 = call fastcc i32 @imajor(%struct.inode* noundef %inode) #17
  %call8 = call fastcc i32 @iminor(%struct.inode* noundef %inode) #17, !range !15
  %call9 = call i32 (i8*, ...) @_printk(i8* noundef %.sink, i32 noundef %call7, i32 noundef %call8, i8* noundef %routine) #19
  br label %return

return:                                           ; preds = %return.sink.split, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_tty_count(%struct.tty_struct* noundef %tty, i8* noundef %routine) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 31, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %tty_files = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 32
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %tty_files.pn = phi %struct.list_head* [ %tty_files, %entry ], [ %p.0, %for.cond ]
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %p.0.in = getelementptr inbounds %struct.list_head, %struct.list_head* %tty_files.pn, i64 0, i32 0
  %p.0 = load %struct.list_head*, %struct.list_head** %p.0.in, align 8
  %cmp.not = icmp eq %struct.list_head* %p.0, %tty_files
  %inc = add i32 %count.0, 1
  br i1 %cmp.not, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %0 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 10
  %1 = load i16, i16* %type, align 8
  %cmp4 = icmp eq i16 %1, 4
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 11
  %2 = load i16, i16* %subtype, align 2
  %cmp8 = icmp eq i16 %2, 2
  br i1 %cmp8, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %3 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %tobool.not = icmp eq %struct.tty_struct* %3, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true10
  %count13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i64 0, i32 17
  %4 = load i32, i32* %count13, align 8
  %tobool14.not = icmp ne i32 %4, 0
  %inc15 = zext i1 %tobool14.not to i32
  %spec.select = add i32 %count.0, %inc15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true11, %land.lhs.true10, %land.lhs.true, %for.end
  %count.1 = phi i32 [ %count.0, %land.lhs.true10 ], [ %count.0, %land.lhs.true ], [ %count.0, %for.end ], [ %spec.select, %land.lhs.true11 ]
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %5 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %call = call fastcc i1 @tty_port_kopened(%struct.tty_port* noundef %5) #17
  %spec.select1 = zext i1 %call to i32
  %count19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 17
  %6 = load i32, i32* %count19, align 8
  %add = add i32 %count.1, %spec.select1
  %cmp20.not = icmp eq i32 %6, %add
  br i1 %cmp20.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end
  %call23 = call i8* @tty_driver_name(%struct.tty_struct* noundef %tty) #17
  %call24 = call i8* @tty_name(%struct.tty_struct* noundef %tty) #17
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.43, i64 0, i64 0), i8* noundef %call23, i8* noundef %call24, i8* noundef %routine, i32 noundef %6, i32 noundef %count.1, i32 noundef %spec.select1) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__tty_fasync(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %on) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.tty_struct* @file_tty(%struct.file* noundef %filp) #17
  %call2 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #17
  %call3 = call fastcc i32 @tty_paranoia_check(%struct.tty_struct* noundef %call, %struct.inode* noundef %call2, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0)) #17
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %fasync = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 25
  %call4 = call i32 @fasync_helper(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %on, %struct.fasync_struct** noundef %fasync) #16
  %cmp = icmp sgt i32 %call4, 0
  %tobool7 = icmp ne i32 %on, 0
  %or.cond = and i1 %tobool7, %cmp
  br i1 %or.cond, label %if.then8, label %out

if.then8:                                         ; preds = %if.end
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 20, i32 0, i32 0, i32 0
  %call12 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %pgrp = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 20, i32 1
  %0 = load %struct.pid*, %struct.pid** %pgrp, align 8
  %tobool16.not = icmp eq %struct.pid* %0, null
  br i1 %tobool16.not, label %if.else, label %if.end22

if.else:                                          ; preds = %if.then8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call21 = call fastcc %struct.pid* @task_pid(%struct.task_struct* noundef %2) #17
  br label %if.end22

if.end22:                                         ; preds = %if.then8, %if.else
  %type.0 = phi i32 [ 1, %if.else ], [ 2, %if.then8 ]
  %pid.0 = phi %struct.pid* [ %call21, %if.else ], [ %0, %if.then8 ]
  %call23 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %pid.0) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call12) #16
  call void @__f_setown(%struct.file* noundef %filp, %struct.pid* noundef %pid.0, i32 noundef %type.0, i32 noundef 0) #16
  call void @put_pid(%struct.pid* noundef %pid.0) #16
  br label %out

out:                                              ; preds = %if.end22, %if.end, %entry
  %retval1.0 = phi i32 [ 0, %entry ], [ 0, %if.end22 ], [ %call4, %if.end ]
  ret i32 %retval1.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @tty_release_checks(%struct.tty_struct* noundef readonly %tty, i32 noundef %idx) unnamed_addr #5 {
entry:
  %cmp = icmp slt i32 %idx, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %0 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %num = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 9
  %1 = load i32, i32* %num, align 4
  %cmp1.not = icmp ugt i32 %1, %idx
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 13
  %2 = load i64, i64* %flags, align 8
  %and = and i64 %2, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %ttys = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 16
  %3 = load %struct.tty_struct**, %struct.tty_struct*** %ttys, align 8
  %idxprom43 = zext i32 %idx to i64
  %arrayidx = getelementptr %struct.tty_struct*, %struct.tty_struct** %3, i64 %idxprom43
  %4 = load %struct.tty_struct*, %struct.tty_struct** %arrayidx, align 8
  %cmp6.not = icmp eq %struct.tty_struct* %4, %tty
  br i1 %cmp6.not, label %if.end9, label %return

if.end9:                                          ; preds = %if.end4
  %other = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 15
  %5 = load %struct.tty_driver*, %struct.tty_driver** %other, align 8
  %tobool11.not = icmp eq %struct.tty_driver* %5, null
  br i1 %tobool11.not, label %return, label %if.then12

if.then12:                                        ; preds = %if.end9
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %6 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  %ttys15 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %5, i64 0, i32 16
  %7 = load %struct.tty_struct**, %struct.tty_struct*** %ttys15, align 8
  %arrayidx17 = getelementptr %struct.tty_struct*, %struct.tty_struct** %7, i64 %idxprom43
  %8 = load %struct.tty_struct*, %struct.tty_struct** %arrayidx17, align 8
  %cmp18.not = icmp eq %struct.tty_struct* %6, %8
  br i1 %cmp18.not, label %if.end21, label %cleanup.thread

if.end21:                                         ; preds = %if.then12
  %link22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i64 0, i32 24
  %9 = load %struct.tty_struct*, %struct.tty_struct** %link22, align 8
  %cmp23.not = icmp eq %struct.tty_struct* %9, %tty
  br i1 %cmp23.not, label %return, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then12, %if.end21
  br label %return

return:                                           ; preds = %if.end9, %if.end21, %cleanup.thread, %if.end4, %if.end, %entry, %lor.lhs.false
  %retval.1 = phi i32 [ -1, %lor.lhs.false ], [ -1, %entry ], [ 0, %if.end ], [ -1, %if.end4 ], [ -1, %cleanup.thread ], [ 0, %if.end21 ], [ 0, %if.end9 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock_slave(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #8 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #17
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @schedule_timeout_killable(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_del_file(%struct.file* nocapture noundef %file) unnamed_addr #0 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.tty_file_private**
  %1 = load %struct.tty_file_private*, %struct.tty_file_private** %0, align 8
  %tty1 = getelementptr inbounds %struct.tty_file_private, %struct.tty_file_private* %1, i64 0, i32 0
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i64 0, i32 31, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %list = getelementptr inbounds %struct.tty_file_private, %struct.tty_file_private* %1, i64 0, i32 2
  call fastcc void @list_del(%struct.list_head* noundef %list) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  call void @tty_free_file(%struct.file* noundef %file) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  call fastcc void @queued_read_lock() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @session_clear_tty(%struct.pid* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @queued_read_unlock() #17
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock_slave(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.tty_struct* @tty_kopen_exclusive(i32 noundef %device) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.tty_struct* @tty_kopen(i32 noundef %device, i32 noundef 0) #17
  ret %struct.tty_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tty_struct* @tty_kopen(i32 noundef %device, i32 noundef %shared) unnamed_addr #0 {
entry:
  %index = alloca i32, align 4
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  store i32 -1, i32* %index, align 4
  call void @mutex_lock(%struct.mutex* noundef nonnull @tty_mutex) #16
  %call = call fastcc %struct.tty_driver* @tty_lookup_driver(i32 noundef %device, %struct.file* noundef null, i32* noundef nonnull %index) #17
  %1 = bitcast %struct.tty_driver* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %1) #17
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  %2 = bitcast %struct.tty_driver* %call to %struct.tty_struct*
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %index, align 4
  %call3 = call fastcc %struct.tty_struct* @tty_driver_lookup_tty(%struct.tty_driver* noundef %call, %struct.file* noundef null, i32 noundef %3) #17
  %4 = bitcast %struct.tty_struct* %call3 to i8*
  %call4 = call fastcc i1 @IS_ERR(i8* noundef %4) #17
  %tobool = icmp ne i32 %shared, 0
  %or.cond = or i1 %tobool, %call4
  br i1 %or.cond, label %out, label %if.end6

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq %struct.tty_struct* %call3, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @tty_kref_put(%struct.tty_struct* noundef nonnull %call3) #17
  %call9 = call fastcc i8* @ERR_PTR(i64 noundef -16) #17
  %5 = bitcast i8* %call9 to %struct.tty_struct*
  br label %out

if.else:                                          ; preds = %if.end6
  %6 = load i32, i32* %index, align 4
  %call10 = call %struct.tty_struct* @tty_init_dev(%struct.tty_driver* noundef %call, i32 noundef %6) #17
  %7 = bitcast %struct.tty_struct* %call10 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %7) #17
  br i1 %call11, label %out, label %if.end13

if.end13:                                         ; preds = %if.else
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call10, i64 0, i32 37
  %8 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call fastcc void @tty_port_set_kopened(%struct.tty_port* noundef %8, i1 noundef true) #17
  br label %out

out:                                              ; preds = %if.then8, %if.end13, %if.else, %if.end
  %tty.0 = phi %struct.tty_struct* [ %call3, %if.end ], [ %5, %if.then8 ], [ %call10, %if.else ], [ %call10, %if.end13 ]
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  call void @tty_driver_kref_put(%struct.tty_driver* noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi %struct.tty_struct* [ %2, %if.then ], [ %tty.0, %out ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  ret %struct.tty_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.tty_struct* @tty_kopen_shared(i32 noundef %device) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.tty_struct* @tty_kopen(i32 noundef %device, i32 noundef 1) #17
  ret %struct.tty_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_do_resize(%struct.tty_struct* noundef %tty, %struct.winsize* noundef %ws) local_unnamed_addr #0 {
entry:
  %winsize_mutex = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 12
  call void @mutex_lock(%struct.mutex* noundef %winsize_mutex) #16
  %0 = bitcast %struct.winsize* %ws to i8*
  %winsize = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 18
  %1 = bitcast %struct.winsize* %winsize to i8*
  %call = call i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef 8) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef %tty) #16
  %tobool2.not = icmp eq %struct.pid* %call1, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @kill_pgrp(%struct.pid* noundef nonnull %call1, i32 noundef 28, i32 noundef 1) #16
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  call void @put_pid(%struct.pid* noundef %call1) #16
  %2 = bitcast %struct.winsize* %ws to i64*
  %3 = bitcast %struct.winsize* %winsize to i64*
  %4 = load i64, i64* %2, align 2
  store i64 %4, i64* %3, align 4
  br label %done

done:                                             ; preds = %entry, %if.end5
  call void @mutex_unlock(%struct.mutex* noundef %winsize_mutex) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @tty_get_pgrp(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pgrp(%struct.pid* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_get_icount(%struct.tty_struct* noundef %tty, %struct.serial_icounter_struct* noundef %icount) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.serial_icounter_struct* %icount to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 80) #16
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %1 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %get_icount = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %1, i64 0, i32 28
  %2 = load i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)** %get_icount, align 8
  %tobool.not = icmp eq i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)* %2, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 %2(%struct.tty_struct* noundef %tty, %struct.serial_icounter_struct* noundef %icount) #16
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ -25, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @tty_ioctl(%struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 {
entry:
  %call = call fastcc %struct.tty_struct* @file_tty(%struct.file* noundef %file) #17
  %0 = inttoptr i64 %arg to i8*
  %call2 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #17
  %call3 = call fastcc i32 @tty_paranoia_check(%struct.tty_struct* noundef %call, %struct.inode* noundef %call2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #17
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call fastcc %struct.tty_struct* @tty_pair_get_tty(%struct.tty_struct* noundef %call) #17
  switch i32 %cmd, label %sw.default [
    i32 21539, label %sw.bb
    i32 21543, label %sw.bb
    i32 21544, label %sw.bb
    i32 21513, label %sw.bb
    i32 21541, label %sw.bb
    i32 21522, label %sw.bb17
    i32 21523, label %sw.bb20
    i32 21524, label %sw.bb23
    i32 21533, label %sw.bb26
    i32 21516, label %sw.bb31
    i32 21517, label %sw.bb32
    i32 -2147199936, label %sw.bb34
    i32 21540, label %sw.bb51
    i32 21559, label %sw.bb57
    i32 -2147199950, label %sw.bb61
    i32 21525, label %sw.bb119
    i32 21528, label %sw.bb122
    i32 21527, label %sw.bb122
    i32 21526, label %sw.bb122
    i32 21597, label %sw.bb125
    i32 21515, label %sw.bb128
    i32 21535, label %sw.bb131
    i32 21534, label %sw.bb134
    i32 21569, label %sw.bb137
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %call5 = call i32 @tty_check_change(%struct.tty_struct* noundef %call) #16
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %sw.bb
  %conv = sext i32 %call5 to i64
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %cond = icmp eq i32 %cmd, 21544
  br i1 %cond, label %sw.bb94, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @tty_wait_until_sent(%struct.tty_struct* noundef %call, i64 noundef 0) #16
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %call12 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %2) #17
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %sw.epilog, label %cleanup

sw.epilog:                                        ; preds = %if.then10
  switch i32 %cmd, label %sw.default [
    i32 21522, label %sw.bb17
    i32 21523, label %sw.bb20
    i32 21524, label %sw.bb23
    i32 21533, label %sw.bb26
    i32 21516, label %sw.bb31
    i32 21517, label %sw.bb32
    i32 21534, label %sw.bb134
    i32 21540, label %sw.bb51
    i32 21539, label %sw.bb54
    i32 21535, label %sw.bb131
    i32 21515, label %sw.bb128
    i32 21543, label %sw.bb86
    i32 21526, label %sw.bb122
    i32 21513, label %sw.bb104
    i32 21541, label %sw.bb110
    i32 21525, label %sw.bb119
    i32 21528, label %sw.bb122
    i32 21527, label %sw.bb122
  ]

sw.bb17:                                          ; preds = %if.end, %sw.epilog
  %call18 = call fastcc i32 @tiocsti(%struct.tty_struct* noundef %call, i8* noundef %0) #17
  %conv19 = sext i32 %call18 to i64
  br label %cleanup

sw.bb20:                                          ; preds = %if.end, %sw.epilog
  %3 = inttoptr i64 %arg to %struct.winsize*
  %call21 = call fastcc i32 @tiocgwinsz(%struct.tty_struct* noundef %call4, %struct.winsize* noundef %3) #17
  %conv22 = sext i32 %call21 to i64
  br label %cleanup

sw.bb23:                                          ; preds = %if.end, %sw.epilog
  %4 = inttoptr i64 %arg to %struct.winsize*
  %call24 = call fastcc i32 @tiocswinsz(%struct.tty_struct* noundef %call4, %struct.winsize* noundef %4) #17
  %conv25 = sext i32 %call24 to i64
  br label %cleanup

sw.bb26:                                          ; preds = %if.end, %sw.epilog
  %cmp27.not = icmp eq %struct.tty_struct* %call4, %call
  br i1 %cmp27.not, label %cond.false, label %cleanup

cond.false:                                       ; preds = %sw.bb26
  %call29 = call fastcc i32 @tioccons(%struct.file* noundef %file) #17
  %phi.cast286 = sext i32 %call29 to i64
  br label %cleanup

sw.bb31:                                          ; preds = %if.end, %sw.epilog
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 16
  call fastcc void @set_bit(i64 noundef 3, i64* noundef %flags) #17
  br label %cleanup

sw.bb32:                                          ; preds = %if.end, %sw.epilog
  %flags33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 16
  call fastcc void @clear_bit(i64 noundef 3, i64* noundef %flags33) #17
  br label %cleanup

sw.bb34:                                          ; preds = %if.end
  %flags35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 16
  %5 = load volatile i64, i64* %flags35, align 8
  %call37 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #17
  %tobool38.not = icmp eq i64 %call37, 0
  br i1 %tobool38.not, label %cleanup, label %if.then39

if.then39:                                        ; preds = %sw.bb34
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 3
  %conv.i = and i32 %7, 1
  %call40 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #17
  %8 = bitcast i8* %call40 to i32*
  %9 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %conv.i, i32* %8, i32 -14, i32 0) #18, !srcloc !19
  %phi.cast285 = sext i32 %9 to i64
  br label %cleanup

sw.bb51:                                          ; preds = %if.end, %sw.epilog
  %10 = inttoptr i64 %arg to i32*
  %call52 = call fastcc i32 @tiocgetd(%struct.tty_struct* noundef %call, i32* noundef %10) #17
  %conv53 = sext i32 %call52 to i64
  br label %cleanup

sw.bb54:                                          ; preds = %sw.epilog
  %11 = inttoptr i64 %arg to i32*
  %call55 = call fastcc i32 @tiocsetd(%struct.tty_struct* noundef %call, i32* noundef %11) #17
  %conv56 = sext i32 %call55 to i64
  br label %cleanup

sw.bb57:                                          ; preds = %if.end
  %call58 = call i1 @capable(i32 noundef 21) #16
  br i1 %call58, label %if.end60, label %cleanup

if.end60:                                         ; preds = %sw.bb57
  call void @tty_vhangup(%struct.tty_struct* noundef %call) #17
  br label %cleanup

sw.bb61:                                          ; preds = %if.end
  %call62 = call i32 @tty_devnum(%struct.tty_struct* noundef %call4) #17
  %call67 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #17
  %tobool68.not = icmp eq i64 %call67, 0
  br i1 %tobool68.not, label %cleanup, label %if.then69

if.then69:                                        ; preds = %sw.bb61
  %12 = lshr i32 %call62, 12
  %shl.i = and i32 %12, 1048320
  %and1.i = and i32 %call62, 255
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %call62, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %call70 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #17
  %13 = bitcast i8* %call70 to i32*
  %14 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %or4.i, i32* %13, i32 -14, i32 0) #18, !srcloc !20
  %phi.cast284 = sext i32 %14 to i64
  br label %cleanup

sw.bb86:                                          ; preds = %sw.epilog
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 4
  %15 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %break_ctl = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %15, i64 0, i32 20
  %16 = load i32 (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i32)** %break_ctl, align 8
  %tobool87.not = icmp eq i32 (%struct.tty_struct*, i32)* %16, null
  br i1 %tobool87.not, label %cleanup, label %if.then88

if.then88:                                        ; preds = %sw.bb86
  %call91 = call i32 %16(%struct.tty_struct* noundef %call, i32 noundef -1) #16
  %conv92 = sext i32 %call91 to i64
  br label %cleanup

sw.bb94:                                          ; preds = %if.end8
  %ops95 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 4
  %17 = load %struct.tty_operations*, %struct.tty_operations** %ops95, align 8
  %break_ctl96 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %17, i64 0, i32 20
  %18 = load i32 (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i32)** %break_ctl96, align 8
  %tobool97.not = icmp eq i32 (%struct.tty_struct*, i32)* %18, null
  br i1 %tobool97.not, label %cleanup, label %if.then98

if.then98:                                        ; preds = %sw.bb94
  %call101 = call i32 %18(%struct.tty_struct* noundef %call, i32 noundef 0) #16
  %conv102 = sext i32 %call101 to i64
  br label %cleanup

sw.bb104:                                         ; preds = %sw.epilog
  %tobool105.not = icmp eq i64 %arg, 0
  br i1 %tobool105.not, label %if.then106, label %cleanup

if.then106:                                       ; preds = %sw.bb104
  %call107 = call fastcc i32 @send_break(%struct.tty_struct* noundef %call, i32 noundef 250) #17
  %conv108 = sext i32 %call107 to i64
  br label %cleanup

sw.bb110:                                         ; preds = %sw.epilog
  %tobool111.not = icmp eq i64 %arg, 0
  %19 = trunc i64 %arg to i32
  %20 = mul i32 %19, 100
  %conv116 = select i1 %tobool111.not, i32 250, i32 %20
  %call117 = call fastcc i32 @send_break(%struct.tty_struct* noundef %call, i32 noundef %conv116) #17
  %conv118 = sext i32 %call117 to i64
  br label %cleanup

sw.bb119:                                         ; preds = %if.end, %sw.epilog
  %21 = inttoptr i64 %arg to i32*
  %call120 = call fastcc i32 @tty_tiocmget(%struct.tty_struct* noundef %call, i32* noundef %21) #17
  %conv121 = sext i32 %call120 to i64
  br label %cleanup

sw.bb122:                                         ; preds = %sw.epilog, %if.end, %if.end, %if.end, %sw.epilog, %sw.epilog
  %22 = inttoptr i64 %arg to i32*
  %call123 = call fastcc i32 @tty_tiocmset(%struct.tty_struct* noundef %call, i32 noundef %cmd, i32* noundef %22) #17
  %conv124 = sext i32 %call123 to i64
  br label %cleanup

sw.bb125:                                         ; preds = %if.end
  %call126 = call fastcc i32 @tty_tiocgicount(%struct.tty_struct* noundef %call, i8* noundef %0) #17
  %conv127 = sext i32 %call126 to i64
  br label %cleanup

sw.bb128:                                         ; preds = %sw.epilog, %if.end
  switch i64 %arg, label %sw.epilog148 [
    i64 0, label %sw.bb129
    i64 2, label %sw.bb129
  ]

sw.bb129:                                         ; preds = %sw.bb128, %sw.bb128
  call void @tty_buffer_flush(%struct.tty_struct* noundef %call, %struct.tty_ldisc* noundef null) #16
  br label %sw.epilog148

sw.bb131:                                         ; preds = %sw.epilog, %if.end
  %23 = inttoptr i64 %arg to %struct.serial_struct*
  %call132 = call fastcc i32 @tty_tiocsserial(%struct.tty_struct* noundef %call, %struct.serial_struct* noundef %23) #17
  %conv133 = sext i32 %call132 to i64
  br label %cleanup

sw.bb134:                                         ; preds = %sw.epilog, %if.end
  %24 = inttoptr i64 %arg to %struct.serial_struct*
  %call135 = call fastcc i32 @tty_tiocgserial(%struct.tty_struct* noundef %call, %struct.serial_struct* noundef %24) #17
  %conv136 = sext i32 %call135 to i64
  br label %cleanup

sw.bb137:                                         ; preds = %if.end
  %conv138 = trunc i64 %arg to i32
  %call139 = call i32 @ptm_open_peer(%struct.file* noundef %file, %struct.tty_struct* noundef %call, i32 noundef %conv138) #16
  %conv140 = sext i32 %call139 to i64
  br label %cleanup

sw.default:                                       ; preds = %if.end, %sw.epilog
  %call141 = call i64 @tty_jobctrl_ioctl(%struct.tty_struct* noundef %call, %struct.tty_struct* noundef %call4, %struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) #16
  %conv142 = trunc i64 %call141 to i32
  %cmp143.not = icmp eq i32 %conv142, -515
  br i1 %cmp143.not, label %sw.epilog148, label %if.then145

if.then145:                                       ; preds = %sw.default
  %sext = shl i64 %call141, 32
  %conv146 = ashr exact i64 %sext, 32
  br label %cleanup

sw.epilog148:                                     ; preds = %sw.default, %sw.bb129, %sw.bb128
  %ops149 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 4
  %25 = load %struct.tty_operations*, %struct.tty_operations** %ops149, align 8
  %ioctl = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %25, i64 0, i32 12
  %26 = load i32 (%struct.tty_struct*, i32, i64)*, i32 (%struct.tty_struct*, i32, i64)** %ioctl, align 8
  %tobool150.not = icmp eq i32 (%struct.tty_struct*, i32, i64)* %26, null
  br i1 %tobool150.not, label %if.end160, label %if.then151

if.then151:                                       ; preds = %sw.epilog148
  %call154 = call i32 %26(%struct.tty_struct* noundef %call, i32 noundef %cmd, i64 noundef %arg) #16
  %cmp155.not = icmp eq i32 %call154, -515
  br i1 %cmp155.not, label %if.end160, label %if.then157

if.then157:                                       ; preds = %if.then151
  %conv158 = sext i32 %call154 to i64
  br label %cleanup

if.end160:                                        ; preds = %if.then151, %sw.epilog148
  %call161 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef %call) #16
  %tobool162.not = icmp eq %struct.tty_ldisc* %call161, null
  br i1 %tobool162.not, label %if.then163, label %if.end165

if.then163:                                       ; preds = %if.end160
  %call164 = call i64 @hung_up_tty_ioctl(%struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) #17
  br label %cleanup

if.end165:                                        ; preds = %if.end160
  %ops166 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %call161, i64 0, i32 0
  %27 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops166, align 8
  %ioctl167 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %27, i64 0, i32 8
  %28 = load i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)** %ioctl167, align 8
  %tobool168.not = icmp eq i32 (%struct.tty_struct*, %struct.file*, i32, i64)* %28, null
  br i1 %tobool168.not, label %if.end177, label %if.then169

if.then169:                                       ; preds = %if.end165
  %call172 = call i32 %28(%struct.tty_struct* noundef %call, %struct.file* noundef %file, i32 noundef %cmd, i64 noundef %arg) #16
  %cmp173 = icmp eq i32 %call172, -515
  %spec.store.select = select i1 %cmp173, i32 -25, i32 %call172
  %phi.cast = sext i32 %spec.store.select to i64
  br label %if.end177

if.end177:                                        ; preds = %if.then169, %if.end165
  %retval1.0 = phi i64 [ %phi.cast, %if.then169 ], [ -22, %if.end165 ]
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call161) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.bb104, %sw.bb94, %sw.bb86, %if.then69, %sw.bb61, %sw.bb57, %if.then39, %sw.bb34, %cond.false, %sw.bb26, %if.then10, %entry, %if.end177, %if.then163, %if.then157, %if.then145, %sw.bb137, %sw.bb134, %sw.bb131, %sw.bb125, %sw.bb122, %sw.bb119, %sw.bb110, %if.then106, %if.then98, %if.then88, %if.end60, %sw.bb54, %sw.bb51, %sw.bb32, %sw.bb31, %sw.bb23, %sw.bb20, %sw.bb17, %if.then7
  %retval.0 = phi i64 [ %conv146, %if.then145 ], [ %conv158, %if.then157 ], [ %retval1.0, %if.end177 ], [ %call164, %if.then163 ], [ %conv140, %sw.bb137 ], [ %conv136, %sw.bb134 ], [ %conv133, %sw.bb131 ], [ %conv127, %sw.bb125 ], [ %conv124, %sw.bb122 ], [ %conv121, %sw.bb119 ], [ %conv118, %sw.bb110 ], [ %conv108, %if.then106 ], [ %conv102, %if.then98 ], [ %conv92, %if.then88 ], [ 0, %if.end60 ], [ %conv56, %sw.bb54 ], [ %conv53, %sw.bb51 ], [ 0, %sw.bb32 ], [ 0, %sw.bb31 ], [ %conv25, %sw.bb23 ], [ %conv22, %sw.bb20 ], [ %conv19, %sw.bb17 ], [ %conv, %if.then7 ], [ -22, %entry ], [ -4, %if.then10 ], [ %phi.cast286, %cond.false ], [ -22, %sw.bb26 ], [ %phi.cast285, %if.then39 ], [ -14, %sw.bb34 ], [ -1, %sw.bb57 ], [ %phi.cast284, %if.then69 ], [ -14, %sw.bb61 ], [ 0, %sw.bb86 ], [ 0, %sw.bb94 ], [ 0, %sw.bb104 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #5 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.tty_struct* @tty_pair_get_tty(%struct.tty_struct* noundef readonly %tty) unnamed_addr #5 {
entry:
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %0 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 10
  %1 = load i16, i16* %type, align 8
  %cmp = icmp eq i16 %1, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 11
  %2 = load i16, i16* %subtype, align 2
  %cmp4 = icmp eq i16 %2, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 24
  %3 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %tty.addr.0 = phi %struct.tty_struct* [ %3, %if.then ], [ %tty, %land.lhs.true ], [ %tty, %entry ]
  ret %struct.tty_struct* %tty.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_check_change(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_wait_until_sent(%struct.tty_struct* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #17
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !10

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tiocsti(%struct.tty_struct* noundef %tty, i8* noundef %p) unnamed_addr #0 {
entry:
  %ch = alloca i8, align 4
  %mbz = alloca i8, align 4
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %ch) #18
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %mbz) #18
  store i8 0, i8* %mbz, align 4
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty1 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 24
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8
  %cmp.not = icmp eq %struct.tty_struct* %3, %tty
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call i1 @capable(i32 noundef 21) #16
  br i1 %call2, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call fastcc i64 @__range_ok(i8* noundef %p, i64 noundef 1) #17
  %tobool.not = icmp eq i64 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %p) #17
  %4 = call { i32, i64 } asm sideeffect "1:\09ldtrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8* %call5, i32 -14, i32 0) #18, !srcloc !21
  %asmresult = extractvalue { i32, i64 } %4, 0
  %asmresult9 = extractvalue { i32, i64 } %4, 1
  %conv = trunc i64 %asmresult9 to i8
  store i8 %conv, i8* %ch, align 4
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.then4
  %call19 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef %tty) #16
  %tobool20.not = icmp eq %struct.tty_ldisc* %call19, null
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end18
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 37
  %5 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call void @tty_buffer_lock_exclusive(%struct.tty_port* noundef %5) #16
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %call19, i64 0, i32 0
  %6 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %receive_buf = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %6, i64 0, i32 13
  %7 = load void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*, i8*, i8*, i32)** %receive_buf, align 8
  %tobool23.not = icmp eq void (%struct.tty_struct*, i8*, i8*, i32)* %7, null
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end22
  call void %7(%struct.tty_struct* noundef %tty, i8* noundef nonnull %ch, i8* noundef nonnull %mbz, i32 noundef 1) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22
  %8 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  call void @tty_buffer_unlock_exclusive(%struct.tty_port* noundef %8) #16
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call19) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end18, %if.then4, %land.lhs.true, %if.end27
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -1, %land.lhs.true ], [ -14, %if.then4 ], [ -5, %if.end18 ], [ -14, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %mbz) #18
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %ch) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tiocgwinsz(%struct.tty_struct* noundef %tty, %struct.winsize* noundef %arg) unnamed_addr #0 {
entry:
  %winsize_mutex = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 12
  call void @mutex_lock(%struct.mutex* noundef %winsize_mutex) #16
  %0 = bitcast %struct.winsize* %arg to i8*
  %winsize = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 18
  %1 = bitcast %struct.winsize* %winsize to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %0, i8* noundef %1, i64 noundef 8) #16
  %conv = trunc i64 %call2.i to i32
  call void @mutex_unlock(%struct.mutex* noundef %winsize_mutex) #16
  %tobool.not = icmp eq i32 %conv, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tiocswinsz(%struct.tty_struct* noundef %tty, %struct.winsize* noundef %arg) unnamed_addr #0 {
entry:
  %tmp_ws = alloca i64, align 8, !annotation !7
  %tmpcast = bitcast i64* %tmp_ws to %struct.winsize*, !annotation !7
  %0 = bitcast i64* %tmp_ws to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i64 0, i64* %tmp_ws, align 8, !annotation !7
  %1 = bitcast %struct.winsize* %arg to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 8) #16
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %2 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %resize = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %2, i64 0, i32 27
  %3 = load i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.winsize*)** %resize, align 8
  %tobool1.not = icmp eq i32 (%struct.tty_struct*, %struct.winsize*)* %3, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call5 = call i32 %3(%struct.tty_struct* noundef %tty, %struct.winsize* noundef nonnull %tmpcast) #16
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call6 = call i32 @tty_do_resize(%struct.tty_struct* noundef %tty, %struct.winsize* noundef nonnull %tmpcast) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else, %if.then2
  %retval.0 = phi i32 [ %call5, %if.then2 ], [ 0, %if.else ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tioccons(%struct.file* noundef %file) unnamed_addr #0 {
entry:
  %call = call i1 @capable(i32 noundef 21) #16
  br i1 %call, label %if.end, label %return

if.end:                                           ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %write_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 5
  %1 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %write_iter, align 8
  %cmp = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %1, @redirected_tty_write
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @redirect_lock, i64 0, i32 0, i32 0)) #16
  %2 = load %struct.file*, %struct.file** @redirect, align 8
  store %struct.file* null, %struct.file** @redirect, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @redirect_lock, i64 0, i32 0, i32 0)) #16
  %tobool.not = icmp eq %struct.file* %2, null
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.then1
  call void @fput(%struct.file* noundef nonnull %2) #16
  br label %return

if.end4:                                          ; preds = %if.end
  %cmp7.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %1, @tty_write
  br i1 %cmp7.not, label %if.end9, label %return

if.end9:                                          ; preds = %if.end4
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 8
  %3 = load i32, i32* %f_mode, align 4
  %and = and i32 %3, 2
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %return, label %if.end12

if.end12:                                         ; preds = %if.end9
  %and14 = and i32 %3, 262144
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %return, label %if.end17

if.end17:                                         ; preds = %if.end12
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @redirect_lock, i64 0, i32 0, i32 0)) #16
  %4 = load %struct.file*, %struct.file** @redirect, align 8
  %tobool18.not = icmp eq %struct.file* %4, null
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @redirect_lock, i64 0, i32 0, i32 0)) #16
  br label %return

if.end20:                                         ; preds = %if.end17
  %call21 = call fastcc %struct.file* @get_file(%struct.file* noundef %file) #17
  store %struct.file* %file, %struct.file** @redirect, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @redirect_lock, i64 0, i32 0, i32 0)) #16
  br label %return

return:                                           ; preds = %if.end12, %if.end9, %if.end4, %if.then1, %if.then2, %entry, %if.end20, %if.then19
  %retval.0 = phi i32 [ -16, %if.then19 ], [ 0, %if.end20 ], [ -1, %entry ], [ 0, %if.then2 ], [ 0, %if.then1 ], [ -25, %if.end4 ], [ -9, %if.end9 ], [ -22, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #0 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #18, !srcloc !22
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #18, !srcloc !23
  call void asm sideeffect "hint #20", "~{memory}"() #18, !srcloc !24
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tiocgetd(%struct.tty_struct* noundef %tty, i32* noundef %p) unnamed_addr #0 {
entry:
  %call = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef %tty) #16
  %tobool.not = icmp eq %struct.tty_ldisc* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast i32* %p to i8*
  %call1 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #17
  %tobool2.not = icmp eq i64 %call1, 0
  br i1 %tobool2.not, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #17
  %1 = bitcast i8* %call4 to i32*
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %call, i64 0, i32 0
  %2 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %num = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %2, i64 0, i32 1
  %3 = load i32, i32* %num, align 8
  %4 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %3, i32* %1, i32 -14, i32 0) #18, !srcloc !25
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then3
  %__pu_err.0 = phi i32 [ %4, %if.then3 ], [ -14, %if.end ]
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11
  %retval.0 = phi i32 [ %__pu_err.0, %if.end11 ], [ -5, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tiocsetd(%struct.tty_struct* noundef %tty, i32* noundef %p) unnamed_addr #0 {
entry:
  %0 = bitcast i32* %p to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #17
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #17
  %1 = bitcast i8* %call1 to i32*
  %2 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %1, i32 -14, i32 0) #18, !srcloc !26
  %asmresult = extractvalue { i32, i64 } %2, 0
  %phi.cmp = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end
  %asmresult5 = extractvalue { i32, i64 } %2, 1
  %conv = trunc i64 %asmresult5 to i32
  %call14 = call i32 @tty_set_ldisc(%struct.tty_struct* noundef %tty, i32 noundef %conv) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.end13
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ -14, %if.end ], [ -14, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @tty_devnum(%struct.tty_struct* nocapture noundef readonly %tty) local_unnamed_addr #5 {
entry:
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %0 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %major = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 7
  %1 = load i32, i32* %major, align 4
  %shl = shl i32 %1, 20
  %minor_start = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 8
  %2 = load i32, i32* %minor_start, align 8
  %or = or i32 %shl, %2
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %3 = load i32, i32* %index, align 8
  %add = add i32 %or, %3
  ret i32 %add
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @send_break(%struct.tty_struct* noundef %tty, i32 noundef %duration) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %break_ctl = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 20
  %1 = load i32 (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i32)** %break_ctl, align 8
  %cmp = icmp eq i32 (%struct.tty_struct*, i32)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %2 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %flags = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %2, i64 0, i32 13
  %3 = load i64, i64* %flags, align 8
  %and = and i64 %3, 32
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = call i32 %1(%struct.tty_struct* noundef %tty, i32 noundef %duration) #16
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call5 = call fastcc i32 @tty_write_lock(%struct.tty_struct* noundef %tty, i32 noundef 0) #17
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.else
  %4 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %break_ctl10 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %4, i64 0, i32 20
  %5 = load i32 (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i32)** %break_ctl10, align 8
  %call11 = call i32 %5(%struct.tty_struct* noundef %tty, i32 noundef -1) #16
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %out

if.end14:                                         ; preds = %if.end8
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %call16 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %7) #17
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  %call19 = call i64 @msleep_interruptible(i32 noundef %duration) #16
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14
  %8 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %break_ctl22 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %8, i64 0, i32 20
  %9 = load i32 (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i32)** %break_ctl22, align 8
  %call23 = call i32 %9(%struct.tty_struct* noundef %tty, i32 noundef 0) #16
  br label %out

out:                                              ; preds = %if.end8, %if.end20
  %retval1.0 = phi i32 [ %call23, %if.end20 ], [ %call11, %if.end8 ]
  call fastcc void @tty_write_unlock(%struct.tty_struct* noundef %tty) #17
  %10 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %11 = inttoptr i64 %10 to %struct.task_struct*
  %call25 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %11) #17
  %tobool26.not = icmp eq i32 %call25, 0
  %spec.select = select i1 %tobool26.not, i32 %retval1.0, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then2, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -4, %if.else ], [ %call, %if.then2 ], [ %spec.select, %out ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_tiocmget(%struct.tty_struct* noundef %tty, i32* noundef %p) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %tiocmget = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 25
  %1 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %tiocmget, align 8
  %tobool.not = icmp eq i32 (%struct.tty_struct*)* %1, null
  br i1 %tobool.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.tty_struct* noundef %tty) #16
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then4, label %if.end18

if.then4:                                         ; preds = %if.then
  %2 = bitcast i32* %p to i8*
  %call5 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #17
  %tobool6.not = icmp eq i64 %call5, 0
  br i1 %tobool6.not, label %if.end18, label %if.then7

if.then7:                                         ; preds = %if.then4
  %call8 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #17
  %3 = bitcast i8* %call8 to i32*
  %4 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call, i32* %3, i32 -14, i32 0) #18, !srcloc !27
  br label %if.end18

if.end18:                                         ; preds = %if.then7, %if.then4, %if.then, %entry
  %retval1.0 = phi i32 [ %call, %if.then ], [ -25, %entry ], [ %4, %if.then7 ], [ -14, %if.then4 ]
  ret i32 %retval1.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_tiocmset(%struct.tty_struct* noundef %tty, i32 noundef %cmd, i32* noundef %p) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %tiocmset = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 26
  %1 = load i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i32, i32)** %tiocmset, align 8
  %cmp = icmp eq i32 (%struct.tty_struct*, i32, i32)* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast i32* %p to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 4) #17
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end
  %call3 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #17
  %3 = bitcast i8* %call3 to i32*
  %4 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %3, i32 -14, i32 0) #18, !srcloc !28
  %asmresult = extractvalue { i32, i64 } %4, 0
  %asmresult7 = extractvalue { i32, i64 } %4, 1
  %conv = trunc i64 %asmresult7 to i32
  %tobool14.not = icmp eq i32 %asmresult, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end11
  switch i32 %cmd, label %sw.epilog [
    i32 21526, label %sw.bb
    i32 21527, label %sw.bb17
    i32 21528, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end16
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end16
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end16
  %neg = xor i32 %conv, -1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end16, %sw.bb18, %sw.bb17, %sw.bb
  %set.0 = phi i32 [ 0, %if.end16 ], [ %conv, %sw.bb18 ], [ 0, %sw.bb17 ], [ %conv, %sw.bb ]
  %clear.0 = phi i32 [ 0, %if.end16 ], [ %neg, %sw.bb18 ], [ %conv, %sw.bb17 ], [ 0, %sw.bb ]
  %and = and i32 %set.0, 57350
  %and19 = and i32 %clear.0, 57350
  %5 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %tiocmset21 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %5, i64 0, i32 26
  %6 = load i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i32, i32)** %tiocmset21, align 8
  %call22 = call i32 %6(%struct.tty_struct* noundef %tty, i32 noundef %and, i32 noundef %and19) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end11, %entry, %sw.epilog
  %retval.0 = phi i32 [ %call22, %sw.epilog ], [ -25, %entry ], [ %asmresult, %if.end11 ], [ -14, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_tiocgicount(%struct.tty_struct* noundef %tty, i8* noundef %arg) unnamed_addr #0 {
entry:
  %icount = alloca %struct.serial_icounter_struct, align 4
  %0 = bitcast %struct.serial_icounter_struct* %icount to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(80) %0, i8 0, i64 80, i1 false), !annotation !7
  %call = call i32 @tty_get_icount(%struct.tty_struct* noundef %tty, %struct.serial_icounter_struct* noundef nonnull %icount) #17
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %arg, i8* noundef nonnull %0, i64 noundef 80) #16
  %tobool.not = icmp eq i64 %call2.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_flush(%struct.tty_struct* noundef, %struct.tty_ldisc* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_tiocsserial(%struct.tty_struct* noundef %tty, %struct.serial_struct* noundef %ss) unnamed_addr #0 {
entry:
  %v = alloca %struct.serial_struct, align 8
  %0 = bitcast %struct.serial_struct* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !7
  %1 = bitcast %struct.serial_struct* %ss to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 72) #16
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @tty_set_serial(%struct.tty_struct* noundef %tty, %struct.serial_struct* noundef nonnull %v) #17
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -14, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_tiocgserial(%struct.tty_struct* noundef %tty, %struct.serial_struct* noundef %ss) unnamed_addr #0 {
entry:
  %v = alloca %struct.serial_struct, align 8
  %0 = bitcast %struct.serial_struct* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !annotation !7
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 72) #16
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %1 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %get_serial = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %1, i64 0, i32 29
  %2 = load i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)** %get_serial, align 8
  %tobool.not = icmp eq i32 (%struct.tty_struct*, %struct.serial_struct*)* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i32 %2(%struct.tty_struct* noundef %tty, %struct.serial_struct* noundef nonnull %v) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %3 = bitcast %struct.serial_struct* %ss to i8*
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %3, i8* noundef nonnull %0, i64 noundef 72) #16
  %tobool6.not = icmp eq i64 %call2.i, 0
  %spec.select = select i1 %tobool6.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end, %entry
  %retval.0 = phi i32 [ -25, %entry ], [ %call3, %if.end ], [ %spec.select, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptm_open_peer(%struct.file* noundef, %struct.tty_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @tty_jobctrl_ioctl(%struct.tty_struct* noundef, %struct.tty_struct* noundef, %struct.file* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i64 @hung_up_tty_ioctl(%struct.file* nocapture noundef readnone %file, i32 noundef %cmd, i64 noundef %arg) #4 {
entry:
  %cmp = icmp eq i32 %cmd, 21520
  %cond = select i1 %cmp, i64 -25, i64 -5
  ret i64 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__do_SAK(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %cleanup, label %do.body1

do.body1:                                         ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #17
  %session6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 20, i32 2
  %0 = load %struct.pid*, %struct.pid** %session6, align 8
  %call7 = call fastcc %struct.pid* @get_pid(%struct.pid* noundef %0) #17
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #16
  call void @tty_ldisc_flush(%struct.tty_struct* noundef nonnull %tty) #16
  call void @tty_driver_flush_buffer(%struct.tty_struct* noundef nonnull %tty) #16
  call fastcc void @__raw_read_lock() #17
  %cmp11.not = icmp eq %struct.pid* %0, null
  br i1 %cmp11.not, label %do.end57, label %if.then13

if.then13:                                        ; preds = %do.body1
  %first = getelementptr %struct.pid, %struct.pid* %0, i64 0, i32 3, i64 3, i32 0
  %1 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool20.not = icmp eq %struct.hlist_node* %1, null
  %add.ptr = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -68, i32 1
  %tobool25.not168172 = icmp eq %struct.hlist_node*** %add.ptr, null
  %tobool25.not168 = or i1 %tobool20.not, %tobool25.not168172
  br i1 %tobool25.not168, label %do.end57, label %do.end28.lr.ph

do.end28.lr.ph:                                   ; preds = %if.then13
  %2 = bitcast %struct.hlist_node*** %add.ptr to %struct.task_struct*
  %call31 = call i8* @tty_name(%struct.tty_struct* noundef nonnull %tty) #17
  br label %do.end28

do.end28:                                         ; preds = %do.end28.lr.ph, %do.end28
  %p.0169 = phi %struct.task_struct* [ %2, %do.end28.lr.ph ], [ %spec.select167, %do.end28 ]
  %call30 = call i8* @tty_driver_name(%struct.tty_struct* noundef nonnull %tty) #17
  %call32 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef nonnull %p.0169) #17
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.0169, i64 0, i32 81, i64 0
  %call33 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call30, i8* noundef %call31, i32 noundef %call32, i8* noundef %arraydecay) #19
  %call34 = call i32 @group_send_sig_info(i32 noundef 9, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef nonnull %p.0169, i32 noundef 3) #16
  %next = getelementptr %struct.task_struct, %struct.task_struct* %p.0169, i64 0, i32 60, i64 3, i32 0
  %3 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool44.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr51 = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -68, i32 1
  %4 = bitcast %struct.hlist_node*** %add.ptr51 to %struct.task_struct*
  %spec.select167 = select i1 %tobool44.not, %struct.task_struct* null, %struct.task_struct* %4
  %tobool25.not = icmp eq %struct.task_struct* %spec.select167, null
  br i1 %tobool25.not, label %do.end57, label %do.end28

do.end57:                                         ; preds = %do.end28, %if.then13, %do.body1
  %5 = load volatile %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32, i32 0), align 8
  %add.ptr70170 = getelementptr %struct.list_head, %struct.list_head* %5, i64 -42, i32 1
  %cmp71.not171 = icmp eq %struct.list_head** %add.ptr70170, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp71.not171, label %for.end112, label %do.body74.preheader.lr.ph

do.body74.preheader.lr.ph:                        ; preds = %do.end57
  %6 = bitcast %struct.tty_struct* %tty to i8*
  br label %do.body74.preheader

for.cond58.loopexit:                              ; preds = %do.cond107
  %7 = getelementptr inbounds %struct.list_head*, %struct.list_head** %.in, i64 83
  %8 = load volatile %struct.list_head*, %struct.list_head** %7, align 8
  %add.ptr70 = getelementptr %struct.list_head, %struct.list_head* %8, i64 -42, i32 1
  %cmp71.not = icmp eq %struct.list_head** %add.ptr70, bitcast (%struct.task_struct* @init_task to %struct.list_head**)
  br i1 %cmp71.not, label %for.end112, label %do.body74.preheader

do.body74.preheader:                              ; preds = %do.body74.preheader.lr.ph, %for.cond58.loopexit
  %.in = phi %struct.list_head** [ %add.ptr70170, %do.body74.preheader.lr.ph ], [ %add.ptr70, %for.cond58.loopexit ]
  %9 = bitcast %struct.list_head** %.in to %struct.task_struct*
  br label %do.body74

do.body74:                                        ; preds = %do.body74.preheader, %do.cond107
  %p.1 = phi %struct.task_struct* [ %call108, %do.cond107 ], [ %9, %do.body74.preheader ]
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.1, i64 0, i32 87
  %10 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %tty75 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %10, i64 0, i32 24
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty75, align 8
  %cmp76 = icmp eq %struct.tty_struct* %11, %tty
  br i1 %cmp76, label %do.end81, label %if.end90

do.end81:                                         ; preds = %do.body74
  %call83 = call i8* @tty_driver_name(%struct.tty_struct* noundef nonnull %tty) #17
  %call84 = call i8* @tty_name(%struct.tty_struct* noundef nonnull %tty) #17
  %call85 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %p.1) #17
  %arraydecay87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.1, i64 0, i32 81, i64 0
  %call88 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call83, i8* noundef %call84, i32 noundef %call85, i8* noundef %arraydecay87) #19
  %call89 = call i32 @group_send_sig_info(i32 noundef 9, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef %p.1, i32 noundef 3) #16
  br label %do.cond107

if.end90:                                         ; preds = %do.body74
  call fastcc void @task_lock(%struct.task_struct* noundef %p.1) #17
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.1, i64 0, i32 84
  %12 = load %struct.files_struct*, %struct.files_struct** %files, align 16
  %call91 = call i32 @iterate_fd(%struct.files_struct* noundef %12, i32 noundef 0, i32 (i8*, %struct.file*, i32)* noundef nonnull @this_tty, i8* noundef nonnull %6) #16
  %cmp92.not = icmp eq i32 %call91, 0
  br i1 %cmp92.not, label %if.end106, label %do.end97

do.end97:                                         ; preds = %if.end90
  %call99 = call i8* @tty_driver_name(%struct.tty_struct* noundef nonnull %tty) #17
  %call100 = call i8* @tty_name(%struct.tty_struct* noundef nonnull %tty) #17
  %call101 = call fastcc i32 @task_pid_nr(%struct.task_struct* noundef %p.1) #17
  %arraydecay103 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p.1, i64 0, i32 81, i64 0
  %sub = add i32 %call91, -1
  %call104 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call99, i8* noundef %call100, i32 noundef %call101, i8* noundef %arraydecay103, i32 noundef %sub) #19
  %call105 = call i32 @group_send_sig_info(i32 noundef 9, %struct.kernel_siginfo* noundef nonnull inttoptr (i64 1 to %struct.kernel_siginfo*), %struct.task_struct* noundef %p.1, i32 noundef 3) #16
  br label %if.end106

if.end106:                                        ; preds = %do.end97, %if.end90
  call fastcc void @task_unlock(%struct.task_struct* noundef %p.1) #17
  br label %do.cond107

do.cond107:                                       ; preds = %if.end106, %do.end81
  %call108 = call fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %p.1) #17
  %cmp109.not = icmp eq %struct.task_struct* %call108, %9
  br i1 %cmp109.not, label %for.cond58.loopexit, label %do.body74

for.end112:                                       ; preds = %for.cond58.loopexit, %do.end57
  call fastcc void @__raw_read_unlock() #17
  call void @put_pid(%struct.pid* noundef %0) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end112
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.pid* @get_pid(%struct.pid* noundef returned %pid) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.pid* %pid
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_flush_buffer(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @task_pid_nr(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #5 {
entry:
  %pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 50
  %0 = load i32, i32* %pid, align 32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @group_send_sig_info(i32 noundef, %struct.kernel_siginfo* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iterate_fd(%struct.files_struct* noundef, i32 noundef, i32 (i8*, %struct.file*, i32)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @this_tty(i8* noundef readnone %t, %struct.file* nocapture noundef readonly %file, i32 noundef %fd) #5 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %read_iter = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 4
  %1 = load i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)** %read_iter, align 8
  %cmp.not = icmp eq i64 (%struct.kiocb*, %struct.iov_iter*)* %1, @tty_read
  br i1 %cmp.not, label %if.end, label %return, !prof !29

if.end:                                           ; preds = %entry
  %call = call fastcc %struct.tty_struct* @file_tty(%struct.file* noundef %file) #17
  %2 = bitcast i8* %t to %struct.tty_struct*
  %cmp2.not = icmp eq %struct.tty_struct* %call, %2
  %add = add i32 %fd, 1
  %cond = select i1 %cmp2.not, i32 %add, i32 0
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.task_struct* @next_thread(%struct.task_struct* noundef %p) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %add.ptr = getelementptr %struct.list_head, %struct.list_head* %0, i64 -69, i32 1
  %1 = bitcast %struct.list_head** %add.ptr to %struct.task_struct*
  ret %struct.task_struct* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @do_SAK(%struct.tty_struct* noundef %tty) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %SAK_work = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 36
  call fastcc void @schedule_work(%struct.work_struct* noundef %SAK_work) #17
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #16
  ret i8* %call10.i
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @kref_init(%struct.kref* noundef %kref) unnamed_addr #2 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %refcount) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_init(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(%struct.rw_semaphore* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_ldsem(%struct.ld_semaphore* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #2 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @do_tty_hangup(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -18, i32 1, i32 1
  %0 = bitcast %struct.list_head** %add.ptr to %struct.tty_struct*
  call fastcc void @__tty_hangup(%struct.tty_struct* noundef %0, i32 noundef 0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @do_SAK_work(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -21, i32 1, i32 1
  %0 = bitcast %struct.list_head** %add.ptr to %struct.tty_struct*
  call void @__do_SAK(%struct.tty_struct* noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @tty_line_name(%struct.tty_driver* nocapture noundef readonly %driver, i32 noundef %index, i8* noundef %p) unnamed_addr #0 {
entry:
  %flags = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 13
  %0 = load i64, i64* %flags, align 8
  %and = and i64 %0, 128
  %tobool.not = icmp eq i64 %and, 0
  %name1 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 5
  %1 = load i8*, i8** %name1, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %p, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* noundef %1) #16
  br label %return

if.else:                                          ; preds = %entry
  %name_base = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 6
  %2 = load i32, i32* %name_base, align 8
  %add = add i32 %2, %index
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %p, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* noundef %1, i32 noundef %add) #16
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0.in = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  %retval.0 = sext i32 %retval.0.in to i64
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device* @tty_get_device(%struct.tty_struct* nocapture noundef readonly %tty) unnamed_addr #0 {
entry:
  %call = call i32 @tty_devnum(%struct.tty_struct* noundef %tty) #17
  %0 = load %struct.class*, %struct.class** @tty_class, align 8
  %call1 = call fastcc %struct.device* @class_find_device_by_devt(%struct.class* noundef %0, i32 noundef %call) #17
  ret %struct.device* %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_put_char(%struct.tty_struct* noundef %tty, i8 noundef %ch) local_unnamed_addr #0 {
entry:
  %ch.addr = alloca i8, align 4
  store i8 %ch, i8* %ch.addr, align 4
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %put_char = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 8
  %1 = load i32 (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*, i8)** %put_char, align 8
  %tobool.not = icmp eq i32 (%struct.tty_struct*, i8)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 %1(%struct.tty_struct* noundef %tty, i8 noundef %ch) #16
  br label %return

if.end:                                           ; preds = %entry
  %write = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 7
  %2 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %write, align 8
  %call4 = call i32 %2(%struct.tty_struct* noundef %tty, i8* noundef nonnull %ch.addr, i32 noundef 1) #16
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @tty_register_device(%struct.tty_driver* nocapture noundef readonly %driver, i32 noundef %index, %struct.device* noundef %device) local_unnamed_addr #0 {
entry:
  %call = call %struct.device* @tty_register_device_attr(%struct.tty_driver* noundef %driver, i32 noundef %index, %struct.device* noundef %device, i8* noundef null, %struct.attribute_group** noundef null) #17
  ret %struct.device* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.device* @tty_register_device_attr(%struct.tty_driver* nocapture noundef readonly %driver, i32 noundef %index, %struct.device* noundef %device, i8* noundef %drvdata, %struct.attribute_group** noundef %attr_grp) local_unnamed_addr #0 {
entry:
  %name = alloca [64 x i8], align 1
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %major = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 7
  %1 = load i32, i32* %major, align 4
  %shl = shl i32 %1, 20
  %minor_start = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 8
  %2 = load i32, i32* %minor_start, align 8
  %or = or i32 %shl, %2
  %add = add i32 %or, %index
  %num = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 9
  %3 = load i32, i32* %num, align 4
  %cmp.not = icmp ugt i32 %3, %index
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %name2 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 5
  %4 = load i8*, i8** %name2, align 8
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0), i8* noundef %4, i32 noundef %index) #19
  %call3 = call fastcc i8* @ERR_PTR(i64 noundef -22) #17
  %5 = bitcast i8* %call3 to %struct.device*
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 10
  %6 = load i16, i16* %type, align 8
  %cmp4 = icmp eq i16 %6, 4
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call fastcc void @pty_line_name(%struct.tty_driver* noundef %driver, i32 noundef %index, i8* noundef nonnull %0) #17
  br label %if.end9

if.else:                                          ; preds = %if.end
  %call8 = call fastcc i64 @tty_line_name(%struct.tty_driver* noundef %driver, i32 noundef %index, i8* noundef nonnull %0) #17
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %call10 = call fastcc i8* @kzalloc(i64 noundef 472) #17
  %7 = bitcast i8* %call10 to %struct.device*
  %tobool.not = icmp eq i8* %call10, null
  br i1 %tobool.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %call12 = call fastcc i8* @ERR_PTR(i64 noundef -12) #17
  %8 = bitcast i8* %call12 to %struct.device*
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %devt14 = getelementptr inbounds i8, i8* %call10, i64 392
  %9 = bitcast i8* %devt14 to i32*
  store i32 %add, i32* %9, align 8
  %10 = load %struct.class*, %struct.class** @tty_class, align 8
  %class = getelementptr inbounds i8, i8* %call10, i64 424
  %11 = bitcast i8* %class to %struct.class**
  store %struct.class* %10, %struct.class** %11, align 8
  %parent = getelementptr inbounds i8, i8* %call10, i64 64
  %12 = bitcast i8* %parent to %struct.device**
  store %struct.device* %device, %struct.device** %12, align 8
  %release = getelementptr inbounds i8, i8* %call10, i64 440
  %13 = bitcast i8* %release to void (%struct.device*)**
  store void (%struct.device*)* @tty_device_create_release, void (%struct.device*)** %13, align 8
  %call16 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* noundef nonnull %7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull %0) #16
  %groups = getelementptr inbounds i8, i8* %call10, i64 432
  %14 = bitcast i8* %groups to %struct.attribute_group***
  store %struct.attribute_group** %attr_grp, %struct.attribute_group*** %14, align 8
  call fastcc void @dev_set_drvdata(%struct.device* noundef nonnull %7, i8* noundef %drvdata) #17
  call fastcc void @dev_set_uevent_suppress(%struct.device* noundef nonnull %7, i32 noundef 1) #17
  %call17 = call i32 @device_register(%struct.device* noundef nonnull %7) #16
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %err_put

if.end20:                                         ; preds = %if.end13
  %flags = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 13
  %15 = load i64, i64* %flags, align 8
  %and = and i64 %15, 64
  %tobool21.not = icmp eq i64 %and, 0
  br i1 %tobool21.not, label %if.then22, label %if.end33

if.then22:                                        ; preds = %if.end20
  %termios = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 18
  %16 = load %struct.ktermios**, %struct.ktermios*** %termios, align 8
  %idxprom = zext i32 %index to i64
  %arrayidx = getelementptr %struct.ktermios*, %struct.ktermios** %16, i64 %idxprom
  %17 = load %struct.ktermios*, %struct.ktermios** %arrayidx, align 8
  %tobool23.not = icmp eq %struct.ktermios* %17, null
  br i1 %tobool23.not, label %if.end28, label %if.then24

if.then24:                                        ; preds = %if.then22
  store %struct.ktermios* null, %struct.ktermios** %arrayidx, align 8
  %18 = bitcast %struct.ktermios* %17 to i8*
  call void @kfree(i8* noundef nonnull %18) #16
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.then22
  %call29 = call fastcc i32 @tty_cdev_add(%struct.tty_driver* noundef %driver, i32 noundef %add, i32 noundef %index, i32 noundef 1) #17
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %err_del

if.end33:                                         ; preds = %if.end28, %if.end20
  call fastcc void @dev_set_uevent_suppress(%struct.device* noundef nonnull %7, i32 noundef 0) #17
  %kobj = bitcast i8* %call10 to %struct.kobject*
  %call34 = call i32 @kobject_uevent(%struct.kobject* noundef nonnull %kobj, i32 noundef 0) #16
  br label %cleanup

err_del:                                          ; preds = %if.end28
  call void @device_del(%struct.device* noundef nonnull %7) #16
  br label %err_put

err_put:                                          ; preds = %if.end13, %err_del
  %retval1.0 = phi i32 [ %call17, %if.end13 ], [ %call29, %err_del ]
  call void @put_device(%struct.device* noundef nonnull %7) #16
  %conv35 = sext i32 %retval1.0 to i64
  %call36 = call fastcc i8* @ERR_PTR(i64 noundef %conv35) #17
  %19 = bitcast i8* %call36 to %struct.device*
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.end33, %if.then11, %do.end
  %retval.0 = phi %struct.device* [ %5, %do.end ], [ %19, %err_put ], [ %7, %if.end33 ], [ %8, %if.then11 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #18
  ret %struct.device* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @pty_line_name(%struct.tty_driver* nocapture noundef readonly %driver, i32 noundef %index, i8* noundef %p) unnamed_addr #0 {
entry:
  %name_base = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 6
  %0 = load i32, i32* %name_base, align 8
  %add = add i32 %0, %index
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 11
  %1 = load i16, i16* %subtype, align 2
  %cmp = icmp eq i16 %1, 2
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %name = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 5
  %2 = load i8*, i8** %name, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i8* [ %2, %cond.false ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), %entry ]
  %3 = lshr i32 %add, 4
  %and = and i32 %3, 15
  %4 = zext i32 %and to i64
  %arrayidx = getelementptr [17 x i8], [17 x i8]* @pty_line_name.ptychar, i64 0, i64 %4
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  %and3 = and i32 %add, 15
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %p, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* noundef %cond, i32 noundef %conv2, i32 noundef %and3) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @tty_device_create_release(%struct.device* noundef %dev) #0 {
entry:
  %0 = bitcast %struct.device* %dev to i8*
  call void @kfree(i8* noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @dev_set_drvdata(%struct.device* nocapture noundef writeonly %dev, i8* noundef %data) unnamed_addr #10 {
entry:
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 8
  store i8* %data, i8** %driver_data, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @dev_set_uevent_suppress(%struct.device* nocapture noundef %dev, i32 noundef %val) unnamed_addr #11 {
entry:
  %uevent_suppress = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 0, i32 7
  %0 = trunc i32 %val to i8
  %bf.load = load i8, i8* %uevent_suppress, align 4
  %bf.value = shl i8 %0, 4
  %bf.shl = and i8 %bf.value, 16
  %bf.clear = and i8 %bf.load, -17
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %uevent_suppress, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_cdev_add(%struct.tty_driver* nocapture noundef readonly %driver, i32 noundef %dev, i32 noundef %index, i32 noundef %count) unnamed_addr #0 {
entry:
  %call = call %struct.cdev* @cdev_alloc() #16
  %cdevs = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 2
  %0 = load %struct.cdev**, %struct.cdev*** %cdevs, align 8
  %idxprom = zext i32 %index to i64
  %arrayidx = getelementptr %struct.cdev*, %struct.cdev** %0, i64 %idxprom
  store %struct.cdev* %call, %struct.cdev** %arrayidx, align 8
  %1 = load %struct.cdev**, %struct.cdev*** %cdevs, align 8
  %arrayidx3 = getelementptr %struct.cdev*, %struct.cdev** %1, i64 %idxprom
  %2 = load %struct.cdev*, %struct.cdev** %arrayidx3, align 8
  %tobool.not = icmp eq %struct.cdev* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.cdev, %struct.cdev* %2, i64 0, i32 2
  store %struct.file_operations* @tty_fops, %struct.file_operations** %ops, align 8
  %owner = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 3
  %3 = load %struct.module*, %struct.module** %owner, align 8
  %4 = load %struct.cdev**, %struct.cdev*** %cdevs, align 8
  %arrayidx9 = getelementptr %struct.cdev*, %struct.cdev** %4, i64 %idxprom
  %5 = load %struct.cdev*, %struct.cdev** %arrayidx9, align 8
  %owner10 = getelementptr inbounds %struct.cdev, %struct.cdev* %5, i64 0, i32 1
  store %struct.module* %3, %struct.module** %owner10, align 8
  %6 = load %struct.cdev**, %struct.cdev*** %cdevs, align 8
  %arrayidx13 = getelementptr %struct.cdev*, %struct.cdev** %6, i64 %idxprom
  %7 = load %struct.cdev*, %struct.cdev** %arrayidx13, align 8
  %call14 = call i32 @cdev_add(%struct.cdev* noundef %7, i32 noundef %dev, i32 noundef %count) #16
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %if.then16

if.then16:                                        ; preds = %if.end
  %8 = load %struct.cdev**, %struct.cdev*** %cdevs, align 8
  %arrayidx19 = getelementptr %struct.cdev*, %struct.cdev** %8, i64 %idxprom
  %9 = load %struct.cdev*, %struct.cdev** %arrayidx19, align 8
  %kobj = getelementptr inbounds %struct.cdev, %struct.cdev* %9, i64 0, i32 0
  call void @kobject_put(%struct.kobject* noundef %kobj) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then16, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %call14, %if.then16 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(%struct.device* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_unregister_device(%struct.tty_driver* nocapture noundef readonly %driver, i32 noundef %index) local_unnamed_addr #0 {
entry:
  %0 = load %struct.class*, %struct.class** @tty_class, align 8
  %major = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 7
  %1 = load i32, i32* %major, align 4
  %shl = shl i32 %1, 20
  %minor_start = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 8
  %2 = load i32, i32* %minor_start, align 8
  %or = or i32 %shl, %2
  %add = add i32 %or, %index
  call void @device_destroy(%struct.class* noundef %0, i32 noundef %add) #16
  %flags = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 13
  %3 = load i64, i64* %flags, align 8
  %and = and i64 %3, 64
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cdevs = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 2
  %4 = load %struct.cdev**, %struct.cdev*** %cdevs, align 8
  %idxprom = zext i32 %index to i64
  %arrayidx = getelementptr %struct.cdev*, %struct.cdev** %4, i64 %idxprom
  %5 = load %struct.cdev*, %struct.cdev** %arrayidx, align 8
  call void @cdev_del(%struct.cdev* noundef %5) #16
  %6 = load %struct.cdev**, %struct.cdev*** %cdevs, align 8
  %arrayidx3 = getelementptr %struct.cdev*, %struct.cdev** %6, i64 %idxprom
  store %struct.cdev* null, %struct.cdev** %arrayidx3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(%struct.class* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(%struct.cdev* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.tty_driver* @__tty_alloc_driver(i32 noundef %lines, %struct.module* noundef %owner, i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %lines, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %and = and i64 %flags, 128
  %tobool1 = icmp ne i64 %and, 0
  %cmp = icmp ne i32 %lines, 1
  %or.cond = and i1 %cmp, %tobool1
  br i1 %or.cond, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call fastcc i8* @kzalloc(i64 noundef 184) #17
  %tobool3.not = icmp eq i8* %call2, null
  br i1 %tobool3.not, label %cleanup.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end
  %kref = getelementptr inbounds i8, i8* %call2, i64 4
  %0 = bitcast i8* %kref to %struct.kref*
  call fastcc void @kref_init(%struct.kref* noundef %0) #17
  %magic = bitcast i8* %call2 to i32*
  store i32 21506, i32* %magic, align 8
  %num = getelementptr inbounds i8, i8* %call2, i64 52
  %1 = bitcast i8* %num to i32*
  store i32 %lines, i32* %1, align 4
  %owner7 = getelementptr inbounds i8, i8* %call2, i64 16
  %2 = bitcast i8* %owner7 to %struct.module**
  store %struct.module* %owner, %struct.module** %2, align 8
  %flags8 = getelementptr inbounds i8, i8* %call2, i64 104
  %3 = bitcast i8* %flags8 to i64*
  store i64 %flags, i64* %3, align 8
  %and9 = and i64 %flags, 16
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end22

if.then11:                                        ; preds = %if.end6
  %conv = zext i32 %lines to i64
  %call12 = call fastcc i8* @kcalloc(i64 noundef %conv) #17
  %ttys = getelementptr inbounds i8, i8* %call2, i64 128
  %4 = bitcast i8* %ttys to %struct.tty_struct***
  %5 = bitcast i8* %ttys to i8**
  store i8* %call12, i8** %5, align 8
  %call14 = call fastcc i8* @kcalloc(i64 noundef %conv) #17
  %termios = getelementptr inbounds i8, i8* %call2, i64 144
  %6 = bitcast i8* %termios to i8**
  store i8* %call14, i8** %6, align 8
  %7 = load %struct.tty_struct**, %struct.tty_struct*** %4, align 8
  %tobool16.not = icmp eq %struct.tty_struct** %7, null
  %tobool19.not = icmp eq i8* %call14, null
  %or.cond79 = select i1 %tobool16.not, i1 true, i1 %tobool19.not
  br i1 %or.cond79, label %err_free_all, label %if.end22

if.end22:                                         ; preds = %if.then11, %if.end6
  %and23 = and i64 %flags, 64
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end22
  %conv26 = zext i32 %lines to i64
  %call27 = call fastcc i8* @kcalloc(i64 noundef %conv26) #17
  %ports = getelementptr inbounds i8, i8* %call2, i64 136
  %8 = bitcast i8* %ports to i8**
  store i8* %call27, i8** %8, align 8
  %tobool29.not = icmp eq i8* %call27, null
  br i1 %tobool29.not, label %err_free_all, label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end22
  %cdevs.0 = phi i64 [ 1, %if.end22 ], [ %conv26, %if.then25 ]
  %call34 = call fastcc i8* @kcalloc(i64 noundef %cdevs.0) #17
  %cdevs35 = getelementptr inbounds i8, i8* %call2, i64 8
  %9 = bitcast i8* %cdevs35 to i8**
  store i8* %call34, i8** %9, align 8
  %tobool37.not = icmp eq i8* %call34, null
  br i1 %tobool37.not, label %err_free_all, label %cleanup

err_free_all:                                     ; preds = %if.end32, %if.then25, %if.then11
  %ports40 = getelementptr inbounds i8, i8* %call2, i64 136
  %10 = bitcast i8* %ports40 to i8**
  %11 = load i8*, i8** %10, align 8
  call void @kfree(i8* noundef %11) #16
  %ttys41 = getelementptr inbounds i8, i8* %call2, i64 128
  %12 = bitcast i8* %ttys41 to i8**
  %13 = load i8*, i8** %12, align 8
  call void @kfree(i8* noundef %13) #16
  %termios42 = getelementptr inbounds i8, i8* %call2, i64 144
  %14 = bitcast i8* %termios42 to i8**
  %15 = load i8*, i8** %14, align 8
  call void @kfree(i8* noundef %15) #16
  %cdevs43 = getelementptr inbounds i8, i8* %call2, i64 8
  %16 = bitcast i8* %cdevs43 to i8**
  %17 = load i8*, i8** %16, align 8
  call void @kfree(i8* noundef %17) #16
  call void @kfree(i8* noundef nonnull %call2) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry, %lor.lhs.false, %err_free_all
  %.sink = phi i64 [ -12, %err_free_all ], [ -22, %lor.lhs.false ], [ -22, %entry ], [ -12, %if.end ]
  %call45 = call fastcc i8* @ERR_PTR(i64 noundef %.sink) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end32
  %retval.0.in = phi i8* [ %call2, %if.end32 ], [ %call45, %cleanup.sink.split ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.tty_driver*
  ret %struct.tty_driver* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #17
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_driver_kref_put(%struct.tty_driver* noundef %driver) local_unnamed_addr #0 {
entry:
  %kref = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 1
  call fastcc void @kref_put(%struct.kref* noundef %kref, void (%struct.kref*)* noundef nonnull @destruct_tty_driver) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @destruct_tty_driver(%struct.kref* noundef %kref) #0 {
entry:
  %add.ptr42 = getelementptr %struct.kref, %struct.kref* %kref, i64 -1
  %0 = bitcast %struct.kref* %add.ptr42 to %struct.tty_driver*
  %flags = getelementptr %struct.kref, %struct.kref* %kref, i64 25
  %1 = bitcast %struct.kref* %flags to i64*
  %2 = load i64, i64* %1, align 8
  %and = and i64 %2, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end17, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %3 = getelementptr %struct.kref, %struct.kref* %kref, i64 12, i32 0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %cmp43.not = icmp eq i32 %4, 0
  br i1 %cmp43.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %termios = getelementptr %struct.kref, %struct.kref* %kref, i64 35
  %5 = bitcast %struct.kref* %termios to %struct.ktermios***
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %6 = load %struct.ktermios**, %struct.ktermios*** %5, align 8
  %idxprom = sext i32 %i.044 to i64
  %arrayidx = getelementptr %struct.ktermios*, %struct.ktermios** %6, i64 %idxprom
  %7 = load %struct.ktermios*, %struct.ktermios** %arrayidx, align 8
  %tobool1.not = icmp eq %struct.ktermios* %7, null
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %for.body
  store %struct.ktermios* null, %struct.ktermios** %arrayidx, align 8
  %8 = bitcast %struct.ktermios* %7 to i8*
  call void @kfree(i8* noundef nonnull %8) #16
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.body
  %9 = load i64, i64* %1, align 8
  %and7 = and i64 %9, 8
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %for.inc

if.then9:                                         ; preds = %if.end
  call void @tty_unregister_device(%struct.tty_driver* noundef %0, i32 noundef %i.044) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then9
  %inc = add nuw i32 %i.044, 1
  %10 = load i32, i32* %3, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  call void @proc_tty_unregister_driver(%struct.tty_driver* noundef %0) #16
  %11 = load i64, i64* %1, align 8
  %and12 = and i64 %11, 64
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %for.end
  %cdevs = getelementptr %struct.kref, %struct.kref* %kref, i64 1
  %12 = bitcast %struct.kref* %cdevs to %struct.cdev***
  %13 = load %struct.cdev**, %struct.cdev*** %12, align 8
  %14 = load %struct.cdev*, %struct.cdev** %13, align 8
  call void @cdev_del(%struct.cdev* noundef %14) #16
  br label %if.end17

if.end17:                                         ; preds = %for.end, %if.then14, %entry
  %add.ptr = bitcast %struct.kref* %add.ptr42 to i8*
  %cdevs18 = getelementptr %struct.kref, %struct.kref* %kref, i64 1
  %15 = bitcast %struct.kref* %cdevs18 to i8**
  %16 = load i8*, i8** %15, align 8
  call void @kfree(i8* noundef %16) #16
  %ports = getelementptr %struct.kref, %struct.kref* %kref, i64 33
  %17 = bitcast %struct.kref* %ports to i8**
  %18 = load i8*, i8** %17, align 8
  call void @kfree(i8* noundef %18) #16
  %termios19 = getelementptr %struct.kref, %struct.kref* %kref, i64 35
  %19 = bitcast %struct.kref* %termios19 to i8**
  %20 = load i8*, i8** %19, align 8
  call void @kfree(i8* noundef %20) #16
  %ttys = getelementptr %struct.kref, %struct.kref* %kref, i64 31
  %21 = bitcast %struct.kref* %ttys to i8**
  %22 = load i8*, i8** %21, align 8
  call void @kfree(i8* noundef %22) #16
  call void @kfree(i8* noundef %add.ptr) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @tty_register_driver(%struct.tty_driver* noundef %driver) local_unnamed_addr #0 {
entry:
  %dev = alloca i32, align 4
  %0 = bitcast i32* %dev to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  store i32 0, i32* %dev, align 4, !annotation !7
  %major = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 7
  %1 = load i32, i32* %major, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %minor_start = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 8
  %2 = load i32, i32* %minor_start, align 8
  %num = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 9
  %3 = load i32, i32* %num, align 4
  %name = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 5
  %4 = load i8*, i8** %name, align 8
  %call = call i32 @alloc_chrdev_region(i32* noundef nonnull %dev, i32 noundef %2, i32 noundef %3, i8* noundef %4) #16
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end10.thread, label %if.end10

if.end10.thread:                                  ; preds = %if.then
  %5 = load i32, i32* %dev, align 4
  %shr = lshr i32 %5, 20
  store i32 %shr, i32* %major, align 4
  %and = and i32 %5, 1048575
  store i32 %and, i32* %minor_start, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  %shl = shl i32 %1, 20
  %minor_start6 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 8
  %6 = load i32, i32* %minor_start6, align 8
  %or = or i32 %6, %shl
  store i32 %or, i32* %dev, align 4
  %num7 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 9
  %7 = load i32, i32* %num7, align 4
  %name8 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 5
  %8 = load i8*, i8** %name8, align 8
  %call9 = call i32 @register_chrdev_region(i32 noundef %or, i32 noundef %7, i8* noundef %8) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then, %if.else
  %error.0 = phi i32 [ %call9, %if.else ], [ %call, %if.then ]
  %cmp = icmp slt i32 %error.0, 0
  br i1 %cmp, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end10.thread, %if.end10
  %flags = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 13
  %9 = load i64, i64* %flags, align 8
  %and13 = and i64 %9, 64
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.end21, label %if.then15

if.then15:                                        ; preds = %if.end12
  %10 = load i32, i32* %dev, align 4
  %num16 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 9
  %11 = load i32, i32* %num16, align 4
  %call17 = call fastcc i32 @tty_cdev_add(%struct.tty_driver* noundef %driver, i32 noundef %10, i32 noundef 0, i32 noundef %11) #17
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %err_unreg_char

if.end21:                                         ; preds = %if.then15, %if.end12
  call void @mutex_lock(%struct.mutex* noundef nonnull @tty_mutex) #16
  %tty_drivers = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 21
  call fastcc void @list_add(%struct.list_head* noundef %tty_drivers, %struct.list_head* noundef nonnull @tty_drivers) #17
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  %12 = load i64, i64* %flags, align 8
  %and23 = and i64 %12, 8
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %for.cond.preheader, label %if.end33

for.cond.preheader:                               ; preds = %if.end21
  %num26 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 9
  %13 = load i32, i32* %num26, align 4
  %cmp2785.not = icmp eq i32 %13, 0
  br i1 %cmp2785.not, label %if.end33, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.086 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %call28 = call %struct.device* @tty_register_device(%struct.tty_driver* noundef %driver, i32 noundef %i.086, %struct.device* noundef null) #17
  %14 = bitcast %struct.device* %call28 to i8*
  %call29 = call fastcc i1 @IS_ERR(i8* noundef %14) #17
  br i1 %call29, label %if.then30, label %for.inc

if.then30:                                        ; preds = %for.body
  %15 = bitcast %struct.device* %call28 to i8*
  %call31 = call fastcc i64 @PTR_ERR(i8* noundef %15) #17
  %conv = trunc i64 %call31 to i32
  %i.187 = add i32 %i.086, -1
  %cmp3788 = icmp sgt i32 %i.187, -1
  br i1 %cmp3788, label %for.body39, label %for.end42

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.086, 1
  %16 = load i32, i32* %num26, align 4
  %cmp27 = icmp ult i32 %inc, %16
  br i1 %cmp27, label %for.body, label %if.end33

if.end33:                                         ; preds = %for.inc, %for.cond.preheader, %if.end21
  call void @proc_tty_register_driver(%struct.tty_driver* noundef %driver) #16
  %17 = load i64, i64* %flags, align 8
  %or35 = or i64 %17, 1
  store i64 %or35, i64* %flags, align 8
  br label %cleanup

for.body39:                                       ; preds = %if.then30, %for.body39
  %i.189 = phi i32 [ %i.1, %for.body39 ], [ %i.187, %if.then30 ]
  call void @tty_unregister_device(%struct.tty_driver* noundef %driver, i32 noundef %i.189) #17
  %i.1 = add nsw i32 %i.189, -1
  %cmp37 = icmp sgt i32 %i.189, 0
  br i1 %cmp37, label %for.body39, label %for.end42

for.end42:                                        ; preds = %for.body39, %if.then30
  call void @mutex_lock(%struct.mutex* noundef nonnull @tty_mutex) #16
  call fastcc void @list_del(%struct.list_head* noundef %tty_drivers) #17
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  br label %err_unreg_char

err_unreg_char:                                   ; preds = %if.then15, %for.end42
  %error.1 = phi i32 [ %call17, %if.then15 ], [ %conv, %for.end42 ]
  %18 = load i32, i32* %dev, align 4
  %num44 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 9
  %19 = load i32, i32* %num44, align 4
  call void @unregister_chrdev_region(i32 noundef %18, i32 noundef %19) #16
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_char, %if.end10, %if.end33
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %error.0, %if.end10 ], [ %error.1, %err_unreg_char ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(i32* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

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
declare dso_local void @proc_tty_register_driver(%struct.tty_driver* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #2 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #17
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @tty_unregister_driver(%struct.tty_driver* nocapture noundef %driver) local_unnamed_addr #0 {
entry:
  %major = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 7
  %0 = load i32, i32* %major, align 4
  %shl = shl i32 %0, 20
  %minor_start = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 8
  %1 = load i32, i32* %minor_start, align 8
  %or = or i32 %shl, %1
  %num = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 9
  %2 = load i32, i32* %num, align 4
  call void @unregister_chrdev_region(i32 noundef %or, i32 noundef %2) #16
  call void @mutex_lock(%struct.mutex* noundef nonnull @tty_mutex) #16
  %tty_drivers = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 21
  call fastcc void @list_del(%struct.list_head* noundef %tty_drivers) #17
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn
define dso_local void @tty_default_fops(%struct.file_operations* nocapture noundef writeonly %fops) local_unnamed_addr #12 {
entry:
  %0 = bitcast %struct.file_operations* %fops to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(256) %0, i8* noundef align 8 dereferenceable(256) bitcast (%struct.file_operations* @tty_fops to i8*), i64 256, i1 false)
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @tty_class_init() #13 section ".init.text" {
entry:
  %call = call %struct.class* @__class_create(%struct.module* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @tty_class_init.__key) #16
  store %struct.class* %call, %struct.class** @tty_class, align 8
  %0 = bitcast %struct.class* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %0) #17
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %0) #17
  %conv = trunc i64 %call2 to i32
  br label %return

if.end:                                           ; preds = %entry
  %devnode = getelementptr inbounds %struct.class, %struct.class* %call, i64 0, i32 6
  store i8* (%struct.device*, i16*)* @tty_devnode, i8* (%struct.device*, i16*)** %devnode, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @console_sysfs_notify() local_unnamed_addr #0 {
entry:
  %0 = load %struct.device*, %struct.device** @consdev, align 8
  %tobool.not = icmp eq %struct.device* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i64 0, i32 0
  call void @sysfs_notify(%struct.kobject* noundef %kobj, i8* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(%struct.kobject* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @tty_init() local_unnamed_addr #13 section ".init.text" {
entry:
  call void @tty_sysctl_init() #16
  call void @cdev_init(%struct.cdev* noundef nonnull @tty_cdev, %struct.file_operations* noundef nonnull @tty_fops) #16
  %call = call i32 @cdev_add(%struct.cdev* noundef nonnull @tty_cdev, i32 noundef 5242880, i32 noundef 1) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @register_chrdev_region(i32 noundef 5242880, i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #16
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0)) #21
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %0 = load %struct.class*, %struct.class** @tty_class, align 8
  %call2 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* noundef %0, %struct.device* noundef null, i32 noundef 5242880, i8* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #16
  call void @cdev_init(%struct.cdev* noundef nonnull @console_cdev, %struct.file_operations* noundef nonnull @console_fops) #16
  %call3 = call i32 @cdev_add(%struct.cdev* noundef nonnull @console_cdev, i32 noundef 5242881, i32 noundef 1) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %if.then8

lor.lhs.false5:                                   ; preds = %if.end
  %call6 = call i32 @register_chrdev_region(i32 noundef 5242881, i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0)) #16
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false5, %if.end
  call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0)) #21
  unreachable

if.end9:                                          ; preds = %lor.lhs.false5
  %1 = load %struct.class*, %struct.class** @tty_class, align 8
  %call10 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, %struct.attribute_group**, i8*, ...) @device_create_with_groups(%struct.class* noundef %1, %struct.device* noundef null, i32 noundef 5242881, i8* noundef null, %struct.attribute_group** noundef getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @cons_dev_groups, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0)) #16
  %2 = bitcast %struct.device* %call10 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %2) #17
  %spec.store.select = select i1 %call11, %struct.device* null, %struct.device* %call10
  store %struct.device* %spec.store.select, %struct.device** @consdev, align 8
  %call14 = call i32 @vty_init(%struct.file_operations* noundef nonnull @console_fops) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_sysctl_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(%struct.cdev* noundef, %struct.file_operations* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(%struct.cdev* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(i8* noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @device_create(%struct.class* noundef, %struct.device* noundef, i32 noundef, i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @device_create_with_groups(%struct.class* noundef, %struct.device* noundef, i32 noundef, i8* noundef, %struct.attribute_group** noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vty_init(%struct.file_operations* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !30
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #16
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #16
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #17
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #18, !srcloc !31
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
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
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #18, !srcloc !33
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.file* @tty_release_redirect(%struct.tty_struct* noundef readnone %tty) unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @redirect_lock, i64 0, i32 0, i32 0)) #16
  %0 = load %struct.file*, %struct.file** @redirect, align 8
  %tobool.not = icmp eq %struct.file* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call fastcc %struct.tty_struct* @file_tty(%struct.file* noundef nonnull %0) #17
  %cmp = icmp eq %struct.tty_struct* %call, %tty
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct.file* null, %struct.file** @redirect, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %f.0 = phi %struct.file* [ %0, %if.then ], [ null, %land.lhs.true ], [ null, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @redirect_lock, i64 0, i32 0, i32 0)) #16
  ret %struct.file* %f.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_signal_session_leader(%struct.tty_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_hangup(%struct.tty_struct* noundef, i1 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #17
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !34
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #17
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !29

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #18, !srcloc !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #8 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @arch_local_irq_enable() #17
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #18, !srcloc !37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i64 @hung_up_tty_read(%struct.kiocb* nocapture noundef readnone %iocb, %struct.iov_iter* nocapture noundef readnone %to) #4 {
entry:
  ret i64 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i64 @hung_up_tty_write(%struct.kiocb* nocapture noundef readnone %iocb, %struct.iov_iter* nocapture noundef readnone %from) #4 {
entry:
  ret i64 -5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @hung_up_tty_poll(%struct.file* nocapture noundef readnone %filp, %struct.poll_table_struct* nocapture noundef readnone %wait) #4 {
entry:
  ret i32 349
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i64 @hung_up_tty_compat_ioctl(%struct.file* nocapture noundef readnone %file, i32 noundef %cmd, i64 noundef %arg) #4 {
entry:
  %cmp = icmp eq i32 %cmd, 21520
  %cond = select i1 %cmp, i64 -25, i64 -5
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @hung_up_tty_fasync(i32 noundef %fd, %struct.file* nocapture noundef readnone %file, i32 noundef %on) #4 {
entry:
  ret i32 -25
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #17
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #17
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #16
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #16
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #18, !srcloc !38
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #18, !srcloc !39
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #17
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #17
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !40
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #18, !srcloc !41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #18, !srcloc !42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @tty_io_error(%struct.tty_struct* noundef %tty) unnamed_addr #8 {
entry:
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %0 = load volatile i64, i64* %flags, align 8
  %1 = and i64 %0, 2
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @do_tty_write(i64 (%struct.tty_struct*, %struct.file*, i8*, i64)* nocapture noundef readonly %write, %struct.tty_struct* noundef %tty, %struct.file* noundef %file, %struct.iov_iter* noundef %from) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %from) #17
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %and = and i32 %0, 2048
  %call1 = call fastcc i32 @tty_write_lock(%struct.tty_struct* noundef %tty, i32 noundef %and) #17
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = sext i32 %call1 to i64
  br label %cleanup70

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %1 = load volatile i64, i64* %flags, align 8
  %2 = and i64 %1, 131072
  %tobool.not = icmp eq i64 %2, 0
  %spec.select = select i1 %tobool.not, i32 2048, i32 65536
  %conv6 = zext i32 %spec.select to i64
  %cmp7 = icmp ult i64 %call, %conv6
  %conv10 = trunc i64 %call to i32
  %chunk.1 = select i1 %cmp7, i32 %conv10, i32 %spec.select
  %write_cnt = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 35
  %3 = load i32, i32* %write_cnt, align 8
  %cmp12 = icmp ult i32 %3, %chunk.1
  br i1 %cmp12, label %if.then14, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  %.pre = zext i32 %chunk.1 to i64
  br label %if.end26

if.then14:                                        ; preds = %if.end
  %4 = icmp ugt i32 %chunk.1, 1024
  %spec.store.select = select i1 %4, i32 %chunk.1, i32 1024
  %conv19 = zext i32 %spec.store.select to i64
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %conv19, i32 noundef 3264) #16
  %tobool21.not = icmp eq i8* %call10.i, null
  br i1 %tobool21.not, label %out, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then14
  %write_buf = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 34
  %5 = load i8*, i8** %write_buf, align 8
  call void @kfree(i8* noundef %5) #16
  store i32 %spec.store.select, i32* %write_cnt, align 8
  store i8* %call10.i, i8** %write_buf, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end.if.end26_crit_edge, %cleanup.thread
  %conv27.pre-phi = phi i64 [ %.pre, %if.end.if.end26_crit_edge ], [ %conv19, %cleanup.thread ]
  %write_buf33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 34
  br label %for.cond

for.cond:                                         ; preds = %cleanup63, %if.end26
  %count.0 = phi i64 [ %call, %if.end26 ], [ %sub53, %cleanup63 ]
  %written.0 = phi i64 [ 0, %if.end26 ], [ %add, %cleanup63 ]
  %cmp28 = icmp ugt i64 %count.0, %conv27.pre-phi
  %spec.select122 = select i1 %cmp28, i64 %conv27.pre-phi, i64 %count.0
  %cmp11.i.i = icmp ugt i64 %spec.select122, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.else.i, !prof !29

check_copy_size.exit.i:                           ; preds = %for.cond
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !43
  br label %copy_from_iter.exit

if.else.i:                                        ; preds = %for.cond
  %6 = load i8*, i8** %write_buf33, align 8
  %call3.i = call i64 @_copy_from_iter(i8* noundef %6, i64 noundef %spec.select122, %struct.iov_iter* noundef %from) #16
  br label %copy_from_iter.exit

copy_from_iter.exit:                              ; preds = %check_copy_size.exit.i, %if.else.i
  %retval.0.i = phi i64 [ %call3.i, %if.else.i ], [ 0, %check_copy_size.exit.i ]
  %cmp35.not = icmp eq i64 %retval.0.i, %spec.select122
  br i1 %cmp35.not, label %if.end38, label %for.end

if.end38:                                         ; preds = %copy_from_iter.exit
  %7 = load i8*, i8** %write_buf33, align 8
  %call40 = call i64 %write(%struct.tty_struct* noundef %tty, %struct.file* noundef %file, i8* noundef %7, i64 noundef %spec.select122) #16
  %cmp41 = icmp slt i64 %call40, 1
  br i1 %cmp41, label %for.end, label %if.end44

if.end44:                                         ; preds = %if.end38
  %add = add i64 %call40, %written.0
  %cmp45 = icmp ult i64 %spec.select122, %call40
  br i1 %cmp45, label %for.end, label %if.end48

if.end48:                                         ; preds = %if.end44
  %cmp49.not = icmp eq i64 %spec.select122, %call40
  br i1 %cmp49.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end48
  %sub = sub nsw i64 %spec.select122, %call40
  call void @iov_iter_revert(%struct.iov_iter* noundef %from, i64 noundef %sub) #16
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end48
  %sub53 = sub i64 %count.0, %call40
  %tobool54.not = icmp eq i64 %sub53, 0
  br i1 %tobool54.not, label %for.end, label %if.end56

if.end56:                                         ; preds = %if.end52
  %8 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %9 = inttoptr i64 %8 to %struct.task_struct*
  %call58 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %9) #17
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup63, label %for.end

cleanup63:                                        ; preds = %if.end56
  call fastcc void @_cond_resched() #17
  br label %for.cond

for.end:                                          ; preds = %copy_from_iter.exit, %if.end38, %if.end44, %if.end52, %if.end56
  %ret.1.ph = phi i64 [ -512, %if.end56 ], [ %call40, %if.end52 ], [ %call40, %if.end44 ], [ %call40, %if.end38 ], [ -14, %copy_from_iter.exit ]
  %written.1.ph = phi i64 [ %add, %if.end56 ], [ %add, %if.end52 ], [ %add, %if.end44 ], [ %written.0, %if.end38 ], [ %written.0, %copy_from_iter.exit ]
  %tobool66.not = icmp eq i64 %written.1.ph, 0
  br i1 %tobool66.not, label %out, label %if.then67

if.then67:                                        ; preds = %for.end
  %call68 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #17
  %i_mtime = getelementptr inbounds %struct.inode, %struct.inode* %call68, i64 0, i32 13
  call fastcc void @tty_update_time(%struct.timespec64* noundef %i_mtime) #17
  br label %out

out:                                              ; preds = %if.then14, %for.end, %if.then67
  %ret.2 = phi i64 [ %written.1.ph, %if.then67 ], [ %ret.1.ph, %for.end ], [ -12, %if.then14 ]
  call fastcc void @tty_write_unlock(%struct.tty_struct* noundef %tty) #17
  br label %cleanup70

cleanup70:                                        ; preds = %out, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %ret.2, %out ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @iov_iter_count(%struct.iov_iter* nocapture noundef readonly %i) unnamed_addr #5 {
entry:
  %count = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %i, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(%struct.iov_iter* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_update_time(%struct.timespec64* nocapture noundef %time) unnamed_addr #0 {
entry:
  %call = call i64 @ktime_get_real_seconds() #16
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %time, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %xor = xor i64 %0, %call
  %tobool.not = icmp ult i64 %xor, 8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 %call, i64* %tv_sec, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_copy_from_iter(i8* noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_get(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcount) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #16
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !29

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !10

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #16
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !44
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deinit(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #17
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #17
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #16
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #18, !srcloc !45
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !10

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #18, !srcloc !46
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @release_one_tty(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -18, i32 1, i32 1
  %0 = bitcast %struct.list_head** %add.ptr to %struct.tty_struct*
  %driver1 = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 2
  %1 = bitcast %struct.list_head** %driver1 to %struct.tty_driver**
  %2 = load %struct.tty_driver*, %struct.tty_driver** %1, align 8
  %ops = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 3
  %3 = bitcast %struct.list_head** %ops to %struct.tty_operations**
  %4 = load %struct.tty_operations*, %struct.tty_operations** %3, align 8
  %cleanup = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %4, i64 0, i32 6
  %5 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %cleanup, align 8
  %tobool.not = icmp eq void (%struct.tty_struct*)* %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %5(%struct.tty_struct* noundef %0) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %magic = bitcast %struct.list_head** %add.ptr to i32*
  store i32 0, i32* %magic, align 8
  call void @tty_driver_kref_put(%struct.tty_driver* noundef %2) #17
  %files_lock = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 76
  %rlock.i = bitcast %struct.list_head** %files_lock to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #16
  %tty_files = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 77
  %6 = bitcast %struct.list_head** %tty_files to %struct.list_head*
  call fastcc void @list_del_init(%struct.list_head* noundef %6) #17
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #16
  %pgrp = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 57
  %7 = bitcast %struct.list_head** %pgrp to %struct.pid**
  %8 = load %struct.pid*, %struct.pid** %7, align 8
  call void @put_pid(%struct.pid* noundef %8) #16
  %session = getelementptr inbounds %struct.list_head*, %struct.list_head** %add.ptr, i64 58
  %9 = bitcast %struct.list_head** %session to %struct.pid**
  %10 = load %struct.pid*, %struct.pid** %9, align 8
  call void @put_pid(%struct.pid* noundef %10) #16
  call fastcc void @free_tty_struct(%struct.tty_struct* noundef %0) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #2 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #17
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #2 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #2 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mutex_is_locked(%struct.mutex* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_driver_remove_tty(%struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 20
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %remove = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 2
  %1 = load void (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)** %remove, align 8
  %tobool.not = icmp eq void (%struct.tty_driver*, %struct.tty_struct*)* %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void %1(%struct.tty_driver* noundef %driver, %struct.tty_struct* noundef %tty) #16
  br label %if.end

if.else:                                          ; preds = %entry
  %ttys = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 16
  %2 = load %struct.tty_struct**, %struct.tty_struct*** %ttys, align 8
  %index = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 5
  %3 = load i32, i32* %index, align 8
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr %struct.tty_struct*, %struct.tty_struct** %2, i64 %idxprom
  store %struct.tty_struct* null, %struct.tty_struct** %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @tty_buffer_cancel_work(%struct.tty_port* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @flush_work(%struct.work_struct* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @imajor(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #5 {
entry:
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 10
  %0 = load i32, i32* %i_rdev, align 4
  %shr = lshr i32 %0, 20
  ret i32 %shr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @iminor(%struct.inode* nocapture noundef readonly %inode) unnamed_addr #5 {
entry:
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 10
  %0 = load i32, i32* %i_rdev, align 4
  %and = and i32 %0, 1048575
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @tty_port_kopened(%struct.tty_port* noundef %port) unnamed_addr #8 {
entry:
  %iflags = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 11
  %0 = load volatile i64, i64* %iflags, align 8
  %1 = and i64 %0, 32
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock() unnamed_addr #0 {
entry:
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire() #16
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #18, !srcloc !47
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc_atomic_sub_return_release() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #18, !srcloc !48
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tty_driver* @tty_lookup_driver(i32 noundef %device, %struct.file* noundef %filp, i32* noundef %index) unnamed_addr #0 {
entry:
  switch i32 %device, label %sw.default [
    i32 4194304, label %sw.bb
    i32 5242881, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %0 = load %struct.tty_driver*, %struct.tty_driver** @console_driver, align 8
  %call = call fastcc %struct.tty_driver* @tty_driver_kref_get(%struct.tty_driver* noundef %0) #17
  %1 = load i32, i32* @fg_console, align 4
  store i32 %1, i32* %index, align 4
  br label %cleanup17

sw.bb1:                                           ; preds = %entry
  %call2 = call %struct.tty_driver* @console_device(i32* noundef %index) #16
  %tobool.not = icmp eq %struct.tty_driver* %call2, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %sw.bb1
  %call3 = call fastcc %struct.tty_driver* @tty_driver_kref_get(%struct.tty_driver* noundef nonnull %call2) #17
  %tobool5.not = icmp eq %struct.file* %filp, null
  br i1 %tobool5.not, label %if.then9, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %2 = load i32, i32* %f_flags, align 8
  %or = or i32 %2, 2048
  store i32 %or, i32* %f_flags, align 8
  br label %cleanup17

if.then9:                                         ; preds = %if.then
  call void @tty_driver_kref_put(%struct.tty_driver* noundef nonnull %call2) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %if.then9
  %call11 = call fastcc i8* @ERR_PTR(i64 noundef -19) #17
  %3 = bitcast i8* %call11 to %struct.tty_driver*
  br label %cleanup17

sw.default:                                       ; preds = %entry
  %call12 = call fastcc %struct.tty_driver* @get_tty_driver(i32 noundef %device, i32* noundef %index) #17
  %tobool13.not = icmp eq %struct.tty_driver* %call12, null
  br i1 %tobool13.not, label %if.then14, label %cleanup17

if.then14:                                        ; preds = %sw.default
  %call15 = call fastcc i8* @ERR_PTR(i64 noundef -19) #17
  %4 = bitcast i8* %call15 to %struct.tty_driver*
  br label %cleanup17

cleanup17:                                        ; preds = %sw.bb, %sw.default, %cleanup.thread, %cleanup, %if.then14
  %retval.1 = phi %struct.tty_driver* [ %4, %if.then14 ], [ %3, %cleanup ], [ %call12, %sw.default ], [ %0, %sw.bb ], [ %call2, %cleanup.thread ]
  ret %struct.tty_driver* %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tty_struct* @tty_driver_lookup_tty(%struct.tty_driver* noundef %driver, %struct.file* noundef %file, i32 noundef %idx) unnamed_addr #0 {
entry:
  %ops = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 20
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %lookup = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 0
  %1 = load %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)** %lookup, align 8
  %tobool.not = icmp eq %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)* %1, null
  br i1 %tobool.not, label %if.else6, label %if.then

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq %struct.file* %file, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %call = call fastcc i8* @ERR_PTR(i64 noundef -5) #17
  %2 = bitcast i8* %call to %struct.tty_struct*
  br label %if.end7

if.else:                                          ; preds = %if.then
  %call5 = call %struct.tty_struct* %1(%struct.tty_driver* noundef %driver, %struct.file* noundef nonnull %file, i32 noundef %idx) #16
  br label %if.end7

if.else6:                                         ; preds = %entry
  %ttys = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %driver, i64 0, i32 16
  %3 = load %struct.tty_struct**, %struct.tty_struct*** %ttys, align 8
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr %struct.tty_struct*, %struct.tty_struct** %3, i64 %idxprom
  %4 = load %struct.tty_struct*, %struct.tty_struct** %arrayidx, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.else, %if.else6
  %tty.0 = phi %struct.tty_struct* [ %call5, %if.else ], [ %2, %if.then2 ], [ %4, %if.else6 ]
  %5 = bitcast %struct.tty_struct* %tty.0 to i8*
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %5) #17
  br i1 %call8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  call fastcc void @tty_kref_get(%struct.tty_struct* noundef %tty.0) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  ret %struct.tty_struct* %tty.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.tty_driver* @console_device(i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tty_driver* @get_tty_driver(i32 noundef %device, i32* nocapture noundef writeonly %index) unnamed_addr #0 {
entry:
  %.pn28 = load i8*, i8** bitcast (%struct.list_head* @tty_drivers to i8**), align 8
  %cmp.not29 = icmp eq i8* %.pn28, bitcast (%struct.list_head* @tty_drivers to i8*)
  br i1 %cmp.not29, label %cleanup10, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn30 = phi i8* [ %.pn, %for.inc ], [ %.pn28, %entry ]
  %major = getelementptr i8, i8* %.pn30, i64 -124
  %0 = bitcast i8* %major to i32*
  %1 = load i32, i32* %0, align 4
  %shl = shl i32 %1, 20
  %minor_start = getelementptr i8, i8* %.pn30, i64 -120
  %2 = bitcast i8* %minor_start to i32*
  %3 = load i32, i32* %2, align 8
  %or = or i32 %shl, %3
  %cmp1 = icmp ugt i32 %or, %device
  br i1 %cmp1, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %num = getelementptr i8, i8* %.pn30, i64 -116
  %4 = bitcast i8* %num to i32*
  %5 = load i32, i32* %4, align 4
  %add = add i32 %5, %or
  %cmp2.not = icmp ugt i32 %add, %device
  br i1 %cmp2.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %lor.lhs.false
  %p.0.in.le = getelementptr i8, i8* %.pn30, i64 -168
  %p.0.le = bitcast i8* %p.0.in.le to %struct.tty_driver*
  %sub = sub i32 %device, %or
  store i32 %sub, i32* %index, align 4
  %call = call fastcc %struct.tty_driver* @tty_driver_kref_get(%struct.tty_driver* noundef %p.0.le) #17
  br label %cleanup10

for.inc:                                          ; preds = %lor.lhs.false, %for.body
  %6 = bitcast i8* %.pn30 to i8**
  %.pn = load i8*, i8** %6, align 8
  %cmp.not = icmp eq i8* %.pn, bitcast (%struct.list_head* @tty_drivers to i8*)
  br i1 %cmp.not, label %cleanup10, label %for.body

cleanup10:                                        ; preds = %for.inc, %entry, %cleanup
  %retval.2 = phi %struct.tty_driver* [ %p.0.le, %cleanup ], [ null, %entry ], [ null, %for.inc ]
  ret %struct.tty_driver* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_kref_get(%struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 1
  call fastcc void @kref_get(%struct.kref* noundef %kref) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, %struct.file* noundef, i32 noundef, %struct.fasync_struct** noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pid(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #5 {
entry:
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 59
  %0 = load %struct.pid*, %struct.pid** %thread_pid, align 64
  ret %struct.pid* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__f_setown(%struct.file* noundef, %struct.pid* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #8 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #17
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #17
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #17
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #8 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_lock_exclusive(%struct.tty_port* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_buffer_unlock_exclusive(%struct.tty_port* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #17
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #17
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #16
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #17
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !29

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #17
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !10

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #16
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #18, !srcloc !49
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #18, !srcloc !50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_set_ldisc(%struct.tty_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @msleep_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_set_serial(%struct.tty_struct* noundef %tty, %struct.serial_struct* noundef %ss) unnamed_addr #0 {
entry:
  %comm = alloca [16 x i8], align 1
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %comm, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %flags1 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %ss, i64 0, i32 4
  %1 = load i32, i32* %flags1, align 8
  %and = and i32 %1, 34568
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @___ratelimit(%struct.ratelimit_state* noundef nonnull @tty_set_serial._rs, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tty_set_serial, i64 0, i64 0)) #16
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end11, label %do.end6

do.end6:                                          ; preds = %if.then
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call9 = call i8* @__get_task_comm(i8* noundef nonnull %0, i64 noundef 16, %struct.task_struct* noundef %3) #16
  %call10 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tty_set_serial, i64 0, i64 0), i8* noundef %call9, i32 noundef %and) #19
  br label %if.end11

if.end11:                                         ; preds = %if.then, %do.end6, %entry
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 4
  %4 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %set_serial = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %4, i64 0, i32 30
  %5 = load i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)** %set_serial, align 8
  %tobool12.not = icmp eq i32 (%struct.tty_struct*, %struct.serial_struct*)* %5, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end11
  %call17 = call i32 %5(%struct.tty_struct* noundef %tty, %struct.serial_struct* noundef %ss) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end14
  %retval.0 = phi i32 [ %call17, %if.end14 ], [ -25, %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__get_task_comm(i8* noundef, i64 noundef, %struct.task_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @tty_read(%struct.kiocb* nocapture noundef readonly %iocb, %struct.iov_iter* noundef %to) #0 {
entry:
  %ki_filp = getelementptr inbounds %struct.kiocb, %struct.kiocb* %iocb, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %ki_filp, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %0) #17
  %call1 = call fastcc %struct.tty_struct* @file_tty(%struct.file* noundef %0) #17
  %call2 = call fastcc i32 @tty_paranoia_check(%struct.tty_struct* noundef %call1, %struct.inode* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0)) #17
  %tobool.not = icmp ne i32 %call2, 0
  %tobool3.not = icmp eq %struct.tty_struct* %call1, null
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call4 = call fastcc i1 @tty_io_error(%struct.tty_struct* noundef nonnull %call1) #17
  br i1 %call4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef nonnull %call1) #16
  %tobool8.not = icmp eq %struct.tty_ldisc* %call7, null
  br i1 %tobool8.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %call7, i64 0, i32 0
  %1 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %read = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %1, i64 0, i32 6
  %2 = load i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)** %read, align 8
  %tobool12.not = icmp eq i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)* %2, null
  br i1 %tobool12.not, label %if.end15.thread, label %if.end15

if.end15.thread:                                  ; preds = %if.end11
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call7) #16
  br label %if.end17

if.end15:                                         ; preds = %if.end11
  %call14 = call fastcc i32 @iterate_tty_read(%struct.tty_ldisc* noundef nonnull %call7, %struct.tty_struct* noundef nonnull %call1, %struct.file* noundef %0, %struct.iov_iter* noundef %to) #17
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call7) #16
  %cmp = icmp sgt i32 %call14, 0
  br i1 %cmp, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end15
  %i_atime = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 12
  call fastcc void @tty_update_time(%struct.timespec64* noundef %i_atime) #17
  br label %if.end17

if.end17:                                         ; preds = %if.end15.thread, %if.then16, %if.end15
  %i.042 = phi i32 [ -5, %if.end15.thread ], [ %call14, %if.then16 ], [ %call14, %if.end15 ]
  %conv = sext i32 %i.042 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false, %entry, %if.end17
  %retval.0 = phi i64 [ %conv, %if.end17 ], [ -5, %entry ], [ -5, %lor.lhs.false ], [ 0, %if.end6 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @iterate_tty_read(%struct.tty_ldisc* nocapture noundef readonly %ld, %struct.tty_struct* noundef %tty, %struct.file* noundef %file, %struct.iov_iter* noundef %to) unnamed_addr #0 {
entry:
  %cookie = alloca i8*, align 8
  %kernel_buf = alloca [64 x i8], align 1
  %0 = bitcast i8** %cookie to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #18
  store i8* null, i8** %cookie, align 8
  %1 = getelementptr inbounds [64 x i8], [64 x i8]* %kernel_buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(64) %1, i8 0, i64 64, i1 false), !annotation !7
  %call = call fastcc i64 @iov_iter_count(%struct.iov_iter* noundef %to) #17
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %ld, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %cleanup, %entry
  %retval1.0 = phi i32 [ 0, %entry ], [ %retval1.2, %cleanup ]
  %offset.0 = phi i64 [ 0, %entry ], [ %add, %cleanup ]
  %count.0 = phi i64 [ %call, %entry ], [ %count.2, %cleanup ]
  %2 = icmp ult i64 %count.0, 64
  %cond = select i1 %2, i64 %count.0, i64 64
  %3 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %read = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %3, i64 0, i32 6
  %4 = load i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)** %read, align 8
  %call3 = call i64 %4(%struct.tty_struct* noundef %tty, %struct.file* noundef %file, i8* noundef nonnull %1, i64 noundef %cond, i8** noundef nonnull %cookie, i64 noundef %offset.0) #16
  %conv4 = trunc i64 %call3 to i32
  %tobool.not = icmp eq i32 %conv4, 0
  br i1 %tobool.not, label %do.end, label %if.end

if.end:                                           ; preds = %do.body
  %cmp5 = icmp slt i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.end
  %conv4.le = trunc i64 %call3 to i32
  %tobool8.not = icmp eq i32 %retval1.0, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

if.end10:                                         ; preds = %if.then7
  %cmp11 = icmp eq i32 %conv4.le, -75
  %spec.select = select i1 %cmp11, i64 0, i64 %offset.0
  br label %do.end

if.end15:                                         ; preds = %if.end
  %5 = and i64 %call3, 2147483648
  %cmp11.i.i.not = icmp eq i64 %5, 0
  br i1 %cmp11.i.i.not, label %if.else.i, label %check_copy_size.exit.i, !prof !10

check_copy_size.exit.i:                           ; preds = %if.end15
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #18, !srcloc !43
  br label %copy_to_iter.exit

if.else.i:                                        ; preds = %if.end15
  %conv1781 = and i64 %call3, 4294967295
  %call3.i = call i64 @_copy_to_iter(i8* noundef nonnull %1, i64 noundef %conv1781, %struct.iov_iter* noundef %to) #16
  br label %copy_to_iter.exit

copy_to_iter.exit:                                ; preds = %check_copy_size.exit.i, %if.else.i
  %retval.0.i = phi i64 [ %call3.i, %if.else.i ], [ 0, %check_copy_size.exit.i ]
  %conv19 = trunc i64 %retval.0.i to i32
  %sext65 = shl i64 %retval.0.i, 32
  %conv20 = ashr exact i64 %sext65, 32
  %add = add i64 %conv20, %offset.0
  %sub = sub i64 %count.0, %conv20
  %cmp22.not = icmp eq i32 %conv19, %conv4
  br i1 %cmp22.not, label %cleanup, label %if.then27, !prof !10

if.then27:                                        ; preds = %copy_to_iter.exit
  br label %cleanup

cleanup:                                          ; preds = %copy_to_iter.exit, %if.then27
  %retval1.2 = phi i32 [ -14, %if.then27 ], [ %retval1.0, %copy_to_iter.exit ]
  %count.2 = phi i64 [ 0, %if.then27 ], [ %sub, %copy_to_iter.exit ]
  %6 = load i8*, i8** %cookie, align 8
  %tobool30.not = icmp eq i8* %6, null
  br i1 %tobool30.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body, %cleanup, %if.then7, %if.end10
  %offset.274 = phi i64 [ %offset.0, %if.then7 ], [ %spec.select, %if.end10 ], [ %offset.0, %do.body ], [ %add, %cleanup ]
  %retval1.273 = phi i32 [ %retval1.0, %if.then7 ], [ %conv4.le, %if.end10 ], [ %retval1.0, %do.body ], [ %retval1.2, %cleanup ]
  call fastcc void @memzero_explicit(i8* noundef nonnull %1) #17
  %tobool32.not = icmp eq i64 %offset.274, 0
  %conv3564 = zext i32 %retval1.273 to i64
  %cond37 = select i1 %tobool32.not, i64 %conv3564, i64 %offset.274
  %conv38 = trunc i64 %cond37 to i32
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #18
  ret i32 %conv38
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @memzero_explicit(i8* noundef %s) unnamed_addr #0 {
entry:
  %call = call i8* @memset(i8* noundef %s, i32 noundef 0, i64 noundef 64) #16
  call void asm sideeffect "", "r,~{memory}"(i8* %s) #18, !srcloc !51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_copy_to_iter(i8* noundef, i64 noundef, %struct.iov_iter* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #2 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.device* @class_find_device_by_devt(%struct.class* noundef %class, i32 noundef %devt) unnamed_addr #0 {
entry:
  %devt.addr = alloca i32, align 4
  store i32 %devt, i32* %devt.addr, align 4
  %0 = bitcast i32* %devt.addr to i8*
  %call = call %struct.device* @class_find_device(%struct.class* noundef %class, %struct.device* noundef null, i8* noundef nonnull %0, i32 (%struct.device*, i8*)* noundef nonnull @device_match_devt) #16
  ret %struct.device* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.device* @class_find_device(%struct.class* noundef, %struct.device* noundef, i8* noundef, i32 (%struct.device*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_devt(%struct.device* noundef, i8* noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.cdev* @cdev_alloc() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !29

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_tty_unregister_driver(%struct.tty_driver* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @tty_poll(%struct.file* noundef %filp, %struct.poll_table_struct* noundef %wait) #0 {
entry:
  %call = call fastcc %struct.tty_struct* @file_tty(%struct.file* noundef %filp) #17
  %call1 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %filp) #17
  %call2 = call fastcc i32 @tty_paranoia_check(%struct.tty_struct* noundef %call, %struct.inode* noundef %call1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i64 0, i64 0)) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef %call) #16
  %tobool4.not = icmp eq %struct.tty_ldisc* %call3, null
  br i1 %tobool4.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %call3, i64 0, i32 0
  %0 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8
  %poll = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %0, i64 0, i32 11
  %1 = load i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)** %poll, align 8
  %tobool8.not = icmp eq i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)* %1, null
  br i1 %tobool8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call12 = call i32 %1(%struct.tty_struct* noundef %call, %struct.file* noundef %filp, %struct.poll_table_struct* noundef %wait) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7
  %ret.0 = phi i32 [ %call12, %if.then9 ], [ 0, %if.end7 ]
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call3) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end13
  %retval.0 = phi i32 [ %ret.0, %if.end13 ], [ 0, %entry ], [ 349, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @tty_open(%struct.inode* noundef %inode, %struct.file* noundef %filp) #0 {
entry:
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %inode, i64 0, i32 10
  %0 = load i32, i32* %i_rdev, align 4
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %1 = load i32, i32* %f_flags, align 8
  %call = call i32 @nonseekable_open(%struct.inode* noundef %inode, %struct.file* noundef %filp) #16
  %call2123 = call i32 @tty_alloc_file(%struct.file* noundef %filp) #17
  %tobool.not124 = icmp eq i32 %call2123, 0
  br i1 %tobool.not124, label %if.end.lr.ph, label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %retry_open.backedge
  %call3 = call fastcc %struct.tty_struct* @tty_open_current_tty(i32 noundef %0, %struct.file* noundef %filp) #17
  %tobool4.not = icmp eq %struct.tty_struct* %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc %struct.tty_struct* @tty_open_by_driver(i32 noundef %0, %struct.file* noundef %filp) #17
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %tty.0 = phi %struct.tty_struct* [ %call3, %if.end ], [ %call6, %if.then5 ]
  %2 = bitcast %struct.tty_struct* %tty.0 to i8*
  %call8 = call fastcc i1 @IS_ERR(i8* noundef %2) #17
  br i1 %call8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end7
  call void @tty_free_file(%struct.file* noundef %filp) #17
  %call10 = call fastcc i64 @PTR_ERR(i8* noundef %2) #17
  %conv = trunc i64 %call10 to i32
  %cmp.not = icmp eq i32 %conv, -11
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup.loopexit.split.loop.exit

lor.lhs.false:                                    ; preds = %if.then9
  %3 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %4 = inttoptr i64 %3 to %struct.task_struct*
  %call13 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %4) #17
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  call void @schedule() #16
  br label %retry_open.backedge

retry_open.backedge:                              ; preds = %if.end40, %if.then43, %if.end16
  %call2 = call i32 @tty_alloc_file(%struct.file* noundef %filp) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end17:                                         ; preds = %if.end7
  call void @tty_add_file(%struct.tty_struct* noundef %tty.0, %struct.file* noundef %filp) #17
  call fastcc void @check_tty_count(%struct.tty_struct* noundef %tty.0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.tty_open, i64 0, i64 0)) #17
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty.0, i64 0, i32 4
  %5 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %open = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %5, i64 0, i32 3
  %6 = load i32 (%struct.tty_struct*, %struct.file*)*, i32 (%struct.tty_struct*, %struct.file*)** %open, align 8
  %tobool19.not = icmp eq i32 (%struct.tty_struct*, %struct.file*)* %6, null
  br i1 %tobool19.not, label %if.end24.thread, label %if.end24

if.end24.thread:                                  ; preds = %if.end17
  store i32 %1, i32* %f_flags, align 8
  br label %do.end30

if.end24:                                         ; preds = %if.end17
  %call23 = call i32 %6(%struct.tty_struct* noundef %tty.0, %struct.file* noundef %filp) #16
  store i32 %1, i32* %f_flags, align 8
  %tobool26.not = icmp eq i32 %call23, 0
  br i1 %tobool26.not, label %if.end45, label %do.end30

do.end30:                                         ; preds = %if.end24.thread, %if.end24
  %retval1.0114 = phi i32 [ -19, %if.end24.thread ], [ %call23, %if.end24 ]
  call void @tty_unlock(%struct.tty_struct* noundef %tty.0) #16
  %call31 = call i32 @tty_release(%struct.inode* noundef %inode, %struct.file* noundef %filp) #17
  %cmp32.not = icmp eq i32 %retval1.0114, -512
  br i1 %cmp32.not, label %if.end35, label %cleanup

if.end35:                                         ; preds = %do.end30
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #20, !srcloc !16
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %call37 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %8) #17
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %cleanup

if.end40:                                         ; preds = %if.end35
  call void @schedule() #16
  %call41 = call i32 @tty_hung_up_p(%struct.file* noundef %filp) #17
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %retry_open.backedge, label %if.then43

if.then43:                                        ; preds = %if.end40
  store %struct.file_operations* @tty_fops, %struct.file_operations** %f_op, align 8
  br label %retry_open.backedge

if.end45:                                         ; preds = %if.end24
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty.0, i64 0, i32 16
  call fastcc void @clear_bit(i64 noundef 18, i64* noundef %flags) #17
  %9 = load i32, i32* %f_flags, align 8
  %.fr = freeze i32 %9
  %and = and i32 %.fr, 256
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %switch.early.test, label %if.end63

switch.early.test:                                ; preds = %if.end45
  switch i32 %0, label %lor.rhs [
    i32 5242881, label %if.end63
    i32 4194304, label %if.end63
  ]

lor.rhs:                                          ; preds = %switch.early.test
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty.0, i64 0, i32 3
  %10 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %10, i64 0, i32 10
  %11 = load i16, i16* %type, align 8
  %cmp55 = icmp eq i16 %11, 4
  br i1 %cmp55, label %land.rhs, label %if.then62

land.rhs:                                         ; preds = %lor.rhs
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %10, i64 0, i32 11
  %12 = load i16, i16* %subtype, align 2
  %cmp59 = icmp eq i16 %12, 1
  br i1 %cmp59, label %if.end63, label %if.then62

if.then62:                                        ; preds = %lor.rhs, %land.rhs
  call void @tty_open_proc_set_tty(%struct.file* noundef %filp, %struct.tty_struct* noundef %tty.0) #16
  br label %if.end63

if.end63:                                         ; preds = %if.end45, %switch.early.test, %switch.early.test, %if.then62, %land.rhs
  call void @tty_unlock(%struct.tty_struct* noundef %tty.0) #16
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %if.then9
  %conv.le = trunc i64 %call10 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end30, %lor.lhs.false, %retry_open.backedge, %cleanup.loopexit.split.loop.exit, %entry, %if.end63
  %retval.0 = phi i32 [ 0, %if.end63 ], [ -12, %entry ], [ %conv.le, %cleanup.loopexit.split.loop.exit ], [ -512, %if.end35 ], [ %retval1.0114, %do.end30 ], [ -11, %lor.lhs.false ], [ -12, %retry_open.backedge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @tty_fasync(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %on) #0 {
entry:
  %call = call fastcc %struct.tty_struct* @file_tty(%struct.file* noundef %filp) #17
  call void @tty_lock(%struct.tty_struct* noundef %call) #16
  %call2 = call i32 @tty_hung_up_p(%struct.file* noundef %filp) #17
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call fastcc i32 @__tty_fasync(i32 noundef %fd, %struct.file* noundef %filp, i32 noundef %on) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %retval1.0 = phi i32 [ -25, %entry ], [ %call3, %if.then ]
  call void @tty_unlock(%struct.tty_struct* noundef %call) #16
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iter_file_splice_write(%struct.pipe_inode_info* noundef, %struct.file* noundef, i64* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_splice_read(%struct.file* noundef, i64* noundef, %struct.pipe_inode_info* noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @tty_show_fdinfo(%struct.seq_file* noundef %m, %struct.file* nocapture noundef readonly %file) #0 {
entry:
  %call = call fastcc %struct.tty_struct* @file_tty(%struct.file* noundef %file) #17
  %tobool.not = icmp eq %struct.tty_struct* %call, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call, i64 0, i32 4
  %0 = load %struct.tty_operations*, %struct.tty_operations** %ops, align 8
  %tobool1.not = icmp eq %struct.tty_operations* %0, null
  br i1 %tobool1.not, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %show_fdinfo = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %0, i64 0, i32 31
  %1 = load void (%struct.tty_struct*, %struct.seq_file*)*, void (%struct.tty_struct*, %struct.seq_file*)** %show_fdinfo, align 8
  %tobool4.not = icmp eq void (%struct.tty_struct*, %struct.seq_file*)* %1, null
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  call void %1(%struct.tty_struct* noundef nonnull %call, %struct.seq_file* noundef %m) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(%struct.inode* noundef, %struct.file* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tty_struct* @tty_open_current_tty(i32 noundef %device, %struct.file* nocapture noundef %filp) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %device, 5242880
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call %struct.tty_struct* @get_current_tty() #16
  %tobool.not = icmp eq %struct.tty_struct* %call, null
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end4

if.end4:                                          ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %filp, i64 0, i32 7
  %0 = load i32, i32* %f_flags, align 8
  %or = or i32 %0, 2048
  store i32 %or, i32* %f_flags, align 8
  call void @tty_lock(%struct.tty_struct* noundef nonnull %call) #16
  call void @tty_kref_put(%struct.tty_struct* noundef nonnull %call) #17
  %call5 = call fastcc i32 @tty_reopen(%struct.tty_struct* noundef nonnull %call) #17
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @tty_unlock(%struct.tty_struct* noundef nonnull %call) #16
  %conv = sext i32 %call5 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then7
  %conv.sink = phi i64 [ %conv, %if.then7 ], [ -6, %if.end ]
  %call8 = call fastcc i8* @ERR_PTR(i64 noundef %conv.sink) #17
  %1 = bitcast i8* %call8 to %struct.tty_struct*
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4, %entry
  %retval.0 = phi %struct.tty_struct* [ null, %entry ], [ %call, %if.end4 ], [ %1, %cleanup.sink.split ]
  ret %struct.tty_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tty_struct* @tty_open_by_driver(i32 noundef %device, %struct.file* noundef %filp) unnamed_addr #0 {
entry:
  %index = alloca i32, align 4
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #18
  store i32 -1, i32* %index, align 4
  call void @mutex_lock(%struct.mutex* noundef nonnull @tty_mutex) #16
  %call = call fastcc %struct.tty_driver* @tty_lookup_driver(i32 noundef %device, %struct.file* noundef %filp, i32* noundef nonnull %index) #17
  %1 = bitcast %struct.tty_driver* %call to i8*
  %call2 = call fastcc i1 @IS_ERR(i8* noundef %1) #17
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  %2 = bitcast %struct.tty_driver* %call to %struct.tty_struct*
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %index, align 4
  %call4 = call fastcc %struct.tty_struct* @tty_driver_lookup_tty(%struct.tty_driver* noundef %call, %struct.file* noundef %filp, i32 noundef %3) #17
  %4 = bitcast %struct.tty_struct* %call4 to i8*
  %call5 = call fastcc i1 @IS_ERR(i8* noundef %4) #17
  br i1 %call5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  br label %out

if.end7:                                          ; preds = %if.end
  %tobool.not = icmp eq %struct.tty_struct* %call4, null
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end7
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %call4, i64 0, i32 37
  %5 = load %struct.tty_port*, %struct.tty_port** %port, align 8
  %call9 = call fastcc i1 @tty_port_kopened(%struct.tty_port* noundef %5) #17
  br i1 %call9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  call void @tty_kref_put(%struct.tty_struct* noundef nonnull %call4) #17
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  %call11 = call fastcc i8* @ERR_PTR(i64 noundef -16) #17
  %6 = bitcast i8* %call11 to %struct.tty_struct*
  br label %out

if.end12:                                         ; preds = %if.then8
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  %call13 = call i32 @tty_lock_interruptible(%struct.tty_struct* noundef nonnull %call4) #16
  call void @tty_kref_put(%struct.tty_struct* noundef nonnull %call4) #17
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end19, label %if.then15

if.then15:                                        ; preds = %if.end12
  %cmp = icmp eq i32 %call13, -4
  %spec.store.select = select i1 %cmp, i32 -512, i32 %call13
  %conv = sext i32 %spec.store.select to i64
  %call18 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #17
  %7 = bitcast i8* %call18 to %struct.tty_struct*
  br label %out

if.end19:                                         ; preds = %if.end12
  %call20 = call fastcc i32 @tty_reopen(%struct.tty_struct* noundef nonnull %call4) #17
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %out

if.then23:                                        ; preds = %if.end19
  call void @tty_unlock(%struct.tty_struct* noundef nonnull %call4) #16
  %conv24 = sext i32 %call20 to i64
  %call25 = call fastcc i8* @ERR_PTR(i64 noundef %conv24) #17
  %8 = bitcast i8* %call25 to %struct.tty_struct*
  br label %out

if.else:                                          ; preds = %if.end7
  %9 = load i32, i32* %index, align 4
  %call27 = call %struct.tty_struct* @tty_init_dev(%struct.tty_driver* noundef %call, i32 noundef %9) #17
  call void @mutex_unlock(%struct.mutex* noundef nonnull @tty_mutex) #16
  br label %out

out:                                              ; preds = %if.else, %if.then23, %if.end19, %if.then15, %if.then10, %if.then6
  %tty.0 = phi %struct.tty_struct* [ %call4, %if.then6 ], [ %6, %if.then10 ], [ %7, %if.then15 ], [ %8, %if.then23 ], [ %call4, %if.end19 ], [ %call27, %if.else ]
  call void @tty_driver_kref_put(%struct.tty_driver* noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi %struct.tty_struct* [ %2, %if.then ], [ %tty.0, %out ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #18
  ret %struct.tty_struct* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_open_proc_set_tty(%struct.file* noundef, %struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @tty_reopen(%struct.tty_struct* noundef %tty) unnamed_addr #0 {
entry:
  %driver1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 3
  %0 = load %struct.tty_driver*, %struct.tty_driver** %driver1, align 8
  %type = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 10
  %1 = load i16, i16* %type, align 8
  %cmp = icmp eq i16 %1, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %subtype = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %0, i64 0, i32 11
  %2 = load i16, i16* %subtype, align 2
  %cmp5 = icmp eq i16 %2, 1
  br i1 %cmp5, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %count = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 17
  %3 = load i32, i32* %count, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 16
  %4 = load volatile i64, i64* %flags, align 8
  %5 = and i64 %4, 8
  %tobool9.not = icmp eq i64 %5, 0
  br i1 %tobool9.not, label %if.end13, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end8
  %call11 = call i1 @capable(i32 noundef 21) #16
  br i1 %call11, label %if.end13, label %cleanup

if.end13:                                         ; preds = %land.lhs.true10, %if.end8
  %call14 = call %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* noundef %tty) #16
  %tobool15.not = icmp eq %struct.tty_ldisc* %call14, null
  br i1 %tobool15.not, label %if.else, label %if.end26.thread

if.end26.thread:                                  ; preds = %if.end13
  call void @tty_ldisc_deref(%struct.tty_ldisc* noundef nonnull %call14) #16
  br label %if.then29

if.else:                                          ; preds = %if.end13
  %call17 = call i32 @tty_ldisc_lock(%struct.tty_struct* noundef %tty, i64 noundef 1250) #16
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.else
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 7
  %6 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8
  %tobool21.not = icmp eq %struct.tty_ldisc* %6, null
  br i1 %tobool21.not, label %if.end26, label %if.end26.thread54

if.end26.thread54:                                ; preds = %if.end20
  call void @tty_ldisc_unlock(%struct.tty_struct* noundef %tty) #16
  br label %if.then29

if.end26:                                         ; preds = %if.end20
  %c_line = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 13, i32 4
  %7 = load i8, i8* %c_line, align 8
  %conv23 = zext i8 %7 to i32
  %call24 = call i32 @tty_ldisc_reinit(%struct.tty_struct* noundef %tty, i32 noundef %conv23) #16
  call void @tty_ldisc_unlock(%struct.tty_struct* noundef %tty) #16
  %cmp27 = icmp eq i32 %call24, 0
  br i1 %cmp27, label %if.then29, label %cleanup

if.then29:                                        ; preds = %if.end26.thread54, %if.end26.thread, %if.end26
  %8 = load i32, i32* %count, align 8
  %inc = add i32 %8, 1
  store i32 %inc, i32* %count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then29, %if.else, %land.lhs.true10, %if.end, %land.lhs.true
  %retval.0 = phi i32 [ -5, %land.lhs.true ], [ -11, %if.end ], [ -16, %land.lhs.true10 ], [ %call17, %if.else ], [ 0, %if.then29 ], [ %call24, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_ldisc_reinit(%struct.tty_struct* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_lock_interruptible(%struct.tty_struct* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.class* @__class_create(%struct.module* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal noalias i8* @tty_devnode(%struct.device* nocapture noundef readonly %dev, i16* noundef writeonly %mode) #11 {
entry:
  %tobool.not = icmp eq i16* %mode, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev, i64 0, i32 27
  %0 = load i32, i32* %devt, align 8
  switch i32 %0, label %return [
    i32 5242880, label %if.then3
    i32 5242882, label %if.then3
  ]

if.then3:                                         ; preds = %if.end, %if.end
  store i16 438, i16* %mode, align 2
  br label %return

return:                                           ; preds = %if.then3, %if.end, %entry
  ret i8* null
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @show_cons_active(%struct.device* nocapture noundef readnone %dev, %struct.device_attribute* nocapture noundef readnone %attr, i8* noundef %buf) #0 {
entry:
  %cs = alloca [16 x %struct.console*], align 8
  %index = alloca i32, align 4
  %0 = bitcast [16 x %struct.console*]* %cs to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #18
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false), !annotation !7
  call void @console_lock() #16
  %c.079 = load %struct.console*, %struct.console** @console_drivers, align 8
  %cmp.not80 = icmp eq %struct.console* %c.079, null
  br i1 %cmp.not80, label %while.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %c.082 = phi %struct.console* [ %c.0, %for.inc ], [ %c.079, %entry ]
  %i.081 = phi i32 [ %i.1, %for.inc ], [ 0, %entry ]
  %device = getelementptr inbounds %struct.console, %struct.console* %c.082, i64 0, i32 3
  %1 = load %struct.tty_driver* (%struct.console*, i32*)*, %struct.tty_driver* (%struct.console*, i32*)** %device, align 8
  %tobool.not = icmp eq %struct.tty_driver* (%struct.console*, i32*)* %1, null
  br i1 %tobool.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %write = getelementptr inbounds %struct.console, %struct.console* %c.082, i64 0, i32 1
  %2 = load void (%struct.console*, i8*, i32)*, void (%struct.console*, i8*, i32)** %write, align 8
  %tobool1.not = icmp eq void (%struct.console*, i8*, i32)* %2, null
  br i1 %tobool1.not, label %for.inc, label %if.end3

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.console, %struct.console* %c.082, i64 0, i32 8
  %3 = load i16, i16* %flags, align 8
  %4 = and i16 %3, 4
  %cmp4 = icmp eq i16 %4, 0
  br i1 %cmp4, label %for.inc, label %if.end7

if.end7:                                          ; preds = %if.end3
  %inc = add i32 %i.081, 1
  %idxprom = sext i32 %i.081 to i64
  %arrayidx = getelementptr [16 x %struct.console*], [16 x %struct.console*]* %cs, i64 0, i64 %idxprom
  store %struct.console* %c.082, %struct.console** %arrayidx, align 8
  %cmp9 = icmp ugt i32 %inc, 15
  br i1 %cmp9, label %while.body.lr.ph, label %for.inc

for.inc:                                          ; preds = %if.end7, %if.end3, %if.end, %for.body
  %i.1 = phi i32 [ %i.081, %if.end3 ], [ %inc, %if.end7 ], [ %i.081, %if.end ], [ %i.081, %for.body ]
  %next = getelementptr inbounds %struct.console, %struct.console* %c.082, i64 0, i32 12
  %c.0 = load %struct.console*, %struct.console** %next, align 8
  %cmp.not = icmp eq %struct.console* %c.0, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool13.not85 = icmp eq i32 %i.1, 0
  br i1 %tobool13.not85, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end7, %for.end
  %i.294 = phi i32 [ %i.1, %for.end ], [ %inc, %if.end7 ]
  %5 = bitcast i32* %index to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end44
  %dec87.in = phi i32 [ %i.294, %while.body.lr.ph ], [ %dec87, %if.end44 ]
  %count.086 = phi i64 [ 0, %while.body.lr.ph ], [ %add49, %if.end44 ]
  %dec87 = add i32 %dec87.in, -1
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18
  %idxprom14 = sext i32 %dec87 to i64
  %arrayidx15 = getelementptr [16 x %struct.console*], [16 x %struct.console*]* %cs, i64 0, i64 %idxprom14
  %6 = load %struct.console*, %struct.console** %arrayidx15, align 8
  %index16 = getelementptr inbounds %struct.console, %struct.console* %6, i64 0, i32 9
  %7 = load i16, i16* %index16, align 2
  %conv17 = sext i16 %7 to i32
  store i32 %conv17, i32* %index, align 4
  %device20 = getelementptr inbounds %struct.console, %struct.console* %6, i64 0, i32 3
  %8 = load %struct.tty_driver* (%struct.console*, i32*)*, %struct.tty_driver* (%struct.console*, i32*)** %device20, align 8
  %call = call %struct.tty_driver* %8(%struct.console* noundef %6, i32* noundef nonnull %index) #16
  %tobool23.not = icmp eq %struct.tty_driver* %call, null
  %.pre = load i16, i16* %index16, align 2
  br i1 %tobool23.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %cmp28 = icmp sgt i16 %.pre, 0
  br i1 %cmp28, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %major = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %call, i64 0, i32 7
  %9 = load i32, i32* %major, align 4
  %cmp30.not = icmp eq i32 %9, 4
  br i1 %cmp30.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load i32, i32* %index, align 4
  %add.ptr = getelementptr i8, i8* %buf, i64 %count.086
  %call33 = call fastcc i64 @tty_line_name(%struct.tty_driver* noundef nonnull %call, i32 noundef %10, i8* noundef %add.ptr) #17
  br label %if.end44

if.else:                                          ; preds = %while.body, %lor.lhs.false
  %add.ptr34 = getelementptr i8, i8* %buf, i64 %count.086
  %arraydecay = getelementptr inbounds %struct.console, %struct.console* %6, i64 0, i32 0, i64 0
  %conv40 = sext i16 %.pre to i32
  %call41 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr34, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* noundef %arraydecay, i32 noundef %conv40) #16
  %conv42 = sext i32 %call41 to i64
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then32
  %call33.pn = phi i64 [ %call33, %if.then32 ], [ %conv42, %if.else ]
  %count.1 = add i64 %call33.pn, %count.086
  %add.ptr45 = getelementptr i8, i8* %buf, i64 %count.1
  %tobool46.not = icmp eq i32 %dec87, 0
  %cond = select i1 %tobool46.not, i32 10, i32 32
  %call47 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %add.ptr45, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), i32 noundef %cond) #16
  %conv48 = sext i32 %call47 to i64
  %add49 = add i64 %count.1, %conv48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18
  br i1 %tobool46.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end44, %entry, %for.end
  %count.0.lcssa = phi i64 [ 0, %for.end ], [ 0, %entry ], [ %add49, %if.end44 ]
  call void @console_unlock() #16
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #18
  ret i64 %count.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #3

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { cold noreturn null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #15 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nobuiltin nounwind "no-builtins" }
attributes #17 = { nobuiltin "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { cold nobuiltin nounwind "no-builtins" }
attributes #20 = { nounwind readnone }
attributes #21 = { cold nobuiltin noreturn nounwind "no-builtins" }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2149894477}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153794073}
!12 = !{i64 2153802531}
!13 = !{i64 2153804150}
!14 = !{void (%struct.kref*)* @destruct_tty_driver, void (%struct.kref*)* @queue_release_one_tty}
!15 = !{i32 0, i32 1048576}
!16 = !{i64 1585603}
!17 = !{i64 2149957987}
!18 = !{i64 2150012941}
!19 = !{i64 2153840862, i64 2153840900, i64 2153840917, i64 2153840951, i64 2153840973, i64 2153840999, i64 2153841017, i64 2153841175, i64 2153841216, i64 2153841238, i64 2153841284}
!20 = !{i64 2153845645, i64 2153845683, i64 2153845700, i64 2153845734, i64 2153845756, i64 2153845782, i64 2153845800, i64 2153845958, i64 2153845999, i64 2153846021, i64 2153846067}
!21 = !{i64 2153815526, i64 2153815563, i64 2153815580, i64 2153815615, i64 2153815637, i64 2153815663, i64 2153815686, i64 2153815704, i64 2153815867, i64 2153815908, i64 2153815930, i64 2153815976}
!22 = !{i64 3126167, i64 3126250, i64 3126474, i64 3126694, i64 3126717}
!23 = !{i64 3130869, i64 3130893}
!24 = !{i64 2150930327}
!25 = !{i64 2153824777, i64 2153824815, i64 2153824832, i64 2153824866, i64 2153824888, i64 2153824914, i64 2153824932, i64 2153825090, i64 2153825131, i64 2153825153, i64 2153825199}
!26 = !{i64 2153820791, i64 2153820828, i64 2153820845, i64 2153820880, i64 2153820902, i64 2153820928, i64 2153820951, i64 2153820969, i64 2153821128, i64 2153821169, i64 2153821191, i64 2153821237}
!27 = !{i64 2153828740, i64 2153828778, i64 2153828795, i64 2153828829, i64 2153828851, i64 2153828877, i64 2153828895, i64 2153829053, i64 2153829094, i64 2153829116, i64 2153829162}
!28 = !{i64 2153832785, i64 2153832822, i64 2153832839, i64 2153832874, i64 2153832896, i64 2153832922, i64 2153832945, i64 2153832963, i64 2153833122, i64 2153833163, i64 2153833185, i64 2153833231}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2149909478}
!31 = !{i64 2148046262, i64 2148046295, i64 2148046348, i64 2148046407, i64 2148046441, i64 2148046496, i64 2148046525, i64 2148046545}
!32 = !{i64 2149916759}
!33 = !{i64 2149863607}
!34 = !{i64 2149898770}
!35 = !{i64 2149395079, i64 2149395126, i64 2149395132, i64 2149395169, i64 2149395187, i64 2149396528, i64 2149396576, i64 2149396624, i64 2149396687, i64 2149396736, i64 2149395265, i64 2149395290, i64 2149395316, i64 2149395322, i64 2149396194, i64 2149396234, i64 2149396252, i64 2149396284, i64 2149396312, i64 2149396366, i64 2149396386, i64 2149396483, i64 2149395345, i64 2149395359, i64 2149395365, i64 2149395415, i64 2149395461, i64 2149395494}
!36 = !{i64 2149923623}
!37 = !{i64 2149385623, i64 2149385670, i64 2149385676, i64 2149385713, i64 2149385731, i64 2149387071, i64 2149387119, i64 2149387167, i64 2149387230, i64 2149387279, i64 2149385809, i64 2149385834, i64 2149385860, i64 2149385866, i64 2149386737, i64 2149386777, i64 2149386795, i64 2149386827, i64 2149386855, i64 2149386909, i64 2149386929, i64 2149387026, i64 2149385889, i64 2149385903, i64 2149385909, i64 2149385959, i64 2149386005, i64 2149386038}
!38 = !{i64 2149400782, i64 2149400829, i64 2149400835, i64 2149400872, i64 2149400890, i64 2149406262, i64 2149406310, i64 2149406358, i64 2149406421, i64 2149406470, i64 2149400968, i64 2149400993, i64 2149401019, i64 2149401025, i64 2149405928, i64 2149405968, i64 2149405986, i64 2149406018, i64 2149406046, i64 2149406100, i64 2149406120, i64 2149406217, i64 2149401048, i64 2149401062, i64 2149401068, i64 2149401118, i64 2149401164, i64 2149401197}
!39 = !{i64 2149407022, i64 2149407069, i64 2149407075, i64 2149407112, i64 2149407130, i64 2149408073, i64 2149408121, i64 2149408169, i64 2149408232, i64 2149408281, i64 2149407208, i64 2149407233, i64 2149407259, i64 2149407265, i64 2149407302, i64 2149407308, i64 2149407358, i64 2149407404, i64 2149407437}
!40 = !{i64 2149920320}
!41 = !{i64 2149410856, i64 2149410903, i64 2149410909, i64 2149410946, i64 2149410964, i64 2149412275, i64 2149412323, i64 2149412371, i64 2149412434, i64 2149412483, i64 2149411042, i64 2149411067, i64 2149411093, i64 2149411099, i64 2149411941, i64 2149411981, i64 2149411999, i64 2149412031, i64 2149412059, i64 2149412113, i64 2149412133, i64 2149412230, i64 2149411122, i64 2149411136, i64 2149411142, i64 2149411192, i64 2149411238, i64 2149411271}
!42 = !{i64 2147987025, i64 2147987539, i64 2147987569, i64 2147987595, i64 2147987627, i64 2147987656}
!43 = !{i64 2149079370}
!44 = !{i64 2147952303, i64 2147952967, i64 2147952997, i64 2147953029, i64 2147953063, i64 2147953098, i64 2147953123}
!45 = !{i64 2150064722}
!46 = !{i64 2147964085, i64 2147964759, i64 2147964789, i64 2147964821, i64 2147964855, i64 2147964891, i64 2147964916}
!47 = !{i64 2147949223, i64 2147949889, i64 2147949919, i64 2147949952, i64 2147949986, i64 2147950021, i64 2147950046}
!48 = !{i64 2147959971, i64 2147960637, i64 2147960667, i64 2147960699, i64 2147960733, i64 2147960769, i64 2147960794}
!49 = !{i64 2148015419, i64 2148015930, i64 2148015960, i64 2148015986, i64 2148016018, i64 2148016047}
!50 = !{i64 2148025989, i64 2148026510, i64 2148026540, i64 2148026566, i64 2148026598, i64 2148026627}
!51 = !{i64 2148759986}
