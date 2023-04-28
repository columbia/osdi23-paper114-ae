; ModuleID = 'drivers/input/touchscreen.c'
source_filename = "drivers/input/touchscreen.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
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
%struct.seq_file = type opaque
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.33, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.18, %union.anon.19, i32 }
%struct.request_queue = type opaque
%union.anon.18 = type { %struct.list_head }
%union.anon.19 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.20 }
%struct.anon.20 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.24 }
%struct.anon.24 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.32, i32, [12 x i8] }
%union.anon.32 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.33 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.34, %union.anon.49, %struct.atomic_t, [8 x i8] }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.49 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.50, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.50 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { i64 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.51, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.52, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.53, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.51 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.52 = type { %struct.callback_head }
%union.anon.53 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.36 }
%union.anon.36 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.58 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.54, %struct.qspinlock }
%union.anon.54 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.17 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.17 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.input_dev_poller = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.input_mt = type { i32, i32, i32, i32, i32, i32*, [0 x %struct.input_mt_slot] }
%struct.input_mt_slot = type { [14 x i32], i32, i32 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.63, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.63 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.input_value = type { i16, i16, i32 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_mt_pos = type { i16, i16 }

@.str = private unnamed_addr constant [18 x i8] c"touchscreen-min-x\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"touchscreen-size-x\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"touchscreen-fuzz-x\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"touchscreen-min-y\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"touchscreen-size-y\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"touchscreen-fuzz-y\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"touchscreen-max-pressure\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"touchscreen-fuzz-pressure\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"touchscreen-inverted-x\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"touchscreen-inverted-y\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"touchscreen-swapped-x-y\00", align 1
@__UNIQUE_ID_file205 = internal constant [41 x i8] c"input_core.file=drivers/input/input-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license206 = internal constant [26 x i8] c"input_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description207 = internal constant [75 x i8] c"input_core.description=Helper functions for touchscreens and other devices\00", section ".modinfo", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Parameters are specified but the axis %lu is not set up\0A\00", align 1
@llvm.compiler.used = appending global [3 x i8*] [i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_description207, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_file205, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_license206, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @touchscreen_parse_properties(%struct.input_dev* noundef %input, i1 noundef %multitouch, %struct.touchscreen_properties* noundef writeonly %prop) local_unnamed_addr #0 {
entry:
  %minimum = alloca i32, align 4
  %maximum = alloca i32, align 4
  %fuzz = alloca i32, align 4
  %__tmp = alloca %struct.input_absinfo, align 4
  %parent = getelementptr inbounds %struct.input_dev, %struct.input_dev* %input, i64 0, i32 40, i32 1
  %0 = load %struct.device*, %struct.device** %parent, align 8
  %1 = bitcast i32* %minimum to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  store i32 0, i32* %minimum, align 4, !annotation !7
  %2 = bitcast i32* %maximum to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 0, i32* %maximum, align 4, !annotation !7
  %3 = bitcast i32* %fuzz to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #7
  store i32 0, i32* %fuzz, align 4, !annotation !7
  call void @input_alloc_absinfo(%struct.input_dev* noundef %input) #8
  %absinfo2 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %input, i64 0, i32 26
  %4 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo2, align 8
  %tobool.not = icmp eq %struct.input_absinfo* %4, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cond = select i1 %multitouch, i32 53, i32 0
  %cond5 = select i1 %multitouch, i32 54, i32 1
  %call = call fastcc i32 @input_abs_get_min(%struct.input_dev* noundef %input, i32 noundef %cond) #9
  %call6 = call fastcc i1 @touchscreen_get_prop_u32(%struct.device* noundef %0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 noundef %call, i32* noundef nonnull %minimum) #9
  %call8 = call fastcc i32 @input_abs_get_max(%struct.input_dev* noundef %input, i32 noundef %cond) #9
  %add = add i32 %call8, 1
  %call9 = call fastcc i1 @touchscreen_get_prop_u32(%struct.device* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef %add, i32* noundef nonnull %maximum) #9
  %or200 = or i1 %call6, %call9
  %call14 = call fastcc i32 @input_abs_get_fuzz(%struct.input_dev* noundef %input, i32 noundef %cond) #9
  %call15 = call fastcc i1 @touchscreen_get_prop_u32(%struct.device* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 noundef %call14, i32* noundef nonnull %fuzz) #9
  %or19201 = or i1 %or200, %call15
  br i1 %or19201, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end
  %conv24 = zext i32 %cond to i64
  %5 = load i32, i32* %minimum, align 4
  %6 = load i32, i32* %maximum, align 4
  %sub = add i32 %6, -1
  %7 = load i32, i32* %fuzz, align 4
  call fastcc void @touchscreen_set_params(%struct.input_dev* noundef %input, i64 noundef %conv24, i32 noundef %5, i32 noundef %sub, i32 noundef %7) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end
  %call26 = call fastcc i32 @input_abs_get_min(%struct.input_dev* noundef %input, i32 noundef %cond5) #9
  %call27 = call fastcc i1 @touchscreen_get_prop_u32(%struct.device* noundef %0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 noundef %call26, i32* noundef nonnull %minimum) #9
  %call29 = call fastcc i32 @input_abs_get_max(%struct.input_dev* noundef %input, i32 noundef %cond5) #9
  %add30 = add i32 %call29, 1
  %call31 = call fastcc i1 @touchscreen_get_prop_u32(%struct.device* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 noundef %add30, i32* noundef nonnull %maximum) #9
  %or35202 = or i1 %call27, %call31
  %call38 = call fastcc i32 @input_abs_get_fuzz(%struct.input_dev* noundef %input, i32 noundef %cond5) #9
  %call39 = call fastcc i1 @touchscreen_get_prop_u32(%struct.device* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 noundef %call38, i32* noundef nonnull %fuzz) #9
  %or43203 = or i1 %or35202, %call39
  br i1 %or43203, label %if.then47, label %if.end50

if.then47:                                        ; preds = %if.end25
  %conv48 = zext i32 %cond5 to i64
  %8 = load i32, i32* %minimum, align 4
  %9 = load i32, i32* %maximum, align 4
  %sub49 = add i32 %9, -1
  %10 = load i32, i32* %fuzz, align 4
  call fastcc void @touchscreen_set_params(%struct.input_dev* noundef %input, i64 noundef %conv48, i32 noundef %8, i32 noundef %sub49, i32 noundef %10) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end25
  %cond53 = select i1 %multitouch, i32 58, i32 24
  %call54 = call fastcc i32 @input_abs_get_max(%struct.input_dev* noundef %input, i32 noundef %cond53) #9
  %call55 = call fastcc i1 @touchscreen_get_prop_u32(%struct.device* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 noundef %call54, i32* noundef nonnull %maximum) #9
  %call57 = call fastcc i32 @input_abs_get_fuzz(%struct.input_dev* noundef %input, i32 noundef %cond53) #9
  %call58 = call fastcc i1 @touchscreen_get_prop_u32(%struct.device* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 noundef %call57, i32* noundef nonnull %fuzz) #9
  %or62204 = or i1 %call55, %call58
  br i1 %or62204, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end50
  %conv67 = zext i32 %cond53 to i64
  %11 = load i32, i32* %maximum, align 4
  %12 = load i32, i32* %fuzz, align 4
  call fastcc void @touchscreen_set_params(%struct.input_dev* noundef %input, i64 noundef %conv67, i32 noundef 0, i32 noundef %11, i32 noundef %12) #9
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end50
  %tobool69.not = icmp eq %struct.touchscreen_properties* %prop, null
  br i1 %tobool69.not, label %cleanup, label %if.end71

if.end71:                                         ; preds = %if.end68
  %call72 = call fastcc i32 @input_abs_get_max(%struct.input_dev* noundef %input, i32 noundef %cond) #9
  %max_x = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %prop, i64 0, i32 0
  store i32 %call72, i32* %max_x, align 4
  %call73 = call fastcc i32 @input_abs_get_max(%struct.input_dev* noundef %input, i32 noundef %cond5) #9
  %max_y = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %prop, i64 0, i32 1
  store i32 %call73, i32* %max_y, align 4
  %call74 = call fastcc i1 @device_property_read_bool(%struct.device* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0)) #9
  %invert_x = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %prop, i64 0, i32 2
  %frombool75 = zext i1 %call74 to i8
  store i8 %frombool75, i8* %invert_x, align 4
  br i1 %call74, label %if.then78, label %if.end84

if.then78:                                        ; preds = %if.end71
  %13 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo2, align 8
  %idxprom = zext i32 %cond to i64
  %minimum80 = getelementptr %struct.input_absinfo, %struct.input_absinfo* %13, i64 %idxprom, i32 1
  %14 = load i32, i32* %minimum80, align 4
  %maximum81 = getelementptr %struct.input_absinfo, %struct.input_absinfo* %13, i64 %idxprom, i32 2
  %15 = load i32, i32* %maximum81, align 4
  %sub82 = sub i32 %15, %14
  store i32 %sub82, i32* %maximum81, align 4
  store i32 0, i32* %minimum80, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then78, %if.end71
  %call85 = call fastcc i1 @device_property_read_bool(%struct.device* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0)) #9
  %invert_y = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %prop, i64 0, i32 3
  %frombool86 = zext i1 %call85 to i8
  store i8 %frombool86, i8* %invert_y, align 1
  br i1 %call85, label %if.then89, label %if.end97

if.then89:                                        ; preds = %if.end84
  %16 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo2, align 8
  %idxprom91 = zext i32 %cond5 to i64
  %minimum93 = getelementptr %struct.input_absinfo, %struct.input_absinfo* %16, i64 %idxprom91, i32 1
  %17 = load i32, i32* %minimum93, align 4
  %maximum94 = getelementptr %struct.input_absinfo, %struct.input_absinfo* %16, i64 %idxprom91, i32 2
  %18 = load i32, i32* %maximum94, align 4
  %sub95 = sub i32 %18, %17
  store i32 %sub95, i32* %maximum94, align 4
  store i32 0, i32* %minimum93, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then89, %if.end84
  %call98 = call fastcc i1 @device_property_read_bool(%struct.device* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #9
  %swap_x_y = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %prop, i64 0, i32 4
  %frombool99 = zext i1 %call98 to i8
  store i8 %frombool99, i8* %swap_x_y, align 2
  br i1 %call98, label %do.body, label %cleanup

do.body:                                          ; preds = %if.end97
  %__tmp.0.sroa_cast = bitcast %struct.input_absinfo* %__tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %__tmp.0.sroa_cast)
  %19 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo2, align 8
  %idxprom104 = zext i32 %cond to i64
  %arrayidx105 = getelementptr %struct.input_absinfo, %struct.input_absinfo* %19, i64 %idxprom104
  %20 = bitcast %struct.input_absinfo* %arrayidx105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(24) %__tmp.0.sroa_cast, i8* noundef align 4 dereferenceable(24) %20, i64 24, i1 false)
  %idxprom110 = zext i32 %cond5 to i64
  %arrayidx111 = getelementptr %struct.input_absinfo, %struct.input_absinfo* %19, i64 %idxprom110
  %21 = bitcast %struct.input_absinfo* %arrayidx111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 4 dereferenceable(24) %20, i8* noundef align 4 dereferenceable(24) %21, i64 24, i1 false)
  %22 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo2, align 8
  %arrayidx114 = getelementptr %struct.input_absinfo, %struct.input_absinfo* %22, i64 %idxprom110
  %23 = bitcast %struct.input_absinfo* %arrayidx114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 4 dereferenceable(24) %23, i8* noundef nonnull align 4 dereferenceable(24) %__tmp.0.sroa_cast, i64 24, i1 false)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %__tmp.0.sroa_cast)
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %do.body, %if.end68, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(%struct.input_dev* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @touchscreen_get_prop_u32(%struct.device* noundef %dev, i8* noundef %property, i32 noundef %default_value, i32* nocapture noundef writeonly %value) unnamed_addr #0 {
entry:
  %val = alloca i32, align 4
  %0 = bitcast i32* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 0, i32* %val, align 4, !annotation !7
  %call = call fastcc i32 @device_property_read_u32(%struct.device* noundef %dev, i8* noundef %property, i32* noundef nonnull %val) #9
  %tobool.not = icmp eq i32 %call, 0
  %1 = load i32, i32* %val, align 4
  %storemerge = select i1 %tobool.not, i32 %1, i32 %default_value
  store i32 %storemerge, i32* %value, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @input_abs_get_min(%struct.input_dev* nocapture noundef readonly %dev, i32 noundef %axis) unnamed_addr #3 {
entry:
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %0 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %tobool.not = icmp eq %struct.input_absinfo* %0, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %idxprom = zext i32 %axis to i64
  %minimum = getelementptr %struct.input_absinfo, %struct.input_absinfo* %0, i64 %idxprom, i32 1
  %1 = load i32, i32* %minimum, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @input_abs_get_max(%struct.input_dev* nocapture noundef readonly %dev, i32 noundef %axis) unnamed_addr #3 {
entry:
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %0 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %tobool.not = icmp eq %struct.input_absinfo* %0, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %idxprom = zext i32 %axis to i64
  %maximum = getelementptr %struct.input_absinfo, %struct.input_absinfo* %0, i64 %idxprom, i32 2
  %1 = load i32, i32* %maximum, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @input_abs_get_fuzz(%struct.input_dev* nocapture noundef readonly %dev, i32 noundef %axis) unnamed_addr #3 {
entry:
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %0 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %tobool.not = icmp eq %struct.input_absinfo* %0, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %idxprom = zext i32 %axis to i64
  %fuzz = getelementptr %struct.input_absinfo, %struct.input_absinfo* %0, i64 %idxprom, i32 3
  %1 = load i32, i32* %fuzz, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @touchscreen_set_params(%struct.input_dev* noundef %dev, i64 noundef %axis, i32 noundef %min, i32 noundef %max, i32 noundef %fuzz) unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 0
  %0 = load volatile i64, i64* %arraydecay, align 8
  %and.i = and i64 %axis, 63
  %1 = shl nuw i64 1, %and.i
  %2 = and i64 %0, %1
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 40
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* noundef %dev1, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i64 noundef %axis) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %absinfo2 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %3 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo2, align 8
  %minimum = getelementptr %struct.input_absinfo, %struct.input_absinfo* %3, i64 %axis, i32 1
  store i32 %min, i32* %minimum, align 4
  %maximum = getelementptr %struct.input_absinfo, %struct.input_absinfo* %3, i64 %axis, i32 2
  store i32 %max, i32* %maximum, align 4
  %fuzz3 = getelementptr %struct.input_absinfo, %struct.input_absinfo* %3, i64 %axis, i32 3
  store i32 %fuzz, i32* %fuzz3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @device_property_read_bool(%struct.device* noundef %dev, i8* noundef %propname) unnamed_addr #0 {
entry:
  %call = call i1 @device_property_present(%struct.device* noundef %dev, i8* noundef %propname) #8
  ret i1 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @touchscreen_set_mt_pos(%struct.input_mt_pos* nocapture noundef writeonly %pos, %struct.touchscreen_properties* nocapture noundef readonly %prop, i32 noundef %x, i32 noundef %y) local_unnamed_addr #5 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  call fastcc void @touchscreen_apply_prop_to_x_y(%struct.touchscreen_properties* noundef %prop, i32* noundef nonnull %x.addr, i32* noundef nonnull %y.addr) #9
  %0 = load i32, i32* %x.addr, align 4
  %conv = trunc i32 %0 to i16
  %x1 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %pos, i64 0, i32 0
  store i16 %conv, i16* %x1, align 2
  %1 = load i32, i32* %y.addr, align 4
  %conv2 = trunc i32 %1 to i16
  %y3 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %pos, i64 0, i32 1
  store i16 %conv2, i16* %y3, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @touchscreen_apply_prop_to_x_y(%struct.touchscreen_properties* nocapture noundef readonly %prop, i32* nocapture noundef %x, i32* nocapture noundef %y) unnamed_addr #5 {
entry:
  %invert_x = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %prop, i64 0, i32 2
  %0 = load i8, i8* %invert_x, align 4, !range !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %max_x = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %prop, i64 0, i32 0
  %1 = load i32, i32* %max_x, align 4
  %2 = load i32, i32* %x, align 4
  %sub = sub i32 %1, %2
  store i32 %sub, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %invert_y = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %prop, i64 0, i32 3
  %3 = load i8, i8* %invert_y, align 1, !range !8
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %max_y = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %prop, i64 0, i32 1
  %4 = load i32, i32* %max_y, align 4
  %5 = load i32, i32* %y, align 4
  %sub3 = sub i32 %4, %5
  store i32 %sub3, i32* %y, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %swap_x_y = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %prop, i64 0, i32 4
  %6 = load i8, i8* %swap_x_y, align 2, !range !8
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %if.end7, label %do.body

do.body:                                          ; preds = %if.end4
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %y, align 4
  store i32 %8, i32* %x, align 4
  store i32 %7, i32* %y, align 4
  br label %if.end7

if.end7:                                          ; preds = %do.body, %if.end4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @touchscreen_report_pos(%struct.input_dev* noundef %input, %struct.touchscreen_properties* nocapture noundef readonly %prop, i32 noundef %x, i32 noundef %y, i1 noundef %multitouch) local_unnamed_addr #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  call fastcc void @touchscreen_apply_prop_to_x_y(%struct.touchscreen_properties* noundef %prop, i32* noundef nonnull %x.addr, i32* noundef nonnull %y.addr) #9
  %cond = select i1 %multitouch, i32 53, i32 0
  %0 = load i32, i32* %x.addr, align 4
  call fastcc void @input_report_abs(%struct.input_dev* noundef %input, i32 noundef %cond, i32 noundef %0) #9
  %cond2 = select i1 %multitouch, i32 54, i32 1
  %1 = load i32, i32* %y.addr, align 4
  call fastcc void @input_report_abs(%struct.input_dev* noundef %input, i32 noundef %cond2, i32 noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_report_abs(%struct.input_dev* noundef %dev, i32 noundef %code, i32 noundef %value) unnamed_addr #0 {
entry:
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 3, i32 noundef %code, i32 noundef %value) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @device_property_read_u32(%struct.device* noundef %dev, i8* noundef %propname, i32* noundef %val) unnamed_addr #0 {
entry:
  %call = call i32 @device_property_read_u32_array(%struct.device* noundef %dev, i8* noundef %propname, i32* noundef %val, i64 noundef 1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(%struct.device* noundef, i8* noundef, i32* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(%struct.device* noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @device_property_present(%struct.device* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(%struct.input_dev* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { cold nobuiltin nounwind "no-builtins" }

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
