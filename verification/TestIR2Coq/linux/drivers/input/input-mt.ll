; ModuleID = 'drivers/input/input-mt.c'
source_filename = "drivers/input/input-mt.c"
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
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.input_value = type { i16, i16, i32 }
%struct.input_mt_pos = type { i16, i16 }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @input_mt_init_slots(%struct.input_dev* noundef %dev, i32 noundef %num_slots, i32 noundef %flags) local_unnamed_addr #0 {
entry:
  %mt1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 25
  %0 = load %struct.input_mt*, %struct.input_mt** %mt1, align 8
  %tobool.not = icmp eq i32 %num_slots, 0
  br i1 %tobool.not, label %cleanup68, label %if.end

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq %struct.input_mt* %0, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %num_slots4 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 1
  %1 = load i32, i32* %num_slots4, align 4
  %cmp.not = icmp eq i32 %1, %num_slots
  %cond = select i1 %cmp.not, i32 0, i32 -22
  br label %cleanup68

if.end5:                                          ; preds = %if.end
  %conv = zext i32 %num_slots to i64
  %call = call fastcc i64 @__ab_c_size(i64 noundef %conv) #10
  %call6 = call fastcc i8* @kzalloc(i64 noundef %call) #10
  %tobool7.not = icmp eq i8* %call6, null
  br i1 %tobool7.not, label %err_mem, label %if.end9

if.end9:                                          ; preds = %if.end5
  %num_slots10 = getelementptr inbounds i8, i8* %call6, i64 4
  %2 = bitcast i8* %num_slots10 to i32*
  store i32 %num_slots, i32* %2, align 4
  %flags11 = getelementptr inbounds i8, i8* %call6, i64 12
  %3 = bitcast i8* %flags11 to i32*
  store i32 %flags, i32* %3, align 4
  %sub = add i32 %num_slots, -1
  call void @input_set_abs_params(%struct.input_dev* noundef %dev, i32 noundef 47, i32 noundef 0, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #11
  call void @input_set_abs_params(%struct.input_dev* noundef %dev, i32 noundef 57, i32 noundef 0, i32 noundef 65535, i32 noundef 0, i32 noundef 0) #11
  %and = and i32 %flags, 3
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end9
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 5, i64 0
  %4 = load i64, i64* %arraydecay, align 8
  %or.i = or i64 %4, 2
  store i64 %or.i, i64* %arraydecay, align 8
  %add.ptr.i = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 6, i64 5
  %5 = load i64, i64* %add.ptr.i, align 8
  %or.i117 = or i64 %5, 1024
  store i64 %or.i117, i64* %add.ptr.i, align 8
  call fastcc void @copy_abs(%struct.input_dev* noundef %dev, i32 noundef 0, i32 noundef 53) #10
  call fastcc void @copy_abs(%struct.input_dev* noundef %dev, i32 noundef 1, i32 noundef 54) #10
  call fastcc void @copy_abs(%struct.input_dev* noundef %dev, i32 noundef 24, i32 noundef 58) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9
  %and16 = and i32 %flags, 1
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end42, label %if.then18

if.then18:                                        ; preds = %if.end15
  %add.ptr.i118 = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 6, i64 5
  %6 = load i64, i64* %add.ptr.i118, align 8
  %or.i121 = or i64 %6, 8224
  store i64 %or.i121, i64* %add.ptr.i118, align 8
  %cmp23 = icmp ugt i32 %num_slots, 2
  br i1 %cmp23, label %if.end28, label %if.end40

if.end28:                                         ; preds = %if.then18
  %or.i123 = or i64 %6, 24608
  store i64 %or.i123, i64* %add.ptr.i118, align 8
  %cmp29.not = icmp eq i32 %num_slots, 3
  br i1 %cmp29.not, label %if.end40, label %if.end34

if.end34:                                         ; preds = %if.end28
  %or.i125 = or i64 %6, 57376
  store i64 %or.i125, i64* %add.ptr.i118, align 8
  %cmp35 = icmp ugt i32 %num_slots, 4
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end34
  %or.i127 = or i64 %6, 57632
  store i64 %or.i127, i64* %add.ptr.i118, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then18, %if.end28, %if.then37, %if.end34
  %arraydecay41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 4, i64 0
  %7 = load i64, i64* %arraydecay41, align 8
  %or.i128 = or i64 %7, 1
  store i64 %or.i128, i64* %arraydecay41, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end40, %if.end15
  %and43 = and i32 %flags, 2
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end48, label %if.then45

if.then45:                                        ; preds = %if.end42
  %arraydecay47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 4, i64 0
  %8 = load i64, i64* %arraydecay47, align 8
  %or.i129 = or i64 %8, 2
  store i64 %or.i129, i64* %arraydecay47, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end42
  %and49 = and i32 %flags, 16
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end54, label %if.then51

if.then51:                                        ; preds = %if.end48
  %arraydecay53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 4, i64 0
  %9 = load i64, i64* %arraydecay53, align 8
  %or.i130 = or i64 %9, 8
  store i64 %or.i130, i64* %arraydecay53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48
  %and55 = and i32 %flags, 8
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %for.body.preheader, label %if.then57

if.then57:                                        ; preds = %if.end54
  %mul = mul i32 %num_slots, %num_slots
  %conv58 = zext i32 %mul to i64
  %call59 = call fastcc i8* @kcalloc(i64 noundef %conv58) #10
  %red = getelementptr inbounds i8, i8* %call6, i64 24
  %10 = bitcast i8* %red to i8**
  store i8* %call59, i8** %10, align 8
  %tobool61.not = icmp eq i8* %call59, null
  br i1 %tobool61.not, label %err_mem, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end54, %if.then57
  %slots = getelementptr inbounds i8, i8* %call6, i64 32
  %11 = bitcast i8* %slots to [0 x %struct.input_mt_slot]*
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.0134 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %idxprom = sext i32 %i.0134 to i64
  %arrayidx = getelementptr [0 x %struct.input_mt_slot], [0 x %struct.input_mt_slot]* %11, i64 0, i64 %idxprom
  call fastcc void @input_mt_set_value(%struct.input_mt_slot* noundef %arrayidx) #10
  %inc = add nuw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, %num_slots
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %frame = getelementptr inbounds i8, i8* %call6, i64 16
  %12 = bitcast i8* %frame to i32*
  store i32 1, i32* %12, align 8
  %13 = bitcast %struct.input_mt** %mt1 to i8**
  store i8* %call6, i8** %13, align 8
  br label %cleanup68

err_mem:                                          ; preds = %if.then57, %if.end5
  call void @kfree(i8* noundef %call6) #11
  br label %cleanup68

cleanup68:                                        ; preds = %entry, %err_mem, %for.end, %if.then3
  %retval.0 = phi i32 [ %cond, %if.then3 ], [ -12, %err_mem ], [ 0, %for.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #11
  ret i8* %call10.i
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__ab_c_size(i64 noundef %a) unnamed_addr #1 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a, i64 64)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %3 = or i64 %2, 32
  %retval.0 = select i1 %1, i64 -1, i64 %3
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(%struct.input_dev* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc void @copy_abs(%struct.input_dev* noundef %dev, i32 noundef %dst, i32 noundef %src) unnamed_addr #3 {
entry:
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %0 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %tobool.not = icmp eq %struct.input_absinfo* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 0
  %1 = load volatile i64, i64* %arraydecay, align 8
  %and.i = and i32 %src, 63
  %sh_prom.i = zext i32 %and.i to i64
  %2 = shl nuw i64 1, %sh_prom.i
  %3 = and i64 %1, %2
  %tobool1.not = icmp eq i64 %3, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %dst to i64
  %arrayidx = getelementptr %struct.input_absinfo, %struct.input_absinfo* %0, i64 %idxprom
  %idxprom4 = zext i32 %src to i64
  %arrayidx5 = getelementptr %struct.input_absinfo, %struct.input_absinfo* %0, i64 %idxprom4
  %4 = bitcast %struct.input_absinfo* %arrayidx to i8*
  %5 = bitcast %struct.input_absinfo* %arrayidx5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 4 dereferenceable(24) %4, i8* noundef align 4 dereferenceable(24) %5, i64 24, i1 false)
  %6 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %fuzz = getelementptr %struct.input_absinfo, %struct.input_absinfo* %6, i64 %idxprom, i32 3
  store i32 0, i32* %fuzz, align 4
  %rem.i = and i32 %dst, 63
  %sh_prom.i19 = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i19
  %div.i = lshr i32 %dst, 6
  %idx.ext.i = zext i32 %div.i to i64
  %add.ptr.i = getelementptr %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 %idx.ext.i
  %7 = load i64, i64* %add.ptr.i, align 8
  %or.i = or i64 %7, %shl.i
  store i64 %or.i, i64* %add.ptr.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kcalloc(i64 noundef %n) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kmalloc_array(i64 noundef %n) #10
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @input_mt_set_value(%struct.input_mt_slot* nocapture noundef writeonly %slot) unnamed_addr #4 {
entry:
  %arrayidx = getelementptr %struct.input_mt_slot, %struct.input_mt_slot* %slot, i64 0, i32 0, i64 9
  store i32 -1, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_mt_destroy_slots(%struct.input_dev* nocapture noundef %dev) local_unnamed_addr #0 {
entry:
  %mt = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 25
  %0 = load %struct.input_mt*, %struct.input_mt** %mt, align 8
  %tobool.not = icmp eq %struct.input_mt* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %red = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 5
  %1 = bitcast i32** %red to i8**
  %2 = load i8*, i8** %1, align 8
  call void @kfree(i8* noundef %2) #11
  %3 = bitcast %struct.input_mt** %mt to i8**
  %4 = load i8*, i8** %3, align 8
  call void @kfree(i8* noundef %4) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.input_mt* null, %struct.input_mt** %mt, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @input_mt_report_slot_state(%struct.input_dev* noundef %dev, i32 noundef %tool_type, i1 noundef %active) local_unnamed_addr #0 {
entry:
  %mt1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 25
  %0 = load %struct.input_mt*, %struct.input_mt** %mt1, align 8
  %tobool.not = icmp eq %struct.input_mt* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %slot2 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 2
  %1 = load i32, i32* %slot2, align 8
  %idxprom = sext i32 %1 to i64
  %frame = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 4
  %2 = load i32, i32* %frame, align 8
  %frame3 = getelementptr %struct.input_mt, %struct.input_mt* %0, i64 0, i32 6, i64 %idxprom, i32 1
  store i32 %2, i32* %frame3, align 4
  br i1 %active, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 3, i32 noundef 57, i32 noundef -1) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.input_mt, %struct.input_mt* %0, i64 0, i32 6, i64 %idxprom
  %call = call fastcc i32 @input_mt_get_value(%struct.input_mt_slot* noundef %arrayidx, i32 noundef 57) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end6
  %call8 = call fastcc i32 @input_mt_new_trkid(%struct.input_mt* noundef nonnull %0) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end6
  %id.0 = phi i32 [ %call8, %if.then7 ], [ %call, %if.end6 ]
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 3, i32 noundef 57, i32 noundef %id.0) #11
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 3, i32 noundef 55, i32 noundef %tool_type) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9, %if.then5
  %retval.0 = phi i1 [ true, %if.end9 ], [ false, %if.then5 ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(%struct.input_dev* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @input_mt_get_value(%struct.input_mt_slot* nocapture noundef readonly %slot, i32 noundef %code) unnamed_addr #5 {
entry:
  %sub = add i32 %code, -48
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr %struct.input_mt_slot, %struct.input_mt_slot* %slot, i64 0, i32 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @input_mt_new_trkid(%struct.input_mt* nocapture noundef %mt) unnamed_addr #6 {
entry:
  %trkid = getelementptr inbounds %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 0
  %0 = load i32, i32* %trkid, align 8
  %inc = add i32 %0, 1
  store i32 %inc, i32* %trkid, align 8
  %and = and i32 %0, 65535
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_mt_report_finger_count(%struct.input_dev* noundef %dev, i32 noundef %count) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %count, 1
  %conv = zext i1 %cmp to i32
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 1, i32 noundef 325, i32 noundef %conv) #11
  %cmp1 = icmp eq i32 %count, 2
  %conv2 = zext i1 %cmp1 to i32
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 1, i32 noundef 333, i32 noundef %conv2) #11
  %cmp3 = icmp eq i32 %count, 3
  %conv4 = zext i1 %cmp3 to i32
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 1, i32 noundef 334, i32 noundef %conv4) #11
  %cmp5 = icmp eq i32 %count, 4
  %conv6 = zext i1 %cmp5 to i32
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 1, i32 noundef 335, i32 noundef %conv6) #11
  %cmp7 = icmp eq i32 %count, 5
  %conv8 = zext i1 %cmp7 to i32
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 1, i32 noundef 328, i32 noundef %conv8) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_mt_report_pointer_emulation(%struct.input_dev* noundef %dev, i1 noundef %use_count) local_unnamed_addr #0 {
entry:
  %mt1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 25
  %0 = load %struct.input_mt*, %struct.input_mt** %mt1, align 8
  %tobool.not = icmp eq %struct.input_mt* %0, null
  br i1 %tobool.not, label %cleanup47, label %if.end

if.end:                                           ; preds = %entry
  %num_slots = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 1
  %1 = load i32, i32* %num_slots, align 4
  %cmp100 = icmp sgt i32 %1, 0
  br i1 %cmp100, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end
  %trkid = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 0
  %2 = load i32, i32* %trkid, align 8
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %cleanup
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %cleanup ]
  %oldest.0104 = phi %struct.input_mt_slot* [ null, %for.body.preheader ], [ %oldest.2, %cleanup ]
  %oldid.0103 = phi i32 [ %2, %for.body.preheader ], [ %oldid.2, %cleanup ]
  %count.0101 = phi i32 [ 0, %for.body.preheader ], [ %count.1, %cleanup ]
  %arrayidx = getelementptr %struct.input_mt, %struct.input_mt* %0, i64 0, i32 6, i64 %indvars.iv
  %call = call fastcc i32 @input_mt_get_value(%struct.input_mt_slot* noundef %arrayidx, i32 noundef 57) #10
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %for.body
  %sub = sub i32 %call, %oldid.0103
  %and = and i32 %sub, 32768
  %tobool5.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool5.not, i32 %oldid.0103, i32 %call
  %spec.select89 = select i1 %tobool5.not, %struct.input_mt_slot* %oldest.0104, %struct.input_mt_slot* %arrayidx
  %inc = add i32 %count.0101, 1
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end4
  %count.1 = phi i32 [ %inc, %if.end4 ], [ %count.0101, %for.body ]
  %oldid.2 = phi i32 [ %spec.select, %if.end4 ], [ %oldid.0103, %for.body ]
  %oldest.2 = phi %struct.input_mt_slot* [ %spec.select89, %if.end4 ], [ %oldest.0104, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup, %if.end
  %count.0.lcssa = phi i32 [ 0, %if.end ], [ %count.1, %cleanup ]
  %oldest.0.lcssa = phi %struct.input_mt_slot* [ null, %if.end ], [ %oldest.2, %cleanup ]
  %cmp10 = icmp sgt i32 %count.0.lcssa, 0
  %conv = zext i1 %cmp10 to i32
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 1, i32 noundef 330, i32 noundef %conv) #11
  br i1 %use_count, label %if.then12, label %if.end28

if.then12:                                        ; preds = %for.end
  %cmp13 = icmp eq i32 %count.0.lcssa, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.then12
  %arraydecay = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 0
  %3 = load volatile i64, i64* %arraydecay, align 8
  %4 = and i64 %3, 576460752303423488
  %tobool16.not = icmp eq i64 %4, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %if.end27

land.lhs.true17:                                  ; preds = %land.lhs.true
  %5 = load volatile i64, i64* %arraydecay, align 8
  %6 = and i64 %5, 33554432
  %tobool21.not = icmp eq i64 %6, 0
  br i1 %tobool21.not, label %if.end27, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %call23 = call fastcc i32 @input_abs_get_val(%struct.input_dev* noundef %dev) #10
  %cmp24.not = icmp ne i32 %call23, 0
  %spec.select90 = zext i1 %cmp24.not to i32
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true22, %land.lhs.true17, %land.lhs.true, %if.then12
  %count.2 = phi i32 [ 0, %land.lhs.true ], [ 0, %land.lhs.true17 ], [ %count.0.lcssa, %if.then12 ], [ %spec.select90, %land.lhs.true22 ]
  call void @input_mt_report_finger_count(%struct.input_dev* noundef %dev, i32 noundef %count.2) #10
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %for.end
  %tobool29.not = icmp eq %struct.input_mt_slot* %oldest.0.lcssa, null
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end28
  %call31 = call fastcc i32 @input_mt_get_value(%struct.input_mt_slot* noundef nonnull %oldest.0.lcssa, i32 noundef 53) #10
  %call32 = call fastcc i32 @input_mt_get_value(%struct.input_mt_slot* noundef nonnull %oldest.0.lcssa, i32 noundef 54) #10
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 3, i32 noundef 0, i32 noundef %call31) #11
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 3, i32 noundef 1, i32 noundef %call32) #11
  %arraydecay34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 0
  %7 = load volatile i64, i64* %arraydecay34, align 8
  %8 = and i64 %7, 288230376151711744
  %tobool36.not = icmp eq i64 %8, 0
  br i1 %tobool36.not, label %cleanup47, label %if.then37

if.then37:                                        ; preds = %if.then30
  %call38 = call fastcc i32 @input_mt_get_value(%struct.input_mt_slot* noundef nonnull %oldest.0.lcssa, i32 noundef 58) #10
  br label %cleanup47.sink.split

if.else:                                          ; preds = %if.end28
  %arraydecay41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 8, i64 0
  %9 = load volatile i64, i64* %arraydecay41, align 8
  %10 = and i64 %9, 288230376151711744
  %tobool43.not = icmp eq i64 %10, 0
  br i1 %tobool43.not, label %cleanup47, label %cleanup47.sink.split

cleanup47.sink.split:                             ; preds = %if.else, %if.then37
  %.sink = phi i32 [ %call38, %if.then37 ], [ 0, %if.else ]
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 3, i32 noundef 24, i32 noundef %.sink) #11
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup47.sink.split, %if.else, %if.then30, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @input_abs_get_val(%struct.input_dev* nocapture noundef readonly %dev) unnamed_addr #5 {
entry:
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 26
  %0 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8
  %tobool.not = icmp eq %struct.input_absinfo* %0, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %value = getelementptr %struct.input_absinfo, %struct.input_absinfo* %0, i64 25, i32 0
  %1 = load i32, i32* %value, align 4
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_mt_drop_unused(%struct.input_dev* noundef %dev) local_unnamed_addr #0 {
entry:
  %mt1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 25
  %0 = load %struct.input_mt*, %struct.input_mt** %mt1, align 8
  %tobool.not = icmp eq %struct.input_mt* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @__input_mt_drop_unused(%struct.input_dev* noundef %dev, %struct.input_mt* noundef nonnull %0) #10
  %frame = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 4
  %1 = load i32, i32* %frame, align 8
  %inc = add i32 %1, 1
  store i32 %inc, i32* %frame, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__input_mt_drop_unused(%struct.input_dev* noundef %dev, %struct.input_mt* nocapture noundef readonly %mt) unnamed_addr #0 {
entry:
  %num_slots = getelementptr inbounds %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 1
  %0 = load i32, i32* %num_slots, align 4
  %cmp8 = icmp sgt i32 %0, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i32 [ %3, %for.inc ], [ %0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 6, i64 %indvars.iv
  %call = call fastcc i1 @input_mt_is_used(%struct.input_mt* noundef %mt, %struct.input_mt_slot* noundef %arrayidx) #10
  br i1 %call, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %2 = trunc i64 %indvars.iv to i32
  call fastcc void @input_mt_slot(%struct.input_dev* noundef %dev, i32 noundef %2) #10
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 3, i32 noundef 57, i32 noundef -1) #11
  %.pre = load i32, i32* %num_slots, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %3 = phi i32 [ %1, %for.body ], [ %.pre, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @input_mt_sync_frame(%struct.input_dev* noundef %dev) local_unnamed_addr #0 {
entry:
  %mt1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 25
  %0 = load %struct.input_mt*, %struct.input_mt** %mt1, align 8
  %tobool.not = icmp eq %struct.input_mt* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 3
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 4
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @__input_mt_drop_unused(%struct.input_dev* noundef %dev, %struct.input_mt* noundef nonnull %0) #10
  %.pre = load i32, i32* %flags, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %2 = phi i32 [ %.pre, %if.then3 ], [ %1, %if.end ]
  %3 = and i32 %2, 17
  %4 = icmp eq i32 %3, 1
  call void @input_mt_report_pointer_emulation(%struct.input_dev* noundef %dev, i1 noundef %4) #10
  %frame = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 4
  %5 = load i32, i32* %frame, align 8
  %inc = add i32 %5, 1
  store i32 %inc, i32* %frame, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i32 @input_mt_assign_slots(%struct.input_dev* nocapture noundef readonly %dev, i32* nocapture noundef %slots, %struct.input_mt_pos* noundef %pos, i32 noundef %num_pos, i32 noundef %dmax) local_unnamed_addr #7 {
entry:
  %mt1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 25
  %0 = load %struct.input_mt*, %struct.input_mt** %mt1, align 8
  %mul = shl i32 %dmax, 1
  %mul2 = mul i32 %mul, %dmax
  %tobool.not = icmp eq %struct.input_mt* %0, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %red = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 5
  %1 = load i32*, i32** %red, align 8
  %tobool3.not = icmp eq i32* %1, null
  br i1 %tobool3.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %num_slots = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 1
  %2 = load i32, i32* %num_slots, align 4
  %cmp = icmp slt i32 %2, %num_pos
  br i1 %cmp, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp slt i32 %num_pos, 1
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end5
  %call = call fastcc i32 @input_mt_set_matrix(%struct.input_mt* noundef nonnull %0, %struct.input_mt_pos* noundef %pos, i32 noundef %num_pos, i32 noundef %mul2) #10
  %3 = load i32*, i32** %red, align 8
  %div = sdiv i32 %call, %num_pos
  call fastcc void @find_reduced_matrix(i32* noundef %3, i32 noundef %num_pos, i32 noundef %div, i32 noundef %call, i32 noundef %mul2) #10
  call fastcc void @input_mt_set_slots(%struct.input_mt* noundef nonnull %0, i32* noundef %slots, i32 noundef %num_pos) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %entry, %lor.lhs.false, %if.end8
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -6, %lor.lhs.false ], [ -6, %entry ], [ -22, %if.end ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i32 @input_mt_set_matrix(%struct.input_mt* noundef readonly %mt, %struct.input_mt_pos* noundef readonly %pos, i32 noundef %num_pos, i32 noundef %mu) unnamed_addr #7 {
entry:
  %red = getelementptr inbounds %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 5
  %0 = load i32*, i32** %red, align 8
  %arraydecay = getelementptr inbounds %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 6, i64 0
  %num_slots = getelementptr inbounds %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 1
  %1 = load i32, i32* %num_slots, align 4
  %idx.ext47 = sext i32 %1 to i64
  %add.ptr48 = getelementptr %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 6, i64 %idx.ext47
  %cmp.not49 = icmp eq %struct.input_mt_slot* %arraydecay, %add.ptr48
  br i1 %cmp.not49, label %for.end19, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %idx.ext6 = sext i32 %num_pos to i64
  %add.ptr7 = getelementptr %struct.input_mt_pos, %struct.input_mt_pos* %pos, i64 %idx.ext6
  %cmp8.not44 = icmp eq %struct.input_mt_pos* %add.ptr7, %pos
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc17
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %5, %for.inc17 ]
  %s.051 = phi %struct.input_mt_slot* [ %arraydecay, %for.body.lr.ph ], [ %incdec.ptr18, %for.inc17 ]
  %w.050 = phi i32* [ %0, %for.body.lr.ph ], [ %w.2, %for.inc17 ]
  %call = call fastcc i1 @input_mt_is_active(%struct.input_mt_slot* noundef %s.051) #10
  br i1 %call, label %if.end, label %for.inc17

if.end:                                           ; preds = %for.body
  %call3 = call fastcc i32 @input_mt_get_value(%struct.input_mt_slot* noundef %s.051, i32 noundef 53) #10
  %call4 = call fastcc i32 @input_mt_get_value(%struct.input_mt_slot* noundef %s.051, i32 noundef 54) #10
  br i1 %cmp8.not44, label %for.inc17, label %for.body9

for.body9:                                        ; preds = %if.end, %for.body9
  %p.046 = phi %struct.input_mt_pos* [ %incdec.ptr16, %for.body9 ], [ %pos, %if.end ]
  %w.145 = phi i32* [ %incdec.ptr, %for.body9 ], [ %w.050, %if.end ]
  %x10 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %p.046, i64 0, i32 0
  %3 = load i16, i16* %x10, align 2
  %conv = sext i16 %3 to i32
  %sub = sub i32 %call3, %conv
  %y11 = getelementptr inbounds %struct.input_mt_pos, %struct.input_mt_pos* %p.046, i64 0, i32 1
  %4 = load i16, i16* %y11, align 2
  %conv12 = sext i16 %4 to i32
  %sub13 = sub i32 %call4, %conv12
  %mul = mul i32 %sub, %sub
  %mul14 = mul i32 %sub13, %sub13
  %add = sub i32 %mul, %mu
  %sub15 = add i32 %add, %mul14
  %incdec.ptr = getelementptr i32, i32* %w.145, i64 1
  store i32 %sub15, i32* %w.145, align 4
  %incdec.ptr16 = getelementptr %struct.input_mt_pos, %struct.input_mt_pos* %p.046, i64 1
  %cmp8.not = icmp eq %struct.input_mt_pos* %incdec.ptr16, %add.ptr7
  br i1 %cmp8.not, label %for.inc17.loopexit, label %for.body9

for.inc17.loopexit:                               ; preds = %for.body9
  %.pre = load i32, i32* %num_slots, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.inc17.loopexit, %if.end, %for.body
  %5 = phi i32 [ %2, %for.body ], [ %2, %if.end ], [ %.pre, %for.inc17.loopexit ]
  %w.2 = phi i32* [ %w.050, %for.body ], [ %w.050, %if.end ], [ %incdec.ptr, %for.inc17.loopexit ]
  %incdec.ptr18 = getelementptr %struct.input_mt_slot, %struct.input_mt_slot* %s.051, i64 1
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 6, i64 %idx.ext
  %cmp.not = icmp eq %struct.input_mt_slot* %incdec.ptr18, %add.ptr
  br i1 %cmp.not, label %for.end19.loopexit, label %for.body

for.end19.loopexit:                               ; preds = %for.inc17
  %.pre54 = load i32*, i32** %red, align 8
  br label %for.end19

for.end19:                                        ; preds = %for.end19.loopexit, %entry
  %6 = phi i32* [ %0, %entry ], [ %.pre54, %for.end19.loopexit ]
  %w.0.lcssa = phi i32* [ %0, %entry ], [ %w.2, %for.end19.loopexit ]
  %sub.ptr.lhs.cast = ptrtoint i32* %w.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %7 = lshr exact i64 %sub.ptr.sub, 2
  %conv21 = trunc i64 %7 to i32
  ret i32 %conv21
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @find_reduced_matrix(i32* noundef %w, i32 noundef %nr, i32 noundef %nc, i32 noundef %nrc, i32 noundef %mu) unnamed_addr #7 {
entry:
  %cmp57 = icmp sgt i32 %nrc, 0
  br i1 %cmp57, label %for.cond1.preheader.lr.ph, label %for.end27

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp252 = icmp sgt i32 %nr, 0
  %idx.ext660 = zext i32 %nrc to i64
  %cmp8 = icmp sle i32 %nr, %nc
  %conv = zext i1 %cmp8 to i32
  %idx.ext17 = sext i32 %nr to i64
  %cmp19 = icmp sle i32 %nc, %nr
  %conv20 = zext i1 %cmp19 to i32
  %wide.trip.count = zext i32 %nr to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end24, %for.cond1.preheader.lr.ph
  %k.058 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc26, %for.end24 ]
  br i1 %cmp252, label %for.body3, label %for.body12.preheader

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %add.ptr = getelementptr i32, i32* %w, i64 %indvars.iv
  %add.ptr7 = getelementptr i32, i32* %add.ptr, i64 %idx.ext660
  %call = call fastcc i32 @adjust_dual(i32* noundef %add.ptr, i32 noundef %nr, i32* noundef %add.ptr7, i32 noundef %conv, i32 noundef %mu) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body12.preheader, label %for.body3

for.body12.preheader:                             ; preds = %for.body3, %for.cond1.preheader
  br label %for.body12

for.body12:                                       ; preds = %for.body12.preheader, %for.body12
  %sum.056 = phi i32 [ %add, %for.body12 ], [ 0, %for.body12.preheader ]
  %i.155 = phi i32 [ %add23, %for.body12 ], [ 0, %for.body12.preheader ]
  %idx.ext13 = sext i32 %i.155 to i64
  %add.ptr14 = getelementptr i32, i32* %w, i64 %idx.ext13
  %add.ptr18 = getelementptr i32, i32* %add.ptr14, i64 %idx.ext17
  %call21 = call fastcc i32 @adjust_dual(i32* noundef %add.ptr14, i32 noundef 1, i32* noundef %add.ptr18, i32 noundef %conv20, i32 noundef %mu) #10
  %add = add i32 %call21, %sum.056
  %add23 = add i32 %i.155, %nr
  %cmp10 = icmp slt i32 %add23, %nrc
  br i1 %cmp10, label %for.body12, label %for.end24

for.end24:                                        ; preds = %for.body12
  %tobool.not = icmp ne i32 %add, 0
  %inc26 = add nuw nsw i32 %k.058, 1
  %cmp = icmp slt i32 %inc26, %nrc
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.cond1.preheader, label %for.end27

for.end27:                                        ; preds = %for.end24, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @input_mt_set_slots(%struct.input_mt* noundef %mt, i32* nocapture noundef %slots, i32 noundef %num_pos) unnamed_addr #7 {
entry:
  %red = getelementptr inbounds %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 5
  %0 = load i32*, i32** %red, align 8
  %cmp.not100 = icmp eq i32 %num_pos, 0
  br i1 %cmp.not100, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = add i32 %num_pos, 2147483647
  %2 = icmp ult i32 %1, -2147483647
  br i1 %2, label %for.body.preheader132, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i32 %num_pos, -2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %induction128 = or i32 %index, 1
  %3 = sext i32 %index to i64
  %4 = sext i32 %induction128 to i64
  %5 = getelementptr i32, i32* %slots, i64 %3
  %6 = getelementptr i32, i32* %slots, i64 %4
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %index.next = add nuw i32 %index, 2
  %7 = icmp eq i32 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %n.vec, %num_pos
  br i1 %cmp.n, label %for.end, label %for.body.preheader132

for.body.preheader132:                            ; preds = %for.body.preheader, %middle.block
  %j.0101.ph = phi i32 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader132, %for.body
  %j.0101 = phi i32 [ %inc, %for.body ], [ %j.0101.ph, %for.body.preheader132 ]
  %idxprom = sext i32 %j.0101 to i64
  %arrayidx = getelementptr i32, i32* %slots, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  %inc = add nuw i32 %j.0101, 1
  %cmp.not = icmp eq i32 %inc, %num_pos
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body, %middle.block, %entry
  %arraydecay = getelementptr inbounds %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 6, i64 0
  %num_slots = getelementptr inbounds %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 1
  %8 = load i32, i32* %num_slots, align 4
  %idx.ext104 = sext i32 %8 to i64
  %add.ptr105 = getelementptr %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 6, i64 %idx.ext104
  %cmp5.not106 = icmp eq %struct.input_mt_slot* %arraydecay, %add.ptr105
  br i1 %cmp5.not106, label %for.cond28.preheader, label %for.body6.lr.ph

for.body6.lr.ph:                                  ; preds = %for.end
  %sub.ptr.rhs.cast = ptrtoint %struct.input_mt_slot* %arraydecay to i64
  %idx.ext22 = sext i32 %num_pos to i64
  br label %for.body6

for.cond28.preheader:                             ; preds = %for.inc24, %for.end
  %idx.ext32114.pre-phi = phi i64 [ %idx.ext104, %for.end ], [ %idx.ext, %for.inc24 ]
  %9 = phi i32 [ %8, %for.end ], [ %13, %for.inc24 ]
  %add.ptr33115 = getelementptr %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 6, i64 %idx.ext32114.pre-phi
  %cmp34.not116 = icmp eq %struct.input_mt_slot* %arraydecay, %add.ptr33115
  br i1 %cmp34.not116, label %for.end64, label %for.body36.lr.ph

for.body36.lr.ph:                                 ; preds = %for.cond28.preheader
  %sub.ptr.rhs.cast52 = ptrtoint %struct.input_mt_slot* %arraydecay to i64
  br label %for.body36

for.body6:                                        ; preds = %for.body6.lr.ph, %for.inc24
  %.pre121 = phi i32 [ %8, %for.body6.lr.ph ], [ %.pre122, %for.inc24 ]
  %10 = phi i32 [ %8, %for.body6.lr.ph ], [ %13, %for.inc24 ]
  %w.0111 = phi i32* [ %0, %for.body6.lr.ph ], [ %w.1, %for.inc24 ]
  %s.0107 = phi %struct.input_mt_slot* [ %arraydecay, %for.body6.lr.ph ], [ %incdec.ptr, %for.inc24 ]
  %call = call fastcc i1 @input_mt_is_active(%struct.input_mt_slot* noundef %s.0107) #10
  br i1 %call, label %for.cond7.preheader, label %for.inc24

for.cond7.preheader:                              ; preds = %for.body6
  br i1 %cmp.not100, label %for.end21, label %for.body9

for.cond7:                                        ; preds = %for.body9
  %cmp8.not = icmp eq i32 %inc20, %num_pos
  br i1 %cmp8.not, label %for.end21, label %for.body9

for.body9:                                        ; preds = %for.cond7.preheader, %for.cond7
  %j.1103 = phi i32 [ %inc20, %for.cond7 ], [ 0, %for.cond7.preheader ]
  %idxprom10 = sext i32 %j.1103 to i64
  %arrayidx11 = getelementptr i32, i32* %w.0111, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp slt i32 %11, 0
  %inc20 = add nuw i32 %j.1103, 1
  br i1 %cmp12, label %if.then13, label %for.cond7

if.then13:                                        ; preds = %for.body9
  %sub.ptr.lhs.cast = ptrtoint %struct.input_mt_slot* %s.0107 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %12 = lshr exact i64 %sub.ptr.sub, 6
  %conv = trunc i64 %12 to i32
  %arrayidx17 = getelementptr i32, i32* %slots, i64 %idxprom10
  store i32 %conv, i32* %arrayidx17, align 4
  %.pre.pre = load i32, i32* %num_slots, align 4
  br label %for.end21

for.end21:                                        ; preds = %for.cond7, %for.cond7.preheader, %if.then13
  %.pre = phi i32 [ %.pre121, %for.cond7.preheader ], [ %.pre.pre, %if.then13 ], [ %.pre121, %for.cond7 ]
  %add.ptr23 = getelementptr i32, i32* %w.0111, i64 %idx.ext22
  br label %for.inc24

for.inc24:                                        ; preds = %for.body6, %for.end21
  %.pre122 = phi i32 [ %.pre, %for.end21 ], [ %.pre121, %for.body6 ]
  %13 = phi i32 [ %.pre, %for.end21 ], [ %10, %for.body6 ]
  %w.1 = phi i32* [ %add.ptr23, %for.end21 ], [ %w.0111, %for.body6 ]
  %incdec.ptr = getelementptr %struct.input_mt_slot, %struct.input_mt_slot* %s.0107, i64 1
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 6, i64 %idx.ext
  %cmp5.not = icmp eq %struct.input_mt_slot* %incdec.ptr, %add.ptr
  br i1 %cmp5.not, label %for.cond28.preheader, label %for.body6

for.body36:                                       ; preds = %for.body36.lr.ph, %for.inc62
  %14 = phi i32 [ %9, %for.body36.lr.ph ], [ %17, %for.inc62 ]
  %s.1117 = phi %struct.input_mt_slot* [ %arraydecay, %for.body36.lr.ph ], [ %incdec.ptr63, %for.inc62 ]
  %call37 = call fastcc i1 @input_mt_is_active(%struct.input_mt_slot* noundef %s.1117) #10
  %brmerge = or i1 %call37, %cmp.not100
  br i1 %brmerge, label %for.inc62, label %for.body43

for.cond40:                                       ; preds = %for.body43
  %cmp41.not = icmp eq i32 %inc60, %num_pos
  br i1 %cmp41.not, label %for.inc62, label %for.body43

for.body43:                                       ; preds = %for.body36, %for.cond40
  %j.2113 = phi i32 [ %inc60, %for.cond40 ], [ 0, %for.body36 ]
  %idxprom44 = sext i32 %j.2113 to i64
  %arrayidx45 = getelementptr i32, i32* %slots, i64 %idxprom44
  %15 = load i32, i32* %arrayidx45, align 4
  %cmp46 = icmp slt i32 %15, 0
  %inc60 = add nuw i32 %j.2113, 1
  br i1 %cmp46, label %if.then48, label %for.cond40

if.then48:                                        ; preds = %for.body43
  %arrayidx45.le = getelementptr i32, i32* %slots, i64 %idxprom44
  %sub.ptr.lhs.cast51 = ptrtoint %struct.input_mt_slot* %s.1117 to i64
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52
  %16 = lshr exact i64 %sub.ptr.sub53, 6
  %conv55 = trunc i64 %16 to i32
  store i32 %conv55, i32* %arrayidx45.le, align 4
  %.pre120 = load i32, i32* %num_slots, align 4
  br label %for.inc62

for.inc62:                                        ; preds = %for.cond40, %for.body36, %if.then48
  %17 = phi i32 [ %14, %for.body36 ], [ %.pre120, %if.then48 ], [ %14, %for.cond40 ]
  %incdec.ptr63 = getelementptr %struct.input_mt_slot, %struct.input_mt_slot* %s.1117, i64 1
  %idx.ext32 = sext i32 %17 to i64
  %add.ptr33 = getelementptr %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 6, i64 %idx.ext32
  %cmp34.not = icmp eq %struct.input_mt_slot* %incdec.ptr63, %add.ptr33
  br i1 %cmp34.not, label %for.end64, label %for.body36

for.end64:                                        ; preds = %for.inc62, %for.cond28.preheader
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define dso_local i32 @input_mt_get_slot_by_key(%struct.input_dev* nocapture noundef readonly %dev, i32 noundef %key) local_unnamed_addr #7 {
entry:
  %mt1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %dev, i64 0, i32 25
  %0 = load %struct.input_mt*, %struct.input_mt** %mt1, align 8
  %tobool.not = icmp eq %struct.input_mt* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 6, i64 0
  %num_slots = getelementptr inbounds %struct.input_mt, %struct.input_mt* %0, i64 0, i32 1
  %1 = load i32, i32* %num_slots, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr %struct.input_mt, %struct.input_mt* %0, i64 0, i32 6, i64 %idx.ext
  %cmp.not63 = icmp eq %struct.input_mt_slot* %arraydecay, %add.ptr
  br i1 %cmp.not63, label %cleanup, label %for.body

for.cond12.preheader:                             ; preds = %for.inc
  br i1 %cmp.not63, label %cleanup, label %for.body20

for.body:                                         ; preds = %if.end, %for.inc
  %s.064 = phi %struct.input_mt_slot* [ %incdec.ptr, %for.inc ], [ %arraydecay, %if.end ]
  %call = call fastcc i1 @input_mt_is_active(%struct.input_mt_slot* noundef %s.064) #10
  br i1 %call, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %key4 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %s.064, i64 0, i32 2
  %2 = load i32, i32* %key4, align 4
  %cmp5 = icmp eq i32 %2, %key
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  %sub.ptr.lhs.cast = ptrtoint %struct.input_mt_slot* %s.064 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.input_mt_slot* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %3 = lshr exact i64 %sub.ptr.sub, 6
  %conv = trunc i64 %3 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %incdec.ptr = getelementptr %struct.input_mt_slot, %struct.input_mt_slot* %s.064, i64 1
  %cmp.not = icmp eq %struct.input_mt_slot* %incdec.ptr, %add.ptr
  br i1 %cmp.not, label %for.cond12.preheader, label %for.body

for.body20:                                       ; preds = %for.cond12.preheader, %for.inc34
  %s.167 = phi %struct.input_mt_slot* [ %incdec.ptr35, %for.inc34 ], [ %arraydecay, %for.cond12.preheader ]
  %call21 = call fastcc i1 @input_mt_is_active(%struct.input_mt_slot* noundef %s.167) #10
  br i1 %call21, label %for.inc34, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %for.body20
  %call23 = call fastcc i1 @input_mt_is_used(%struct.input_mt* noundef nonnull %0, %struct.input_mt_slot* noundef %s.167) #10
  br i1 %call23, label %for.inc34, label %if.then24

if.then24:                                        ; preds = %land.lhs.true22
  %key25 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %s.167, i64 0, i32 2
  store i32 %key, i32* %key25, align 4
  %sub.ptr.lhs.cast28 = ptrtoint %struct.input_mt_slot* %s.167 to i64
  %sub.ptr.rhs.cast29 = ptrtoint %struct.input_mt_slot* %arraydecay to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %4 = lshr exact i64 %sub.ptr.sub30, 6
  %conv32 = trunc i64 %4 to i32
  br label %cleanup

for.inc34:                                        ; preds = %for.body20, %land.lhs.true22
  %incdec.ptr35 = getelementptr %struct.input_mt_slot, %struct.input_mt_slot* %s.167, i64 1
  %cmp18.not = icmp eq %struct.input_mt_slot* %incdec.ptr35, %add.ptr
  br i1 %cmp18.not, label %cleanup, label %for.body20

cleanup:                                          ; preds = %for.inc34, %if.end, %for.cond12.preheader, %entry, %if.then24, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ %conv32, %if.then24 ], [ -1, %entry ], [ -1, %for.cond12.preheader ], [ -1, %if.end ], [ -1, %for.inc34 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @input_mt_is_active(%struct.input_mt_slot* nocapture noundef readonly %slot) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @input_mt_get_value(%struct.input_mt_slot* noundef %slot, i32 noundef 57) #10
  %cmp = icmp sgt i32 %call, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @input_mt_is_used(%struct.input_mt* nocapture noundef readonly %mt, %struct.input_mt_slot* nocapture noundef readonly %slot) unnamed_addr #5 {
entry:
  %frame = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %slot, i64 0, i32 1
  %0 = load i32, i32* %frame, align 4
  %frame1 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %mt, i64 0, i32 4
  %1 = load i32, i32* %frame1, align 8
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_array(i64 noundef %n) unnamed_addr #0 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %n, i64 4)
  %1 = extractvalue { i64, i1 } %0, 1
  br i1 %1, label %cleanup, label %if.end8, !prof !10

if.end8:                                          ; preds = %entry
  %2 = extractvalue { i64, i1 } %0, 0
  %call9 = call noalias align 128 i8* @__kmalloc(i64 noundef %2, i32 noundef 3520) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8
  %retval.0 = phi i8* [ %call9, %if.end8 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @input_mt_slot(%struct.input_dev* noundef %dev, i32 noundef %slot) unnamed_addr #0 {
entry:
  call void @input_event(%struct.input_dev* noundef %dev, i32 noundef 3, i32 noundef 47, i32 noundef %slot) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc i32 @adjust_dual(i32* noundef %begin, i32 noundef %step, i32* noundef readnone %end, i32 noundef %eq, i32 noundef %mu) unnamed_addr #7 {
entry:
  %cmp = icmp eq i32* %begin, %end
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32, i32* %begin, align 4
  %idx.ext = sext i32 %step to i64
  %add.ptr = getelementptr i32, i32* %begin, i64 %idx.ext
  %cmp1 = icmp eq i32* %add.ptr, %end
  br i1 %cmp1, label %cond.end.thread, label %for.body.preheader

cond.end.thread:                                  ; preds = %if.end
  %add = add i32 %0, 1
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %1 = load i32, i32* %add.ptr, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %s.083 = phi i32 [ %s.1, %for.body ], [ %1, %for.body.preheader ]
  %p.082 = phi i32* [ %add.ptr10, %for.body ], [ %add.ptr, %for.body.preheader ]
  %f.081 = phi i32 [ %f.1, %for.body ], [ %0, %for.body.preheader ]
  %2 = load i32, i32* %p.082, align 4
  %cmp3 = icmp slt i32 %2, %f.081
  %cmp5 = icmp slt i32 %2, %s.083
  %spec.select = select i1 %cmp5, i32 %2, i32 %s.083
  %f.1 = select i1 %cmp3, i32 %2, i32 %f.081
  %s.1 = select i1 %cmp3, i32 %f.081, i32 %spec.select
  %add.ptr10 = getelementptr i32, i32* %p.082, i64 %idx.ext
  %cmp2.not = icmp eq i32* %add.ptr10, %end
  br i1 %cmp2.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %cond.end.thread
  %f.0.lcssa = phi i32 [ %0, %cond.end.thread ], [ %f.1, %for.body ]
  %s.0.lcssa = phi i32 [ %add, %cond.end.thread ], [ %s.1, %for.body ]
  %add11 = add i32 %s.0.lcssa, %f.0.lcssa
  %add12 = add i32 %add11, 1
  %div = sdiv i32 %add12, 2
  %add12.off = add i32 %add11, 2
  %3 = icmp ult i32 %add12.off, 3
  br i1 %3, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %cmp14 = icmp sgt i32 %div, %mu
  br i1 %cmp14, label %land.lhs.true, label %for.body26.preheader

land.lhs.true:                                    ; preds = %lor.lhs.false
  %tobool = icmp eq i32 %eq, 0
  %cmp16 = icmp sgt i32 %mu, 0
  %or.cond = or i1 %tobool, %cmp16
  br i1 %or.cond, label %cleanup, label %for.body26.preheader

for.body26.preheader:                             ; preds = %lor.lhs.false, %land.lhs.true
  %cmp19 = icmp slt i32 %s.0.lcssa, 0
  %cmp21 = icmp slt i32 %mu, 1
  %or.cond39 = and i1 %cmp21, %cmp19
  %mul = zext i1 %or.cond39 to i32
  %spec.select79 = shl nsw i32 %div, %mul
  %sub88 = sub i32 %0, %spec.select79
  store i32 %sub88, i32* %begin, align 4
  %add.ptr2989 = getelementptr i32, i32* %begin, i64 %idx.ext
  %cmp25.not90 = icmp eq i32* %add.ptr2989, %end
  br i1 %cmp25.not90, label %for.end30, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26.preheader, %for.body26.for.body26_crit_edge
  %add.ptr2991 = phi i32* [ %add.ptr29, %for.body26.for.body26_crit_edge ], [ %add.ptr2989, %for.body26.preheader ]
  %.pre = load i32, i32* %add.ptr2991, align 4
  %sub = sub i32 %.pre, %spec.select79
  store i32 %sub, i32* %add.ptr2991, align 4
  %add.ptr29 = getelementptr i32, i32* %add.ptr2991, i64 %idx.ext
  %cmp25.not = icmp eq i32* %add.ptr29, %end
  br i1 %cmp25.not, label %for.end30, label %for.body26.for.body26_crit_edge

for.end30:                                        ; preds = %for.body26.for.body26_crit_edge, %for.body26.preheader
  %cmp31 = icmp slt i32 %spec.select79, %s.0.lcssa
  %cmp33 = icmp slt i32 %s.0.lcssa, 1
  %or.cond40 = and i1 %cmp33, %cmp31
  %cmp34 = icmp sgt i32 %f.0.lcssa, -1
  %cmp35 = icmp slt i32 %f.0.lcssa, %spec.select79
  %4 = select i1 %cmp34, i1 %cmp35, i1 false
  %narrow = select i1 %or.cond40, i1 true, i1 %4
  %5 = zext i1 %narrow to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true, %entry, %for.end30
  %retval.0 = phi i32 [ %5, %for.end30 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %for.end ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = distinct !{!9, !8}
!10 = !{!"branch_weights", i32 1, i32 2000}
