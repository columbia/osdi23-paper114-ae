; ModuleID = 'kernel/params.c'
source_filename = "kernel/params.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_params__264_974_param_sysfs_init4:\09\09\09"
module asm ".long\09param_sysfs_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute = type { i8*, i16 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.66, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.52, %struct.list_head, %struct.list_head, %union.anon.53 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.21, i8* }
%union.anon.21 = type { i64 }
%struct.lockref = type { %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.user_namespace = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.52 = type { %struct.list_head }
%union.anon.53 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon.20, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.54 }
%union.anon.54 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
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
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.50, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.26 }
%union.anon.26 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.28, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.28 = type { i32 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.35, %union.anon.36, i32 }
%struct.request_queue = type opaque
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.49, i32, [12 x i8] }
%union.anon.49 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.3, %union.anon.61, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.61 = type { %struct.atomic_t }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.51, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.51 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.18, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.19, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.18 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.19 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.55, %struct.qspinlock }
%union.anon.55 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.seq_file = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.34 = type { %struct.callback_head }
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
%struct.kqid = type { %union.anon.25, i32 }
%union.anon.25 = type { %struct.kuid_t }
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
%union.anon.63 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.64 = type { %struct.callback_head }
%union.anon.65 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.66 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.62, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.62 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.module_version_attribute = type { %struct.module_attribute, i8*, i8* }
%struct.module_attribute = type { %struct.attribute, {}*, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)*, void (%struct.module*, i8*)*, i32 (%struct.module*)*, void (%struct.module*)* }
%struct.module_kobject = type { %struct.kobject, %struct.module*, %struct.kobject*, %struct.module_param_attrs*, %struct.completion* }
%struct.module_param_attrs = type { i32, %struct.attribute_group, [0 x %struct.param_attribute] }
%struct.param_attribute = type { %struct.module_attribute, %struct.kernel_param* }
%struct.kmalloced_param = type { %struct.list_head, [0 x i8] }
%struct.kparam_array = type { i32, i32, i32*, %struct.kernel_param_ops*, i8* }
%struct.kparam_string = type { i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\014%s: option '%s' enabled irq's!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\013%s: Unknown parameter `%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\013%s: `%s' too large for parameter `%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\013%s: `%s' invalid for parameter `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%hhu\0A\00", align 1
@param_ops_byte = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_byte, i32 (i8*, %struct.kernel_param*)* @param_get_byte, void (i8*)* null }, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"%hi\0A\00", align 1
@param_ops_short = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_short, i32 (i8*, %struct.kernel_param*)* @param_get_short, void (i8*)* null }, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1
@param_ops_ushort = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_ushort, i32 (i8*, %struct.kernel_param*)* @param_get_ushort, void (i8*)* null }, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@param_ops_int = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_int, i32 (i8*, %struct.kernel_param*)* @param_get_int, void (i8*)* null }, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@param_ops_uint = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_uint, i32 (i8*, %struct.kernel_param*)* @param_get_uint, void (i8*)* null }, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"%li\0A\00", align 1
@param_ops_long = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_long, i32 (i8*, %struct.kernel_param*)* @param_get_long, void (i8*)* null }, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@param_ops_ulong = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_ulong, i32 (i8*, %struct.kernel_param*)* @param_get_ulong, void (i8*)* null }, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@param_ops_ullong = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_ullong, i32 (i8*, %struct.kernel_param*)* @param_get_ullong, void (i8*)* null }, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"%#08x\0A\00", align 1
@param_ops_hexint = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_hexint, i32 (i8*, %struct.kernel_param*)* @param_get_hexint, void (i8*)* null }, align 8
@.str.15 = private unnamed_addr constant [33 x i8] c"\013%s: string parameter too long\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@param_ops_charp = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_charp, i32 (i8*, %struct.kernel_param*)* @param_get_charp, void (i8*)* @param_free_charp }, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@param_ops_bool = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 1, i32 (i8*, %struct.kernel_param*)* @param_set_bool, i32 (i8*, %struct.kernel_param*)* @param_get_bool, void (i8*)* null }, align 8
@param_ops_bool_enable_only = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 1, i32 (i8*, %struct.kernel_param*)* @param_set_bool_enable_only, i32 (i8*, %struct.kernel_param*)* @param_get_bool, void (i8*)* null }, align 8
@param_ops_invbool = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_invbool, i32 (i8*, %struct.kernel_param*)* @param_get_invbool, void (i8*)* null }, align 8
@param_ops_bint = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 1, i32 (i8*, %struct.kernel_param*)* @param_set_bint, i32 (i8*, %struct.kernel_param*)* @param_get_int, void (i8*)* null }, align 8
@param_array_ops = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_array_set, i32 (i8*, %struct.kernel_param*)* @param_array_get, void (i8*)* @param_array_free }, align 8
@.str.19 = private unnamed_addr constant [39 x i8] c"\013%s: string doesn't fit in %u chars.\0A\00", align 1
@param_ops_string = dso_local local_unnamed_addr constant %struct.kernel_param_ops { i32 0, i32 (i8*, %struct.kernel_param*)* @param_set_copystring, i32 (i8*, %struct.kernel_param*)* @param_get_string, void (i8*)* null }, align 8
@param_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @param_lock to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @param_lock to i8*), i64 16) to %struct.list_head*) } }, align 8
@module_sysfs_ops = internal constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @module_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @module_attr_store }, align 8
@module_ktype = dso_local global %struct.kobj_type { void (%struct.kobject*)* @module_kobj_release, %struct.sysfs_ops* @module_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@__UNIQUE_ID___addressable_param_sysfs_init265 = internal global i8* bitcast (i32 ()* @param_sysfs_init to i8*), section ".discard.addressable", align 8
@module_kset = dso_local local_unnamed_addr global %struct.kset* null, align 8
@module_sysfs_initialized = dso_local local_unnamed_addr global i32 0, align 4
@.str.20 = private unnamed_addr constant [49 x i8] c"\015Setting dangerous option %s - tainting kernel\0A\00", align 1
@kmalloced_params_lock = internal global %struct.spinlock zeroinitializer, align 4
@kmalloced_params = internal global %struct.list_head { %struct.list_head* @kmalloced_params, %struct.list_head* @kmalloced_params }, align 8
@.str.21 = private unnamed_addr constant [34 x i8] c"\013%s: can only take %i arguments\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"\013%s: needs at least %i arguments\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@module_uevent_ops = internal constant %struct.kset_uevent_ops { i32 (%struct.kset*, %struct.kobject*)* @uevent_filter, i8* (%struct.kset*, %struct.kobject*)* null, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* null }, align 8
@.str.25 = private unnamed_addr constant [32 x i8] c"\014%s (%d): error creating kset\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"kernel/params.c\00", align 1
@__start___modver = external dso_local constant [0 x %struct.module_version_attribute], align 8
@__stop___modver = external dso_local constant [0 x %struct.module_version_attribute], align 8
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [72 x i8] c"\012Adding module '%s' to sysfs failed (%d), the system may be unstable.\0A\00", align 1
@__start___param = external dso_local constant [0 x %struct.kernel_param], align 8
@__stop___param = external dso_local constant [0 x %struct.kernel_param], align 8
@.str.29 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_param_sysfs_init265 to i8*)], section "llvm.metadata"

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define dso_local i1 @parameqn(i8* nocapture noundef readonly %a, i8* nocapture noundef readonly %b, i64 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp10.not = icmp eq i64 %n, 0
  br i1 %cmp10.not, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = load i8, i8* %a, align 1
  %call14 = call fastcc i8 @dash2underscore(i8 noundef %0) #11
  %1 = load i8, i8* %b, align 1
  %call215 = call fastcc i8 @dash2underscore(i8 noundef %1) #11
  %cmp4.not16 = icmp eq i8 %call14, %call215
  br i1 %cmp4.not16, label %for.cond, label %cleanup

for.cond:                                         ; preds = %for.body.preheader, %for.body
  %inc17 = phi i64 [ %inc, %for.body ], [ 1, %for.body.preheader ]
  %exitcond.not = icmp eq i64 %inc17, %n
  br i1 %exitcond.not, label %cleanup.loopexit, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr i8, i8* %a, i64 %inc17
  %2 = load i8, i8* %arrayidx, align 1
  %call = call fastcc i8 @dash2underscore(i8 noundef %2) #11
  %arrayidx1 = getelementptr i8, i8* %b, i64 %inc17
  %3 = load i8, i8* %arrayidx1, align 1
  %call2 = call fastcc i8 @dash2underscore(i8 noundef %3) #11
  %cmp4.not = icmp eq i8 %call, %call2
  %inc = add nuw i64 %inc17, 1
  br i1 %cmp4.not, label %for.cond, label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.body, %for.cond
  %cmp.le = icmp uge i64 %inc17, %n
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.body.preheader, %entry
  %cmp.lcssa = phi i1 [ true, %entry ], [ false, %for.body.preheader ], [ %cmp.le, %cleanup.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8 @dash2underscore(i8 noundef %c) unnamed_addr #2 {
entry:
  %cmp = icmp eq i8 %c, 45
  %.c = select i1 %cmp, i8 95, i8 %c
  ret i8 %.c
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @parameq(i8* noundef %a, i8* nocapture noundef readonly %b) local_unnamed_addr #3 {
entry:
  %call = call i64 @strlen(i8* noundef %a) #12
  %add = add i64 %call, 1
  %call1 = call i1 @parameqn(i8* noundef %a, i8* noundef %b, i64 noundef %add) #11
  ret i1 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @parse_args(i8* noundef %doing, i8* noundef %args, %struct.kernel_param* noundef %params, i32 noundef %num, i16 noundef %min_level, i16 noundef %max_level, i8* noundef %arg, i32 (i8*, i8*, i8*, i8*)* noundef %unknown) local_unnamed_addr #3 {
entry:
  %param = alloca i8*, align 8
  %val = alloca i8*, align 8
  %0 = bitcast i8** %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i8* null, i8** %param, align 8, !annotation !7
  %1 = bitcast i8** %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #13
  store i8* null, i8** %val, align 8, !annotation !7
  %call = call i8* @skip_spaces(i8* noundef %args) #12
  %2 = load i8, i8* %call, align 1
  %tobool1.not103 = icmp eq i8 %2, 0
  br i1 %tobool1.not103, label %cleanup78, label %while.body

while.condthread-pre-split:                       ; preds = %sw.epilog, %if.end47
  %err.1.ph = phi i8* [ %err.0105, %if.end47 ], [ %call76, %sw.epilog ]
  %3 = load i8, i8* %call2, align 1
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %cleanup78, label %while.body

while.body:                                       ; preds = %entry, %while.condthread-pre-split
  %err.0105 = phi i8* [ %err.1.ph, %while.condthread-pre-split ], [ null, %entry ]
  %.in104 = phi i8* [ %call2, %while.condthread-pre-split ], [ %call, %entry ]
  %call2 = call i8* @next_arg(i8* noundef %.in104, i8** noundef nonnull %param, i8** noundef nonnull %val) #12
  %4 = load i8*, i8** %val, align 8
  %tobool3.not = icmp eq i8* %4, null
  br i1 %tobool3.not, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %while.body
  %5 = load i8*, i8** %param, align 8
  %call4 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #12
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %cleanup, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %while.body
  %call10 = call fastcc i64 @arch_local_save_flags() #11
  %call18 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call10) #11
  %6 = load i8*, i8** %param, align 8
  %7 = load i8*, i8** %val, align 8
  %call19 = call fastcc i32 @parse_one(i8* noundef %6, i8* noundef %7, i8* noundef %doing, %struct.kernel_param* noundef %params, i32 noundef %num, i16 noundef %min_level, i16 noundef %max_level, i8* noundef %arg, i32 (i8*, i8*, i8*, i8*)* noundef %unknown) #11
  %tobool20.not = icmp eq i32 %call18, 0
  br i1 %tobool20.not, label %if.end47, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.end7
  %call29 = call fastcc i64 @arch_local_save_flags() #11
  %call39 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call29) #11
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.end44, label %if.end47

do.end44:                                         ; preds = %land.lhs.true21
  %8 = load i8*, i8** %param, align 8
  %call46 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* noundef %doing, i8* noundef %8) #14
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %land.lhs.true21, %if.end7
  switch i32 %call19, label %do.end67 [
    i32 0, label %while.condthread-pre-split
    i32 -2, label %do.end51
    i32 -28, label %do.end57
  ]

do.end51:                                         ; preds = %if.end47
  %9 = load i8*, i8** %param, align 8
  %call53 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* noundef %doing, i8* noundef %9) #14
  br label %sw.epilog

do.end57:                                         ; preds = %if.end47
  %10 = load i8*, i8** %val, align 8
  %tobool59.not = icmp eq i8* %10, null
  %. = select i1 %tobool59.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %10
  %11 = load i8*, i8** %param, align 8
  %call64 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* noundef %doing, i8* noundef %., i8* noundef %11) #14
  br label %sw.epilog

do.end67:                                         ; preds = %if.end47
  %12 = load i8*, i8** %val, align 8
  %tobool69.not = icmp eq i8* %12, null
  %.81 = select i1 %tobool69.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* %12
  %13 = load i8*, i8** %param, align 8
  %call74 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* noundef %doing, i8* noundef %.81, i8* noundef %13) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end67, %do.end57, %do.end51
  %conv75 = sext i32 %call19 to i64
  %call76 = call fastcc i8* @ERR_PTR(i64 noundef %conv75) #11
  br label %while.condthread-pre-split

cleanup:                                          ; preds = %land.lhs.true
  %tobool6.not = icmp eq i8* %err.0105, null
  %cond = select i1 %tobool6.not, i8* %call2, i8* %err.0105
  br label %cleanup78

cleanup78:                                        ; preds = %while.condthread-pre-split, %entry, %cleanup
  %retval.2 = phi i8* [ %cond, %cleanup ], [ null, %entry ], [ %err.1.ph, %while.condthread-pre-split ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i8* %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @skip_spaces(i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @next_arg(i8* noundef, i8** noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #3 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #13, !srcloc !8
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #3 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #13, !srcloc !9
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @parse_one(i8* noundef %param, i8* noundef %val, i8* noundef %doing, %struct.kernel_param* noundef %params, i32 noundef %num_params, i16 noundef %min_level, i16 noundef %max_level, i8* noundef %arg, i32 (i8*, i8*, i8*, i8*)* noundef readonly %handle_unknown) unnamed_addr #3 {
entry:
  %cmp67.not = icmp eq i32 %num_params, 0
  br i1 %cmp67.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %num_params to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr %struct.kernel_param, %struct.kernel_param* %params, i64 %indvars.iv
  %name = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %arrayidx, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  %call = call i1 @parameq(i8* noundef %param, i8* noundef %0) #11
  br i1 %call, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom.le = and i64 %indvars.iv, 4294967295
  %level = getelementptr %struct.kernel_param, %struct.kernel_param* %params, i64 %idxprom.le, i32 4
  %1 = load i8, i8* %level, align 2
  %2 = sext i8 %1 to i16
  %cmp4 = icmp slt i16 %2, %min_level
  %cmp11 = icmp sgt i16 %2, %max_level
  %or.cond = or i1 %cmp4, %cmp11
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %tobool.not = icmp eq i8* %val, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %ops = getelementptr %struct.kernel_param, %struct.kernel_param* %params, i64 %idxprom.le, i32 2
  %3 = load %struct.kernel_param_ops*, %struct.kernel_param_ops** %ops, align 8
  %flags = getelementptr inbounds %struct.kernel_param_ops, %struct.kernel_param_ops* %3, i64 0, i32 0
  %4 = load i32, i32* %flags, align 8
  %and = and i32 %4, 1
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.end
  call void @kernel_param_lock(%struct.module* undef) #11
  call fastcc void @param_check_unsafe(%struct.kernel_param* noundef %arrayidx) #11
  %ops27 = getelementptr %struct.kernel_param, %struct.kernel_param* %params, i64 %idxprom.le, i32 2
  %5 = load %struct.kernel_param_ops*, %struct.kernel_param_ops** %ops27, align 8
  %set = getelementptr inbounds %struct.kernel_param_ops, %struct.kernel_param_ops* %5, i64 0, i32 1
  %6 = load i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)** %set, align 8
  %call30 = call i32 %6(i8* noundef %val, %struct.kernel_param* noundef %arrayidx) #12
  call void @kernel_param_unlock(%struct.module* undef) #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %tobool36.not = icmp eq i32 (i8*, i8*, i8*, i8*)* %handle_unknown, null
  br i1 %tobool36.not, label %cleanup, label %if.then37

if.then37:                                        ; preds = %for.end
  %call39 = call i32 %handle_unknown(i8* noundef %param, i8* noundef %val, i8* noundef %doing, i8* noundef %arg) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true, %if.then, %if.then37, %if.end18
  %retval.0 = phi i32 [ %call30, %if.end18 ], [ %call39, %if.then37 ], [ 0, %if.then ], [ -22, %land.lhs.true ], [ -2, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #2 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_byte(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = load i8*, i8** %arg, align 8
  %call = call i32 @kstrtou8(i8* noundef %val, i32 noundef 0, i8* noundef %0) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_byte(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = load i8*, i8** %arg, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buffer, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_short(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i16**
  %1 = load i16*, i16** %0, align 8
  %call = call i32 @kstrtos16(i8* noundef %val, i32 noundef 0, i16* noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtos16(i8* noundef, i32 noundef, i16* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_short(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i16**
  %1 = load i16*, i16** %0, align 8
  %2 = load i16, i16* %1, align 2
  %conv = sext i16 %2 to i32
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buffer, i64 noundef 4096, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_ushort(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i16**
  %1 = load i16*, i16** %0, align 8
  %call = call i32 @kstrtou16(i8* noundef %val, i32 noundef 0, i16* noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(i8* noundef, i32 noundef, i16* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_ushort(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i16**
  %1 = load i16*, i16** %0, align 8
  %2 = load i16, i16* %1, align 2
  %conv = zext i16 %2 to i32
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buffer, i64 noundef 4096, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_int(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i32**
  %1 = load i32*, i32** %0, align 8
  %call = call i32 @kstrtoint(i8* noundef %val, i32 noundef 0, i32* noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_int(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i32**
  %1 = load i32*, i32** %0, align 8
  %2 = load i32, i32* %1, align 4
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buffer, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 noundef %2) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_uint(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i32**
  %1 = load i32*, i32** %0, align 8
  %call = call i32 @kstrtouint(i8* noundef %val, i32 noundef 0, i32* noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(i8* noundef, i32 noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_uint(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i32**
  %1 = load i32*, i32** %0, align 8
  %2 = load i32, i32* %1, align 4
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buffer, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 noundef %2) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_long(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i64**
  %1 = load i64*, i64** %0, align 8
  %call = call fastcc i32 @kstrtol(i8* noundef %val, i64* noundef %1) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtol(i8* noundef %s, i64* noundef %res) unnamed_addr #3 {
entry:
  %call = call i32 @kstrtoll(i8* noundef %s, i32 noundef 0, i64* noundef %res) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_long(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i64**
  %1 = load i64*, i64** %0, align 8
  %2 = load i64, i64* %1, align 8
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buffer, i64 noundef 4096, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 noundef %2) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_ulong(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i64**
  %1 = load i64*, i64** %0, align 8
  %call = call fastcc i32 @kstrtoul(i8* noundef %val, i64* noundef %1) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kstrtoul(i8* noundef %s, i64* noundef %res) unnamed_addr #3 {
entry:
  %call = call i32 @kstrtoull(i8* noundef %s, i32 noundef 0, i64* noundef %res) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_ulong(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i64**
  %1 = load i64*, i64** %0, align 8
  %2 = load i64, i64* %1, align 8
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buffer, i64 noundef 4096, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 noundef %2) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_ullong(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i64**
  %1 = load i64*, i64** %0, align 8
  %call = call i32 @kstrtoull(i8* noundef %val, i32 noundef 0, i64* noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_ullong(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i64**
  %1 = load i64*, i64** %0, align 8
  %2 = load i64, i64* %1, align 8
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buffer, i64 noundef 4096, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 noundef %2) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_hexint(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i32**
  %1 = load i32*, i32** %0, align 8
  %call = call i32 @kstrtouint(i8* noundef %val, i32 noundef 0, i32* noundef %1) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_hexint(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i32**
  %1 = load i32*, i32** %0, align 8
  %2 = load i32, i32* %1, align 4
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buffer, i64 noundef 4096, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 noundef %2) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_uint_minmax(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp, i32 noundef %min, i32 noundef %max) local_unnamed_addr #3 {
entry:
  %num = alloca i32, align 4
  %0 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 0, i32* %num, align 4, !annotation !7
  %tobool.not = icmp eq i8* %val, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @kstrtouint(i8* noundef nonnull %val, i32 noundef 0, i32* noundef nonnull %num) #12
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = load i32, i32* %num, align 4
  %cmp = icmp ult i32 %1, %min
  %cmp4 = icmp ugt i32 %1, %max
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %2 = bitcast i8** %arg to i32**
  %3 = load i32*, i32** %2, align 8
  store i32 %1, i32* %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry ], [ %call, %if.end ], [ -22, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_charp(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %call = call i64 @strlen(i8* noundef %val) #12
  %cmp = icmp ugt i64 %call, 1024
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8* noundef %0) #14
  br label %return

if.end:                                           ; preds = %entry
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %1 = bitcast i8** %arg to i8***
  %2 = load i8**, i8*** %1, align 8
  %3 = load i8*, i8** %2, align 8
  call fastcc void @maybe_kfree_parameter(i8* noundef %3) #11
  %call2 = call i1 @slab_is_available() #12
  br i1 %call2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = call i64 @strlen(i8* noundef %val) #12
  %4 = trunc i64 %call4 to i32
  %conv = add i32 %4, 1
  %call5 = call fastcc i8* @kmalloc_parameter(i32 noundef %conv) #11
  %5 = load i8**, i8*** %1, align 8
  store i8* %call5, i8** %5, align 8
  %6 = load i8**, i8*** %1, align 8
  %7 = load i8*, i8** %6, align 8
  %tobool.not = icmp eq i8* %7, null
  br i1 %tobool.not, label %return, label %if.end9

if.end9:                                          ; preds = %if.then3
  %call11 = call i8* @strcpy(i8* noundef nonnull %7, i8* noundef %val) #12
  br label %return

if.else:                                          ; preds = %if.end
  %8 = load i8**, i8*** %1, align 8
  store i8* %val, i8** %8, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.else, %if.then3, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ -12, %if.then3 ], [ 0, %if.else ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @maybe_kfree_parameter(i8* noundef readnone %param) unnamed_addr #3 {
entry:
  call fastcc void @__raw_spin_lock() #12
  %p.019 = load %struct.kmalloced_param*, %struct.kmalloced_param** bitcast (%struct.list_head* @kmalloced_params to %struct.kmalloced_param**), align 8
  %list20 = getelementptr inbounds %struct.kmalloced_param, %struct.kmalloced_param* %p.019, i64 0, i32 0
  %cmp.not21 = icmp eq %struct.list_head* %list20, @kmalloced_params
  br i1 %cmp.not21, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arraydecay30 = getelementptr inbounds %struct.kmalloced_param, %struct.kmalloced_param* %p.019, i64 0, i32 1, i64 0
  %cmp131 = icmp eq i8* %arraydecay30, %param
  br i1 %cmp131, label %if.then, label %for.inc

for.body:                                         ; preds = %for.inc
  %arraydecay = getelementptr inbounds %struct.kmalloced_param, %struct.kmalloced_param* %p.0, i64 0, i32 1, i64 0
  %cmp1 = icmp eq i8* %arraydecay, %param
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body, %for.body.preheader
  %list23.lcssa = phi %struct.list_head* [ %list20, %for.body.preheader ], [ %list, %for.body ]
  %p.022.lcssa = phi %struct.kmalloced_param* [ %p.019, %for.body.preheader ], [ %p.0, %for.body ]
  call fastcc void @list_del(%struct.list_head* noundef %list23.lcssa) #11
  %0 = bitcast %struct.kmalloced_param* %p.022.lcssa to i8*
  call void @kfree(i8* noundef %0) #12
  br label %for.end

for.inc:                                          ; preds = %for.body.preheader, %for.body
  %p.02232 = phi %struct.kmalloced_param* [ %p.0, %for.body ], [ %p.019, %for.body.preheader ]
  %1 = bitcast %struct.kmalloced_param* %p.02232 to %struct.kmalloced_param**
  %p.0 = load %struct.kmalloced_param*, %struct.kmalloced_param** %1, align 8
  %list = getelementptr inbounds %struct.kmalloced_param, %struct.kmalloced_param* %p.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %list, @kmalloced_params
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry, %if.then
  call fastcc void @__raw_spin_unlock() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @slab_is_available() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kmalloc_parameter(i32 noundef %size) unnamed_addr #3 {
entry:
  %conv = zext i32 %size to i64
  %add = add nuw nsw i64 %conv, 16
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %add, i32 noundef 3264) #12
  %tobool.not = icmp eq i8* %call10.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @__raw_spin_lock() #12
  %list = bitcast i8* %call10.i to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef nonnull %list) #11
  call fastcc void @__raw_spin_unlock() #12
  %val = getelementptr inbounds i8, i8* %call10.i, i64 16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %val, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_charp(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = bitcast i8** %arg to i8***
  %1 = load i8**, i8*** %0, align 8
  %2 = load i8*, i8** %1, align 8
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buffer, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef %2) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @param_free_charp(i8* nocapture noundef readonly %arg) #3 {
entry:
  %0 = bitcast i8* %arg to i8**
  %1 = load i8*, i8** %0, align 8
  call fastcc void @maybe_kfree_parameter(i8* noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_bool(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %tobool.not = icmp eq i8* %val, null
  %spec.store.select = select i1 %tobool.not, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* %val
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = load i8*, i8** %arg, align 8
  %call = call fastcc i32 @strtobool(i8* noundef %spec.store.select, i8* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @strtobool(i8* noundef %s, i8* noundef %res) unnamed_addr #3 {
entry:
  %call = call i32 @kstrtobool(i8* noundef %s, i8* noundef %res) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_bool(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = load i8*, i8** %arg, align 8
  %1 = load i8, i8* %0, align 1, !range !10
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 78, i32 89
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buffer, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 noundef %cond) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_bool_enable_only(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %new_value = alloca i8, align 4
  %dummy_kp = alloca %struct.kernel_param, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %new_value) #13
  store i8 0, i8* %new_value, align 4, !annotation !7
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = load i8*, i8** %arg, align 8
  %1 = load i8, i8* %0, align 1, !range !10
  %2 = bitcast %struct.kernel_param* %dummy_kp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #13
  %3 = bitcast %struct.kernel_param* %kp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef align 8 dereferenceable(40) %3, i64 32, i1 false)
  %arg1 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %dummy_kp, i64 0, i32 6, i32 0
  store i8* %new_value, i8** %arg1, align 8
  %call = call i32 @param_set_bool(i8* noundef %val, %struct.kernel_param* noundef nonnull %dummy_kp) #11
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp ne i8 %1, 0
  %4 = load i8, i8* %new_value, align 4, !range !10
  %tobool3.not = icmp eq i8 %4, 0
  %brmerge.not = select i1 %tobool3.not, i1 %tobool.not, i1 false
  %.mux = select i1 %brmerge.not, i32 -30, i32 0
  br i1 %tobool3.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.end
  %call9 = call i32 @param_set_bool(i8* noundef %val, %struct.kernel_param* noundef %kp) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then8, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %.mux, %if.end ], [ %call9, %if.then8 ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %new_value) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_invbool(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %boolval = alloca i8, align 4
  %dummy = alloca %struct.kernel_param, align 8
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %boolval) #13
  store i8 0, i8* %boolval, align 4, !annotation !7
  %0 = bitcast %struct.kernel_param* %dummy to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false), !annotation !7
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %dummy, i64 0, i32 6, i32 0
  store i8* %boolval, i8** %arg, align 8
  %call = call i32 @param_set_bool(i8* noundef %val, %struct.kernel_param* noundef nonnull %dummy) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %boolval, align 4, !range !10
  %arg1 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %2 = load i8*, i8** %arg1, align 8
  %3 = xor i8 %1, 1
  store i8 %3, i8* %2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %boolval) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_invbool(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %0 = load i8*, i8** %arg, align 8
  %1 = load i8, i8* %0, align 1, !range !10
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 89, i32 78
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %buffer, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 noundef %cond) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_bint(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %boolkp = alloca %struct.kernel_param, align 8
  %v = alloca i8, align 4
  %0 = bitcast %struct.kernel_param* %boolkp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #13
  %1 = bitcast %struct.kernel_param* %kp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8* noundef align 8 dereferenceable(40) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %v) #13
  store i8 0, i8* %v, align 4, !annotation !7
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %boolkp, i64 0, i32 6, i32 0
  store i8* %v, i8** %arg, align 8
  %call = call i32 @param_set_bool(i8* noundef %val, %struct.kernel_param* noundef nonnull %boolkp) #11
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %v, align 4, !range !10
  %3 = zext i8 %2 to i32
  %arg1 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  %4 = bitcast i8** %arg1 to i32**
  %5 = load i32*, i32** %4, align 8
  store i32 %3, i32* %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %v) #13
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @param_array_set(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %temp_num = alloca i32, align 4
  %0 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6
  %arr1 = bitcast %union.anon* %0 to %struct.kparam_array**
  %1 = load %struct.kparam_array*, %struct.kparam_array** %arr1, align 8
  %2 = bitcast i32* %temp_num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #13
  store i32 0, i32* %temp_num, align 4, !annotation !7
  %name = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %max = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %1, i64 0, i32 0
  %4 = load i32, i32* %max, align 8
  %elem = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %1, i64 0, i32 4
  %5 = load i8*, i8** %elem, align 8
  %elemsize = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %1, i64 0, i32 1
  %6 = load i32, i32* %elemsize, align 4
  %ops = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %1, i64 0, i32 3
  %7 = load %struct.kernel_param_ops*, %struct.kernel_param_ops** %ops, align 8
  %set = getelementptr inbounds %struct.kernel_param_ops, %struct.kernel_param_ops* %7, i64 0, i32 1
  %8 = load i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)** %set, align 8
  %level = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 4
  %9 = load i8, i8* %level, align 2
  %conv = sext i8 %9 to i16
  %num = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %1, i64 0, i32 2
  %10 = load i32*, i32** %num, align 8
  %tobool.not = icmp eq i32* %10, null
  %.temp_num = select i1 %tobool.not, i32* %temp_num, i32* %10
  %call = call fastcc i32 @param_array(i8* noundef %3, i8* noundef %val, i32 noundef %4, i8* noundef %5, i32 noundef %6, i32 (i8*, %struct.kernel_param*)* noundef %8, i16 noundef %conv, i32* noundef %.temp_num) #11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @param_array_get(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %p = alloca %struct.kernel_param, align 8
  %0 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6
  %arr1 = bitcast %union.anon* %0 to %struct.kparam_array**
  %1 = load %struct.kparam_array*, %struct.kparam_array** %arr1, align 8
  %2 = bitcast %struct.kernel_param* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #13
  %3 = bitcast %struct.kernel_param* %kp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef align 8 dereferenceable(40) %3, i64 32, i1 false)
  %num = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %1, i64 0, i32 2
  %max = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %1, i64 0, i32 0
  %4 = load i32*, i32** %num, align 8
  %tobool.not37 = icmp eq i32* %4, null
  %cond.in38 = select i1 %tobool.not37, i32* %max, i32* %4
  %cond39 = load i32, i32* %cond.in38, align 4
  %cmp40.not = icmp eq i32 %cond39, 0
  br i1 %cmp40.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %elem = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %1, i64 0, i32 4
  %elemsize = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %1, i64 0, i32 1
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %p, i64 0, i32 6, i32 0
  %ops = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %1, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end8
  %off.042 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end8 ]
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end8 ]
  %tobool3.not = icmp eq i32 %i.041, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %sub = add i32 %off.042, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr i8, i8* %buffer, i64 %idxprom
  store i8 44, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load i8*, i8** %elem, align 8
  %6 = load i32, i32* %elemsize, align 4
  %mul = mul i32 %6, %i.041
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %arg, align 8
  call fastcc void @check_kparam_locked() #11
  %7 = load %struct.kernel_param_ops*, %struct.kernel_param_ops** %ops, align 8
  %get = getelementptr inbounds %struct.kernel_param_ops, %struct.kernel_param_ops* %7, i64 0, i32 2
  %8 = load i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)** %get, align 8
  %idx.ext4 = sext i32 %off.042 to i64
  %add.ptr5 = getelementptr i8, i8* %buffer, i64 %idx.ext4
  %call = call i32 %8(i8* noundef %add.ptr5, %struct.kernel_param* noundef nonnull %p) #12
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %add = add i32 %call, %off.042
  %inc = add nuw i32 %i.041, 1
  %9 = load i32*, i32** %num, align 8
  %tobool.not = icmp eq i32* %9, null
  %cond.in = select i1 %tobool.not, i32* %max, i32* %9
  %cond = load i32, i32* %cond.in, align 4
  %cmp = icmp ult i32 %inc, %cond
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end8, %entry
  %off.0.lcssa = phi i32 [ 0, %entry ], [ %add, %if.end8 ]
  %idxprom9 = sext i32 %off.0.lcssa to i64
  %arrayidx10 = getelementptr i8, i8* %buffer, i64 %idxprom9
  store i8 0, i8* %arrayidx10, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end
  %retval.0 = phi i32 [ %off.0.lcssa, %for.end ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @param_array_free(i8* nocapture noundef readonly %arg) #3 {
entry:
  %ops = getelementptr inbounds i8, i8* %arg, i64 16
  %0 = bitcast i8* %ops to %struct.kernel_param_ops**
  %1 = load %struct.kernel_param_ops*, %struct.kernel_param_ops** %0, align 8
  %free = getelementptr inbounds %struct.kernel_param_ops, %struct.kernel_param_ops* %1, i64 0, i32 3
  %2 = load void (i8*)*, void (i8*)** %free, align 8
  %tobool.not = icmp eq void (i8*)* %2, null
  br i1 %tobool.not, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num = getelementptr inbounds i8, i8* %arg, i64 8
  %3 = bitcast i8* %num to i32**
  %max = bitcast i8* %arg to i32*
  %4 = load i32*, i32** %3, align 8
  %tobool1.not15 = icmp eq i32* %4, null
  %cond.in16 = select i1 %tobool1.not15, i32* %max, i32* %4
  %cond17 = load i32, i32* %cond.in16, align 4
  %cmp18.not = icmp eq i32 %cond17, 0
  br i1 %cmp18.not, label %if.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %elem = getelementptr inbounds i8, i8* %arg, i64 24
  %5 = bitcast i8* %elem to i8**
  %elemsize = getelementptr inbounds i8, i8* %arg, i64 4
  %6 = bitcast i8* %elemsize to i32*
  %7 = load i8*, i8** %5, align 8
  call void %2(i8* noundef %7) #12
  %8 = load i32*, i32** %3, align 8
  %tobool1.not21 = icmp eq i32* %8, null
  %cond.in22 = select i1 %tobool1.not21, i32* %max, i32* %8
  %cond23 = load i32, i32* %cond.in22, align 4
  %cmp24 = icmp ugt i32 %cond23, 1
  br i1 %cmp24, label %for.body.for.body_crit_edge, label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body.lr.ph, %for.body.for.body_crit_edge
  %inc25 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.lr.ph ]
  %.pre = load %struct.kernel_param_ops*, %struct.kernel_param_ops** %0, align 8
  %free4.phi.trans.insert = getelementptr inbounds %struct.kernel_param_ops, %struct.kernel_param_ops* %.pre, i64 0, i32 3
  %.pre20 = load void (i8*)*, void (i8*)** %free4.phi.trans.insert, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %mul = mul i32 %10, %inc25
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr i8, i8* %9, i64 %idx.ext
  call void %.pre20(i8* noundef %add.ptr) #12
  %inc = add nuw i32 %inc25, 1
  %11 = load i32*, i32** %3, align 8
  %tobool1.not = icmp eq i32* %11, null
  %cond.in = select i1 %tobool1.not, i32* %max, i32* %11
  %cond = load i32, i32* %cond.in, align 4
  %cmp = icmp ult i32 %inc, %cond
  br i1 %cmp, label %for.body.for.body_crit_edge, label %if.end

if.end:                                           ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph, %for.cond.preheader, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_set_copystring(i8* noundef %val, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %0 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6
  %str = bitcast %union.anon* %0 to %struct.kparam_string**
  %1 = load %struct.kparam_string*, %struct.kparam_string** %str, align 8
  %call = call i64 @strlen(i8* noundef %val) #12
  %add = add i64 %call, 1
  %maxlen = getelementptr inbounds %struct.kparam_string, %struct.kparam_string* %1, i64 0, i32 0
  %2 = load i32, i32* %maxlen, align 8
  %conv = zext i32 %2 to i64
  %cmp = icmp ugt i64 %add, %conv
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %sub = add i32 %2, -1
  %call3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0), i8* noundef %3, i32 noundef %sub) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %string = getelementptr inbounds %struct.kparam_string, %struct.kparam_string* %1, i64 0, i32 1
  %4 = load i8*, i8** %string, align 8
  %call4 = call i8* @strcpy(i8* noundef %4, i8* noundef %val) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @param_get_string(i8* noundef %buffer, %struct.kernel_param* nocapture noundef readonly %kp) #3 {
entry:
  %0 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6
  %str = bitcast %union.anon* %0 to %struct.kparam_string**
  %1 = load %struct.kparam_string*, %struct.kparam_string** %str, align 8
  %string = getelementptr inbounds %struct.kparam_string, %struct.kparam_string* %1, i64 0, i32 1
  %2 = load i8*, i8** %string, align 8
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buffer, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef %2) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernel_param_lock(%struct.module* nocapture readnone %mod) local_unnamed_addr #3 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @param_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kernel_param_unlock(%struct.module* nocapture readnone %mod) local_unnamed_addr #3 {
entry:
  call void @mutex_unlock(%struct.mutex* noundef nonnull @param_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @destroy_params(%struct.kernel_param* nocapture noundef readonly %params, i32 noundef %num) local_unnamed_addr #3 {
entry:
  %cmp14.not = icmp eq i32 %num, 0
  br i1 %cmp14.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %num to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %ops = getelementptr %struct.kernel_param, %struct.kernel_param* %params, i64 %indvars.iv, i32 2
  %0 = load %struct.kernel_param_ops*, %struct.kernel_param_ops** %ops, align 8
  %free = getelementptr inbounds %struct.kernel_param_ops, %struct.kernel_param_ops* %0, i64 0, i32 3
  %1 = load void (i8*)*, void (i8*)** %free, align 8
  %tobool.not = icmp eq void (i8*)* %1, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %arg = getelementptr %struct.kernel_param, %struct.kernel_param* %params, i64 %indvars.iv, i32 6, i32 0
  %2 = load i8*, i8** %arg, align 8
  call void %1(i8* noundef %2) #12
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__modver_version_show(%struct.module_attribute* nocapture noundef readonly %mattr, %struct.module_kobject* nocapture noundef readnone %mk, i8* noundef %buf) local_unnamed_addr #3 {
entry:
  %version = getelementptr inbounds %struct.module_attribute, %struct.module_attribute* %mattr, i64 1, i32 0, i32 1
  %0 = bitcast i16* %version to i8**
  %1 = load i8*, i8** %0, align 8
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* noundef %buf, i64 noundef 4096, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef %1) #12
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @module_kobj_release(%struct.kobject* nocapture noundef readonly %kobj) #3 {
entry:
  %kobj_completion = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 1, i32 2
  %0 = bitcast %struct.kobject** %kobj_completion to %struct.completion**
  %1 = load %struct.completion*, %struct.completion** %0, align 8
  call void @complete(%struct.completion* noundef %1) #12
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @param_sysfs_init() #8 section ".init.text" {
entry:
  %call = call %struct.kset* @kset_create_and_add(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), %struct.kset_uevent_ops* noundef nonnull @module_uevent_ops, %struct.kobject* noundef null) #12
  store %struct.kset* %call, %struct.kset** @module_kset, align 8
  %tobool.not = icmp eq %struct.kset* %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 noundef 964) #14
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* @module_sysfs_initialized, align 4
  call fastcc void @version_sysfs_builtin() #15
  call fastcc void @param_sysfs_builtin() #15
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @param_check_unsafe(%struct.kernel_param* nocapture noundef readonly %kp) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 5
  %0 = load i8, i8* %flags, align 1
  %1 = and i8 %0, 1
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %return, label %do.end

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0), i8* noundef %2) #14
  call void @add_taint(i32 noundef 6, i32 noundef 0) #12
  br label %return

return:                                           ; preds = %entry, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #9 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #11
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  call fastcc void @do_raw_spin_lock() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #3 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #12
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kmalloced_params_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #12
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #3 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #3 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kmalloced_params_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kmalloced_params_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #13, !srcloc !13
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #9 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #9 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock() unnamed_addr #3 {
entry:
  call fastcc void @do_raw_spin_unlock() #11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #3 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @kmalloced_params_lock to i8*), i8 0) #13, !srcloc !15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new) unnamed_addr #9 {
entry:
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @kmalloced_params, i64 0, i32 0), align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %next) unnamed_addr #9 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev1, align 8
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* @kmalloced_params, %struct.list_head** %prev3, align 8
  store volatile %struct.list_head* %new, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @kmalloced_params, i64 0, i32 0), align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @param_array(i8* noundef %name, i8* noundef %val, i32 noundef %max, i8* noundef %elem, i32 noundef %elemsize, i32 (i8*, %struct.kernel_param*)* nocapture noundef readonly %set, i16 noundef %level, i32* nocapture noundef %num) unnamed_addr #3 {
entry:
  %kp = alloca %struct.kernel_param, align 8
  %0 = bitcast %struct.kernel_param* %kp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #13
  %1 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 1
  %2 = bitcast %struct.module** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 24, i1 false), !annotation !7
  %name1 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 0
  store i8* %name, i8** %name1, align 8
  %arg = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 6, i32 0
  store i8* %elem, i8** %arg, align 8
  %conv = trunc i16 %level to i8
  %level2 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 4
  store i8 %conv, i8* %level2, align 2
  store i32 0, i32* %num, align 4
  %idx.ext = sext i32 %elemsize to i64
  br label %do.body

do.body:                                          ; preds = %do.cond17, %entry
  %3 = phi i32 [ 0, %entry ], [ %inc, %do.cond17 ]
  %val.addr.0 = phi i8* [ %val, %entry ], [ %add.ptr16, %do.cond17 ]
  %cmp = icmp eq i32 %3, %max
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %do.body
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i8* noundef %name, i32 noundef %max) #14
  br label %cleanup31

if.end:                                           ; preds = %do.body
  %call5 = call i64 @strcspn(i8* noundef %val.addr.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0)) #12
  %sext = shl i64 %call5, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr i8, i8* %val.addr.0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  store i8 0, i8* %arrayidx, align 1
  call fastcc void @check_kparam_locked() #11
  %call9 = call i32 %set(i8* noundef %val.addr.0, %struct.kernel_param* noundef nonnull %kp) #12
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %do.cond17, label %cleanup31

do.cond17:                                        ; preds = %if.end
  %5 = load i8*, i8** %arg, align 8
  %add.ptr = getelementptr i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %arg, align 8
  %sext1 = add i64 %sext, 4294967296
  %idx.ext15 = ashr exact i64 %sext1, 32
  %add.ptr16 = getelementptr i8, i8* %val.addr.0, i64 %idx.ext15
  %6 = load i32, i32* %num, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %num, align 4
  %cmp19 = icmp eq i8 %4, 44
  br i1 %cmp19, label %do.body, label %do.end21

do.end21:                                         ; preds = %do.cond17
  %cmp22 = icmp eq i32 %inc, 0
  br i1 %cmp22, label %do.end27, label %cleanup31

do.end27:                                         ; preds = %do.end21
  %call29 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i8* noundef %name, i32 noundef 1) #14
  br label %cleanup31

cleanup31:                                        ; preds = %if.end, %do.end, %do.end21, %do.end27
  %retval.2 = phi i32 [ -22, %do.end27 ], [ 0, %do.end21 ], [ -22, %do.end ], [ %call9, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #13
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strcspn(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_kparam_locked() unnamed_addr #3 {
entry:
  %call = call i1 @mutex_is_locked(%struct.mutex* noundef nonnull @param_lock) #12
  br i1 %call, label %do.end6, label %do.body3, !prof !12

do.body3:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/params.c\22; .popsection; .long 14472b - 14470b; .short 30; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !16
  unreachable

do.end6:                                          ; preds = %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @mutex_is_locked(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @module_attr_show(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef %buf) #3 {
entry:
  %show = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1
  %show7 = bitcast %struct.attribute* %show to i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)**
  %0 = load i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)*, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)** %show7, align 8
  %tobool.not = icmp eq i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.attribute* %attr to %struct.module_attribute*
  %2 = bitcast %struct.kobject* %kobj to %struct.module_kobject*
  %call = call i64 %0(%struct.module_attribute* noundef %1, %struct.module_kobject* noundef %2, i8* noundef %buf) #12
  %sext = shl i64 %call, 32
  %conv10 = ashr exact i64 %sext, 32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv10, %if.end ], [ -5, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @module_attr_store(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef %buf, i64 noundef %len) #3 {
entry:
  %store = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1, i32 1
  %0 = bitcast i16* %store to i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)**
  %1 = load i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)*, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.attribute* %attr to %struct.module_attribute*
  %3 = bitcast %struct.kobject* %kobj to %struct.module_kobject*
  %call = call i64 %1(%struct.module_attribute* noundef %2, %struct.module_kobject* noundef %3, i8* noundef %buf, i64 noundef %len) #12
  %sext = shl i64 %call, 32
  %conv8 = ashr exact i64 %sext, 32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv8, %if.end ], [ -5, %entry ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kset* @kset_create_and_add(i8* noundef, %struct.kset_uevent_ops* noundef, %struct.kobject* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @version_sysfs_builtin() unnamed_addr #8 section ".init.text" {
entry:
  br i1 icmp ult (%struct.module_version_attribute* getelementptr inbounds ([0 x %struct.module_version_attribute], [0 x %struct.module_version_attribute]* @__start___modver, i64 0, i64 0), %struct.module_version_attribute* getelementptr inbounds ([0 x %struct.module_version_attribute], [0 x %struct.module_version_attribute]* @__stop___modver, i64 0, i64 0)), label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %vattr.033 = phi %struct.module_version_attribute* [ %incdec.ptr, %for.inc ], [ getelementptr inbounds ([0 x %struct.module_version_attribute], [0 x %struct.module_version_attribute]* @__start___modver, i64 0, i64 0), %entry ]
  %module_name = getelementptr inbounds %struct.module_version_attribute, %struct.module_version_attribute* %vattr.033, i64 0, i32 1
  %0 = load i8*, i8** %module_name, align 8
  %call = call fastcc %struct.module_kobject* @locate_module_kobject(i8* noundef %0) #15
  %tobool.not = icmp eq %struct.module_kobject* %call, null
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %kobj = getelementptr inbounds %struct.module_kobject, %struct.module_kobject* %call, i64 0, i32 0
  %attr = getelementptr inbounds %struct.module_version_attribute, %struct.module_version_attribute* %vattr.033, i64 0, i32 0, i32 0
  %call1 = call fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr) #11
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then10, !prof !12

if.then10:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/params.c\22; .popsection; .long 14472b - 14470b; .short 877; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !17
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  %call19 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 0) #12
  call void @kobject_put(%struct.kobject* noundef %kobj) #12
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end
  %incdec.ptr = getelementptr %struct.module_version_attribute, %struct.module_version_attribute* %vattr.033, i64 1
  %cmp = icmp ult %struct.module_version_attribute* %incdec.ptr, getelementptr inbounds ([0 x %struct.module_version_attribute], [0 x %struct.module_version_attribute]* @__stop___modver, i64 0, i64 0)
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @param_sysfs_builtin() unnamed_addr #8 section ".init.text" {
entry:
  %modname = alloca [56 x i8], align 1
  %0 = getelementptr inbounds [56 x i8], [56 x i8]* %modname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(56) %0, i8 0, i64 56, i1 false), !annotation !7
  br i1 icmp ult (%struct.kernel_param* getelementptr inbounds ([0 x %struct.kernel_param], [0 x %struct.kernel_param]* @__start___param, i64 0, i64 0), %struct.kernel_param* getelementptr inbounds ([0 x %struct.kernel_param], [0 x %struct.kernel_param]* @__stop___param, i64 0, i64 0)), label %for.body, label %for.end

for.body:                                         ; preds = %entry, %cleanup
  %kp.024 = phi %struct.kernel_param* [ %incdec.ptr, %cleanup ], [ getelementptr inbounds ([0 x %struct.kernel_param], [0 x %struct.kernel_param]* @__start___param, i64 0, i64 0), %entry ]
  %perm = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp.024, i64 0, i32 3
  %1 = load i16, i16* %perm, align 8
  %cmp1 = icmp eq i16 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %name = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp.024, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call = call i8* @strchr(i8* noundef %2, i32 noundef 46) #12
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @strcpy(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #12
  br label %if.end11

if.else:                                          ; preds = %if.end
  %3 = load i8*, i8** %name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = trunc i64 %sub.ptr.sub to i32
  %conv6 = add i32 %4, 1
  %conv9 = zext i32 %conv6 to i64
  %call10 = call i64 @strlcpy(i8* noundef nonnull %0, i8* noundef %3, i64 noundef %conv9) #12
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then3
  %name_len.0 = phi i32 [ %conv6, %if.else ], [ 0, %if.then3 ]
  call fastcc void @kernel_add_sysfs_param(i8* noundef nonnull %0, %struct.kernel_param* noundef %kp.024, i32 noundef %name_len.0) #15
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.end11
  %incdec.ptr = getelementptr %struct.kernel_param, %struct.kernel_param* %kp.024, i64 1
  %cmp = icmp ult %struct.kernel_param* %incdec.ptr, getelementptr inbounds ([0 x %struct.kernel_param], [0 x %struct.kernel_param]* @__stop___param, i64 0, i64 0)
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %cleanup, %entry
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal i32 @uevent_filter(%struct.kset* nocapture noundef readnone %kset, %struct.kobject* nocapture noundef readonly %kobj) #10 {
entry:
  %call = call fastcc %struct.kobj_type* @get_ktype(%struct.kobject* noundef %kobj) #11
  %cmp = icmp eq %struct.kobj_type* %call, @module_ktype
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kobj_type* @get_ktype(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #10 {
entry:
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 4
  %0 = load %struct.kobj_type*, %struct.kobj_type** %ktype, align 8
  ret %struct.kobj_type* %0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc %struct.module_kobject* @locate_module_kobject(i8* noundef %name) unnamed_addr #8 section ".init.text" {
entry:
  %0 = load %struct.kset*, %struct.kset** @module_kset, align 8
  %call = call %struct.kobject* @kset_find_obj(%struct.kset* noundef %0, i8* noundef %name) #12
  %tobool.not = icmp eq %struct.kobject* %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.kobject* %call to i8*
  br label %if.end30

if.else:                                          ; preds = %entry
  %call1 = call fastcc i8* @kzalloc(i64 noundef 96) #11
  %tobool3.not = icmp eq i8* %call1, null
  br i1 %tobool3.not, label %do.body8, label %do.end15, !prof !18

do.body8:                                         ; preds = %if.else
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/params.c\22; .popsection; .long 14472b - 14470b; .short 772; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !19
  unreachable

do.end15:                                         ; preds = %if.else
  %mod = getelementptr inbounds i8, i8* %call1, i64 64
  %2 = bitcast i8* %mod to %struct.module**
  store %struct.module* null, %struct.module** %2, align 8
  %3 = load %struct.kset*, %struct.kset** @module_kset, align 8
  %kobj16 = bitcast i8* %call1 to %struct.kobject*
  %kset = getelementptr inbounds i8, i8* %call1, i64 32
  %4 = bitcast i8* %kset to %struct.kset**
  store %struct.kset* %3, %struct.kset** %4, align 8
  %call18 = call i32 (%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.kobject* noundef nonnull %kobj16, %struct.kobj_type* noundef nonnull @module_ktype, %struct.kobject* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* noundef %name) #12
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end27, label %if.then20

if.then20:                                        ; preds = %do.end15
  call void @kobject_put(%struct.kobject* noundef nonnull %kobj16) #12
  %call26 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.28, i64 0, i64 0), i8* noundef %name, i32 noundef %call18) #14
  br label %cleanup

if.end27:                                         ; preds = %do.end15
  %call29 = call %struct.kobject* @kobject_get(%struct.kobject* noundef nonnull %kobj16) #12
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %if.then
  %mk.0.in = phi i8* [ %1, %if.then ], [ %call1, %if.end27 ]
  %mk.0 = bitcast i8* %mk.0.in to %struct.module_kobject*
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then20
  %retval.0 = phi %struct.module_kobject* [ %mk.0, %if.end30 ], [ null, %if.then20 ]
  ret %struct.module_kobject* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr) unnamed_addr #3 {
entry:
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef null) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(%struct.kobject* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kset_find_obj(%struct.kset* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size) unnamed_addr #3 {
entry:
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef 3520) #12
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(%struct.kobject* noundef, %struct.kobj_type* noundef, %struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kobject* @kobject_get(%struct.kobject* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject* noundef, %struct.attribute* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc void @kernel_add_sysfs_param(i8* noundef %name, %struct.kernel_param* noundef %kparam, i32 noundef %name_skip) unnamed_addr #8 section ".init.text" {
entry:
  %call = call fastcc %struct.module_kobject* @locate_module_kobject(i8* noundef %name) #15
  %tobool.not = icmp eq %struct.module_kobject* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mp = getelementptr inbounds %struct.module_kobject, %struct.module_kobject* %call, i64 0, i32 3
  %0 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %tobool1.not = icmp eq %struct.module_param_attrs* %0, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %kobj = getelementptr inbounds %struct.module_kobject, %struct.module_kobject* %call, i64 0, i32 0
  %grp = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %0, i64 0, i32 1
  call void @sysfs_remove_group(%struct.kobject* noundef %kobj, %struct.attribute_group* noundef %grp) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %name5 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kparam, i64 0, i32 0
  %1 = load i8*, i8** %name5, align 8
  %idx.ext = zext i32 %name_skip to i64
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext
  %call6 = call fastcc i32 @add_sysfs_param(%struct.module_kobject* noundef nonnull %call, %struct.kernel_param* noundef %kparam, i8* noundef %add.ptr) #15
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end17, label %do.body11, !prof !12

do.body11:                                        ; preds = %if.end4
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/params.c\22; .popsection; .long 14472b - 14470b; .short 813; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !20
  unreachable

do.end17:                                         ; preds = %if.end4
  %kobj18 = getelementptr inbounds %struct.module_kobject, %struct.module_kobject* %call, i64 0, i32 0
  %2 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %grp20 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %2, i64 0, i32 1
  %call21 = call i32 @sysfs_create_group(%struct.kobject* noundef %kobj18, %struct.attribute_group* noundef %grp20) #12
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %do.end40, label %do.body32, !prof !12

do.body32:                                        ; preds = %do.end17
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/params.c\22; .popsection; .long 14472b - 14470b; .short 815; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !21
  unreachable

do.end40:                                         ; preds = %do.end17
  %call42 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj18, i32 noundef 0) #12
  call void @kobject_put(%struct.kobject* noundef %kobj18) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #4

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal fastcc i32 @add_sysfs_param(%struct.module_kobject* nocapture noundef %mk, %struct.kernel_param* noundef %kp, i8* noundef %name) unnamed_addr #8 section ".init.text" {
entry:
  %perm = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %kp, i64 0, i32 3
  %0 = load i16, i16* %perm, align 8
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !18

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/params.c\22; .popsection; .long 14472b - 14470b; .short 634; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !22
  unreachable

do.end9:                                          ; preds = %entry
  %mp = getelementptr inbounds %struct.module_kobject, %struct.module_kobject* %mk, i64 0, i32 3
  %1 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %tobool10.not = icmp eq %struct.module_param_attrs* %1, null
  br i1 %tobool10.not, label %if.then11, label %if.end28

if.then11:                                        ; preds = %do.end9
  %call = call fastcc i8* @kzalloc(i64 noundef 48) #11
  %2 = bitcast %struct.module_param_attrs** %mp to i8**
  store i8* %call, i8** %2, align 8
  %tobool14.not = icmp eq i8* %call, null
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.then11
  %grp = getelementptr inbounds i8, i8* %call, i64 8
  %name18 = bitcast i8* %grp to i8**
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8** %name18, align 8
  %call19 = call fastcc i8* @kzalloc(i64 noundef 8) #11
  %3 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %attrs = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %3, i64 0, i32 1, i32 3
  %4 = bitcast %struct.attribute*** %attrs to i8**
  store i8* %call19, i8** %4, align 8
  %5 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %attrs24 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %5, i64 0, i32 1, i32 3
  %6 = load %struct.attribute**, %struct.attribute*** %attrs24, align 8
  %tobool25.not = icmp eq %struct.attribute** %6, null
  br i1 %tobool25.not, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end16, %do.end9
  %7 = phi %struct.module_param_attrs* [ %5, %if.end16 ], [ %1, %do.end9 ]
  %8 = bitcast %struct.module_param_attrs* %7 to i8*
  %num = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %7, i64 0, i32 0
  %9 = load i32, i32* %num, align 8
  %add = add i32 %9, 1
  %conv31 = zext i32 %add to i64
  %mul = shl nuw nsw i64 %conv31, 6
  %add32 = or i64 %mul, 48
  %call33 = call i8* @krealloc(i8* noundef %8, i64 noundef %add32, i32 noundef 3264) #12
  %tobool34.not = icmp eq i8* %call33, null
  br i1 %tobool34.not, label %cleanup, label %if.end36

if.end36:                                         ; preds = %if.end28
  %10 = bitcast %struct.module_param_attrs** %mp to i8**
  store i8* %call33, i8** %10, align 8
  %attrs40 = getelementptr inbounds i8, i8* %call33, i64 32
  %11 = bitcast i8* %attrs40 to i8**
  %12 = load i8*, i8** %11, align 8
  %num42 = bitcast i8* %call33 to i32*
  %13 = load i32, i32* %num42, align 8
  %add43 = add i32 %13, 2
  %conv44 = zext i32 %add43 to i64
  %mul45 = shl nuw nsw i64 %conv44, 3
  %call46 = call i8* @krealloc(i8* noundef %12, i64 noundef %mul45, i32 noundef 3264) #12
  %tobool47.not = icmp eq i8* %call46, null
  br i1 %tobool47.not, label %cleanup, label %if.end49

if.end49:                                         ; preds = %if.end36
  %14 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %attrs52 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %14, i64 0, i32 1, i32 3
  %15 = bitcast %struct.attribute*** %attrs52 to i8**
  store i8* %call46, i8** %15, align 8
  %16 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %num56 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %16, i64 0, i32 0
  %17 = load i32, i32* %num56, align 8
  %idxprom = zext i32 %17 to i64
  %arrayidx = getelementptr %struct.module_param_attrs, %struct.module_param_attrs* %16, i64 0, i32 2, i64 %idxprom
  %18 = bitcast %struct.param_attribute* %arrayidx to i8*
  %call57 = call i8* @memset(i8* noundef %18, i32 noundef 0, i64 noundef 64) #12
  %19 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %num64 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %19, i64 0, i32 0
  %20 = load i32, i32* %num64, align 8
  %idxprom65 = zext i32 %20 to i64
  %param = getelementptr %struct.module_param_attrs, %struct.module_param_attrs* %19, i64 0, i32 2, i64 %idxprom65, i32 1
  store %struct.kernel_param* %kp, %struct.kernel_param** %param, align 8
  %21 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %num70 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %21, i64 0, i32 0
  %22 = load i32, i32* %num70, align 8
  %idxprom71 = zext i32 %22 to i64
  %show = getelementptr %struct.module_param_attrs, %struct.module_param_attrs* %21, i64 0, i32 2, i64 %idxprom71, i32 0, i32 1
  %show73 = bitcast {}** %show to i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)**
  store i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)* @param_attr_show, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*)** %show73, align 8
  %23 = load i16, i16* %perm, align 8
  %24 = and i16 %23, 146
  %cmp.not = icmp eq i16 %24, 0
  %25 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %num88 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %25, i64 0, i32 0
  %26 = load i32, i32* %num88, align 8
  %idxprom89 = zext i32 %26 to i64
  %store92 = getelementptr %struct.module_param_attrs, %struct.module_param_attrs* %25, i64 0, i32 2, i64 %idxprom89, i32 0, i32 2
  %.param_attr_store = select i1 %cmp.not, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)* null, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)* @param_attr_store
  store i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)* %.param_attr_store, i64 (%struct.module_attribute*, %struct.module_kobject*, i8*, i64)** %store92, align 8
  %27 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %num97 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %27, i64 0, i32 0
  %28 = load i32, i32* %num97, align 8
  %idxprom98 = zext i32 %28 to i64
  %name101 = getelementptr %struct.module_param_attrs, %struct.module_param_attrs* %27, i64 0, i32 2, i64 %idxprom98, i32 0, i32 0, i32 0
  store i8* %name, i8** %name101, align 8
  %29 = load i16, i16* %perm, align 8
  %30 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %num106 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %30, i64 0, i32 0
  %31 = load i32, i32* %num106, align 8
  %idxprom107 = zext i32 %31 to i64
  %mode = getelementptr %struct.module_param_attrs, %struct.module_param_attrs* %30, i64 0, i32 2, i64 %idxprom107, i32 0, i32 0, i32 1
  store i16 %29, i16* %mode, align 8
  %32 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %num112 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %32, i64 0, i32 0
  %33 = load i32, i32* %num112, align 8
  %inc = add i32 %33, 1
  store i32 %inc, i32* %num112, align 8
  %34 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %num114184 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %34, i64 0, i32 0
  %35 = load i32, i32* %num114184, align 8
  %cmp115185.not = icmp eq i32 %35, 0
  br i1 %cmp115185.not, label %for.end, label %for.body

for.body:                                         ; preds = %if.end49, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end49 ]
  %36 = phi %struct.module_param_attrs* [ %38, %for.body ], [ %34, %if.end49 ]
  %attr122 = getelementptr %struct.module_param_attrs, %struct.module_param_attrs* %36, i64 0, i32 2, i64 %indvars.iv, i32 0, i32 0
  %attrs125 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %36, i64 0, i32 1, i32 3
  %37 = load %struct.attribute**, %struct.attribute*** %attrs125, align 8
  %arrayidx127 = getelementptr %struct.attribute*, %struct.attribute** %37, i64 %indvars.iv
  store %struct.attribute* %attr122, %struct.attribute** %arrayidx127, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %38 = load %struct.module_param_attrs*, %struct.module_param_attrs** %mp, align 8
  %num114 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %38, i64 0, i32 0
  %39 = load i32, i32* %num114, align 8
  %40 = zext i32 %39 to i64
  %cmp115 = icmp ult i64 %indvars.iv.next, %40
  br i1 %cmp115, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %phi.cast = zext i32 %39 to i64
  br label %for.end

for.end:                                          ; preds = %if.end49, %for.end.loopexit
  %.lcssa183 = phi %struct.module_param_attrs* [ %38, %for.end.loopexit ], [ %34, %if.end49 ]
  %.lcssa = phi i64 [ %phi.cast, %for.end.loopexit ], [ 0, %if.end49 ]
  %attrs131 = getelementptr inbounds %struct.module_param_attrs, %struct.module_param_attrs* %.lcssa183, i64 0, i32 1, i32 3
  %41 = load %struct.attribute**, %struct.attribute*** %attrs131, align 8
  %arrayidx135 = getelementptr %struct.attribute*, %struct.attribute** %41, i64 %.lcssa
  store %struct.attribute* null, %struct.attribute** %arrayidx135, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end28, %if.end16, %if.then11, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %if.then11 ], [ -12, %if.end16 ], [ -12, %if.end28 ], [ -12, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(%struct.kobject* noundef, %struct.attribute_group* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @krealloc(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @param_attr_show(%struct.module_attribute* nocapture noundef readonly %mattr, %struct.module_kobject* nocapture noundef readnone %mk, i8* noundef %buf) #3 {
entry:
  %param = getelementptr inbounds %struct.module_attribute, %struct.module_attribute* %mattr, i64 1
  %0 = bitcast %struct.module_attribute* %param to %struct.kernel_param**
  %1 = load %struct.kernel_param*, %struct.kernel_param** %0, align 8
  %ops = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %1, i64 0, i32 2
  %2 = load %struct.kernel_param_ops*, %struct.kernel_param_ops** %ops, align 8
  %get = getelementptr inbounds %struct.kernel_param_ops, %struct.kernel_param_ops* %2, i64 0, i32 2
  %3 = load i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)** %get, align 8
  %tobool.not = icmp eq i32 (i8*, %struct.kernel_param*)* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @kernel_param_lock(%struct.module* undef) #11
  %4 = load %struct.kernel_param*, %struct.kernel_param** %0, align 8
  %ops2 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %4, i64 0, i32 2
  %5 = load %struct.kernel_param_ops*, %struct.kernel_param_ops** %ops2, align 8
  %get3 = getelementptr inbounds %struct.kernel_param_ops, %struct.kernel_param_ops* %5, i64 0, i32 2
  %6 = load i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)** %get3, align 8
  %call = call i32 %6(i8* noundef %buf, %struct.kernel_param* noundef %4) #12
  call void @kernel_param_unlock(%struct.module* undef) #11
  %conv = sext i32 %call to i64
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @param_attr_store(%struct.module_attribute* nocapture noundef readonly %mattr, %struct.module_kobject* nocapture noundef readnone %mk, i8* noundef %buf, i64 noundef %len) #3 {
entry:
  %param = getelementptr inbounds %struct.module_attribute, %struct.module_attribute* %mattr, i64 1
  %0 = bitcast %struct.module_attribute* %param to %struct.kernel_param**
  %1 = load %struct.kernel_param*, %struct.kernel_param** %0, align 8
  %ops = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %1, i64 0, i32 2
  %2 = load %struct.kernel_param_ops*, %struct.kernel_param_ops** %ops, align 8
  %set = getelementptr inbounds %struct.kernel_param_ops, %struct.kernel_param_ops* %2, i64 0, i32 1
  %3 = load i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)** %set, align 8
  %tobool.not = icmp eq i32 (i8*, %struct.kernel_param*)* %3, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @kernel_param_lock(%struct.module* undef) #11
  %4 = load %struct.kernel_param*, %struct.kernel_param** %0, align 8
  call fastcc void @param_check_unsafe(%struct.kernel_param* noundef %4) #11
  %5 = load %struct.kernel_param*, %struct.kernel_param** %0, align 8
  %ops4 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %5, i64 0, i32 2
  %6 = load %struct.kernel_param_ops*, %struct.kernel_param_ops** %ops4, align 8
  %set5 = getelementptr inbounds %struct.kernel_param_ops, %struct.kernel_param_ops* %6, i64 0, i32 1
  %7 = load i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)** %set5, align 8
  %call7 = call i32 %7(i8* noundef %buf, %struct.kernel_param* noundef %5) #12
  call void @kernel_param_unlock(%struct.module* undef) #11
  %tobool10.not = icmp eq i32 %call7, 0
  %conv = sext i32 %call7 to i64
  %spec.select = select i1 %tobool10.not, i64 %len, i64 %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ %spec.select, %if.end ]
  ret i64 %retval.0
}

attributes #0 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { cold nobuiltin nounwind "no-builtins" }
attributes #15 = { cold nobuiltin "no-builtins" }

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
!8 = !{i64 2149257179, i64 2149257226, i64 2149257232, i64 2149257269, i64 2149257287, i64 2149258598, i64 2149258646, i64 2149258694, i64 2149258757, i64 2149258806, i64 2149257365, i64 2149257390, i64 2149257416, i64 2149257422, i64 2149258264, i64 2149258304, i64 2149258322, i64 2149258354, i64 2149258382, i64 2149258436, i64 2149258456, i64 2149258553, i64 2149257445, i64 2149257459, i64 2149257465, i64 2149257515, i64 2149257561, i64 2149257594}
!9 = !{i64 2149259358, i64 2149259405, i64 2149259411, i64 2149259448, i64 2149259466, i64 2149260409, i64 2149260457, i64 2149260505, i64 2149260568, i64 2149260617, i64 2149259544, i64 2149259569, i64 2149259595, i64 2149259601, i64 2149259638, i64 2149259644, i64 2149259694, i64 2149259740, i64 2149259773}
!10 = !{i8 0, i8 2}
!11 = !{i64 2149493009}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2147838886, i64 2147838919, i64 2147838972, i64 2147839031, i64 2147839065, i64 2147839120, i64 2147839149, i64 2147839169}
!14 = !{i64 2149500290}
!15 = !{i64 2149303372}
!16 = !{i64 2153106637}
!17 = !{i64 2153150772}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2153142909}
!20 = !{i64 2153145139}
!21 = !{i64 2153146466}
!22 = !{i64 2153138351}
