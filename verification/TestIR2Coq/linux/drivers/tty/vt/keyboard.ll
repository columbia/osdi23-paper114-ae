; ModuleID = 'drivers/tty/vt/keyboard.c'
source_filename = "drivers/tty/vt/keyboard.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.vt_spawn_console = type { %struct.spinlock, %struct.pid*, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.2 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.2 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.file = type { %union.anon.3, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.3 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
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
%struct.kqid = type { %union.anon.6, i32 }
%union.anon.6 = type { %struct.kuid_t }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.60, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.9, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.9 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.10, [0 x i64] }
%struct.anon.10 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.11, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.11 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.12, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.13, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.12 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.13 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.14, %union.anon.30, %struct.atomic_t, [8 x i8] }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.30 = type { %struct.atomic_t }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { i32*, i32, i32, i32, i64, i32* }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.43, %struct.anon.44, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.37 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.poll_table_struct = type opaque
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.43 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.44 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.38, %struct.qspinlock }
%union.anon.38 = type { %struct.atomic_t }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.42, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.42 = type { %struct.tty_buffer* }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.45, %union.anon.46, i32 }
%struct.request_queue = type opaque
%union.anon.45 = type { %struct.list_head }
%union.anon.46 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.59, i32, [12 x i8] }
%union.anon.59 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.60 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.61, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.61 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.4, i8* }
%union.anon.4 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.68, %struct.list_head, %struct.list_head, %union.anon.69 }
%struct.lockref = type { %union.anon.66 }
%union.anon.66 = type { i64 }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.65, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.63 = type { %struct.callback_head }
%union.anon.64 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.16 }
%union.anon.16 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.65 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.40 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.40 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.36 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.input_dev_poller = type opaque
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.raw_spinlock, %struct.list_head, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dma_coherent_mem*, %struct.io_tlb_mem*, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i32, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i64)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
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
%struct.input_value = type { i16, i16, i32 }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.70 }
%union.anon.70 = type { i8* }
%struct.kbd_struct = type { i8, i8, i8, i8, i8 }
%struct.kbdiacruc = type { i32, i32, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.vc = type { %struct.vc_data*, %struct.work_struct }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.consw*, i16*, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i64, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, %struct.pid*, i32, %struct.wait_queue_head, i16, i8, i32, [4 x i64], [48 x i8], i16*, i32, i32, i32, i16, %struct.vc_data**, %struct.uni_pagedir*, %struct.uni_pagedir**, %struct.uni_screen* }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.consw = type opaque
%struct.console_font = type { i32, i32, i32, i8* }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.uni_pagedir = type opaque
%struct.uni_screen = type opaque
%struct.pt_regs = type { %union.anon.73, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.73 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.71, i64 }
%union.anon.71 = type { void (i64)* }
%struct.kmem_cache = type opaque
%struct.kbd_repeat = type { i32, i32 }
%struct.kbdiacr = type { i8, i8, i8 }
%struct.kbkeycode = type { i32, i32 }
%struct.getset_keycode_data = type { %struct.input_keymap_entry, i32 }
%struct.kbentry = type { i8, i8, i16 }
%struct.kbsentry = type { i8, [512 x i8] }
%struct.keyboard_notifier_param = type { %struct.vc_data*, i32, i32, i32, i32 }
%struct.nodemask_t = type { [1 x i64] }

@vt_spawn_con = dso_local global %struct.vt_spawn_console zeroinitializer, align 8
@keyboard_notifier_list = internal global %struct.atomic_notifier_head zeroinitializer, align 8
@kd_mksound_timer = internal global %struct.timer_list { %struct.hlist_node { %struct.hlist_node* inttoptr (i64 -2401263026318605568 to %struct.hlist_node*), %struct.hlist_node** null }, i64 0, void (%struct.timer_list*)* @kd_nosound, i32 0 }, align 8
@kbd_handler = internal global %struct.input_handler { i8* null, void (%struct.input_handle*, i32, i32, i32)* @kbd_event, void (%struct.input_handle*, %struct.input_value*, i32)* null, i1 (%struct.input_handle*, i32, i32, i32)* null, i1 (%struct.input_handler*, %struct.input_dev*)* @kbd_match, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)* @kbd_connect, void (%struct.input_handle*)* @kbd_disconnect, void (%struct.input_handle*)* @kbd_start, i8 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), %struct.input_device_id* getelementptr inbounds ([3 x %struct.input_device_id], [3 x %struct.input_device_id]* @kbd_ids, i32 0, i32 0), %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@kbd_event_lock = internal global %struct.spinlock zeroinitializer, align 4
@__UNIQUE_ID_brl_timeout268 = internal constant [95 x i8] c"keyboard.parm=brl_timeout:Braille keys release delay in ms (0 for commit on first key release)\00", section ".modinfo", align 1
@__param_str_brl_timeout = internal constant [21 x i8] c"keyboard.brl_timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@brl_timeout = internal global i32 300, align 4
@__param_brl_timeout = internal constant %struct.kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__param_str_brl_timeout, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.70 { i8* bitcast (i32* @brl_timeout to i8*) } }, section "__param", align 8
@__UNIQUE_ID_brl_timeouttype269 = internal constant [35 x i8] c"keyboard.parmtype=brl_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_brl_nbchords270 = internal constant [95 x i8] c"keyboard.parm=brl_nbchords:Number of chords that produce a braille pattern (0 for dead chords)\00", section ".modinfo", align 1
@__param_str_brl_nbchords = internal constant [22 x i8] c"keyboard.brl_nbchords\00", align 1
@brl_nbchords = internal global i32 1, align 4
@__param_brl_nbchords = internal constant %struct.kernel_param { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__param_str_brl_nbchords, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.70 { i8* bitcast (i32* @brl_nbchords to i8*) } }, section "__param", align 8
@__UNIQUE_ID_brl_nbchordstype271 = internal constant [36 x i8] c"keyboard.parmtype=brl_nbchords:uint\00", section ".modinfo", align 1
@led_lock = internal global %struct.spinlock zeroinitializer, align 4
@ledioctl = internal unnamed_addr global i8 0, align 4
@kbd_table = internal global [63 x %struct.kbd_struct] zeroinitializer, align 1
@default_utf8 = external dso_local local_unnamed_addr global i32, align 4
@accent_table_size = external dso_local local_unnamed_addr global i32, align 4
@accent_table = external dso_local global [0 x %struct.kbdiacruc], align 4
@func_buf_lock = internal global %struct.spinlock zeroinitializer, align 4
@func_table = external dso_local local_unnamed_addr global [256 x i8*], align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@shift_state = internal unnamed_addr global i32 0, align 4
@kd_nosound.zero = internal global i32 0, align 4
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@shift_down = internal global [9 x i8] zeroinitializer, align 4
@key_down = internal global [12 x i64] zeroinitializer, align 8
@key_maps = external dso_local local_unnamed_addr global [256 x i16*], align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"kbd\00", align 1
@kbd_ids = internal constant [3 x %struct.input_device_id] [%struct.input_device_id { i64 16, i16 0, i16 0, i16 0, i16 0, [1 x i64] [i64 2], [12 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [2 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, i64 0 }, %struct.input_device_id { i64 16, i16 0, i16 0, i16 0, i16 0, [1 x i64] [i64 262144], [12 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, [2 x i64] zeroinitializer, [1 x i64] zeroinitializer, [1 x i64] zeroinitializer, i64 0 }, %struct.input_device_id zeroinitializer], align 8
@do_poke_blanked_console = external dso_local local_unnamed_addr global i32, align 4
@vc_cons = external dso_local global [63 x %struct.vc], align 8
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@kbd = internal unnamed_addr global %struct.kbd_struct* getelementptr inbounds ([63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 0), align 8
@rep = internal unnamed_addr global i8 0, align 4
@__func__.kbd_keycode = private unnamed_addr constant [12 x i8] c"kbd_keycode\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"\014keyboard: can't emulate rawmode for keycode %d\0A\00", align 1
@k_handler = internal unnamed_addr constant [16 x void (%struct.vc_data*, i8, i8)*] [void (%struct.vc_data*, i8, i8)* @k_self, void (%struct.vc_data*, i8, i8)* @k_fn, void (%struct.vc_data*, i8, i8)* @k_spec, void (%struct.vc_data*, i8, i8)* @k_pad, void (%struct.vc_data*, i8, i8)* @k_dead, void (%struct.vc_data*, i8, i8)* @k_cons, void (%struct.vc_data*, i8, i8)* @k_cur, void (%struct.vc_data*, i8, i8)* @k_shift, void (%struct.vc_data*, i8, i8)* @k_meta, void (%struct.vc_data*, i8, i8)* @k_ascii, void (%struct.vc_data*, i8, i8)* @k_lock, void (%struct.vc_data*, i8, i8)* @k_lowercase, void (%struct.vc_data*, i8, i8)* @k_slock, void (%struct.vc_data*, i8, i8)* @k_dead2, void (%struct.vc_data*, i8, i8)* @k_brl, void (%struct.vc_data*, i8, i8)* @k_ignore], align 8
@diacr = internal unnamed_addr global i32 0, align 4
@dead_key_next = internal unnamed_addr global i1 false, align 1
@fn_handler = internal unnamed_addr constant [20 x void (%struct.vc_data*)*] [void (%struct.vc_data*)* @fn_null, void (%struct.vc_data*)* @fn_enter, void (%struct.vc_data*)* @fn_show_ptregs, void (%struct.vc_data*)* @fn_show_mem, void (%struct.vc_data*)* @fn_show_state, void (%struct.vc_data*)* @fn_send_intr, void (%struct.vc_data*)* @fn_lastcons, void (%struct.vc_data*)* @fn_caps_toggle, void (%struct.vc_data*)* @fn_num, void (%struct.vc_data*)* @fn_hold, void (%struct.vc_data*)* @fn_scroll_forw, void (%struct.vc_data*)* @fn_scroll_back, void (%struct.vc_data*)* @fn_boot_it, void (%struct.vc_data*)* @fn_caps_on, void (%struct.vc_data*)* @fn_compose, void (%struct.vc_data*)* @fn_SAK, void (%struct.vc_data*)* @fn_dec_console, void (%struct.vc_data*)* @fn_inc_console, void (%struct.vc_data*)* @fn_spawn_con, void (%struct.vc_data*)* @fn_bare_num], align 8
@__irq_regs = external dso_local global %struct.pt_regs*, section ".data..percpu", align 8
@last_console = external dso_local local_unnamed_addr global i32, align 4
@applkey.buf = internal global [4 x i8] c"\1BO\00\00", align 1
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@want_console = external dso_local local_unnamed_addr global i32, align 4
@k_pad.pad_chars = internal unnamed_addr constant [22 x i8] c"0123456789+-*/\0D,.?()#\00", align 1
@k_pad.app_map = internal unnamed_addr constant [22 x i8] c"pqrstuvwxylSRQMnnmPQS\00", align 1
@k_dead.ret_diacr = internal unnamed_addr constant [27 x i8] c"`'^~\22,_U.*=cki#o!?+-)(:n;$@", align 1
@k_cur.cur_chars = internal unnamed_addr constant [5 x i8] c"BDCA\00", align 1
@npadch_active = internal unnamed_addr global i1 false, align 1
@npadch_value = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"\013keyboard: k_lowercase was called - impossible\0A\00", align 1
@k_brl.pressed = internal unnamed_addr global i32 0, align 4
@k_brl.committing = internal unnamed_addr global i32 0, align 4
@k_brl.releasestart = internal unnamed_addr global i64 0, align 8
@.str.6 = private unnamed_addr constant [64 x i8] c"\014keyboard: keyboard mode must be unicode for braille patterns\0A\00", align 1
@k_brlcommit.chords = internal unnamed_addr global i64 0, align 8
@k_brlcommit.committed = internal unnamed_addr global i32 0, align 4
@ledstate = internal global i32 -1, align 4
@keyboard_tasklet = internal global { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 } { %struct.tasklet_struct* null, i64 0, %struct.atomic_t { i32 1 }, i8 1, { void (%struct.tasklet_struct*)* } { void (%struct.tasklet_struct*)* @kbd_bh }, i64 0 }, align 8
@keymap_count = external dso_local local_unnamed_addr global i32, align 4
@max_vals = internal unnamed_addr constant [15 x i8] c"\FF\FF\13\13\1A\FF\03\08\FF\19\08\FF\08\FF\0A", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@vt_kdskbsent.is_kmalloc = internal unnamed_addr global [4 x i64] zeroinitializer, align 8
@llvm.compiler.used = appending global [6 x i8*] [i8* getelementptr inbounds ([95 x i8], [95 x i8]* @__UNIQUE_ID_brl_nbchords270, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_brl_nbchordstype271, i32 0, i32 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @__UNIQUE_ID_brl_timeout268, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_brl_timeouttype269, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_brl_nbchords to i8*), i8* bitcast (%struct.kernel_param* @__param_brl_timeout to i8*)], section "llvm.metadata"
@switch.table.vt_do_kdgkbmode = private unnamed_addr constant [4 x i32] [i32 2, i32 0, i32 3, i32 4], align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @register_keyboard_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef nonnull @keyboard_notifier_list, %struct.notifier_block* noundef %nb) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @unregister_keyboard_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head* noundef nonnull @keyboard_notifier_list, %struct.notifier_block* noundef %nb) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kd_mksound(i32 noundef %hz, i32 noundef %ticks) local_unnamed_addr #0 {
entry:
  %hz.addr = alloca i32, align 4
  store i32 %hz, i32* %hz.addr, align 4
  %call = call i32 @del_timer_sync(%struct.timer_list* noundef nonnull @kd_mksound_timer) #14
  %0 = bitcast i32* %hz.addr to i8*
  %call1 = call i32 @input_handler_for_each_handle(%struct.input_handler* noundef nonnull @kbd_handler, i8* noundef nonnull %0, i32 (%struct.input_handle*, i8*)* noundef nonnull @kd_sound_helper) #14
  %1 = load i32, i32* %hz.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %tobool2 = icmp ne i32 %ticks, 0
  %or.cond = and i1 %tobool2, %tobool
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load volatile i64, i64* @jiffies, align 64
  %conv = zext i32 %ticks to i64
  %add = add i64 %2, %conv
  %call3 = call i32 @mod_timer(%struct.timer_list* noundef nonnull @kd_mksound_timer, i64 noundef %add) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(%struct.timer_list* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_handler_for_each_handle(%struct.input_handler* noundef, i8* noundef, i32 (%struct.input_handle*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kd_sound_helper(%struct.input_handle* noundef %handle, i8* nocapture noundef readonly %data) #0 {
entry:
  %0 = bitcast i8* %data to i32*
  %dev1 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %1 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %1, i64 0, i32 5, i64 0
  %2 = load volatile i64, i64* %arraydecay, align 8
  %3 = and i64 %2, 262144
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %1, i64 0, i32 11, i64 0
  %4 = load volatile i64, i64* %arraydecay2, align 8
  %5 = and i64 %4, 4
  %tobool4.not = icmp eq i64 %5, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.then
  %6 = load i32, i32* %0, align 4
  call void @input_inject_event(%struct.input_handle* noundef %handle, i32 noundef 18, i32 noundef 2, i32 noundef %6) #14
  %7 = load i32, i32* %0, align 4
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.then5, %if.then
  %8 = load volatile i64, i64* %arraydecay2, align 8
  %9 = and i64 %8, 2
  %tobool12.not = icmp eq i64 %9, 0
  br i1 %tobool12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.end8
  %10 = load i32, i32* %0, align 4
  %tobool14.not = icmp ne i32 %10, 0
  %cond = zext i1 %tobool14.not to i32
  call void @input_inject_event(%struct.input_handle* noundef %handle, i32 noundef 18, i32 noundef 1, i32 noundef %cond) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then13, %if.end8, %if.then5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(%struct.timer_list* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kbd_rate(%struct.kbd_repeat* nocapture noundef %rpt) local_unnamed_addr #0 {
entry:
  %data = alloca [2 x %struct.kbd_repeat], align 8
  %0 = bitcast [2 x %struct.kbd_repeat]* %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15
  %1 = bitcast %struct.kbd_repeat* %rpt to i64*
  %2 = bitcast [2 x %struct.kbd_repeat]* %data to i64*
  %3 = load i64, i64* %1, align 4
  store i64 %3, i64* %2, align 8
  %arrayinit.start = getelementptr inbounds [2 x %struct.kbd_repeat], [2 x %struct.kbd_repeat]* %data, i64 0, i64 1
  %4 = bitcast %struct.kbd_repeat* %arrayinit.start to i64*
  store i64 0, i64* %4, align 8
  %call = call i32 @input_handler_for_each_handle(%struct.input_handler* noundef nonnull @kbd_handler, i8* noundef nonnull %0, i32 (%struct.input_handle*, i8*)* noundef nonnull @kbd_rate_helper) #14
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %1, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kbd_rate_helper(%struct.input_handle* noundef %handle, i8* nocapture noundef %data) #0 {
entry:
  %dev1 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %0 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 5, i64 0
  %1 = load volatile i64, i64* %arraydecay, align 8
  %2 = and i64 %1, 1048576
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %delay = bitcast i8* %data to i32*
  %3 = load i32, i32* %delay, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @input_inject_event(%struct.input_handle* noundef %handle, i32 noundef 20, i32 noundef 0, i32 noundef %3) #14
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %period = getelementptr inbounds i8, i8* %data, i64 4
  %4 = bitcast i8* %period to i32*
  %5 = load i32, i32* %4, align 4
  %cmp6 = icmp sgt i32 %5, 0
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @input_inject_event(%struct.input_handle* noundef %handle, i32 noundef 20, i32 noundef 1, i32 noundef %5) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  %arrayidx11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i64 0, i32 24, i64 0
  %6 = load i32, i32* %arrayidx11, align 8
  %arrayidx12 = getelementptr i8, i8* %data, i64 8
  %delay13 = bitcast i8* %arrayidx12 to i32*
  store i32 %6, i32* %delay13, align 4
  %arrayidx15 = getelementptr %struct.input_dev, %struct.input_dev* %0, i64 0, i32 24, i64 1
  %7 = load i32, i32* %arrayidx15, align 4
  %period17 = getelementptr i8, i8* %data, i64 12
  %8 = bitcast i8* %period17 to i32*
  store i32 %7, i32* %8, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end10, %entry
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vt_set_leds_compute_shiftstate() local_unnamed_addr #0 {
entry:
  call fastcc void @set_leds() #16
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  call fastcc void @do_compute_shiftstate() #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_leds() unnamed_addr #0 {
entry:
  call fastcc void @tasklet_schedule() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #16
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_compute_shiftstate() unnamed_addr #0 {
entry:
  store i32 0, i32* @shift_state, align 4
  %call = call i8* @memset(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @shift_down, i64 0, i64 0), i32 noundef 0, i64 noundef 9) #14
  %call1 = call fastcc i64 @find_first_bit() #16
  %0 = and i64 %call1, 4294967040
  %cmp30 = icmp eq i64 %0, 0
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %k.0.in31 = phi i64 [ %call18, %for.inc ], [ %call1, %entry ]
  %1 = load i16*, i16** getelementptr inbounds ([256 x i16*], [256 x i16*]* @key_maps, i64 0, i64 0), align 8
  %idxprom = and i64 %k.0.in31, 4294967295
  %arrayidx = getelementptr i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %3 = lshr i16 %2, 8
  %4 = trunc i16 %3 to i8
  %trunc = xor i8 %4, -16
  switch i8 %trunc, label %for.inc [
    i8 7, label %if.end
    i8 12, label %if.end
  ]

if.end:                                           ; preds = %for.body, %for.body
  %5 = and i16 %2, 255
  %cmp9 = icmp eq i16 %5, 8
  %narrow = select i1 %cmp9, i16 0, i16 %5
  %idxprom13 = zext i16 %narrow to i64
  %arrayidx14 = getelementptr [9 x i8], [9 x i8]* @shift_down, i64 0, i64 %idxprom13
  %6 = load i8, i8* %arrayidx14, align 1
  %inc = add i8 %6, 1
  store i8 %inc, i8* %arrayidx14, align 1
  %shl = shl nuw i64 1, %idxprom13
  %7 = load i32, i32* @shift_state, align 4
  %8 = trunc i64 %shl to i32
  %conv16 = or i32 %7, %8
  store i32 %conv16, i32* @shift_state, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end
  %add = add nuw i64 %k.0.in31, 1
  %conv17 = and i64 %add, 4294967295
  %call18 = call fastcc i64 @find_next_bit(i64* noundef getelementptr inbounds ([12 x i64], [12 x i64]* @key_down, i64 0, i64 0), i64 noundef 256, i64 noundef %conv17) #16
  %9 = and i64 %call18, 4294967040
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @setledstate(%struct.kbd_struct* nocapture noundef %kb, i32 noundef %led) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0)) #16
  %tobool.not = icmp ult i32 %led, 8
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv5 = trunc i32 %led to i8
  store i8 %conv5, i8* @ledioctl, align 4
  %ledmode = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %kb, i64 0, i32 2
  %bf.load = load i8, i8* %ledmode, align 1
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %ledmode, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %ledmode6 = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %kb, i64 0, i32 2
  %bf.load7 = load i8, i8* %ledmode6, align 1
  %bf.clear8 = and i8 %bf.load7, -2
  store i8 %bf.clear8, i8* %ledmode6, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call fastcc void @set_leds() #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vt_get_leds(i32 noundef %console, i32 noundef %flag) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %console to i64
  %arrayidx = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0)) #16
  %call5 = call fastcc i32 @vc_kbd_led(%struct.kbd_struct* noundef %arrayidx, i32 noundef %flag) #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  ret i32 %call5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @vc_kbd_led(%struct.kbd_struct* nocapture noundef readonly %kbd, i32 noundef %flag) unnamed_addr #4 {
entry:
  %ledflagstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %kbd, i64 0, i32 2
  %bf.load = load i8, i8* %ledflagstate, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 15
  %conv = zext i8 %bf.clear to i32
  %shr = lshr i32 %conv, %flag
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vt_set_led_state(i32 noundef %console, i32 noundef %leds) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %console to i64
  %arrayidx = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom
  call void @setledstate(%struct.kbd_struct* noundef %arrayidx, i32 noundef %leds) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vt_kbd_con_start(i32 noundef %console) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %console to i64
  %arrayidx = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0)) #16
  call fastcc void @clr_vc_kbd_led(%struct.kbd_struct* noundef %arrayidx, i32 noundef 0) #16
  call fastcc void @set_leds() #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @clr_vc_kbd_led(%struct.kbd_struct* nocapture noundef %kbd, i32 noundef %flag) unnamed_addr #5 {
entry:
  %shl = shl nuw i32 1, %flag
  %ledflagstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %kbd, i64 0, i32 2
  %bf.load = load i8, i8* %ledflagstate, align 1
  %0 = trunc i32 %shl to i8
  %1 = xor i8 %0, -1
  %conv14 = shl i8 %1, 1
  %bf.shl5 = or i8 %conv14, -31
  %bf.set = and i8 %bf.shl5, %bf.load
  store i8 %bf.set, i8* %ledflagstate, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vt_kbd_con_stop(i32 noundef %console) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %console to i64
  %arrayidx = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0)) #16
  call fastcc void @set_vc_kbd_led(%struct.kbd_struct* noundef %arrayidx, i32 noundef 0) #16
  call fastcc void @set_leds() #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_vc_kbd_led(%struct.kbd_struct* nocapture noundef %kbd, i32 noundef %flag) unnamed_addr #5 {
entry:
  %shl = shl nuw i32 1, %flag
  %ledflagstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %kbd, i64 0, i32 2
  %bf.load = load i8, i8* %ledflagstate, align 1
  %0 = trunc i32 %shl to i8
  %conv14 = shl i8 %0, 1
  %1 = and i8 %conv14, 30
  %bf.set = or i8 %bf.load, %1
  store i8 %bf.set, i8* %ledflagstate, align 1
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local i32 @kbd_init() local_unnamed_addr #6 section ".init.text" {
entry:
  %0 = load i32, i32* @default_utf8, align 4
  %tobool.not = icmp eq i32 %0, 0
  %conv23 = select i1 %tobool.not, i8 0, i8 48
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %ledflagstate = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %indvars.iv, i32 2
  %bf.load = load i8, i8* %ledflagstate, align 1
  %default_ledflagstate = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %indvars.iv, i32 3
  %bf.load5 = load i8, i8* %default_ledflagstate, align 1
  %bf.clear12 = and i8 %bf.load, -32
  store i8 %bf.clear12, i8* %ledflagstate, align 1
  %lockstate = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %indvars.iv, i32 0
  store i8 0, i8* %lockstate, align 1
  %slockstate = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %indvars.iv, i32 1
  store i8 0, i8* %slockstate, align 1
  %modeflags = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %indvars.iv, i32 4
  %bf.load20 = load i8, i8* %modeflags, align 1
  %bf.clear21 = and i8 %bf.load20, -32
  %bf.set22 = or i8 %bf.clear21, 20
  store i8 %bf.set22, i8* %modeflags, align 1
  %bf.clear29 = and i8 %bf.load5, -128
  %bf.set30 = or i8 %conv23, %bf.clear29
  store i8 %bf.set30, i8* %default_ledflagstate, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 63
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call31 = call i32 @input_register_handler(%struct.input_handler* noundef nonnull @kbd_handler) #14
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end, label %cleanup

if.end:                                           ; preds = %for.end
  call fastcc void @tasklet_enable() #16
  call fastcc void @tasklet_schedule() #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end
  ret i32 %call31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(%struct.input_handler* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tasklet_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  call fastcc void @__ll_sc_atomic_sub() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tasklet_schedule() unnamed_addr #0 {
entry:
  %call = call fastcc i1 @test_and_set_bit() #16
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__tasklet_schedule(%struct.tasklet_struct* noundef bitcast ({ %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }* @keyboard_tasklet to %struct.tasklet_struct*)) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vt_do_diacrit(i32 noundef %cmd, i8* noundef %udp, i32 noundef %perm) local_unnamed_addr #0 {
entry:
  switch i32 %cmd, label %cleanup281 [
    i32 19274, label %sw.bb
    i32 19450, label %sw.bb55
    i32 19275, label %sw.bb113
    i32 19451, label %sw.bb207
  ]

sw.bb:                                            ; preds = %entry
  %call = call fastcc i8* @kmalloc_array(i64 noundef 3) #16
  %0 = bitcast i8* %call to %struct.kbdiacr*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup281, label %do.body1

do.body1:                                         ; preds = %sw.bb
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  %1 = load i32, i32* @accent_table_size, align 4
  %cmp6404 = icmp sgt i32 %1, 0
  br i1 %cmp6404, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %do.body1
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %diacr = getelementptr [0 x %struct.kbdiacruc], [0 x %struct.kbdiacruc]* @accent_table, i64 0, i64 %indvars.iv, i32 0
  %2 = load i32, i32* %diacr, align 4
  %call8 = call i32 @conv_uni_to_8bit(i32 noundef %2) #14
  %conv9 = trunc i32 %call8 to i8
  %diacr12 = getelementptr %struct.kbdiacr, %struct.kbdiacr* %0, i64 %indvars.iv, i32 0
  store i8 %conv9, i8* %diacr12, align 1
  %base = getelementptr [0 x %struct.kbdiacruc], [0 x %struct.kbdiacruc]* @accent_table, i64 0, i64 %indvars.iv, i32 1
  %3 = load i32, i32* %base, align 4
  %call15 = call i32 @conv_uni_to_8bit(i32 noundef %3) #14
  %conv16 = trunc i32 %call15 to i8
  %base19 = getelementptr %struct.kbdiacr, %struct.kbdiacr* %0, i64 %indvars.iv, i32 1
  store i8 %conv16, i8* %base19, align 1
  %result = getelementptr [0 x %struct.kbdiacruc], [0 x %struct.kbdiacruc]* @accent_table, i64 0, i64 %indvars.iv, i32 2
  %4 = load i32, i32* %result, align 4
  %call22 = call i32 @conv_uni_to_8bit(i32 noundef %4) #14
  %conv23 = trunc i32 %call22 to i8
  %result26 = getelementptr %struct.kbdiacr, %struct.kbdiacr* %0, i64 %indvars.iv, i32 2
  store i8 %conv23, i8* %result26, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond407.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond407.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %do.body1
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call3) #14
  %call28 = call fastcc i64 @__range_ok(i8* noundef %udp, i64 noundef 4) #16
  %tobool29.not = icmp eq i64 %call28, 0
  br i1 %tobool29.not, label %if.end52, label %if.then30

if.then30:                                        ; preds = %for.end
  %call31 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %udp) #16
  %5 = bitcast i8* %call31 to i32*
  %6 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %1, i32* %5, i32 -14, i32 0) #15, !srcloc !10
  %phi.cmp383 = icmp eq i32 %6, 0
  br i1 %phi.cmp383, label %if.else46, label %if.end52

if.else46:                                        ; preds = %if.then30
  %conv47 = sext i32 %1 to i64
  %mul = mul nsw i64 %conv47, 3
  %cmp11.i.i = icmp ugt i64 %mul, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !11

check_copy_size.exit.i:                           ; preds = %if.else46
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !12
  br label %if.end52

if.then.i:                                        ; preds = %if.else46
  %kbdiacr = getelementptr inbounds i8, i8* %udp, i64 4
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %kbdiacr, i8* noundef nonnull %call, i64 noundef %mul) #14
  %phi.cmp400 = icmp eq i64 %call2.i, 0
  %phi.sel401 = select i1 %phi.cmp400, i32 0, i32 -14
  br label %if.end52

if.end52:                                         ; preds = %if.then.i, %check_copy_size.exit.i, %for.end, %if.then30
  %ret.0 = phi i32 [ -14, %if.then30 ], [ -14, %for.end ], [ %phi.sel401, %if.then.i ], [ -14, %check_copy_size.exit.i ]
  call void @kfree(i8* noundef nonnull %call) #14
  br label %cleanup281

sw.bb55:                                          ; preds = %entry
  %call57 = call fastcc i8* @kmalloc_array(i64 noundef 12) #16
  %cmp58 = icmp eq i8* %call57, null
  br i1 %cmp58, label %cleanup281, label %do.body63

do.body63:                                        ; preds = %sw.bb55
  %call70 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  %7 = load i32, i32* @accent_table_size, align 4
  %conv75 = sext i32 %7 to i64
  %mul76 = mul nsw i64 %conv75, 12
  %call77 = call i8* @memcpy(i8* noundef nonnull %call57, i8* noundef bitcast ([0 x %struct.kbdiacruc]* @accent_table to i8*), i64 noundef %mul76) #14
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call70) #14
  %call82 = call fastcc i64 @__range_ok(i8* noundef %udp, i64 noundef 4) #16
  %tobool83.not = icmp eq i64 %call82, 0
  br i1 %tobool83.not, label %if.end110, label %if.then84

if.then84:                                        ; preds = %do.body63
  %call85 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %udp) #16
  %8 = bitcast i8* %call85 to i32*
  %9 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %7, i32* %8, i32 -14, i32 0) #15, !srcloc !13
  %phi.cmp382 = icmp eq i32 %9, 0
  br i1 %phi.cmp382, label %if.else102, label %if.end110

if.else102:                                       ; preds = %if.then84
  %cmp11.i.i385 = icmp ugt i64 %mul76, 2147483647
  br i1 %cmp11.i.i385, label %check_copy_size.exit.i386, label %if.then.i388, !prof !11

check_copy_size.exit.i386:                        ; preds = %if.else102
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !12
  br label %if.end110

if.then.i388:                                     ; preds = %if.else102
  %kbdiacruc = getelementptr inbounds i8, i8* %udp, i64 4
  %call2.i387 = call fastcc i64 @_copy_to_user(i8* noundef %kbdiacruc, i8* noundef nonnull %call57, i64 noundef %mul76) #14
  %phi.cmp399 = icmp eq i64 %call2.i387, 0
  %phi.sel = select i1 %phi.cmp399, i32 0, i32 -14
  br label %if.end110

if.end110:                                        ; preds = %if.then.i388, %check_copy_size.exit.i386, %do.body63, %if.then84
  %ret.1 = phi i32 [ -14, %if.then84 ], [ -14, %do.body63 ], [ %phi.sel, %if.then.i388 ], [ -14, %check_copy_size.exit.i386 ]
  call void @kfree(i8* noundef nonnull %call57) #14
  br label %cleanup281

sw.bb113:                                         ; preds = %entry
  %tobool117.not = icmp eq i32 %perm, 0
  br i1 %tobool117.not, label %cleanup281, label %if.end119

if.end119:                                        ; preds = %sw.bb113
  %call123 = call fastcc i64 @__range_ok(i8* noundef %udp, i64 noundef 4) #16
  %tobool124.not = icmp eq i64 %call123, 0
  br i1 %tobool124.not, label %cleanup281, label %if.end138

if.end138:                                        ; preds = %if.end119
  %call126 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %udp) #16
  %10 = bitcast i8* %call126 to i32*
  %11 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %10, i32 -14, i32 0) #15, !srcloc !14
  %asmresult = extractvalue { i32, i64 } %11, 0
  %asmresult130 = extractvalue { i32, i64 } %11, 1
  %conv131 = trunc i64 %asmresult130 to i32
  %phi.cmp381 = icmp eq i32 %asmresult, 0
  br i1 %phi.cmp381, label %if.end144, label %cleanup281

if.end144:                                        ; preds = %if.end138
  %cmp145 = icmp ugt i32 %conv131, 255
  br i1 %cmp145, label %cleanup281, label %if.end148

if.end148:                                        ; preds = %if.end144
  %tobool149.not = icmp eq i32 %conv131, 0
  br i1 %tobool149.not, label %do.body163.thread, label %if.then150

do.body163.thread:                                ; preds = %if.end148
  %call170409 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  store i32 %conv131, i32* @accent_table_size, align 4
  br label %for.end202

if.then150:                                       ; preds = %if.end148
  %kbdiacr151 = getelementptr inbounds i8, i8* %udp, i64 4
  %conv153 = and i64 %asmresult130, 4294967295
  %mul154 = mul nuw nsw i64 %conv153, 3
  %call155 = call i8* @memdup_user(i8* noundef %kbdiacr151, i64 noundef %mul154) #14
  %12 = bitcast i8* %call155 to %struct.kbdiacr*
  %call156 = call fastcc i1 @IS_ERR(i8* noundef %call155) #16
  br i1 %call156, label %if.then157, label %for.body178.preheader

if.then157:                                       ; preds = %if.then150
  %call158 = call fastcc i64 @PTR_ERR(i8* noundef %call155) #16
  %conv159 = trunc i64 %call158 to i32
  br label %cleanup281

for.body178.preheader:                            ; preds = %if.then150
  %call170 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  store i32 %conv131, i32* @accent_table_size, align 4
  br label %for.body178

for.body178:                                      ; preds = %for.body178.preheader, %for.body178
  %i116.0403 = phi i32 [ %inc201, %for.body178 ], [ 0, %for.body178.preheader ]
  %idxprom179 = sext i32 %i116.0403 to i64
  %diacr181 = getelementptr %struct.kbdiacr, %struct.kbdiacr* %12, i64 %idxprom179, i32 0
  %13 = load i8, i8* %diacr181, align 1
  %call182 = call i32 @conv_8bit_to_uni(i8 noundef %13) #14
  %diacr185 = getelementptr [0 x %struct.kbdiacruc], [0 x %struct.kbdiacruc]* @accent_table, i64 0, i64 %idxprom179, i32 0
  store i32 %call182, i32* %diacr185, align 4
  %base188 = getelementptr %struct.kbdiacr, %struct.kbdiacr* %12, i64 %idxprom179, i32 1
  %14 = load i8, i8* %base188, align 1
  %call189 = call i32 @conv_8bit_to_uni(i8 noundef %14) #14
  %base192 = getelementptr [0 x %struct.kbdiacruc], [0 x %struct.kbdiacruc]* @accent_table, i64 0, i64 %idxprom179, i32 1
  store i32 %call189, i32* %base192, align 4
  %result195 = getelementptr %struct.kbdiacr, %struct.kbdiacr* %12, i64 %idxprom179, i32 2
  %15 = load i8, i8* %result195, align 1
  %call196 = call i32 @conv_8bit_to_uni(i8 noundef %15) #14
  %result199 = getelementptr [0 x %struct.kbdiacruc], [0 x %struct.kbdiacruc]* @accent_table, i64 0, i64 %idxprom179, i32 2
  store i32 %call196, i32* %result199, align 4
  %inc201 = add nuw i32 %i116.0403, 1
  %exitcond.not = icmp eq i32 %inc201, %conv131
  br i1 %exitcond.not, label %for.end202, label %for.body178

for.end202:                                       ; preds = %for.body178, %do.body163.thread
  %call170411 = phi i64 [ %call170409, %do.body163.thread ], [ %call170, %for.body178 ]
  %dia115.0410 = phi %struct.kbdiacr* [ null, %do.body163.thread ], [ %12, %for.body178 ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call170411) #14
  %16 = getelementptr %struct.kbdiacr, %struct.kbdiacr* %dia115.0410, i64 0, i32 0
  call void @kfree(i8* noundef %16) #14
  br label %cleanup281

sw.bb207:                                         ; preds = %entry
  %tobool211.not = icmp eq i32 %perm, 0
  br i1 %tobool211.not, label %cleanup281, label %if.end213

if.end213:                                        ; preds = %sw.bb207
  %call218 = call fastcc i64 @__range_ok(i8* noundef %udp, i64 noundef 4) #16
  %tobool219.not = icmp eq i64 %call218, 0
  br i1 %tobool219.not, label %cleanup281, label %if.end235

if.end235:                                        ; preds = %if.end213
  %call221 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %udp) #16
  %17 = bitcast i8* %call221 to i32*
  %18 = call { i32, i64 } asm sideeffect "1:\09ldtr\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i32* %17, i32 -14, i32 0) #15, !srcloc !15
  %asmresult226 = extractvalue { i32, i64 } %18, 0
  %asmresult227 = extractvalue { i32, i64 } %18, 1
  %conv228 = trunc i64 %asmresult227 to i32
  %phi.cmp = icmp eq i32 %asmresult226, 0
  br i1 %phi.cmp, label %if.end241, label %cleanup281

if.end241:                                        ; preds = %if.end235
  %cmp242 = icmp ugt i32 %conv228, 255
  br i1 %cmp242, label %cleanup281, label %if.end245

if.end245:                                        ; preds = %if.end241
  %tobool246.not = icmp eq i32 %conv228, 0
  br i1 %tobool246.not, label %do.body260.thread, label %if.then247

do.body260.thread:                                ; preds = %if.end245
  %call267396 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  br label %if.end277

if.then247:                                       ; preds = %if.end245
  %kbdiacruc248 = getelementptr inbounds i8, i8* %udp, i64 4
  %conv250 = and i64 %asmresult227, 4294967295
  %mul251 = mul nuw nsw i64 %conv250, 12
  %call252 = call i8* @memdup_user(i8* noundef %kbdiacruc248, i64 noundef %mul251) #14
  %call253 = call fastcc i1 @IS_ERR(i8* noundef %call252) #16
  br i1 %call253, label %if.then254, label %if.then273

if.then254:                                       ; preds = %if.then247
  %call255 = call fastcc i64 @PTR_ERR(i8* noundef %call252) #16
  %conv256 = trunc i64 %call255 to i32
  br label %cleanup281

if.then273:                                       ; preds = %if.then247
  %call267 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  %call276 = call i8* @memcpy(i8* noundef bitcast ([0 x %struct.kbdiacruc]* @accent_table to i8*), i8* noundef %call252, i64 noundef %mul251) #14
  br label %if.end277

if.end277:                                        ; preds = %do.body260.thread, %if.then273
  %call267398 = phi i64 [ %call267396, %do.body260.thread ], [ %call267, %if.then273 ]
  %buf210.0397 = phi i8* [ null, %do.body260.thread ], [ %call252, %if.then273 ]
  store i32 %conv228, i32* @accent_table_size, align 4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call267398) #14
  call void @kfree(i8* noundef %buf210.0397) #14
  br label %cleanup281

cleanup281:                                       ; preds = %if.end213, %if.end119, %entry, %if.then254, %if.end277, %sw.bb207, %if.end235, %if.end241, %if.then157, %for.end202, %sw.bb113, %if.end138, %if.end144, %if.end110, %sw.bb55, %if.end52, %sw.bb
  %retval.4 = phi i32 [ %ret.0, %if.end52 ], [ -12, %sw.bb ], [ %ret.1, %if.end110 ], [ -12, %sw.bb55 ], [ %conv159, %if.then157 ], [ 0, %for.end202 ], [ -1, %sw.bb113 ], [ -14, %if.end138 ], [ -22, %if.end144 ], [ %conv256, %if.then254 ], [ 0, %if.end277 ], [ -1, %sw.bb207 ], [ -14, %if.end235 ], [ -22, %if.end241 ], [ 0, %entry ], [ -14, %if.end119 ], [ -14, %if.end213 ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %size, i64 256)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !11

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3264) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @conv_uni_to_8bit(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #15, !srcloc !16
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
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #15, !srcloc !17
  call void asm sideeffect "hint #20", "~{memory}"() #15, !srcloc !18
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memdup_user(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #7 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #7 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @conv_8bit_to_uni(i8 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vt_do_kdskbmode(i32 noundef %console, i32 noundef %arg) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %console to i64
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  switch i32 %arg, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
    i32 1, label %sw.bb10
    i32 3, label %sw.bb15
    i32 4, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  %kbdmode = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 3
  %bf.load = load i8, i8* %kbdmode, align 1
  %bf.clear = and i8 %bf.load, -113
  %bf.set = or i8 %bf.clear, 32
  store i8 %bf.set, i8* %kbdmode, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %kbdmode6 = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 3
  %bf.load7 = load i8, i8* %kbdmode6, align 1
  %bf.clear8 = and i8 %bf.load7, -113
  %bf.set9 = or i8 %bf.clear8, 16
  store i8 %bf.set9, i8* %kbdmode6, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %kbdmode11 = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 3
  %bf.load12 = load i8, i8* %kbdmode11, align 1
  %bf.clear13 = and i8 %bf.load12, -113
  store i8 %bf.clear13, i8* %kbdmode11, align 1
  call fastcc void @do_compute_shiftstate() #16
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %kbdmode16 = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 3
  %bf.load17 = load i8, i8* %kbdmode16, align 1
  %bf.clear18 = and i8 %bf.load17, -113
  %bf.set19 = or i8 %bf.clear18, 48
  store i8 %bf.set19, i8* %kbdmode16, align 1
  call fastcc void @do_compute_shiftstate() #16
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %kbdmode21 = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 3
  %bf.load22 = load i8, i8* %kbdmode21, align 1
  %bf.clear23 = and i8 %bf.load22, -113
  %bf.set24 = or i8 %bf.clear23, 64
  store i8 %bf.set24, i8* %kbdmode21, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb20, %sw.bb15, %sw.bb10, %sw.bb5, %sw.bb
  %ret.0 = phi i32 [ 0, %sw.bb20 ], [ 0, %sw.bb15 ], [ 0, %sw.bb10 ], [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %entry ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vt_do_kdskbmeta(i32 noundef %console, i32 noundef %arg) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %console to i64
  %arrayidx = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  switch i32 %arg, label %sw.epilog [
    i32 3, label %sw.bb
    i32 4, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call fastcc void @clr_vc_kbd_mode(%struct.kbd_struct* noundef %arrayidx, i32 noundef 4) #16
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call fastcc void @set_vc_kbd_mode(%struct.kbd_struct* noundef %arrayidx, i32 noundef 4) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb5, %sw.bb
  %ret.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %entry ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @clr_vc_kbd_mode(%struct.kbd_struct* nocapture noundef %kbd, i32 noundef %flag) unnamed_addr #5 {
entry:
  %shl = shl nuw i32 1, %flag
  %modeflags = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %kbd, i64 0, i32 4
  %bf.load = load i8, i8* %modeflags, align 1
  %0 = trunc i32 %shl to i8
  %bf.clear = xor i8 %0, -1
  %conv14 = or i8 %bf.clear, -32
  %bf.set = and i8 %conv14, %bf.load
  store i8 %bf.set, i8* %modeflags, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_vc_kbd_mode(%struct.kbd_struct* nocapture noundef %kbd, i32 noundef %flag) unnamed_addr #5 {
entry:
  %shl = shl nuw i32 1, %flag
  %modeflags = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %kbd, i64 0, i32 4
  %bf.load = load i8, i8* %modeflags, align 1
  %0 = trunc i32 %shl to i8
  %1 = and i8 %0, 31
  %bf.set = or i8 %bf.load, %1
  store i8 %bf.set, i8* %modeflags, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vt_do_kbkeycode_ioctl(i32 noundef %cmd, %struct.kbkeycode* noundef %user_kbkc, i32 noundef %perm) local_unnamed_addr #0 {
entry:
  %tmp = alloca i64, align 8, !annotation !19
  %tmpcast = bitcast i64* %tmp to %struct.kbkeycode*, !annotation !19
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #15
  store i64 0, i64* %tmp, align 8, !annotation !19
  %1 = bitcast %struct.kbkeycode* %user_kbkc to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 8) #14
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %cleanup [
    i32 19276, label %sw.bb
    i32 19277, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end
  %scancode = bitcast i64* %tmp to i32*
  %2 = load i32, i32* %scancode, align 8
  %call1 = call fastcc i32 @getkeycode(i32 noundef %2) #16
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then2, label %cleanup

if.then2:                                         ; preds = %sw.bb
  %keycode = getelementptr inbounds %struct.kbkeycode, %struct.kbkeycode* %user_kbkc, i64 0, i32 1
  %3 = bitcast i32* %keycode to i8*
  %call3 = call fastcc i64 @__range_ok(i8* noundef %3, i64 noundef 4) #16
  %tobool4.not = icmp eq i64 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.then2
  %call6 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %3) #16
  %4 = bitcast i8* %call6 to i32*
  %5 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call1, i32* %4, i32 -14, i32 0) #15, !srcloc !20
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  %tobool19.not = icmp eq i32 %perm, 0
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %sw.bb18
  %scancode22 = bitcast i64* %tmp to i32*
  %6 = load i32, i32* %scancode22, align 8
  %keycode23 = getelementptr inbounds %struct.kbkeycode, %struct.kbkeycode* %tmpcast, i64 0, i32 1
  %7 = load i32, i32* %keycode23, align 4
  %call24 = call fastcc i32 @setkeycode(i32 noundef %6, i32 noundef %7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end, %sw.bb, %if.then2, %if.then5, %sw.bb18, %entry
  %retval.0 = phi i32 [ -14, %entry ], [ -1, %sw.bb18 ], [ 0, %if.end ], [ %call24, %if.end21 ], [ %call1, %sw.bb ], [ %5, %if.then5 ], [ -14, %if.then2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @getkeycode(i32 noundef %scancode) unnamed_addr #0 {
entry:
  %scancode.addr = alloca i32, align 4
  %d = alloca %struct.getset_keycode_data, align 4
  store i32 %scancode, i32* %scancode.addr, align 4
  %0 = getelementptr inbounds %struct.getset_keycode_data, %struct.getset_keycode_data* %d, i64 0, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %0) #15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 40, i1 false)
  %1 = getelementptr inbounds %struct.getset_keycode_data, %struct.getset_keycode_data* %d, i64 0, i32 0, i32 1
  store i8 4, i8* %1, align 1
  %2 = getelementptr inbounds %struct.getset_keycode_data, %struct.getset_keycode_data* %d, i64 0, i32 1
  store i32 -19, i32* %2, align 4
  %arraydecay = getelementptr inbounds %struct.getset_keycode_data, %struct.getset_keycode_data* %d, i64 0, i32 0, i32 4, i64 0
  %3 = bitcast i32* %scancode.addr to i8*
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef nonnull %3, i64 noundef 4) #14
  %call2 = call i32 @input_handler_for_each_handle(%struct.input_handler* noundef nonnull @kbd_handler, i8* noundef nonnull %0, i32 (%struct.input_handle*, i8*)* noundef nonnull @getkeycode_helper) #14
  %4 = load i32, i32* %2, align 4
  %tobool.not = icmp eq i32 %4, 0
  %keycode = getelementptr inbounds %struct.getset_keycode_data, %struct.getset_keycode_data* %d, i64 0, i32 0, i32 3
  %5 = load i32, i32* %keycode, align 4
  %cond = select i1 %tobool.not, i32 %5, i32 %4
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %0) #15
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @setkeycode(i32 noundef %scancode, i32 noundef %keycode) unnamed_addr #0 {
entry:
  %scancode.addr = alloca i32, align 4
  %d = alloca %struct.getset_keycode_data, align 4
  store i32 %scancode, i32* %scancode.addr, align 4
  %0 = getelementptr inbounds %struct.getset_keycode_data, %struct.getset_keycode_data* %d, i64 0, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 44, i8* nonnull %0) #15
  %len = getelementptr inbounds %struct.getset_keycode_data, %struct.getset_keycode_data* %d, i64 0, i32 0, i32 1
  %1 = getelementptr inbounds %struct.getset_keycode_data, %struct.getset_keycode_data* %d, i64 0, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* noundef align 4 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  store i8 4, i8* %len, align 1
  %keycode1 = getelementptr inbounds %struct.getset_keycode_data, %struct.getset_keycode_data* %d, i64 0, i32 0, i32 3
  store i32 %keycode, i32* %keycode1, align 4
  %error = getelementptr inbounds %struct.getset_keycode_data, %struct.getset_keycode_data* %d, i64 0, i32 1
  store i32 -19, i32* %error, align 4
  %arraydecay = getelementptr inbounds %struct.getset_keycode_data, %struct.getset_keycode_data* %d, i64 0, i32 0, i32 4, i64 0
  %2 = bitcast i32* %scancode.addr to i8*
  %call = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef nonnull %2, i64 noundef 4) #14
  %call5 = call i32 @input_handler_for_each_handle(%struct.input_handler* noundef nonnull @kbd_handler, i8* noundef nonnull %0, i32 (%struct.input_handle*, i8*)* noundef nonnull @setkeycode_helper) #14
  %3 = load i32, i32* %error, align 4
  call void @llvm.lifetime.end.p0i8(i64 44, i8* nonnull %0) #15
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vt_do_kdsk_ioctl(i32 noundef %cmd, %struct.kbentry* noundef %user_kbe, i32 noundef %perm, i32 noundef %console) local_unnamed_addr #0 {
entry:
  %kbe = alloca i32, align 4, !annotation !19
  %tmpcast = bitcast i32* %kbe to %struct.kbentry*, !annotation !19
  %idxprom = zext i32 %console to i64
  %0 = bitcast i32* %kbe to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #15
  store i32 0, i32* %kbe, align 4, !annotation !19
  %1 = getelementptr %struct.kbentry, %struct.kbentry* %user_kbe, i64 0, i32 0
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1, i64 noundef 4) #14
  %tobool.not = icmp eq i64 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %cmd, label %cleanup [
    i32 19270, label %sw.bb
    i32 19271, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end
  %kb_value = getelementptr inbounds %struct.kbentry, %struct.kbentry* %user_kbe, i64 0, i32 2
  %2 = bitcast i16* %kb_value to i8*
  %call1 = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef 2) #16
  %tobool2.not = icmp eq i64 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %sw.bb
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %2) #16
  %3 = bitcast i8* %call4 to i16*
  %kbdmode = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 3
  %bf.load = load i8, i8* %kbdmode, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 7
  %kb_index = getelementptr inbounds %struct.kbentry, %struct.kbentry* %tmpcast, i64 0, i32 1
  %4 = load i8, i8* %kb_index, align 1
  %5 = load i8, i8* %0, align 4
  %call8 = call fastcc i16 @vt_kdgkbent(i8 noundef %bf.clear, i8 noundef %4, i8 noundef %5) #16
  %6 = call i32 asm sideeffect "1:\09sttrh\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i16 %call8, i16* %3, i32 -14, i32 0) #15, !srcloc !21
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %tobool16.not = icmp eq i32 %perm, 0
  br i1 %tobool16.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb15
  %call17 = call i1 @capable(i32 noundef 26) #14
  br i1 %call17, label %if.end19, label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %kbdmode20 = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 3
  %bf.load21 = load i8, i8* %kbdmode20, align 1
  %bf.lshr22 = lshr i8 %bf.load21, 4
  %bf.clear23 = and i8 %bf.lshr22, 7
  %kb_index24 = getelementptr inbounds %struct.kbentry, %struct.kbentry* %tmpcast, i64 0, i32 1
  %7 = load i8, i8* %kb_index24, align 1
  %8 = load i8, i8* %0, align 4
  %kb_value26 = getelementptr inbounds %struct.kbentry, %struct.kbentry* %tmpcast, i64 0, i32 2
  %9 = load i16, i16* %kb_value26, align 2
  %call27 = call fastcc i32 @vt_kdskbent(i8 noundef %bf.clear23, i8 noundef %7, i8 noundef %8, i16 noundef %9) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb15, %lor.lhs.false, %if.then3, %sw.bb, %entry, %if.end19
  %retval.0 = phi i32 [ %call27, %if.end19 ], [ -14, %entry ], [ %6, %if.then3 ], [ -14, %sw.bb ], [ -1, %lor.lhs.false ], [ -1, %sw.bb15 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #15
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i16 @vt_kdgkbent(i8 noundef %kbdmode, i8 noundef %idx, i8 noundef %map) unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  %idxprom = zext i8 %map to i64
  %arrayidx = getelementptr [256 x i16*], [256 x i16*]* @key_maps, i64 0, i64 %idxprom
  %0 = load i16*, i16** %arrayidx, align 8
  %tobool.not = icmp eq i16* %0, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %idxprom5 = zext i8 %idx to i64
  %arrayidx6 = getelementptr i16, i16* %0, i64 %idxprom5
  %1 = load i16, i16* %arrayidx6, align 2
  %2 = xor i16 %1, -4096
  %cmp10.not = icmp eq i8 %kbdmode, 3
  br i1 %cmp10.not, label %if.end19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %cmp13 = icmp ugt i16 %2, 3839
  %spec.store.select = select i1 %cmp13, i16 512, i16 %2
  br label %if.end19

if.else:                                          ; preds = %entry
  %tobool17.not = icmp eq i8 %idx, 0
  %conv18 = select i1 %tobool17.not, i16 639, i16 512
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %if.then, %if.else
  %val.0 = phi i16 [ %spec.store.select, %land.lhs.true ], [ %2, %if.then ], [ %conv18, %if.else ]
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  ret i16 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vt_kdskbent(i8 noundef %kbdmode, i8 noundef %idx, i8 noundef %map, i16 noundef %val) unnamed_addr #0 {
entry:
  %tobool = icmp eq i8 %idx, 0
  %conv = zext i16 %val to i32
  %cmp = icmp eq i16 %val, 639
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %do.body2, label %if.end21

do.body2:                                         ; preds = %entry
  %call5 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  %idxprom = zext i8 %map to i64
  %arrayidx = getelementptr [256 x i16*], [256 x i16*]* @key_maps, i64 0, i64 %idxprom
  %0 = load i16*, i16** %arrayidx, align 8
  %tobool9 = icmp ne i8 %map, 0
  %tobool11 = icmp ne i16* %0, null
  %or.cond125 = select i1 %tobool9, i1 %tobool11, i1 false
  br i1 %or.cond125, label %if.then12, label %if.end20

if.then12:                                        ; preds = %do.body2
  store i16* null, i16** %arrayidx, align 8
  %1 = load i16, i16* %0, align 2
  %cmp17 = icmp eq i16 %1, -3458
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then12
  %2 = bitcast i16* %0 to i8*
  call void @kfree(i8* noundef nonnull %2) #14
  %3 = load i32, i32* @keymap_count, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* @keymap_count, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.then19, %do.body2
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call5) #14
  br label %cleanup121

if.end21:                                         ; preds = %entry
  %4 = lshr i32 %conv, 8
  %cmp23 = icmp ult i16 %val, 3840
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  %and = and i32 %conv, 255
  %idxprom29 = zext i32 %4 to i64
  %arrayidx30 = getelementptr [15 x i8], [15 x i8]* @max_vals, i64 0, i64 %idxprom29
  %5 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %5 to i32
  %cmp32 = icmp ugt i32 %and, %conv31
  %brmerge170 = or i1 %tobool, %cmp32
  %.mux171 = select i1 %cmp32, i32 -22, i32 0
  br i1 %brmerge170, label %cleanup121, label %if.end44

if.else:                                          ; preds = %if.end21
  %cmp37.not = icmp ne i8 %kbdmode, 3
  %brmerge = or i1 %cmp37.not, %tobool
  %.mux = select i1 %cmp37.not, i32 -22, i32 0
  br i1 %brmerge, label %cleanup121, label %if.end44

if.end44:                                         ; preds = %if.then25, %if.else
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 9), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %6, i32 noundef 3264) #14
  %7 = bitcast i8* %call.i.i to i16*
  %tobool46.not = icmp eq i8* %call.i.i, null
  br i1 %tobool46.not, label %cleanup121, label %do.body50

do.body50:                                        ; preds = %if.end44
  %call57 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  %idxprom62 = zext i8 %map to i64
  %arrayidx63 = getelementptr [256 x i16*], [256 x i16*]* @key_maps, i64 0, i64 %idxprom62
  %8 = load i16*, i16** %arrayidx63, align 8
  %cmp64 = icmp eq i16* %8, null
  br i1 %cmp64, label %if.then66, label %if.else81

if.then66:                                        ; preds = %do.body50
  %9 = load i32, i32* @keymap_count, align 4
  %cmp67 = icmp ugt i32 %9, 255
  br i1 %cmp67, label %land.lhs.true69, label %if.end72

land.lhs.true69:                                  ; preds = %if.then66
  %call70 = call i1 @capable(i32 noundef 24) #14
  br i1 %call70, label %if.end72, label %cleanup

if.end72:                                         ; preds = %land.lhs.true69, %if.then66
  %10 = bitcast i16** %arrayidx63 to i8**
  store i8* %call.i.i, i8** %10, align 8
  store i16 -3458, i16* %7, align 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %if.end72
  %index = phi i64 [ 0, %if.end72 ], [ %index.next, %vector.body ]
  %offset.idx = or i64 %index, 1
  %induction174 = add i64 %index, 2
  %11 = getelementptr i16, i16* %7, i64 %offset.idx
  %12 = getelementptr i16, i16* %7, i64 %induction174
  store i16 -3584, i16* %11, align 2
  store i16 -3584, i16* %12, align 4
  %index.next = add nuw i64 %index, 2
  %13 = icmp eq i64 %index.next, 254
  br i1 %13, label %for.body, label %vector.body, !llvm.loop !22

for.body:                                         ; preds = %vector.body
  %arrayidx79 = getelementptr i8, i8* %call.i.i, i64 510
  %14 = bitcast i8* %arrayidx79 to i16*
  store i16 -3584, i16* %14, align 2
  %15 = load i32, i32* @keymap_count, align 4
  %inc80 = add i32 %15, 1
  store i32 %inc80, i32* @keymap_count, align 4
  br label %if.end82

cleanup:                                          ; preds = %land.lhs.true69
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call57) #14
  call void @kfree(i8* noundef nonnull %call.i.i) #14
  br label %cleanup121

if.else81:                                        ; preds = %do.body50
  call void @kfree(i8* noundef nonnull %call.i.i) #14
  br label %if.end82

if.end82:                                         ; preds = %for.body, %if.else81
  %key_map.1 = phi i16* [ %8, %if.else81 ], [ %7, %for.body ]
  %idxprom83 = zext i8 %idx to i64
  %arrayidx84 = getelementptr i16, i16* %key_map.1, i64 %idxprom83
  %16 = load i16, i16* %arrayidx84, align 2
  %17 = xor i16 %16, -4096
  %cmp89 = icmp eq i16 %17, %val
  br i1 %cmp89, label %out, label %if.end92

if.end92:                                         ; preds = %if.end82
  %cmp94 = icmp eq i16 %17, 527
  %cmp97 = icmp eq i16 %val, 527
  %or.cond126 = or i1 %cmp97, %cmp94
  br i1 %or.cond126, label %land.lhs.true99, label %if.end102

land.lhs.true99:                                  ; preds = %if.end92
  %call100 = call i1 @capable(i32 noundef 21) #14
  br i1 %call100, label %if.end102, label %if.then101

if.then101:                                       ; preds = %land.lhs.true99
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call57) #14
  br label %cleanup121

if.end102:                                        ; preds = %if.end92, %land.lhs.true99
  %xor104 = xor i16 %val, -4096
  store i16 %xor104, i16* %arrayidx84, align 2
  %tobool108.not = icmp eq i8 %map, 0
  br i1 %tobool108.not, label %land.lhs.true109, label %out

land.lhs.true109:                                 ; preds = %if.end102
  %.mask = and i16 %17, -256
  %cmp112 = icmp eq i16 %.mask, 1792
  %cmp117 = icmp eq i32 %4, 7
  %or.cond167 = or i1 %cmp117, %cmp112
  br i1 %or.cond167, label %if.then119, label %out

if.then119:                                       ; preds = %land.lhs.true109
  call fastcc void @do_compute_shiftstate() #16
  br label %out

out:                                              ; preds = %land.lhs.true109, %if.end102, %if.then119, %if.end82
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call57) #14
  br label %cleanup121

cleanup121:                                       ; preds = %if.then25, %if.else, %cleanup, %if.end44, %out, %if.then101, %if.end20
  %retval.1 = phi i32 [ 0, %if.end20 ], [ 0, %out ], [ -1, %if.then101 ], [ -1, %cleanup ], [ %.mux171, %if.then25 ], [ %.mux, %if.else ], [ -12, %if.end44 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vt_do_kdgkb_ioctl(i32 noundef %cmd, %struct.kbsentry* noundef %user_kdgkb, i32 noundef %perm) local_unnamed_addr #0 {
entry:
  %kb_func1 = getelementptr inbounds %struct.kbsentry, %struct.kbsentry* %user_kdgkb, i64 0, i32 0
  %call = call fastcc i64 @__range_ok(i8* noundef %kb_func1, i64 noundef 1) #16
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup73, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %kb_func1) #16
  %0 = call { i32, i64 } asm sideeffect "1:\09ldtrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup, \22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,=&r,r,i,0"(i8* %call2, i32 -14, i32 0) #15, !srcloc !24
  %asmresult = extractvalue { i32, i64 } %0, 0
  %asmresult6 = extractvalue { i32, i64 } %0, 1
  %phi.cmp = icmp eq i32 %asmresult, 0
  %phi.cast = and i64 %asmresult6, 255
  br i1 %phi.cmp, label %if.end14, label %cleanup73

if.end14:                                         ; preds = %if.end
  %call17 = call fastcc i64 @array_index_mask_nospec(i64 noundef %phi.cast) #16
  %and = and i64 %call17, %phi.cast
  %conv26 = trunc i64 %and to i8
  switch i32 %cmd, label %sw.epilog [
    i32 19272, label %sw.bb
    i32 19273, label %sw.bb46
  ]

sw.bb:                                            ; preds = %if.end14
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 9), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %1, i32 noundef 3264) #14
  %tobool28.not = icmp eq i8* %call.i.i, null
  br i1 %tobool28.not, label %cleanup73, label %do.body32

do.body32:                                        ; preds = %sw.bb
  %call36 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @func_buf_lock, i64 0, i32 0, i32 0)) #16
  %arrayidx = getelementptr [256 x i8*], [256 x i8*]* @func_table, i64 0, i64 %and
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool41.not = icmp eq i8* %2, null
  %cond = select i1 %tobool41.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %2
  %call42 = call i64 @strlcpy(i8* noundef nonnull %call.i.i, i8* noundef %cond, i64 noundef 512) #14
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @func_buf_lock, i64 0, i32 0, i32 0), i64 noundef %call36) #14
  %add = add i64 %call42, 1
  %cmp11.i.i = icmp ugt i64 %add, 2147483647
  br i1 %cmp11.i.i, label %check_copy_size.exit.i, label %if.then.i, !prof !11

check_copy_size.exit.i:                           ; preds = %do.body32
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/thread_info.h\22; .popsection; .long 14472b - 14470b; .short 216; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #15, !srcloc !12
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body32
  %arraydecay = getelementptr inbounds %struct.kbsentry, %struct.kbsentry* %user_kdgkb, i64 0, i32 1, i64 0
  %call2.i = call fastcc i64 @_copy_to_user(i8* noundef %arraydecay, i8* noundef nonnull %call.i.i, i64 noundef %add) #14
  %phi.cmp107 = icmp eq i64 %call2.i, 0
  %phi.sel = select i1 %phi.cmp107, i32 0, i32 -14
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end14
  %tobool47.not = icmp eq i32 %perm, 0
  br i1 %tobool47.not, label %cleanup73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb46
  %call48 = call i1 @capable(i32 noundef 26) #14
  br i1 %call48, label %if.end50, label %cleanup73

if.end50:                                         ; preds = %lor.lhs.false
  %arraydecay52 = getelementptr inbounds %struct.kbsentry, %struct.kbsentry* %user_kdgkb, i64 0, i32 1, i64 0
  %call53 = call i8* @strndup_user(i8* noundef %arraydecay52, i64 noundef 512) #14
  %call54 = call fastcc i1 @IS_ERR(i8* noundef %call53) #16
  br i1 %call54, label %if.then55, label %do.body60

if.then55:                                        ; preds = %if.end50
  %call56 = call fastcc i64 @PTR_ERR(i8* noundef %call53) #16
  %conv57 = trunc i64 %call56 to i32
  br label %cleanup73

do.body60:                                        ; preds = %if.end50
  %call67 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @func_buf_lock, i64 0, i32 0, i32 0)) #16
  %call72 = call fastcc i8* @vt_kdskbsent(i8* noundef %call53, i8 noundef %conv26) #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @func_buf_lock, i64 0, i32 0, i32 0), i64 noundef %call67) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %check_copy_size.exit.i, %if.then.i, %if.end14, %do.body60
  %ret.1 = phi i32 [ 0, %if.end14 ], [ 0, %do.body60 ], [ %phi.sel, %if.then.i ], [ -14, %check_copy_size.exit.i ]
  %kbs.0 = phi i8* [ null, %if.end14 ], [ %call72, %do.body60 ], [ %call.i.i, %if.then.i ], [ %call.i.i, %check_copy_size.exit.i ]
  call void @kfree(i8* noundef %kbs.0) #14
  br label %cleanup73

cleanup73:                                        ; preds = %sw.bb, %entry, %sw.bb46, %lor.lhs.false, %if.end, %sw.epilog, %if.then55
  %retval.1 = phi i32 [ %ret.1, %sw.epilog ], [ %conv57, %if.then55 ], [ -14, %if.end ], [ -1, %lor.lhs.false ], [ -1, %sw.bb46 ], [ -14, %entry ], [ -12, %sw.bb ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @array_index_mask_nospec(i64 noundef %idx) unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect "\09cmp\09$1, $2\0A\09sbc\09$0, xzr, xzr\0A", "=r,r,Ir,~{cc}"(i64 %idx, i64 256) #15, !srcloc !25
  call void asm sideeffect "hint #20", "~{memory}"() #15, !srcloc !26
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strndup_user(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @vt_kdskbsent(i8* noundef %kbs, i8 noundef %cur) unnamed_addr #0 {
entry:
  %idxprom = zext i8 %cur to i64
  %arrayidx = getelementptr [256 x i8*], [256 x i8*]* @func_table, i64 0, i64 %idxprom
  %0 = load i8*, i8** %arrayidx, align 8
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i64 @strlen(i8* noundef nonnull %0) #14
  %call1 = call i64 @strlen(i8* noundef %kbs) #14
  %cmp.not = icmp ult i64 %call, %call1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i8* @strcpy(i8* noundef nonnull %0, i8* noundef %kbs) #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  store i8* %kbs, i8** %arrayidx, align 8
  %conv = zext i8 %cur to i32
  %rem.i = and i32 %conv, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %div.i = lshr i32 %conv, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr [4 x i64], [4 x i64]* @vt_kdskbsent.is_kmalloc, i64 0, i64 %idx.ext.i
  %1 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %1, %shl.i
  store i64 %or.i, i64* %add.ptr.i, align 8
  %and.i = and i64 %1, %shl.i
  %cmp.i.not = icmp eq i64 %and.i, 0
  %cond = select i1 %cmp.i.not, i8* null, i8* %0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %kbs, %if.then ], [ %cond, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @vt_do_kdskled(i32 noundef %console, i32 noundef %cmd, i64 noundef %arg, i32 noundef %perm) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %console to i64
  %arrayidx = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom
  switch i32 %cmd, label %cleanup [
    i32 19300, label %do.body1
    i32 19301, label %sw.bb24
    i32 19249, label %sw.bb56
    i32 19250, label %sw.bb79
  ]

do.body1:                                         ; preds = %entry
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  %ledflagstate = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 2
  %bf.load = load i8, i8* %ledflagstate, align 1
  %default_ledflagstate = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 3
  %bf.load6 = load i8, i8* %default_ledflagstate, align 1
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  %0 = inttoptr i64 %arg to i8*
  %call11 = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 1) #16
  %tobool.not = icmp eq i64 %call11, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %do.body1
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 15
  %1 = shl i8 %bf.load6, 4
  %or110 = or i8 %bf.clear, %1
  %call12 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #16
  %2 = call i32 asm sideeffect "1:\09sttrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8 %or110, i8* %call12, i32 -14, i32 0) #15, !srcloc !27
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %tobool25.not = icmp eq i32 %perm, 0
  br i1 %tobool25.not, label %cleanup, label %if.end27

if.end27:                                         ; preds = %sw.bb24
  %and = and i64 %arg, -120
  %tobool28.not = icmp eq i64 %and, 0
  br i1 %tobool28.not, label %do.body32, label %cleanup

do.body32:                                        ; preds = %if.end27
  %call39 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0)) #16
  %3 = trunc i64 %arg to i8
  %ledflagstate46 = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 2
  %bf.load47 = load i8, i8* %ledflagstate46, align 1
  %conv45 = shl nuw i8 %3, 1
  %bf.shl = and i8 %conv45, 14
  %bf.clear48 = and i8 %bf.load47, -31
  %bf.set = or i8 %bf.clear48, %bf.shl
  store i8 %bf.set, i8* %ledflagstate46, align 1
  %4 = lshr i8 %3, 4
  %default_ledflagstate51 = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 3
  %bf.load52 = load i8, i8* %default_ledflagstate51, align 1
  %bf.clear54 = and i8 %bf.load52, -16
  %bf.set55 = or i8 %bf.clear54, %4
  store i8 %bf.set55, i8* %default_ledflagstate51, align 1
  call fastcc void @set_leds() #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0), i64 noundef %call39) #14
  br label %cleanup

sw.bb56:                                          ; preds = %entry
  %call57 = call fastcc i8 @getledstate() #16
  %5 = inttoptr i64 %arg to i8*
  %call61 = call fastcc i64 @__range_ok(i8* noundef %5, i64 noundef 1) #16
  %tobool62.not = icmp eq i64 %call61, 0
  br i1 %tobool62.not, label %cleanup, label %if.then63

if.then63:                                        ; preds = %sw.bb56
  %call64 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %5) #16
  %6 = call i32 asm sideeffect "1:\09sttrb\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i8 %call57, i8* %call64, i32 -14, i32 0) #15, !srcloc !28
  br label %cleanup

sw.bb79:                                          ; preds = %entry
  %tobool80.not = icmp eq i32 %perm, 0
  br i1 %tobool80.not, label %cleanup, label %if.end82

if.end82:                                         ; preds = %sw.bb79
  %conv83 = trunc i64 %arg to i32
  call void @setledstate(%struct.kbd_struct* noundef %arrayidx, i32 noundef %conv83) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb79, %if.then63, %sw.bb56, %if.end27, %sw.bb24, %if.then, %do.body1, %if.end82, %do.body32
  %retval.0 = phi i32 [ 0, %if.end82 ], [ 0, %do.body32 ], [ %2, %if.then ], [ -14, %do.body1 ], [ -1, %sw.bb24 ], [ -22, %if.end27 ], [ %6, %if.then63 ], [ -14, %sw.bb56 ], [ -1, %sw.bb79 ], [ -515, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8 @getledstate() unnamed_addr #4 {
entry:
  %0 = load i32, i32* @ledstate, align 4
  %conv = trunc i32 %0 to i8
  ret i8 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @vt_do_kdgkbmode(i32 noundef %console) local_unnamed_addr #4 {
entry:
  %idxprom = zext i32 %console to i64
  %kbdmode = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 3
  %bf.load = load i8, i8* %kbdmode, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 7
  %conv = zext i8 %bf.clear to i32
  %switch.tableidx = add nsw i32 %conv, -1
  %0 = icmp ult i32 %switch.tableidx, 4
  br i1 %0, label %switch.lookup, label %cleanup

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.vt_do_kdgkbmode, i64 0, i64 %1
  %switch.load = load i32, i32* %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %switch.lookup
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @vt_do_kdgkbmeta(i32 noundef %console) local_unnamed_addr #4 {
entry:
  %idxprom = zext i32 %console to i64
  %arrayidx = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom
  %call = call fastcc i32 @vc_kbd_mode(%struct.kbd_struct* noundef %arrayidx, i32 noundef 4) #16
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 3, i32 4
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @vc_kbd_mode(%struct.kbd_struct* nocapture noundef readonly %kbd, i32 noundef %flag) unnamed_addr #4 {
entry:
  %modeflags = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %kbd, i64 0, i32 4
  %bf.load = load i8, i8* %modeflags, align 1
  %bf.clear = and i8 %bf.load, 31
  %conv = zext i8 %bf.clear to i32
  %shr = lshr i32 %conv, %flag
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vt_reset_unicode(i32 noundef %console) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  %0 = load i32, i32* @default_utf8, align 4
  %tobool.not = icmp eq i32 %0, 0
  %conv5 = select i1 %tobool.not, i8 0, i8 48
  %idxprom = zext i32 %console to i64
  %kbdmode = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 3
  %bf.load = load i8, i8* %kbdmode, align 1
  %bf.clear = and i8 %bf.load, -113
  %bf.set = or i8 %bf.clear, %conv5
  store i8 %bf.set, i8* %kbdmode, align 1
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @vt_get_shift_state() local_unnamed_addr #4 {
entry:
  %0 = load i32, i32* @shift_state, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vt_reset_keyboard(i32 noundef %console) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %console to i64
  %arrayidx = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  call fastcc void @set_vc_kbd_mode(%struct.kbd_struct* noundef %arrayidx, i32 noundef 2) #16
  call fastcc void @clr_vc_kbd_mode(%struct.kbd_struct* noundef %arrayidx, i32 noundef 1) #16
  call fastcc void @clr_vc_kbd_mode(%struct.kbd_struct* noundef %arrayidx, i32 noundef 0) #16
  call fastcc void @clr_vc_kbd_mode(%struct.kbd_struct* noundef %arrayidx, i32 noundef 3) #16
  %lockstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %arrayidx, i64 0, i32 0
  store i8 0, i8* %lockstate, align 1
  %slockstate = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 1
  store i8 0, i8* %slockstate, align 1
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0)) #14
  %ledmode = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 2
  %bf.load = load i8, i8* %ledmode, align 1
  %default_ledflagstate = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom, i32 3
  %bf.load5 = load i8, i8* %default_ledflagstate, align 1
  %bf.clear6 = shl i8 %bf.load5, 1
  %bf.shl = and i8 %bf.clear6, 30
  %bf.clear8 = and i8 %bf.load, -32
  %bf.set9 = or i8 %bf.shl, %bf.clear8
  store i8 %bf.set9, i8* %ledmode, align 1
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0)) #14
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @vt_get_kbd_mode_bit(i32 noundef %console, i32 noundef %bit) local_unnamed_addr #4 {
entry:
  %idxprom = zext i32 %console to i64
  %arrayidx = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom
  %call = call fastcc i32 @vc_kbd_mode(%struct.kbd_struct* noundef %arrayidx, i32 noundef %bit) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vt_set_kbd_mode_bit(i32 noundef %console, i32 noundef %bit) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %console to i64
  %arrayidx = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  call fastcc void @set_vc_kbd_mode(%struct.kbd_struct* noundef %arrayidx, i32 noundef %bit) #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vt_clr_kbd_mode_bit(i32 noundef %console, i32 noundef %bit) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %console to i64
  %arrayidx = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #16
  call fastcc void @clr_vc_kbd_mode(%struct.kbd_struct* noundef %arrayidx, i32 noundef %bit) #16
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kd_nosound(%struct.timer_list* nocapture noundef readnone %unused) #0 {
entry:
  %call = call i32 @input_handler_for_each_handle(%struct.input_handler* noundef nonnull @kbd_handler, i8* noundef bitcast (i32* @kd_nosound.zero to i8*), i32 (%struct.input_handle*, i8*)* noundef nonnull @kd_sound_helper) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_inject_event(%struct.input_handle* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #16
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #14
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !29

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #14
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #15, !srcloc !30
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #15, !srcloc !31
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #16
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !11

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #15, !srcloc !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #8 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #15, !srcloc !33
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_first_bit() unnamed_addr #0 {
entry:
  %call5 = call i64 @_find_first_bit(i64* noundef getelementptr inbounds ([12 x i64], [12 x i64]* @key_down, i64 0, i64 0), i64 noundef 256) #14
  ret i64 %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @find_next_bit(i64* noundef %addr, i64 noundef %size, i64 noundef %offset) unnamed_addr #0 {
entry:
  %call12 = call i64 @_find_next_bit(i64* noundef %addr, i64* noundef null, i64 noundef %size, i64 noundef %offset, i64 noundef 0, i64 noundef 0) #14
  ret i64 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_first_bit(i64* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_find_next_bit(i64* noundef, i64* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #16
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !34
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #15, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #15, !srcloc !36
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kbd_event(%struct.input_handle* nocapture noundef readnone %handle, i32 noundef %event_type, i32 noundef %event_code, i32 noundef %value) #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #14
  %cmp3 = icmp eq i32 %event_type, 1
  %cmp6 = icmp ult i32 %event_code, 768
  %or.cond12 = and i1 %cmp3, %cmp6
  br i1 %or.cond12, label %if.then8, label %if.end11

if.then8:                                         ; preds = %entry
  call fastcc void @kbd_keycode(i32 noundef %event_code, i32 noundef %value) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kbd_event_lock, i64 0, i32 0, i32 0)) #14
  call fastcc void @tasklet_schedule() #16
  store i32 1, i32* @do_poke_blanked_console, align 4
  call void @schedule_console_callback() #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i1 @kbd_match(%struct.input_handler* nocapture noundef readnone %handler, %struct.input_dev* noundef %dev) #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %0 = load volatile i64, i64* %arraydecay, align 8
  %1 = and i64 %0, 262144
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %2 = load volatile i64, i64* %arraydecay, align 8
  %3 = and i64 %2, 2
  %tobool4.not = icmp eq i64 %3, 0
  br i1 %tobool4.not, label %if.end16, label %if.then5

if.then5:                                         ; preds = %if.end
  %arraydecay6 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 6, i64 0
  %call7 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay6, i64 noundef 256, i64 noundef 0) #16
  %cmp = icmp ult i64 %call7, 256
  br i1 %cmp, label %return, label %if.end9

if.end9:                                          ; preds = %if.then5
  %call12 = call fastcc i64 @find_next_bit(i64* noundef %arraydecay6, i64 noundef 507, i64 noundef 497) #16
  %cmp13 = icmp ult i64 %call12, 507
  br i1 %cmp13, label %return, label %if.end16

if.end16:                                         ; preds = %if.end9, %if.end
  br label %return

return:                                           ; preds = %if.end9, %if.then5, %entry, %if.end16
  %retval.0 = phi i1 [ false, %if.end16 ], [ true, %entry ], [ true, %if.then5 ], [ true, %if.end9 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kbd_connect(%struct.input_handler* noundef %handler, %struct.input_dev* noundef %dev, %struct.input_device_id* nocapture noundef readnone %id) #0 {
entry:
  %call = call fastcc i8* @kzalloc() #16
  %0 = bitcast i8* %call to %struct.input_handle*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %dev1 to %struct.input_dev**
  store %struct.input_dev* %dev, %struct.input_dev** %1, align 8
  %handler2 = getelementptr inbounds i8, i8* %call, i64 32
  %2 = bitcast i8* %handler2 to %struct.input_handler**
  store %struct.input_handler* %handler, %struct.input_handler** %2, align 8
  %name = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %name to i8**
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  %call3 = call i32 @input_register_handle(%struct.input_handle* noundef nonnull %0) #14
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %err_free_handle

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @input_open_device(%struct.input_handle* noundef nonnull %0) #14
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %err_unregister_handle

err_unregister_handle:                            ; preds = %if.end6
  call void @input_unregister_handle(%struct.input_handle* noundef nonnull %0) #14
  br label %err_free_handle

err_free_handle:                                  ; preds = %if.end, %err_unregister_handle
  %error.0 = phi i32 [ %call3, %if.end ], [ %call7, %err_unregister_handle ]
  call void @kfree(i8* noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry, %err_free_handle
  %retval.0 = phi i32 [ %error.0, %err_free_handle ], [ -12, %entry ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kbd_disconnect(%struct.input_handle* noundef %handle) #0 {
entry:
  call void @input_close_device(%struct.input_handle* noundef %handle) #14
  call void @input_unregister_handle(%struct.input_handle* noundef %handle) #14
  %0 = bitcast %struct.input_handle* %handle to i8*
  call void @kfree(i8* noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kbd_start(%struct.input_handle* noundef %handle) #0 {
entry:
  call fastcc void @tasklet_disable() #16
  %0 = load i32, i32* @ledstate, align 4
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @kbd_update_leds_helper(%struct.input_handle* noundef %handle, i8* noundef bitcast (i32* @ledstate to i8*)) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @tasklet_enable() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kbd_keycode(i32 noundef %keycode, i32 noundef %down) unnamed_addr #0 {
entry:
  %param = alloca %struct.keyboard_notifier_param, align 8
  %0 = load i32, i32* @fg_console, align 4
  %idxprom = sext i32 %0 to i64
  %d = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 0
  %1 = load %struct.vc_data*, %struct.vc_data** %d, align 8
  %2 = bitcast %struct.keyboard_notifier_param* %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #15
  %vc1 = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %param, i64 0, i32 0
  store %struct.vc_data* %1, %struct.vc_data** %vc1, align 8
  %down2 = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %param, i64 0, i32 1
  store i32 %down, i32* %down2, align 8
  %shift = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %param, i64 0, i32 2
  store i32 0, i32* %shift, align 4
  %ledstate = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %param, i64 0, i32 3
  store i32 0, i32* %ledstate, align 8
  %value = getelementptr inbounds %struct.keyboard_notifier_param, %struct.keyboard_notifier_param* %param, i64 0, i32 4
  store i32 %keycode, i32* %value, align 4
  %tty3 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 0, i32 1
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty3, align 8
  %tobool.not = icmp eq %struct.tty_struct* %3, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %driver_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i64 0, i32 30
  %4 = load i8*, i8** %driver_data, align 8
  %tobool4.not = icmp eq i8* %4, null
  br i1 %tobool4.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast i8** %driver_data to %struct.vc_data**
  store %struct.vc_data* %1, %struct.vc_data** %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %vc_num = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i64 0, i32 3
  %6 = load i16, i16* %vc_num, align 8
  %idxprom6 = zext i16 %6 to i64
  %arrayidx7 = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom6
  store %struct.kbd_struct* %arrayidx7, %struct.kbd_struct** @kbd, align 8
  %cmp = icmp eq i32 %down, 2
  %frombool8 = zext i1 %cmp to i8
  store i8 %frombool8, i8* @rep, align 4
  %kbdmode = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idxprom6, i32 3
  %bf.load = load i8, i8* %kbdmode, align 1
  %7 = and i8 %bf.load, 112
  %cmp9 = icmp eq i8 %7, 32
  br i1 %cmp9, label %if.then16, label %if.end30

if.then16:                                        ; preds = %if.end
  %tobool17.not = icmp eq i32 %down, 0
  %conv18 = select i1 %tobool17.not, i8 -128, i8 0
  %call = call fastcc i32 @emulate_raw(%struct.vc_data* noundef %1, i32 noundef %keycode, i8 noundef %conv18) #16
  %tobool19 = icmp ne i32 %call, 0
  %cmp21 = icmp ult i32 %keycode, 256
  %or.cond216 = and i1 %cmp21, %tobool19
  br i1 %or.cond216, label %land.lhs.true23, label %if.end30

land.lhs.true23:                                  ; preds = %if.then16
  %call24 = call i32 @__printk_ratelimit(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.kbd_keycode, i64 0, i64 0)) #14
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end30, label %do.end

do.end:                                           ; preds = %land.lhs.true23
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 noundef %keycode) #17
  br label %if.end30

if.end30:                                         ; preds = %if.then16, %do.end, %land.lhs.true23, %if.end
  %8 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %kbdmode31 = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %8, i64 0, i32 3
  %bf.load32 = load i8, i8* %kbdmode31, align 1
  %9 = and i8 %bf.load32, 112
  %cmp36 = icmp eq i8 %9, 16
  br i1 %cmp36, label %if.then38, label %if.end57

if.then38:                                        ; preds = %if.end30
  %cmp39 = icmp ult i32 %keycode, 128
  %tobool42.not = icmp eq i32 %down, 0
  %shl45 = select i1 %tobool42.not, i32 128, i32 0
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then38
  %or = or i32 %shl45, %keycode
  br label %if.end57.sink.split

if.else:                                          ; preds = %if.then38
  call fastcc void @put_queue(%struct.vc_data* noundef %1, i32 noundef %shl45) #16
  %shr = lshr i32 %keycode, 7
  %10 = or i32 %shr, 128
  call fastcc void @put_queue(%struct.vc_data* noundef %1, i32 noundef %10) #16
  %11 = or i32 %keycode, 128
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.else, %if.then41
  %or.sink = phi i32 [ %or, %if.then41 ], [ %11, %if.else ]
  call fastcc void @put_queue(%struct.vc_data* noundef %1, i32 noundef %or.sink) #16
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %if.end30
  %raw_mode.0.off0 = phi i1 [ %cmp9, %if.end30 ], [ true, %if.end57.sink.split ]
  %conv58 = zext i32 %keycode to i64
  %tobool59 = icmp ne i32 %down, 0
  br i1 %tobool59, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end57
  call fastcc void @set_bit(i64 noundef %conv58) #14
  br label %assign_bit.exit

if.else.i:                                        ; preds = %if.end57
  call fastcc void @clear_bit(i64 noundef %conv58) #14
  br label %assign_bit.exit

assign_bit.exit:                                  ; preds = %if.then.i, %if.else.i
  %12 = load i8, i8* @rep, align 4, !range !37
  %tobool60.not = icmp eq i8 %12, 0
  br i1 %tobool60.not, label %if.end72, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %assign_bit.exit
  %13 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %call63 = call fastcc i32 @vc_kbd_mode(%struct.kbd_struct* noundef %13, i32 noundef 2) #16
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true62
  br i1 %tobool.not, label %if.end72, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %lor.lhs.false
  %c_lflag = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i64 0, i32 13, i32 3
  %14 = load i32, i32* %c_lflag, align 4
  %and = and i32 %14, 8
  %tobool67.not = icmp eq i32 %and, 0
  br i1 %tobool67.not, label %land.lhs.true68, label %if.end72

land.lhs.true68:                                  ; preds = %land.lhs.true66
  %call69 = call i32 @tty_chars_in_buffer(%struct.tty_struct* noundef nonnull %3) #14
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %cleanup

if.end72:                                         ; preds = %land.lhs.true68, %land.lhs.true66, %lor.lhs.false, %assign_bit.exit
  %15 = load i32, i32* @shift_state, align 4
  %16 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %slockstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %16, i64 0, i32 1
  %17 = load i8, i8* %slockstate, align 1
  %conv73 = zext i8 %17 to i32
  %or74 = or i32 %15, %conv73
  %lockstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %16, i64 0, i32 0
  %18 = load i8, i8* %lockstate, align 1
  %conv75 = zext i8 %18 to i32
  %xor = xor i32 %or74, %conv75
  store i32 %xor, i32* %shift, align 4
  %ledflagstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %16, i64 0, i32 2
  %bf.load77 = load i8, i8* %ledflagstate, align 1
  %bf.lshr78 = lshr i8 %bf.load77, 1
  %bf.clear79 = and i8 %bf.lshr78, 15
  %conv80 = zext i8 %bf.clear79 to i32
  store i32 %conv80, i32* %ledstate, align 8
  %idxprom82 = sext i32 %xor to i64
  %arrayidx83 = getelementptr [256 x i16*], [256 x i16*]* @key_maps, i64 0, i64 %idxprom82
  %19 = load i16*, i16** %arrayidx83, align 8
  %call84 = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @keyboard_notifier_list, i64 noundef 1, i8* noundef nonnull %2) #14
  %cmp85 = icmp ne i32 %call84, 32769
  %tobool88 = icmp ne i16* %19, null
  %or.cond = select i1 %cmp85, i1 %tobool88, i1 false
  br i1 %or.cond, label %if.end92, label %if.then89

if.then89:                                        ; preds = %if.end72
  %call90 = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @keyboard_notifier_list, i64 noundef 2, i8* noundef nonnull %2) #14
  call fastcc void @do_compute_shiftstate() #16
  %20 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %slockstate91 = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %20, i64 0, i32 1
  store i8 0, i8* %slockstate91, align 1
  br label %cleanup

if.end92:                                         ; preds = %if.end72
  %cmp93 = icmp ult i32 %keycode, 256
  br i1 %cmp93, label %if.then95, label %if.else98

if.then95:                                        ; preds = %if.end92
  %arrayidx97 = getelementptr i16, i16* %19, i64 %conv58
  %21 = load i16, i16* %arrayidx97, align 2
  br label %if.end110

if.else98:                                        ; preds = %if.end92
  %22 = add i32 %keycode, -497
  %23 = icmp ult i32 %22, 8
  br i1 %23, label %if.then104, label %cleanup

if.then104:                                       ; preds = %if.else98
  %24 = trunc i32 %keycode to i16
  %25 = add nsw i16 %24, -496
  %26 = or i16 %25, 3584
  %conv107 = xor i16 %26, -4096
  br label %if.end110

if.end110:                                        ; preds = %if.then104, %if.then95
  %keysym.0 = phi i16 [ %21, %if.then95 ], [ %conv107, %if.then104 ]
  %conv111 = zext i16 %keysym.0 to i32
  %cmp115 = icmp ult i16 %keysym.0, -4096
  br i1 %cmp115, label %if.then117, label %if.end135

if.then117:                                       ; preds = %if.end110
  store i32 %conv111, i32* %value, align 4
  %call120 = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @keyboard_notifier_list, i64 noundef 3, i8* noundef nonnull %2) #14
  %cmp121 = icmp ne i32 %call120, 32769
  %or.cond218 = and i1 %tobool59, %cmp121
  %or.cond218.not = xor i1 %or.cond218, true
  %brmerge = select i1 %or.cond218.not, i1 true, i1 %raw_mode.0.off0
  br i1 %brmerge, label %cleanup, label %if.then127

if.then127:                                       ; preds = %if.then117
  call fastcc void @k_unicode(%struct.vc_data* noundef %1, i32 noundef %conv111, i8 noundef 0) #16
  br label %cleanup

if.end135:                                        ; preds = %if.end110
  %27 = lshr i16 %keysym.0, 8
  %conv113 = trunc i16 %27 to i8
  %sub137 = add nsw i8 %conv113, 16
  %cmp140 = icmp eq i8 %sub137, 11
  %extract.t4 = trunc i16 %keysym.0 to i8
  br i1 %cmp140, label %if.then142, label %if.end155

if.then142:                                       ; preds = %if.end135
  %28 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %call143 = call fastcc i32 @vc_kbd_led(%struct.kbd_struct* noundef %28, i32 noundef 2) #16
  %tobool144.not = icmp eq i32 %call143, 0
  %extract.t = trunc i16 %keysym.0 to i8
  br i1 %tobool144.not, label %if.end155, label %if.then145

if.then145:                                       ; preds = %if.then142
  %xor147 = xor i64 %idxprom82, 1
  %arrayidx148 = getelementptr [256 x i16*], [256 x i16*]* @key_maps, i64 0, i64 %xor147
  %29 = load i16*, i16** %arrayidx148, align 8
  %tobool149.not = icmp eq i16* %29, null
  %extract.t3 = trunc i16 %keysym.0 to i8
  br i1 %tobool149.not, label %if.end155, label %if.then150

if.then150:                                       ; preds = %if.then145
  %arrayidx152 = getelementptr i16, i16* %29, i64 %conv58
  %30 = load i16, i16* %arrayidx152, align 2
  %.pre = zext i16 %30 to i32
  %extract.t2 = trunc i16 %30 to i8
  br label %if.end155

if.end155:                                        ; preds = %if.then142, %if.then150, %if.then145, %if.end135
  %conv156.pre-phi = phi i32 [ %conv111, %if.then142 ], [ %.pre, %if.then150 ], [ %conv111, %if.then145 ], [ %conv111, %if.end135 ]
  %keysym.1.off0 = phi i8 [ %extract.t, %if.then142 ], [ %extract.t2, %if.then150 ], [ %extract.t3, %if.then145 ], [ %extract.t4, %if.end135 ]
  %type.0 = phi i8 [ 0, %if.then142 ], [ 0, %if.then150 ], [ 0, %if.then145 ], [ %sub137, %if.end135 ]
  store i32 %conv156.pre-phi, i32* %value, align 4
  %call158 = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @keyboard_notifier_list, i64 noundef 4, i8* noundef nonnull %2) #14
  %cmp159 = icmp eq i32 %call158, 32769
  br i1 %cmp159, label %cleanup, label %if.end162

if.end162:                                        ; preds = %if.end155
  br i1 %raw_mode.0.off0, label %land.lhs.true173, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %if.end162
  %31 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %kbdmode166 = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %31, i64 0, i32 3
  %bf.load167 = load i8, i8* %kbdmode166, align 1
  %bf.load167.fr = freeze i8 %bf.load167
  %32 = and i8 %bf.load167.fr, 112
  %cmp171.not = icmp eq i8 %32, 64
  br i1 %cmp171.not, label %switch.early.test, label %if.end182

switch.early.test:                                ; preds = %lor.lhs.false165
  switch i8 %type.0, label %cleanup [
    i8 7, label %if.end182
    i8 2, label %if.end182
  ]

land.lhs.true173:                                 ; preds = %if.end162
  switch i8 %type.0, label %cleanup [
    i8 2, label %if.end182
    i8 7, label %if.end182
  ]

if.end182:                                        ; preds = %switch.early.test, %switch.early.test, %lor.lhs.false165, %land.lhs.true173, %land.lhs.true173
  %idxprom183 = zext i8 %type.0 to i64
  %arrayidx184 = getelementptr [16 x void (%struct.vc_data*, i8, i8)*], [16 x void (%struct.vc_data*, i8, i8)*]* @k_handler, i64 0, i64 %idxprom183
  %33 = load void (%struct.vc_data*, i8, i8)*, void (%struct.vc_data*, i8, i8)** %arrayidx184, align 8
  %lnot189 = xor i1 %tobool59, true
  %conv191 = zext i1 %lnot189 to i8
  call void %33(%struct.vc_data* noundef %1, i8 noundef %keysym.1.off0, i8 noundef %conv191) #14
  %34 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %ledflagstate192 = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %34, i64 0, i32 2
  %bf.load193 = load i8, i8* %ledflagstate192, align 1
  %bf.lshr194 = lshr i8 %bf.load193, 1
  %bf.clear195 = and i8 %bf.lshr194, 15
  %conv196 = zext i8 %bf.clear195 to i32
  store i32 %conv196, i32* %ledstate, align 8
  %call198 = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @keyboard_notifier_list, i64 noundef 5, i8* noundef nonnull %2) #14
  %cmp200.not = icmp eq i8 %type.0, 12
  br i1 %cmp200.not, label %cleanup, label %if.then202

if.then202:                                       ; preds = %if.end182
  %35 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %slockstate203 = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %35, i64 0, i32 1
  store i8 0, i8* %slockstate203, align 1
  br label %cleanup

cleanup:                                          ; preds = %switch.early.test, %if.end182, %if.then202, %land.lhs.true173, %if.end155, %if.then127, %if.then117, %if.else98, %land.lhs.true62, %land.lhs.true68, %if.then89
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_console_callback() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %ch) unnamed_addr #0 {
entry:
  %port = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 0
  %conv = trunc i32 %ch to i8
  call fastcc void @tty_insert_flip_char(%struct.tty_port* noundef %port, i8 noundef %conv, i8 noundef 0) #16
  call void @tty_schedule_flip(%struct.tty_port* noundef %port) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_insert_flip_char(%struct.tty_port* noundef %port, i8 noundef %ch, i8 noundef %flag) unnamed_addr #0 {
entry:
  %tail = getelementptr inbounds %struct.tty_port, %struct.tty_port* %port, i64 0, i32 0, i32 8
  %0 = load %struct.tty_buffer*, %struct.tty_buffer** %tail, align 8
  %flags = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 5
  %1 = load i32, i32* %flags, align 8
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  %cmp = icmp ne i8 %flag, 0
  %2 = and i1 %cmp, %tobool
  br i1 %2, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %used = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 1
  %3 = load i32, i32* %used, align 8
  %size = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %0, i64 0, i32 2
  %4 = load i32, i32* %size, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %if.then, label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %tobool7.not.not = icmp eq i32 %and, 0
  br i1 %tobool7.not.not, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %call = call fastcc i8* @flag_buf_ptr(%struct.tty_buffer* noundef %0, i32 noundef %3) #16
  store i8 %flag, i8* %call, align 1
  %.pre = load i32, i32* %used, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %5 = phi i32 [ %.pre, %if.then8 ], [ %3, %if.then ]
  %inc = add i32 %5, 1
  store i32 %inc, i32* %used, align 8
  %call11 = call fastcc i8* @char_buf_ptr(%struct.tty_buffer* noundef %0, i32 noundef %5) #16
  store i8 %ch, i8* %call11, align 1
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true, %entry
  %call13 = call i32 @__tty_insert_flip_char(%struct.tty_port* noundef %port, i8 noundef %ch, i8 noundef %flag) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_schedule_flip(%struct.tty_port* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @flag_buf_ptr(%struct.tty_buffer* noundef readonly %b, i32 noundef %ofs) unnamed_addr #4 {
entry:
  %call = call fastcc i8* @char_buf_ptr(%struct.tty_buffer* noundef %b, i32 noundef %ofs) #16
  %size = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %b, i64 0, i32 2
  %0 = load i32, i32* %size, align 4
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %idx.ext
  ret i8* %add.ptr
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @char_buf_ptr(%struct.tty_buffer* noundef readnone %b, i32 noundef %ofs) unnamed_addr #7 {
entry:
  %arraydecay = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %b, i64 0, i32 6, i64 0
  %0 = bitcast i64* %arraydecay to i8*
  %idx.ext = sext i32 %ofs to i64
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext
  ret i8* %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(%struct.tty_port* noundef, i8 noundef, i8 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @emulate_raw(%struct.vc_data* noundef %vc, i32 noundef %keycode, i8 noundef %up_flag) unnamed_addr #0 {
entry:
  %cmp = icmp ugt i32 %keycode, 127
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv = zext i8 %up_flag to i32
  %or = or i32 %conv, %keycode
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %or) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(i8* noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_chars_in_buffer(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @k_unicode(%struct.vc_data* noundef %vc, i32 noundef %value, i8 noundef %up_flag) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %if.end14

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @diacr, align 4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = call fastcc i32 @handle_diacr(%struct.vc_data* noundef %vc, i32 noundef %value) #16
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %value.addr.0 = phi i32 [ %call, %if.then2 ], [ %value, %if.end ]
  %.b22 = load i1, i1* @dead_key_next, align 1
  br i1 %.b22, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i1 false, i1* @dead_key_next, align 1
  store i32 %value.addr.0, i32* @diacr, align 4
  br label %if.end14

if.end6:                                          ; preds = %if.end3
  %1 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %kbdmode = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %1, i64 0, i32 3
  %bf.load = load i8, i8* %kbdmode, align 1
  %2 = and i8 %bf.load, 112
  %cmp = icmp eq i8 %2, 48
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call fastcc void @to_utf8(%struct.vc_data* noundef %vc, i32 noundef %value.addr.0) #16
  br label %if.end14

if.else:                                          ; preds = %if.end6
  %call9 = call i32 @conv_uni_to_8bit(i32 noundef %value.addr.0) #14
  %cmp10.not = icmp eq i32 %call9, -1
  br i1 %cmp10.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.else
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %call9) #16
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12, %entry, %if.then5, %if.then8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64 noundef %nr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr [12 x i64], [12 x i64]* @key_down, i64 0, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr) unnamed_addr #0 {
entry:
  %div.i = lshr i64 %nr, 6
  %idx.ext.i = and i64 %div.i, 67108863
  %add.ptr.i = getelementptr [12 x i64], [12 x i64]* @key_down, i64 0, i64 %idx.ext.i
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %add.ptr.i to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #15, !srcloc !38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #15, !srcloc !39
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @handle_diacr(%struct.vc_data* noundef %vc, i32 noundef %ch) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @diacr, align 4
  store i32 0, i32* @diacr, align 4
  %and = and i32 %0, -256
  %cmp = icmp eq i32 %and, 10240
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %1 = load i32, i32* @accent_table_size, align 4
  %cmp451.not = icmp eq i32 %1, 0
  br i1 %cmp451.not, label %if.end13, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body

if.then:                                          ; preds = %entry
  %and1 = and i32 %ch, -256
  %cmp2 = icmp eq i32 %and1, 10240
  br i1 %cmp2, label %if.then3, label %if.end13

if.then3:                                         ; preds = %if.then
  %or = or i32 %0, %ch
  br label %cleanup

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %diacr = getelementptr [0 x %struct.kbdiacruc], [0 x %struct.kbdiacruc]* @accent_table, i64 0, i64 %indvars.iv, i32 0
  %2 = load i32, i32* %diacr, align 4
  %cmp5 = icmp eq i32 %2, %0
  br i1 %cmp5, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %base = getelementptr [0 x %struct.kbdiacruc], [0 x %struct.kbdiacruc]* @accent_table, i64 0, i64 %indvars.iv, i32 1
  %3 = load i32, i32* %base, align 4
  %cmp8 = icmp eq i32 %3, %ch
  br i1 %cmp8, label %if.then9, label %for.inc

if.then9:                                         ; preds = %land.lhs.true
  %idxprom.le = and i64 %indvars.iv, 4294967295
  %result = getelementptr [0 x %struct.kbdiacruc], [0 x %struct.kbdiacruc]* @accent_table, i64 0, i64 %idxprom.le, i32 2
  %4 = load i32, i32* %result, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end13, label %for.body

if.end13:                                         ; preds = %for.inc, %for.cond.preheader, %if.then
  switch i32 %ch, label %lor.lhs.false16 [
    i32 10240, label %cleanup
    i32 32, label %cleanup
  ]

lor.lhs.false16:                                  ; preds = %if.end13
  %cmp17 = icmp eq i32 %0, %ch
  br i1 %cmp17, label %cleanup, label %if.end19

if.end19:                                         ; preds = %lor.lhs.false16
  %5 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %kbdmode = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %5, i64 0, i32 3
  %bf.load = load i8, i8* %kbdmode, align 1
  %6 = and i8 %bf.load, 112
  %cmp20 = icmp eq i8 %6, 48
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.end19
  call fastcc void @to_utf8(%struct.vc_data* noundef %vc, i32 noundef %0) #16
  br label %cleanup

if.else23:                                        ; preds = %if.end19
  %call = call i32 @conv_uni_to_8bit(i32 noundef %0) #14
  %cmp24.not = icmp eq i32 %call, -1
  br i1 %cmp24.not, label %cleanup, label %if.then26

if.then26:                                        ; preds = %if.else23
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.then26, %if.else23, %lor.lhs.false16, %if.end13, %if.end13, %if.then9, %if.then3
  %retval.0 = phi i32 [ %or, %if.then3 ], [ %4, %if.then9 ], [ %0, %if.end13 ], [ %0, %if.end13 ], [ %ch, %lor.lhs.false16 ], [ %ch, %if.else23 ], [ %ch, %if.then26 ], [ %ch, %if.then22 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @to_utf8(%struct.vc_data* noundef %vc, i32 noundef %c) unnamed_addr #0 {
entry:
  %cmp = icmp ult i32 %c, 128
  br i1 %cmp, label %if.end36.sink.split, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp ult i32 %c, 2048
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %shr = lshr i32 %c, 6
  %or = or i32 %shr, 192
  br label %if.end36.sink.split.sink.split

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %c, 65536
  br i1 %cmp5, label %if.then6, label %if.else20

if.then6:                                         ; preds = %if.else4
  %0 = and i32 %c, -2048
  %1 = icmp eq i32 %0, 55296
  %cmp10 = icmp eq i32 %c, 65535
  %or.cond37 = or i1 %cmp10, %1
  br i1 %or.cond37, label %if.end36, label %if.end12

if.end12:                                         ; preds = %if.then6
  %shr13 = lshr i32 %c, 12
  %or14 = or i32 %shr13, 224
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %or14) #16
  %shr15 = lshr i32 %c, 6
  %and16 = and i32 %shr15, 63
  %or17 = or i32 %and16, 128
  br label %if.end36.sink.split.sink.split

if.else20:                                        ; preds = %if.else4
  %cmp21 = icmp ult i32 %c, 1114112
  br i1 %cmp21, label %if.then22, label %if.end36

if.then22:                                        ; preds = %if.else20
  %shr23 = lshr i32 %c, 18
  %or24 = or i32 %shr23, 240
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %or24) #16
  %shr25 = lshr i32 %c, 12
  %and26 = and i32 %shr25, 63
  %or27 = or i32 %and26, 128
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %or27) #16
  %shr28 = lshr i32 %c, 6
  %and29 = and i32 %shr28, 63
  %or30 = or i32 %and29, 128
  br label %if.end36.sink.split.sink.split

if.end36.sink.split.sink.split:                   ; preds = %if.then2, %if.then22, %if.end12
  %or17.sink = phi i32 [ %or17, %if.end12 ], [ %or30, %if.then22 ], [ %or, %if.then2 ]
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %or17.sink) #16
  %and18 = and i32 %c, 63
  %or19 = or i32 %and18, 128
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.end36.sink.split.sink.split, %entry
  %or3.sink = phi i32 [ %c, %entry ], [ %or19, %if.end36.sink.split.sink.split ]
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %or3.sink) #16
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.else20, %if.then6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_self(%struct.vc_data* noundef %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  %call = call i32 @conv_8bit_to_uni(i8 noundef %value) #14
  call fastcc void @k_unicode(%struct.vc_data* noundef %vc, i32 noundef %call, i8 noundef %up_flag) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_fn(%struct.vc_data* noundef %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.then3, label %if.end21

if.then3:                                         ; preds = %entry
  %call7 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @func_buf_lock, i64 0, i32 0, i32 0)) #16
  %idxprom = zext i8 %value to i64
  %arrayidx = getelementptr [256 x i8*], [256 x i8*]* @func_table, i64 0, i64 %idxprom
  %0 = load i8*, i8** %arrayidx, align 8
  %tobool10.not = icmp eq i8* %0, null
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.then3
  call fastcc void @puts_queue(%struct.vc_data* noundef %vc, i8* noundef nonnull %0) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then3
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @func_buf_lock, i64 0, i32 0, i32 0), i64 noundef %call7) #14
  br label %if.end21

if.end21:                                         ; preds = %entry, %if.end14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_spec(%struct.vc_data* noundef %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  %tobool = icmp ne i8 %up_flag, 0
  %conv = zext i8 %value to i64
  %cmp = icmp ugt i8 %value, 19
  %or.cond28 = or i1 %cmp, %tobool
  br i1 %or.cond28, label %return, label %if.end3

if.end3:                                          ; preds = %entry
  %0 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %kbdmode = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %0, i64 0, i32 3
  %bf.load = load i8, i8* %kbdmode, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 7
  %bf.clear.off = add nsw i8 %bf.clear, -1
  %switch = icmp ult i8 %bf.clear.off, 2
  br i1 %switch, label %land.lhs.true, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end3
  %cmp20 = icmp eq i8 %bf.clear, 4
  %cmp23 = icmp ne i8 %value, 15
  %or.cond = and i1 %cmp23, %cmp20
  br i1 %or.cond, label %return, label %if.end26

land.lhs.true:                                    ; preds = %if.end3
  %cmp23.old.not = icmp eq i8 %value, 15
  br i1 %cmp23.old.not, label %if.end26, label %return

if.end26:                                         ; preds = %land.lhs.true, %lor.lhs.false14
  %arrayidx = getelementptr [20 x void (%struct.vc_data*)*], [20 x void (%struct.vc_data*)*]* @fn_handler, i64 0, i64 %conv
  %1 = load void (%struct.vc_data*)*, void (%struct.vc_data*)** %arrayidx, align 8
  call void %1(%struct.vc_data* noundef %vc) #14
  br label %return

return:                                           ; preds = %land.lhs.true, %lor.lhs.false14, %entry, %if.end26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_pad(%struct.vc_data* noundef %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %if.end31

if.end:                                           ; preds = %entry
  %0 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %call = call fastcc i32 @vc_kbd_mode(%struct.kbd_struct* noundef %0, i32 noundef 0) #16
  %tobool1 = icmp eq i32 %call, 0
  %1 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @shift_down, i64 0, i64 0), align 4
  %tobool2 = icmp ne i8 %1, 0
  %or.cond = select i1 %tobool1, i1 true, i1 %tobool2
  br i1 %or.cond, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %idxprom = zext i8 %value to i64
  %arrayidx = getelementptr [22 x i8], [22 x i8]* @k_pad.app_map, i64 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  call fastcc void @applkey(%struct.vc_data* noundef %vc, i32 noundef %conv, i8 noundef 1) #16
  br label %if.end31

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @vc_kbd_led(%struct.kbd_struct* noundef %0, i32 noundef 1) #16
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end21

if.then7:                                         ; preds = %if.end4
  switch i8 %value, label %if.end21 [
    i8 15, label %sw.bb
    i8 16, label %sw.bb
    i8 0, label %sw.bb9
    i8 1, label %sw.bb10
    i8 2, label %sw.bb11
    i8 3, label %sw.bb12
    i8 4, label %sw.bb13
    i8 6, label %sw.bb14
    i8 7, label %sw.bb15
    i8 8, label %sw.bb16
    i8 9, label %sw.bb17
    i8 5, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.then7, %if.then7
  call void @k_fn(%struct.vc_data* noundef %vc, i8 noundef 22, i8 noundef 0) #16
  br label %if.end31

sw.bb9:                                           ; preds = %if.then7
  call void @k_fn(%struct.vc_data* noundef %vc, i8 noundef 21, i8 noundef 0) #16
  br label %if.end31

sw.bb10:                                          ; preds = %if.then7
  call void @k_fn(%struct.vc_data* noundef %vc, i8 noundef 23, i8 noundef 0) #16
  br label %if.end31

sw.bb11:                                          ; preds = %if.then7
  call void @k_cur(%struct.vc_data* noundef %vc, i8 noundef 0, i8 noundef 0) #16
  br label %if.end31

sw.bb12:                                          ; preds = %if.then7
  call void @k_fn(%struct.vc_data* noundef %vc, i8 noundef 25, i8 noundef 0) #16
  br label %if.end31

sw.bb13:                                          ; preds = %if.then7
  call void @k_cur(%struct.vc_data* noundef %vc, i8 noundef 1, i8 noundef 0) #16
  br label %if.end31

sw.bb14:                                          ; preds = %if.then7
  call void @k_cur(%struct.vc_data* noundef %vc, i8 noundef 2, i8 noundef 0) #16
  br label %if.end31

sw.bb15:                                          ; preds = %if.then7
  call void @k_fn(%struct.vc_data* noundef %vc, i8 noundef 20, i8 noundef 0) #16
  br label %if.end31

sw.bb16:                                          ; preds = %if.then7
  call void @k_cur(%struct.vc_data* noundef %vc, i8 noundef 3, i8 noundef 0) #16
  br label %if.end31

sw.bb17:                                          ; preds = %if.then7
  call void @k_fn(%struct.vc_data* noundef %vc, i8 noundef 24, i8 noundef 0) #16
  br label %if.end31

sw.bb18:                                          ; preds = %if.then7
  %conv20 = trunc i32 %call to i8
  call fastcc void @applkey(%struct.vc_data* noundef %vc, i32 noundef 71, i8 noundef %conv20) #16
  br label %if.end31

if.end21:                                         ; preds = %if.then7, %if.end4
  %idxprom22 = zext i8 %value to i64
  %arrayidx23 = getelementptr [22 x i8], [22 x i8]* @k_pad.pad_chars, i64 0, i64 %idxprom22
  %3 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %3 to i32
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %conv24) #16
  %cmp = icmp eq i8 %value, 14
  br i1 %cmp, label %land.lhs.true27, label %if.end31

land.lhs.true27:                                  ; preds = %if.end21
  %4 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %call28 = call fastcc i32 @vc_kbd_mode(%struct.kbd_struct* noundef %4, i32 noundef 3) #16
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %land.lhs.true27
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef 10) #16
  br label %if.end31

if.end31:                                         ; preds = %entry, %if.then3, %sw.bb, %sw.bb9, %sw.bb10, %sw.bb11, %sw.bb12, %sw.bb13, %sw.bb14, %sw.bb15, %sw.bb16, %sw.bb17, %sw.bb18, %if.then30, %land.lhs.true27, %if.end21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_dead(%struct.vc_data* noundef %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  %idxprom = zext i8 %value to i64
  %arrayidx = getelementptr [27 x i8], [27 x i8]* @k_dead.ret_diacr, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %0 to i32
  call fastcc void @k_deadunicode(%struct.vc_data* noundef %vc, i32 noundef %conv, i8 noundef %up_flag) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_cons(%struct.vc_data* nocapture noundef readnone %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %conv = zext i8 %value to i32
  %call = call i32 @set_console(i32 noundef %conv) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_cur(%struct.vc_data* noundef %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %idxprom = zext i8 %value to i64
  %arrayidx = getelementptr [5 x i8], [5 x i8]* @k_cur.cur_chars, i64 0, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %1 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %call = call fastcc i32 @vc_kbd_mode(%struct.kbd_struct* noundef %1, i32 noundef 1) #16
  %conv1 = trunc i32 %call to i8
  call fastcc void @applkey(%struct.vc_data* noundef %vc, i32 noundef %conv, i8 noundef %conv1) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_shift(%struct.vc_data* noundef %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  %0 = load i32, i32* @shift_state, align 4
  %1 = load i8, i8* @rep, align 4, !range !37
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq i8 %value, 8
  %tobool3.not = icmp eq i8 %up_flag, 0
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  br i1 %tobool3.not, label %if.end6.thread, label %if.then8

if.end6.thread:                                   ; preds = %if.then2
  %2 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  call fastcc void @clr_vc_kbd_led(%struct.kbd_struct* noundef %2, i32 noundef 2) #16
  br label %if.else

if.end6:                                          ; preds = %if.end
  br i1 %tobool3.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then2, %if.end6
  %value.addr.069 = phi i8 [ %value, %if.end6 ], [ 0, %if.then2 ]
  %idxprom = zext i8 %value.addr.069 to i64
  %arrayidx = getelementptr [9 x i8], [9 x i8]* @shift_down, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %tobool9.not = icmp eq i8 %3, 0
  br i1 %tobool9.not, label %if.else24, label %if.then10

if.then10:                                        ; preds = %if.then8
  %dec = add i8 %3, -1
  store i8 %dec, i8* %arrayidx, align 1
  br label %if.end16

if.else:                                          ; preds = %if.end6.thread, %if.end6
  %value.addr.063 = phi i8 [ 0, %if.end6.thread ], [ %value, %if.end6 ]
  %idxprom14 = zext i8 %value.addr.063 to i64
  %arrayidx15 = getelementptr [9 x i8], [9 x i8]* @shift_down, i64 0, i64 %idxprom14
  %4 = load i8, i8* %arrayidx15, align 1
  %inc = add i8 %4, 1
  store i8 %inc, i8* %arrayidx15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.else
  %5 = phi i8 [ %dec, %if.then10 ], [ %inc, %if.else ]
  %idxprom17.pre-phi = phi i64 [ %idxprom, %if.then10 ], [ %idxprom14, %if.else ]
  %tobool7.not64 = phi i1 [ false, %if.then10 ], [ true, %if.else ]
  %tobool19.not = icmp eq i8 %5, 0
  br i1 %tobool19.not, label %if.else24, label %if.then20

if.then20:                                        ; preds = %if.end16
  %shl = shl nuw i64 1, %idxprom17.pre-phi
  %6 = load i32, i32* @shift_state, align 4
  %7 = trunc i64 %shl to i32
  %conv23 = or i32 %6, %7
  br label %if.end30

if.else24:                                        ; preds = %if.then8, %if.end16
  %tobool7.not6476 = phi i1 [ %tobool7.not64, %if.end16 ], [ false, %if.then8 ]
  %idxprom17.pre-phi74 = phi i64 [ %idxprom17.pre-phi, %if.end16 ], [ %idxprom, %if.then8 ]
  %shl27 = shl nuw i64 1, %idxprom17.pre-phi74
  %8 = load i32, i32* @shift_state, align 4
  %9 = trunc i64 %shl27 to i32
  %10 = xor i32 %9, -1
  %conv29 = and i32 %8, %10
  br label %if.end30

if.end30:                                         ; preds = %if.else24, %if.then20
  %tobool7.not6475 = phi i1 [ %tobool7.not6476, %if.else24 ], [ %tobool7.not64, %if.then20 ]
  %storemerge = phi i32 [ %conv29, %if.else24 ], [ %conv23, %if.then20 ]
  store i32 %storemerge, i32* @shift_state, align 4
  %cmp33.not = icmp eq i32 %storemerge, %0
  %or.cond = select i1 %tobool7.not6475, i1 true, i1 %cmp33.not
  br i1 %or.cond, label %cleanup, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %if.end30
  %.b58 = load i1, i1* @npadch_active, align 1
  br i1 %.b58, label %if.then38, label %cleanup

if.then38:                                        ; preds = %land.lhs.true35
  %11 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %kbdmode = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %11, i64 0, i32 3
  %bf.load = load i8, i8* %kbdmode, align 1
  %12 = and i8 %bf.load, 112
  %cmp40 = icmp eq i8 %12, 48
  %13 = load i32, i32* @npadch_value, align 4
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.then38
  call fastcc void @to_utf8(%struct.vc_data* noundef %vc, i32 noundef %13) #16
  br label %if.end45

if.else43:                                        ; preds = %if.then38
  %and44 = and i32 %13, 255
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %and44) #16
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then42
  store i1 false, i1* @npadch_active, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %land.lhs.true35, %if.end45, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_meta(%struct.vc_data* noundef %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %if.end5

if.end:                                           ; preds = %entry
  %0 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %call = call fastcc i32 @vc_kbd_mode(%struct.kbd_struct* noundef %0, i32 noundef 4) #16
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef 27) #16
  br label %if.end5.sink.split

if.else:                                          ; preds = %if.end
  %1 = or i8 %value, -128
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.then2, %if.else
  %.sink = phi i8 [ %1, %if.else ], [ %value, %if.then2 ]
  %conv4 = zext i8 %.sink to i32
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %conv4) #16
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @k_ascii(%struct.vc_data* nocapture noundef readnone %vc, i8 noundef %value, i8 noundef %up_flag) #5 {
entry:
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp ult i8 %value, 10
  %sub = add i8 %value, -10
  %value.addr.0 = select i1 %cmp, i8 %value, i8 %sub
  %base.0 = select i1 %cmp, i32 10, i32 16
  %.b13 = load i1, i1* @npadch_active, align 1
  br i1 %.b13, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  %.pre = load i32, i32* @npadch_value, align 4
  br label %if.end8

if.then7:                                         ; preds = %if.end
  store i1 true, i1* @npadch_active, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.then7
  %0 = phi i32 [ %.pre, %if.end.if.end8_crit_edge ], [ 0, %if.then7 ]
  %mul = mul i32 %0, %base.0
  %conv9 = zext i8 %value.addr.0 to i32
  %add = add i32 %mul, %conv9
  store i32 %add, i32* @npadch_value, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @k_lock(%struct.vc_data* nocapture noundef readnone %vc, i8 noundef %value, i8 noundef %up_flag) #5 {
entry:
  %tobool.not = icmp eq i8 %up_flag, 0
  %0 = load i8, i8* @rep, align 4
  %tobool1.not = icmp eq i8 %0, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %conv3 = zext i8 %value to i32
  call fastcc void @chg_vc_kbd_lock(%struct.kbd_struct* noundef %1, i32 noundef %conv3) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_lowercase(%struct.vc_data* nocapture noundef readnone %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0)) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_slock(%struct.vc_data* noundef %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  call void @k_shift(%struct.vc_data* noundef %vc, i8 noundef %value, i8 noundef %up_flag) #16
  %tobool.not = icmp eq i8 %up_flag, 0
  %0 = load i8, i8* @rep, align 4
  %tobool1.not = icmp eq i8 %0, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %if.end, label %if.end10

if.end:                                           ; preds = %entry
  %1 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %conv3 = zext i8 %value to i32
  call fastcc void @chg_vc_kbd_slock(%struct.kbd_struct* noundef %1, i32 noundef %conv3) #16
  %2 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %lockstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %2, i64 0, i32 0
  %3 = load i8, i8* %lockstate, align 1
  %slockstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %2, i64 0, i32 1
  %4 = load i8, i8* %slockstate, align 1
  %xor14 = xor i8 %4, %3
  %idxprom = zext i8 %xor14 to i64
  %arrayidx = getelementptr [256 x i16*], [256 x i16*]* @key_maps, i64 0, i64 %idxprom
  %5 = load i16*, i16** %arrayidx, align 8
  %tobool6.not = icmp eq i16* %5, null
  br i1 %tobool6.not, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  store i8 0, i8* %slockstate, align 1
  call fastcc void @chg_vc_kbd_slock(%struct.kbd_struct* noundef %2, i32 noundef %conv3) #16
  br label %if.end10

if.end10:                                         ; preds = %entry, %if.then7, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_dead2(%struct.vc_data* noundef %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  %conv = zext i8 %value to i32
  call fastcc void @k_deadunicode(%struct.vc_data* noundef %vc, i32 noundef %conv, i8 noundef %up_flag) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @k_brl(%struct.vc_data* noundef %vc, i8 noundef %value, i8 noundef %up_flag) #0 {
entry:
  %0 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %kbdmode = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %0, i64 0, i32 3
  %bf.load = load i8, i8* %kbdmode, align 1
  %1 = and i8 %bf.load, 112
  %cmp.not = icmp eq i8 %1, 48
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %do.end, label %if.end52

do.end:                                           ; preds = %if.then
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0)) #17
  br label %if.end52

if.end3:                                          ; preds = %entry
  %tobool4.not = icmp eq i8 %value, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call fastcc void @k_unicode(%struct.vc_data* noundef %vc, i32 noundef 10240, i8 noundef %up_flag) #16
  br label %if.end52

if.end6:                                          ; preds = %if.end3
  %conv7 = zext i8 %value to i32
  %cmp8 = icmp ugt i8 %value, 8
  br i1 %cmp8, label %if.end52, label %if.end11

if.end11:                                         ; preds = %if.end6
  %tobool12.not = icmp eq i8 %up_flag, 0
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %sub = add nsw i32 %conv7, -1
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  %2 = load i32, i32* @k_brl.pressed, align 4
  %3 = trunc i64 %shl to i32
  %conv16 = or i32 %2, %3
  store i32 %conv16, i32* @k_brl.pressed, align 4
  %4 = load i32, i32* @brl_timeout, align 4
  %tobool17.not = icmp eq i32 %4, 0
  br i1 %tobool17.not, label %if.then18, label %if.end52

if.then18:                                        ; preds = %if.then13
  store i32 %conv16, i32* @k_brl.committing, align 4
  br label %if.end52

if.else:                                          ; preds = %if.end11
  %5 = load i32, i32* @brl_timeout, align 4
  %tobool20.not = icmp eq i32 %5, 0
  %6 = load i32, i32* @k_brl.committing, align 4
  %tobool40.not = icmp eq i32 %6, 0
  br i1 %tobool20.not, label %if.else39, label %if.then21

if.then21:                                        ; preds = %if.else
  br i1 %tobool40.not, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21
  %7 = load i64, i64* @k_brl.releasestart, align 8
  %call2.i = call i64 @__msecs_to_jiffies(i32 noundef %5) #14
  %add = add i64 %call2.i, %7
  %8 = load volatile i64, i64* @jiffies, align 64
  %sub24 = sub i64 %add, %8
  %cmp25 = icmp slt i64 %sub24, 0
  br i1 %cmp25, label %if.then27, label %msecs_to_jiffies.exit.if.end28_crit_edge

msecs_to_jiffies.exit.if.end28_crit_edge:         ; preds = %lor.lhs.false
  %.pre = load i32, i32* @k_brl.pressed, align 4
  %.pre63 = load i32, i32* @k_brl.committing, align 4
  br label %if.end28

if.then27:                                        ; preds = %lor.lhs.false, %if.then21
  %9 = load i32, i32* @k_brl.pressed, align 4
  store i32 %9, i32* @k_brl.committing, align 4
  %10 = load volatile i64, i64* @jiffies, align 64
  store i64 %10, i64* @k_brl.releasestart, align 8
  br label %if.end28

if.end28:                                         ; preds = %msecs_to_jiffies.exit.if.end28_crit_edge, %if.then27
  %11 = phi i32 [ %.pre63, %msecs_to_jiffies.exit.if.end28_crit_edge ], [ %9, %if.then27 ]
  %12 = phi i32 [ %.pre, %msecs_to_jiffies.exit.if.end28_crit_edge ], [ %9, %if.then27 ]
  %sub30 = add nsw i32 %conv7, -1
  %sh_prom31 = zext i32 %sub30 to i64
  %shl32 = shl nuw i64 1, %sh_prom31
  %13 = trunc i64 %shl32 to i32
  %14 = xor i32 %13, -1
  %conv34 = and i32 %12, %14
  store i32 %conv34, i32* @k_brl.pressed, align 4
  %tobool35 = icmp eq i32 %conv34, 0
  %tobool36 = icmp ne i32 %11, 0
  %or.cond = select i1 %tobool35, i1 %tobool36, i1 false
  br i1 %or.cond, label %if.then37, label %if.end52

if.then37:                                        ; preds = %if.end28
  call fastcc void @k_brlcommit(%struct.vc_data* noundef %vc, i32 noundef %11) #16
  store i32 0, i32* @k_brl.committing, align 4
  br label %if.end52

if.else39:                                        ; preds = %if.else
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.else39
  call fastcc void @k_brlcommit(%struct.vc_data* noundef %vc, i32 noundef %6) #16
  store i32 0, i32* @k_brl.committing, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.else39
  %sub44 = add nsw i32 %conv7, -1
  %sh_prom45 = zext i32 %sub44 to i64
  %shl46 = shl nuw i64 1, %sh_prom45
  %15 = load i32, i32* @k_brl.pressed, align 4
  %16 = trunc i64 %shl46 to i32
  %17 = xor i32 %16, -1
  %conv50 = and i32 %15, %17
  store i32 %conv50, i32* @k_brl.pressed, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end42, %if.then37, %if.end28, %if.then13, %if.then18, %if.end6, %if.then, %do.end, %if.then5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @k_ignore(%struct.vc_data* nocapture noundef %vc, i8 noundef %value, i8 noundef %up_flag) #7 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @puts_queue(%struct.vc_data* noundef %vc, i8* noundef %cp) unnamed_addr #0 {
entry:
  %port = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 0
  %call = call i64 @strlen(i8* noundef %cp) #14
  call fastcc void @tty_insert_flip_string(%struct.tty_port* noundef %port, i8* noundef %cp, i64 noundef %call) #16
  call void @tty_schedule_flip(%struct.tty_port* noundef %port) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tty_insert_flip_string(%struct.tty_port* noundef %port, i8* noundef %chars, i64 noundef %size) unnamed_addr #0 {
entry:
  %call = call i32 @tty_insert_flip_string_fixed_flag(%struct.tty_port* noundef %port, i8* noundef %chars, i8 noundef 0, i64 noundef %size) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(%struct.tty_port* noundef, i8* noundef, i8 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_null(%struct.vc_data* nocapture noundef readnone %vc) #0 {
entry:
  call fastcc void @do_compute_shiftstate() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_enter(%struct.vc_data* noundef %vc) #0 {
entry:
  %0 = load i32, i32* @diacr, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %kbdmode = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %1, i64 0, i32 3
  %bf.load = load i8, i8* %kbdmode, align 1
  %2 = and i8 %bf.load, 112
  %cmp = icmp eq i8 %2, 48
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call fastcc void @to_utf8(%struct.vc_data* noundef %vc, i32 noundef %0) #16
  br label %if.end6

if.else:                                          ; preds = %if.then
  %call = call i32 @conv_uni_to_8bit(i32 noundef %0) #14
  %cmp3.not = icmp eq i32 %call, -1
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.else
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef %call) #16
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5, %if.then2
  store i32 0, i32* @diacr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef 13) #16
  %3 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %call8 = call fastcc i32 @vc_kbd_mode(%struct.kbd_struct* noundef %3, i32 noundef 3) #16
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  call fastcc void @put_queue(%struct.vc_data* noundef %vc, i32 noundef 10) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_show_ptregs(%struct.vc_data* nocapture noundef readnone %vc) #0 {
entry:
  %call = call fastcc %struct.pt_regs* @get_irq_regs() #16
  %tobool.not = icmp eq %struct.pt_regs* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @show_regs(%struct.pt_regs* noundef nonnull %call) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_show_mem(%struct.vc_data* nocapture noundef readnone %vc) #0 {
entry:
  call void @show_mem(i32 noundef 0, %struct.nodemask_t* noundef null) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_show_state(%struct.vc_data* nocapture noundef readnone %vc) #0 {
entry:
  call fastcc void @show_state() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_send_intr(%struct.vc_data* noundef %vc) #0 {
entry:
  %port = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 0
  call fastcc void @tty_insert_flip_char(%struct.tty_port* noundef %port, i8 noundef 0, i8 noundef 1) #16
  call void @tty_schedule_flip(%struct.tty_port* noundef %port) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_lastcons(%struct.vc_data* nocapture noundef readnone %vc) #0 {
entry:
  %0 = load i32, i32* @last_console, align 4
  %call = call i32 @set_console(i32 noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @fn_caps_toggle(%struct.vc_data* nocapture noundef readnone %vc) #5 {
entry:
  %0 = load i8, i8* @rep, align 4, !range !37
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  call fastcc void @chg_vc_kbd_led(%struct.kbd_struct* noundef %1, i32 noundef 2) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_num(%struct.vc_data* noundef %vc) #0 {
entry:
  %0 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %call = call fastcc i32 @vc_kbd_mode(%struct.kbd_struct* noundef %0, i32 noundef 0) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @applkey(%struct.vc_data* noundef %vc, i32 noundef 80, i8 noundef 1) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @fn_bare_num(%struct.vc_data* noundef %vc) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_hold(%struct.vc_data* nocapture noundef readonly %vc) #0 {
entry:
  %tty1 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %vc, i64 0, i32 0, i32 1
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty1, align 8
  %1 = load i8, i8* @rep, align 4, !range !37
  %tobool.not10 = icmp eq i8 %1, 0
  %tobool2 = icmp ne %struct.tty_struct* %0, null
  %or.cond = select i1 %tobool.not10, i1 %tobool2, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %stopped = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i64 0, i32 19, i32 1
  %2 = load i8, i8* %stopped, align 4, !range !37
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @start_tty(%struct.tty_struct* noundef nonnull %0) #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @stop_tty(%struct.tty_struct* noundef nonnull %0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_scroll_forw(%struct.vc_data* noundef %vc) #0 {
entry:
  call void @scrollfront(%struct.vc_data* noundef %vc, i32 noundef 0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_scroll_back(%struct.vc_data* noundef %vc) #0 {
entry:
  call void @scrollback(%struct.vc_data* noundef %vc) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_boot_it(%struct.vc_data* nocapture noundef readnone %vc) #0 {
entry:
  call void @ctrl_alt_del() #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @fn_caps_on(%struct.vc_data* nocapture noundef readnone %vc) #5 {
entry:
  %0 = load i8, i8* @rep, align 4, !range !37
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  call fastcc void @set_vc_kbd_led(%struct.kbd_struct* noundef %1, i32 noundef 2) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal void @fn_compose(%struct.vc_data* nocapture noundef readnone %vc) #10 {
entry:
  store i1 true, i1* @dead_key_next, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_SAK(%struct.vc_data* nocapture noundef readnone %vc) #0 {
entry:
  %0 = load i32, i32* @fg_console, align 4
  %idxprom = sext i32 %0 to i64
  %SAK_work1 = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, i32 1
  call fastcc void @schedule_work(%struct.work_struct* noundef %SAK_work1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_dec_console(%struct.vc_data* nocapture noundef readnone %vc) #0 {
entry:
  %0 = load i32, i32* @fg_console, align 4
  %1 = load i32, i32* @want_console, align 4
  %cmp.not = icmp eq i32 %1, -1
  %spec.select = select i1 %cmp.not, i32 %0, i32 %1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %spec.select, %entry ], [ %spec.store.select, %for.body ]
  %i.0 = add i32 %i.0.in, -1
  %cmp1.not = icmp eq i32 %i.0, %spec.select
  br i1 %cmp1.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %cmp2 = icmp eq i32 %i.0.in, 0
  %spec.store.select = select i1 %cmp2, i32 62, i32 %i.0
  %call = call i32 @vc_cons_allocated(i32 noundef %spec.store.select) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.end

for.end:                                          ; preds = %for.body, %for.cond
  %i.1 = phi i32 [ %spec.store.select, %for.body ], [ %spec.select, %for.cond ]
  %call7 = call i32 @set_console(i32 noundef %i.1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_inc_console(%struct.vc_data* nocapture noundef readnone %vc) #0 {
entry:
  %0 = load i32, i32* @fg_console, align 4
  %1 = load i32, i32* @want_console, align 4
  %cmp.not = icmp eq i32 %1, -1
  %spec.select = select i1 %cmp.not, i32 %0, i32 %1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0.in = phi i32 [ %spec.select, %entry ], [ %spec.store.select, %for.body ]
  %i.0 = add i32 %i.0.in, 1
  %cmp1.not = icmp eq i32 %i.0, %spec.select
  br i1 %cmp1.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %cmp2 = icmp eq i32 %i.0, 63
  %spec.store.select = select i1 %cmp2, i32 0, i32 %i.0
  %call = call i32 @vc_cons_allocated(i32 noundef %spec.store.select) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.end

for.end:                                          ; preds = %for.body, %for.cond
  %i.1 = phi i32 [ %spec.store.select, %for.body ], [ %spec.select, %for.cond ]
  %call7 = call i32 @set_console(i32 noundef %i.1) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @fn_spawn_con(%struct.vc_data* nocapture noundef readnone %vc) #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.vt_spawn_console, %struct.vt_spawn_console* @vt_spawn_con, i64 0, i32 0, i32 0, i32 0)) #14
  %0 = load %struct.pid*, %struct.pid** getelementptr inbounds (%struct.vt_spawn_console, %struct.vt_spawn_console* @vt_spawn_con, i64 0, i32 1), align 8
  %tobool.not = icmp eq %struct.pid* %0, null
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.vt_spawn_console, %struct.vt_spawn_console* @vt_spawn_con, i64 0, i32 2), align 8
  %call = call i32 @kill_pid(%struct.pid* noundef nonnull %0, i32 noundef %1, i32 noundef 1) #14
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.then
  %2 = load %struct.pid*, %struct.pid** getelementptr inbounds (%struct.vt_spawn_console, %struct.vt_spawn_console* @vt_spawn_con, i64 0, i32 1), align 8
  call void @put_pid(%struct.pid* noundef %2) #14
  store %struct.pid* null, %struct.pid** getelementptr inbounds (%struct.vt_spawn_console, %struct.vt_spawn_console* @vt_spawn_con, i64 0, i32 1), align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then2, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.vt_spawn_console, %struct.vt_spawn_console* @vt_spawn_con, i64 0, i32 0, i32 0, i32 0)) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal void @fn_bare_num(%struct.vc_data* nocapture noundef readnone %vc) #5 {
entry:
  %0 = load i8, i8* @rep, align 4, !range !37
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  call fastcc void @chg_vc_kbd_led(%struct.kbd_struct* noundef %1, i32 noundef 1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc %struct.pt_regs* @get_irq_regs() unnamed_addr #11 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #16
  %add = add i64 %call, ptrtoint (%struct.pt_regs** @__irq_regs to i64)
  %0 = inttoptr i64 %add to %struct.pt_regs**
  %1 = load %struct.pt_regs*, %struct.pt_regs** %0, align 8
  ret %struct.pt_regs* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(%struct.pt_regs* noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #11 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #18, !srcloc !40
  ret i64 %2
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @show_state() unnamed_addr #0 {
entry:
  call void @show_state_filter(i32 noundef 0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_state_filter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_console(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @chg_vc_kbd_led(%struct.kbd_struct* nocapture noundef %kbd, i32 noundef %flag) unnamed_addr #5 {
entry:
  %shl = shl nuw i32 1, %flag
  %ledflagstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %kbd, i64 0, i32 2
  %bf.load = load i8, i8* %ledflagstate, align 1
  %0 = trunc i32 %shl to i8
  %conv14 = shl i8 %0, 1
  %1 = and i8 %conv14, 30
  %bf.set = xor i8 %bf.load, %1
  store i8 %bf.set, i8* %ledflagstate, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @applkey(%struct.vc_data* noundef %vc, i32 noundef %key, i8 noundef %mode) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8 %mode, 0
  %conv1 = select i1 %tobool.not, i8 91, i8 79
  store i8 %conv1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @applkey.buf, i64 0, i64 1), align 1
  %conv2 = trunc i32 %key to i8
  store i8 %conv2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @applkey.buf, i64 0, i64 2), align 1
  call fastcc void @puts_queue(%struct.vc_data* noundef %vc, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @applkey.buf, i64 0, i64 0)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_tty(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_tty(%struct.tty_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scrollfront(%struct.vc_data* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scrollback(%struct.vc_data* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ctrl_alt_del() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_cons_allocated(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(%struct.pid* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @k_deadunicode(%struct.vc_data* noundef %vc, i32 noundef %value, i8 noundef %up_flag) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = load i32, i32* @diacr, align 4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %call = call fastcc i32 @handle_diacr(%struct.vc_data* noundef %vc, i32 noundef %value) #16
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %value, %if.end ]
  store i32 %cond, i32* @diacr, align 4
  br label %return

return:                                           ; preds = %entry, %cond.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @chg_vc_kbd_lock(%struct.kbd_struct* nocapture noundef %kbd, i32 noundef %flag) unnamed_addr #5 {
entry:
  %shl = shl nuw i32 1, %flag
  %lockstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %kbd, i64 0, i32 0
  %0 = load i8, i8* %lockstate, align 1
  %1 = trunc i32 %shl to i8
  %conv1 = xor i8 %0, %1
  store i8 %conv1, i8* %lockstate, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @chg_vc_kbd_slock(%struct.kbd_struct* nocapture noundef %kbd, i32 noundef %flag) unnamed_addr #5 {
entry:
  %shl = shl nuw i32 1, %flag
  %slockstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %kbd, i64 0, i32 1
  %0 = load i8, i8* %slockstate, align 1
  %1 = trunc i32 %shl to i8
  %conv1 = xor i8 %0, %1
  store i8 %conv1, i8* %slockstate, align 1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @k_brlcommit(%struct.vc_data* noundef %vc, i32 noundef %pattern) unnamed_addr #0 {
entry:
  %0 = load i32, i32* @brl_nbchords, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %or = or i32 %pattern, 10240
  call fastcc void @k_deadunicode(%struct.vc_data* noundef %vc, i32 noundef %or, i8 noundef 0) #16
  br label %if.end5

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @k_brlcommit.committed, align 4
  %or1 = or i32 %1, %pattern
  store i32 %or1, i32* @k_brlcommit.committed, align 4
  %2 = load i64, i64* @k_brlcommit.chords, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* @k_brlcommit.chords, align 8
  %conv = zext i32 %0 to i64
  %cmp = icmp eq i64 %inc, %conv
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.else
  %or4 = or i32 %or1, 10240
  call fastcc void @k_unicode(%struct.vc_data* noundef %vc, i32 noundef %or4, i8 noundef 0) #16
  store i64 0, i64* @k_brlcommit.chords, align 8
  store i32 0, i32* @k_brlcommit.committed, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #14
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(%struct.input_handle* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(%struct.input_handle* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(%struct.input_handle* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(%struct.input_handle* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tasklet_disable() unnamed_addr #0 {
entry:
  call fastcc void @tasklet_disable_nosync() #16
  call void @tasklet_unlock_wait(%struct.tasklet_struct* noundef bitcast ({ %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }* @keyboard_tasklet to %struct.tasklet_struct*)) #14
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !41
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @kbd_update_leds_helper(%struct.input_handle* noundef %handle, i8* nocapture noundef readonly %data) #0 {
entry:
  %0 = bitcast i8* %data to i32*
  %1 = load i32, i32* %0, align 4
  %dev = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %2 = load %struct.input_dev*, %struct.input_dev** %dev, align 8
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %2, i64 0, i32 5, i64 0
  %3 = load volatile i64, i64* %arraydecay, align 8
  %4 = and i64 %3, 131072
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %1, 1
  call void @input_inject_event(%struct.input_handle* noundef %handle, i32 noundef 17, i32 noundef 2, i32 noundef %and) #14
  %and4 = lshr i32 %1, 1
  %and4.lobit = and i32 %and4, 1
  call void @input_inject_event(%struct.input_handle* noundef %handle, i32 noundef 17, i32 noundef 0, i32 noundef %and4.lobit) #14
  %5 = lshr i32 %1, 2
  %.lobit = and i32 %5, 1
  call void @input_inject_event(%struct.input_handle* noundef %handle, i32 noundef 17, i32 noundef 1, i32 noundef %.lobit) #14
  call void @input_inject_event(%struct.input_handle* noundef %handle, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @tasklet_disable_nosync() unnamed_addr #0 {
entry:
  call fastcc void @__ll_sc_atomic_add() #14
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(%struct.tasklet_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) getelementptr inbounds ({ %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }, { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }* @keyboard_tasklet, i64 0, i32 2, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds ({ %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }, { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }* @keyboard_tasklet, i64 0, i32 2, i32 0)) #15, !srcloc !43
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) getelementptr inbounds ({ %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }, { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }* @keyboard_tasklet, i64 0, i32 2, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds ({ %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }, { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }* @keyboard_tasklet, i64 0, i32 2, i32 0)) #15, !srcloc !44
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kbd_bh(%struct.tasklet_struct* nocapture noundef readnone %unused) #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0)) #16
  %call5 = call fastcc i8 @getleds() #16
  %conv6 = zext i8 %call5 to i32
  %0 = load %struct.kbd_struct*, %struct.kbd_struct** @kbd, align 8
  %lockstate = getelementptr inbounds %struct.kbd_struct, %struct.kbd_struct* %0, i64 0, i32 0
  %1 = load i8, i8* %lockstate, align 1
  %conv7 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %or = or i32 %shl, %conv6
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @led_lock, i64 0, i32 0, i32 0), i64 noundef %call2) #14
  %2 = load i32, i32* @ledstate, align 4
  %cmp8.not = icmp eq i32 %or, %2
  br i1 %cmp8.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @kbd_propagate_led_state(i32 noundef %or) #16
  store i32 %or, i32* @ledstate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8 @getleds() unnamed_addr #4 {
entry:
  %0 = load i32, i32* @fg_console, align 4
  %idx.ext = sext i32 %0 to i64
  %ledmode = getelementptr [63 x %struct.kbd_struct], [63 x %struct.kbd_struct]* @kbd_table, i64 0, i64 %idx.ext, i32 2
  %bf.load = load i8, i8* %ledmode, align 1
  %bf.clear = and i8 %bf.load, 1
  %cmp.not = icmp eq i8 %bf.clear, 0
  %1 = load i8, i8* @ledioctl, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear3 = and i8 %bf.lshr, 15
  %retval.0 = select i1 %cmp.not, i8 %bf.clear3, i8 %1
  ret i8 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kbd_propagate_led_state(i32 noundef %new_state) unnamed_addr #0 {
entry:
  %new_state.addr = alloca i32, align 4
  store i32 %new_state, i32* %new_state.addr, align 4
  %0 = bitcast i32* %new_state.addr to i8*
  %call = call i32 @input_handler_for_each_handle(%struct.input_handler* noundef nonnull @kbd_handler, i8* noundef nonnull %0, i32 (%struct.input_handle*, i8*)* noundef nonnull @kbd_update_leds_helper) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit() unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ({ %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }, { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }* @keyboard_tasklet, i64 0, i32 1), align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit.exit

if.end.i:                                         ; preds = %entry
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or() #14
  %1 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %1, 0
  br label %arch_test_and_set_bit.exit

arch_test_and_set_bit.exit:                       ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(%struct.tasklet_struct* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or() unnamed_addr #0 {
entry:
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) getelementptr inbounds ({ %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }, { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }* @keyboard_tasklet, i64 0, i32 1), i64 1, i64* elementtype(i64) getelementptr inbounds ({ %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }, { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, { void (%struct.tasklet_struct*)* }, i64 }* @keyboard_tasklet, i64 0, i32 1)) #15, !srcloc !45
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_to_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %to, i64 noundef %n) #16
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %return, label %if.then2

if.then2:                                         ; preds = %entry
  %call4 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %to) #16
  %call5 = call i64 @__arch_copy_to_user(i8* noundef %call4, i8* noundef %from, i64 noundef %n) #14
  br label %return

return:                                           ; preds = %entry, %if.then2
  %n.addr.0 = phi i64 [ %call5, %if.then2 ], [ %n, %entry ]
  ret i64 %n.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_to_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #0 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #16
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #16
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !29

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #14
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @getkeycode_helper(%struct.input_handle* nocapture noundef readonly %handle, i8* noundef %data) #0 {
entry:
  %dev = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %0 = load %struct.input_dev*, %struct.input_dev** %dev, align 8
  %ke = bitcast i8* %data to %struct.input_keymap_entry*
  %call = call i32 @input_get_keycode(%struct.input_dev* noundef %0, %struct.input_keymap_entry* noundef %ke) #14
  %error = getelementptr inbounds i8, i8* %data, i64 40
  %1 = bitcast i8* %error to i32*
  store i32 %call, i32* %1, align 4
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_get_keycode(%struct.input_dev* noundef, %struct.input_keymap_entry* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @setkeycode_helper(%struct.input_handle* nocapture noundef readonly %handle, i8* noundef %data) #0 {
entry:
  %dev = getelementptr inbounds %struct.input_handle, %struct.input_handle* %handle, i64 0, i32 3
  %0 = load %struct.input_dev*, %struct.input_dev** %dev, align 8
  %ke = bitcast i8* %data to %struct.input_keymap_entry*
  %call = call i32 @input_set_keycode(%struct.input_dev* noundef %0, %struct.input_keymap_entry* noundef %ke) #14
  %error = getelementptr inbounds i8, i8* %data, i64 40
  %1 = bitcast i8* %error to i32*
  store i32 %call, i32* %1, align 4
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_set_keycode(%struct.input_dev* noundef, %struct.input_keymap_entry* noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !46
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #14
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !29

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #14
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !47
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { nofree nounwind readonly }
attributes #13 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { cold nobuiltin nounwind "no-builtins" }
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
!8 = !{i64 2149860891}
!9 = !{i64 2153143076}
!10 = !{i64 2153648951, i64 2153648989, i64 2153649006, i64 2153649040, i64 2153649062, i64 2153649088, i64 2153649106, i64 2153649264, i64 2153649305, i64 2153649327, i64 2153649373}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148991375}
!13 = !{i64 2153653522, i64 2153653560, i64 2153653577, i64 2153653611, i64 2153653633, i64 2153653659, i64 2153653677, i64 2153653835, i64 2153653876, i64 2153653898, i64 2153653944}
!14 = !{i64 2153657600, i64 2153657637, i64 2153657654, i64 2153657689, i64 2153657711, i64 2153657737, i64 2153657760, i64 2153657778, i64 2153657937, i64 2153657978, i64 2153658000, i64 2153658046}
!15 = !{i64 2153662156, i64 2153662193, i64 2153662210, i64 2153662245, i64 2153662267, i64 2153662293, i64 2153662316, i64 2153662334, i64 2153662493, i64 2153662534, i64 2153662556, i64 2153662602}
!16 = !{i64 4335145, i64 4335228, i64 4335452, i64 4335672, i64 4335695}
!17 = !{i64 4339847, i64 4339871}
!18 = !{i64 2151892631}
!19 = !{!"auto-init"}
!20 = !{i64 2153667504, i64 2153667542, i64 2153667559, i64 2153667593, i64 2153667615, i64 2153667641, i64 2153667659, i64 2153667817, i64 2153667858, i64 2153667880, i64 2153667926}
!21 = !{i64 2153673332, i64 2153673370, i64 2153673387, i64 2153673421, i64 2153673443, i64 2153673469, i64 2153673487, i64 2153673649, i64 2153673690, i64 2153673712, i64 2153673758}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{i64 2153681246, i64 2153681283, i64 2153681300, i64 2153681335, i64 2153681357, i64 2153681383, i64 2153681406, i64 2153681424, i64 2153681587, i64 2153681628, i64 2153681650, i64 2153681696}
!25 = !{i64 334718, i64 334736}
!26 = !{i64 2147821920}
!27 = !{i64 2153689061, i64 2153689099, i64 2153689116, i64 2153689150, i64 2153689172, i64 2153689198, i64 2153689216, i64 2153689378, i64 2153689419, i64 2153689441, i64 2153689487}
!28 = !{i64 2153693444, i64 2153693482, i64 2153693499, i64 2153693533, i64 2153693555, i64 2153693581, i64 2153693599, i64 2153693761, i64 2153693802, i64 2153693824, i64 2153693870}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2149438189, i64 2149438236, i64 2149438242, i64 2149438279, i64 2149438297, i64 2149439608, i64 2149439656, i64 2149439704, i64 2149439767, i64 2149439816, i64 2149438375, i64 2149438400, i64 2149438426, i64 2149438432, i64 2149439274, i64 2149439314, i64 2149439332, i64 2149439364, i64 2149439392, i64 2149439446, i64 2149439466, i64 2149439563, i64 2149438455, i64 2149438469, i64 2149438475, i64 2149438525, i64 2149438571, i64 2149438604}
!31 = !{i64 2149440368, i64 2149440415, i64 2149440421, i64 2149440458, i64 2149440476, i64 2149441419, i64 2149441467, i64 2149441515, i64 2149441578, i64 2149441627, i64 2149440554, i64 2149440579, i64 2149440605, i64 2149440611, i64 2149440648, i64 2149440654, i64 2149440704, i64 2149440750, i64 2149440783}
!32 = !{i64 2149432486, i64 2149432533, i64 2149432539, i64 2149432576, i64 2149432594, i64 2149433935, i64 2149433983, i64 2149434031, i64 2149434094, i64 2149434143, i64 2149432672, i64 2149432697, i64 2149432723, i64 2149432729, i64 2149433601, i64 2149433641, i64 2149433659, i64 2149433691, i64 2149433719, i64 2149433773, i64 2149433793, i64 2149433890, i64 2149432752, i64 2149432766, i64 2149432772, i64 2149432822, i64 2149432868, i64 2149432901}
!33 = !{i64 2147948666, i64 2147948699, i64 2147948752, i64 2147948811, i64 2147948845, i64 2147948900, i64 2147948929, i64 2147948949}
!34 = !{i64 2149886734}
!35 = !{i64 2149830021}
!36 = !{i64 2149448263, i64 2149448310, i64 2149448316, i64 2149448353, i64 2149448371, i64 2149449682, i64 2149449730, i64 2149449778, i64 2149449841, i64 2149449890, i64 2149448449, i64 2149448474, i64 2149448500, i64 2149448506, i64 2149449348, i64 2149449388, i64 2149449406, i64 2149449438, i64 2149449466, i64 2149449520, i64 2149449540, i64 2149449637, i64 2149448529, i64 2149448543, i64 2149448549, i64 2149448599, i64 2149448645, i64 2149448678}
!37 = !{i8 0, i8 2}
!38 = !{i64 2147917823, i64 2147918334, i64 2147918364, i64 2147918390, i64 2147918422, i64 2147918451}
!39 = !{i64 2147928393, i64 2147928914, i64 2147928944, i64 2147928970, i64 2147929002, i64 2147929031}
!40 = !{i64 2149039308, i64 2149039355, i64 2149039361, i64 2149039398, i64 2149039416, i64 2149040343, i64 2149040391, i64 2149040439, i64 2149040502, i64 2149040551, i64 2149039494, i64 2149039519, i64 2149039545, i64 2149039551, i64 2149039588, i64 2149039594, i64 2149039644, i64 2149039690, i64 2149039723}
!41 = !{i64 2153142814}
!42 = !{i64 2153142342}
!43 = !{i64 2147848743, i64 2147849259, i64 2147849289, i64 2147849316, i64 2147849350, i64 2147849380}
!44 = !{i64 2147858464, i64 2147858980, i64 2147859010, i64 2147859037, i64 2147859071, i64 2147859101}
!45 = !{i64 2147918669, i64 2147919321, i64 2147919351, i64 2147919382, i64 2147919414, i64 2147919449, i64 2147919474}
!46 = !{i64 2149875892}
!47 = !{i64 2149883173}
