; ModuleID = 'lib/rhashtable.c'
source_filename = "lib/rhashtable.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.rhash_lock_head = type {}
%struct.workqueue_struct = type opaque
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, %struct.bucket_table*, %struct.lockdep_map, [8 x i8], [0 x %struct.rhash_lock_head*] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.lockdep_map = type {}
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.rhash_head = type { %struct.rhash_head* }
%struct.rhashtable_iter = type { %struct.rhashtable*, %struct.rhash_head*, %struct.rhlist_head*, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhlist_head = type { %struct.rhash_head, %struct.rhlist_head* }
%struct.rhashtable_walker = type { %struct.list_head, %struct.bucket_table* }
%struct.rhltable = type { %struct.rhashtable }
%union.nested_table = type { %union.nested_table* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.59, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.4 = type { i32 }
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
%struct.mm_struct = type { %struct.anon.5, [0 x i64] }
%struct.anon.5 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.6, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.pgprot_t = type { i64 }
%struct.anon.6 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.7, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.8, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.7 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.8 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.9, %union.anon.38, %struct.atomic_t, [8 x i8] }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.17, %struct.list_head, %struct.list_head, %union.anon.18 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.12, i8* }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.17 = type { %struct.list_head }
%union.anon.18 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.16, i32 }
%union.anon.16 = type { %struct.kuid_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.62 = type { %struct.callback_head }
%union.anon.63 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.19 }
%union.anon.19 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.22 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.20, %struct.qspinlock }
%union.anon.20 = type { %struct.atomic_t }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.22 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.38 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.11, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.24 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.ucounts = type opaque
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.24 = type { %struct.callback_head }
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
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.44, %union.anon.45, i32 }
%struct.request_queue = type opaque
%union.anon.44 = type { %struct.list_head }
%union.anon.45 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.46 }
%struct.anon.46 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.50 }
%struct.anon.50 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.58, i32, [12 x i8] }
%union.anon.58 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.60, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.60 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}

@rhashtable_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [11 x i8] c"&ht->mutex\00", align 1
@rht_bucket_nested.rhnull = internal global %struct.rhash_lock_head* null, align 8
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @rhashtable_insert_slow(%struct.rhashtable* noundef %ht, i8* noundef %key, %struct.rhash_head* noundef %obj) local_unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  call fastcc void @__rcu_read_lock() #14
  %call = call fastcc i8* @rhashtable_try_insert(%struct.rhashtable* noundef %ht, i8* noundef %key, %struct.rhash_head* noundef %obj) #15
  call fastcc void @rcu_read_unlock() #15
  %call1 = call fastcc i64 @PTR_ERR(i8* noundef %call) #15
  %cmp = icmp eq i64 %call1, -11
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  ret i8* %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @rhashtable_try_insert(%struct.rhashtable* noundef %ht, i8* noundef %key, %struct.rhash_head* noundef %obj) unnamed_addr #0 {
entry:
  %byval-temp = alloca %struct.rhashtable_params, align 8
  %tbl1 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 0
  %0 = load volatile %struct.bucket_table*, %struct.bucket_table** %tbl1, align 8
  %p = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3
  %1 = bitcast %struct.rhashtable_params* %byval-temp to i8*
  %2 = bitcast %struct.rhashtable_params* %p to i8*
  br label %do.body6

do.body6:                                         ; preds = %do.cond35, %entry
  %new_tbl.0 = phi %struct.bucket_table* [ %0, %entry ], [ %new_tbl.1, %do.cond35 ]
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8* noundef align 8 dereferenceable(40) %2, i64 40, i1 false)
  %call = call fastcc i32 @rht_head_hashfn(%struct.rhashtable* noundef %ht, %struct.bucket_table* noundef %new_tbl.0, %struct.rhash_head* noundef %obj, %struct.rhashtable_params* noundef nonnull %byval-temp) #15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #16
  %future_tbl = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %new_tbl.0, i64 0, i32 5
  %3 = load volatile %struct.bucket_table*, %struct.bucket_table** %future_tbl, align 16
  %tobool.not = icmp eq %struct.bucket_table* %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.body6
  %call12 = call fastcc %struct.rhash_lock_head** @rht_bucket_var(%struct.bucket_table* noundef %new_tbl.0, i32 noundef %call) #15
  br label %if.end

if.else:                                          ; preds = %do.body6
  %call13 = call fastcc %struct.rhash_lock_head** @rht_bucket_insert(%struct.rhashtable* noundef %ht, %struct.bucket_table* noundef %new_tbl.0, i32 noundef %call) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bkt.0 = phi %struct.rhash_lock_head** [ %call12, %if.then ], [ %call13, %if.else ]
  %cmp = icmp eq %struct.rhash_lock_head** %bkt.0, null
  br i1 %cmp, label %if.then14, label %if.else26

if.then14:                                        ; preds = %if.end
  %4 = load volatile %struct.bucket_table*, %struct.bucket_table** %future_tbl, align 16
  %call25 = call fastcc i8* @ERR_PTR(i64 noundef -11) #15
  %.pre = bitcast %struct.bucket_table* %4 to i8*
  br label %do.cond35

if.else26:                                        ; preds = %if.end
  call fastcc void @rht_lock(%struct.rhash_lock_head** noundef nonnull %bkt.0) #15
  %call27 = call fastcc i8* @rhashtable_lookup_one(%struct.rhashtable* noundef %ht, %struct.rhash_lock_head** noundef nonnull %bkt.0, i8* noundef %key, %struct.rhash_head* noundef %obj) #15
  %call28 = call fastcc %struct.bucket_table* @rhashtable_insert_one(%struct.rhashtable* noundef %ht, %struct.rhash_lock_head** noundef nonnull %bkt.0, %struct.bucket_table* noundef %new_tbl.0, %struct.rhash_head* noundef %obj, i8* noundef %call27) #15
  %5 = bitcast %struct.bucket_table* %call28 to i8*
  %call29 = call fastcc i64 @PTR_ERR(i8* noundef %5) #15
  %cmp30.not = icmp eq i64 %call29, -17
  %spec.select = select i1 %cmp30.not, i8* %call27, i8* %5
  call fastcc void @rht_unlock(%struct.rhash_lock_head** noundef nonnull %bkt.0) #15
  br label %do.cond35

do.cond35:                                        ; preds = %if.then14, %if.else26
  %.pre-phi = phi i8* [ %.pre, %if.then14 ], [ %5, %if.else26 ]
  %data.1 = phi i8* [ %call25, %if.then14 ], [ %spec.select, %if.else26 ]
  %new_tbl.1 = phi %struct.bucket_table* [ %4, %if.then14 ], [ %call28, %if.else26 ]
  %call36 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %.pre-phi) #15
  br i1 %call36, label %do.end37, label %do.body6

do.end37:                                         ; preds = %do.cond35
  %call38 = call fastcc i64 @PTR_ERR(i8* noundef %data.1) #15
  %cmp39 = icmp eq i64 %call38, -11
  br i1 %cmp39, label %if.then40, label %if.end44

if.then40:                                        ; preds = %do.end37
  %call41 = call fastcc i32 @rhashtable_insert_rehash(%struct.rhashtable* noundef %ht, %struct.bucket_table* noundef %new_tbl.0) #15
  %tobool42.not = icmp eq i32 %call41, 0
  %call41. = select i1 %tobool42.not, i32 -11, i32 %call41
  %conv = sext i32 %call41. to i64
  %call43 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #15
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %do.end37
  %data.2 = phi i8* [ %call43, %if.then40 ], [ %data.1, %do.end37 ]
  ret i8* %data.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rhashtable_walk_enter(%struct.rhashtable* noundef %ht, %struct.rhashtable_iter* noundef %iter) local_unnamed_addr #0 {
entry:
  %ht1 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 0
  store %struct.rhashtable* %ht, %struct.rhashtable** %ht1, align 8
  %p = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 1
  store %struct.rhash_head* null, %struct.rhash_head** %p, align 8
  %slot = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 4
  store i32 0, i32* %slot, align 8
  %skip = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 5
  store i32 0, i32* %skip, align 4
  %end_of_table = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 6
  store i8 0, i8* %end_of_table, align 8
  %rlock.i = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  %tbl = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 0
  %0 = load %struct.bucket_table*, %struct.bucket_table** %tbl, align 8
  %tbl2 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 3, i32 1
  store %struct.bucket_table* %0, %struct.bucket_table** %tbl2, align 8
  %list = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 3, i32 0
  %walkers = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %0, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %walkers) #15
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rhashtable_walk_exit(%struct.rhashtable_iter* nocapture noundef %iter) local_unnamed_addr #0 {
entry:
  %ht = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 0
  %0 = load %struct.rhashtable*, %struct.rhashtable** %ht, align 8
  %rlock.i = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %0, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  %tbl = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 3, i32 1
  %1 = load %struct.bucket_table*, %struct.bucket_table** %tbl, align 8
  %tobool.not = icmp eq %struct.bucket_table* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 3, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %list) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.rhashtable*, %struct.rhashtable** %ht, align 8
  %rlock.i7 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %2, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i7) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #15
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @rhashtable_walk_start_check(%struct.rhashtable_iter* nocapture noundef %iter) local_unnamed_addr #0 {
entry:
  %ht1 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 0
  %0 = load %struct.rhashtable*, %struct.rhashtable** %ht1, align 8
  %rhlist2 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %0, i64 0, i32 4
  %1 = load i8, i8* %rhlist2, align 8, !range !7
  %tobool.not = icmp eq i8 %1, 0
  call fastcc void @__rcu_read_lock() #14
  %rlock.i = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %0, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  %tbl = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 3, i32 1
  %2 = load %struct.bucket_table*, %struct.bucket_table** %tbl, align 8
  %tobool3.not = icmp eq %struct.bucket_table* %2, null
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 3, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %list) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  %end_of_table = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 6
  %3 = load i8, i8* %end_of_table, align 8, !range !7
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup103

if.end8:                                          ; preds = %if.end
  %4 = load %struct.bucket_table*, %struct.bucket_table** %tbl, align 8
  %tobool11.not = icmp eq %struct.bucket_table* %4, null
  br i1 %tobool11.not, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end8
  %tbl13 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %0, i64 0, i32 0
  %5 = load volatile %struct.bucket_table*, %struct.bucket_table** %tbl13, align 8
  store %struct.bucket_table* %5, %struct.bucket_table** %tbl, align 8
  %slot = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 4
  store i32 0, i32* %slot, align 8
  %skip = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 5
  store i32 0, i32* %skip, align 4
  br label %cleanup103

if.end20:                                         ; preds = %if.end8
  %p = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 1
  %6 = load %struct.rhash_head*, %struct.rhash_head** %p, align 8
  %tobool21.not = icmp eq %struct.rhash_head* %6, null
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool21.not, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %7 = load %struct.bucket_table*, %struct.bucket_table** %tbl, align 8
  %slot28 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 4
  %8 = load i32, i32* %slot28, align 8
  %call = call fastcc %struct.rhash_lock_head** @rht_bucket(%struct.bucket_table* noundef %7, i32 noundef %8) #15
  %call29 = call fastcc %struct.rhash_head* @rht_ptr_rcu(%struct.rhash_lock_head** noundef %call) #15
  %call30157 = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %call29) #15
  br i1 %call30157, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then23
  %9 = load %struct.rhash_head*, %struct.rhash_head** %p, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %p24.0159 = phi %struct.rhash_head* [ %call29, %for.body.lr.ph ], [ %10, %for.inc ]
  %skip25.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %inc = add i32 %skip25.0158, 1
  %cmp = icmp eq %struct.rhash_head* %p24.0159, %9
  br i1 %cmp, label %if.then32, label %for.inc

if.then32:                                        ; preds = %for.body
  %skip33 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 5
  store i32 %inc, i32* %skip33, align 4
  br label %cleanup103

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %p24.0159, i64 0, i32 0
  %10 = load volatile %struct.rhash_head*, %struct.rhash_head** %next, align 8
  %call30 = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %10) #15
  br i1 %call30, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.then23
  store %struct.rhash_head* null, %struct.rhash_head** %p, align 8
  br label %cleanup103

if.else:                                          ; preds = %if.end20
  %brmerge150 = select i1 %tobool21.not, i1 true, i1 %tobool.not
  br i1 %brmerge150, label %cleanup103, label %if.then47

if.then47:                                        ; preds = %if.else
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %11 = load %struct.bucket_table*, %struct.bucket_table** %tbl, align 8
  %slot53 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 4
  %12 = load i32, i32* %slot53, align 8
  %call54 = call fastcc %struct.rhash_lock_head** @rht_bucket(%struct.bucket_table* noundef %11, i32 noundef %12) #15
  %call55 = call fastcc %struct.rhash_head* @rht_ptr_rcu(%struct.rhash_lock_head** noundef %call54) #15
  %call57163 = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %call55) #15
  br i1 %call57163, label %for.end94, label %for.body59.lr.ph

for.body59.lr.ph:                                 ; preds = %if.then47
  %list68 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 2
  br label %for.body59

for.body59:                                       ; preds = %for.body59.lr.ph, %for.inc86
  %p48.0165 = phi %struct.rhash_head* [ %call55, %for.body59.lr.ph ], [ %16, %for.inc86 ]
  %skip50.0164 = phi i32 [ 0, %for.body59.lr.ph ], [ %skip50.1.lcssa, %for.inc86 ]
  %tobool65.not160 = icmp eq %struct.rhash_head* %p48.0165, null
  br i1 %tobool65.not160, label %for.inc86, label %for.body66.lr.ph

for.body66.lr.ph:                                 ; preds = %for.body59
  %13 = bitcast %struct.rhash_head* %p48.0165 to %struct.rhlist_head*
  %14 = load %struct.rhlist_head*, %struct.rhlist_head** %list68, align 8
  br label %for.body66

for.body66:                                       ; preds = %for.body66.lr.ph, %for.inc74
  %list49.0162 = phi %struct.rhlist_head* [ %13, %for.body66.lr.ph ], [ %15, %for.inc74 ]
  %skip50.1161 = phi i32 [ %skip50.0164, %for.body66.lr.ph ], [ %inc67, %for.inc74 ]
  %inc67 = add i32 %skip50.1161, 1
  %cmp69 = icmp eq %struct.rhlist_head* %list49.0162, %14
  br i1 %cmp69, label %if.then70, label %for.inc74

if.then70:                                        ; preds = %for.body66
  store %struct.rhash_head* %p48.0165, %struct.rhash_head** %p, align 8
  %skip72 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 5
  store i32 %inc67, i32* %skip72, align 4
  br label %cleanup103

for.inc74:                                        ; preds = %for.body66
  %next80 = getelementptr inbounds %struct.rhlist_head, %struct.rhlist_head* %list49.0162, i64 0, i32 1
  %15 = load volatile %struct.rhlist_head*, %struct.rhlist_head** %next80, align 8
  %tobool65.not = icmp eq %struct.rhlist_head* %15, null
  br i1 %tobool65.not, label %for.inc86, label %for.body66

for.inc86:                                        ; preds = %for.inc74, %for.body59
  %skip50.1.lcssa = phi i32 [ %skip50.0164, %for.body59 ], [ %inc67, %for.inc74 ]
  %next92 = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %p48.0165, i64 0, i32 0
  %16 = load volatile %struct.rhash_head*, %struct.rhash_head** %next92, align 8
  %call57 = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %16) #15
  br i1 %call57, label %for.end94, label %for.body59

for.end94:                                        ; preds = %for.inc86, %if.then47
  store %struct.rhash_head* null, %struct.rhash_head** %p, align 8
  br label %cleanup103

cleanup103:                                       ; preds = %for.end94, %if.then70, %for.end, %if.then32, %if.else, %if.end, %if.then12
  %retval.0 = phi i32 [ -11, %if.then12 ], [ 0, %if.end ], [ 0, %if.else ], [ 0, %if.then32 ], [ 0, %for.end ], [ 0, %if.then70 ], [ 0, %for.end94 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.rhash_head* @rht_ptr_rcu(%struct.rhash_lock_head** noundef %bkt) unnamed_addr #4 {
entry:
  %0 = load volatile %struct.rhash_lock_head*, %struct.rhash_lock_head** %bkt, align 8
  %call = call fastcc %struct.rhash_head* @__rht_ptr(%struct.rhash_lock_head* noundef %0, %struct.rhash_lock_head** noundef %bkt) #15
  ret %struct.rhash_head* %call
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.rhash_lock_head** @rht_bucket(%struct.bucket_table* noundef readonly %tbl, i32 noundef %hash) unnamed_addr #3 {
entry:
  %nest = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 1
  %0 = load i32, i32* %nest, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cond.false, label %cond.true, !prof !10

cond.true:                                        ; preds = %entry
  %call = call %struct.rhash_lock_head** @rht_bucket_nested(%struct.bucket_table* noundef %tbl, i32 noundef %hash) #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  %idxprom = zext i32 %hash to i64
  %arrayidx = getelementptr %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 8, i64 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rhash_lock_head** [ %call, %cond.true ], [ %arrayidx, %cond.false ]
  ret %struct.rhash_lock_head** %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %ptr) unnamed_addr #2 {
entry:
  %0 = ptrtoint %struct.rhash_head* %ptr to i64
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @rhashtable_walk_next(%struct.rhashtable_iter* nocapture noundef %iter) local_unnamed_addr #0 {
entry:
  %list1 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 2
  %0 = load %struct.rhlist_head*, %struct.rhlist_head** %list1, align 8
  %ht2 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 0
  %1 = load %struct.rhashtable*, %struct.rhashtable** %ht2, align 8
  %p3 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 1
  %2 = load %struct.rhash_head*, %struct.rhash_head** %p3, align 8
  %rhlist4 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %1, i64 0, i32 4
  %3 = load i8, i8* %rhlist4, align 8, !range !7
  %tobool.not = icmp eq i8 %3, 0
  %tobool5.not = icmp eq %struct.rhash_head* %2, null
  br i1 %tobool5.not, label %if.end35, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %next = getelementptr inbounds %struct.rhlist_head, %struct.rhlist_head* %0, i64 0, i32 1
  %4 = load volatile %struct.rhlist_head*, %struct.rhlist_head** %next, align 8
  %tobool11.not = icmp eq %struct.rhlist_head* %4, null
  br i1 %tobool11.not, label %if.then12, label %if.end

if.then12:                                        ; preds = %lor.lhs.false, %if.then
  %next18 = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %2, i64 0, i32 0
  %5 = load volatile %struct.rhash_head*, %struct.rhash_head** %next18, align 8
  %6 = bitcast %struct.rhash_head* %5 to %struct.rhlist_head*
  br label %if.end

if.end:                                           ; preds = %if.then12, %lor.lhs.false
  %p.0 = phi %struct.rhash_head* [ %2, %lor.lhs.false ], [ %5, %if.then12 ]
  %list.0 = phi %struct.rhlist_head* [ %4, %lor.lhs.false ], [ %6, %if.then12 ]
  %call = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %p.0) #15
  %skip33 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 5
  br i1 %call, label %if.end32, label %if.then27

if.then27:                                        ; preds = %if.end
  %7 = load i32, i32* %skip33, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %skip33, align 4
  store %struct.rhash_head* %p.0, %struct.rhash_head** %p3, align 8
  store %struct.rhlist_head* %list.0, %struct.rhlist_head** %list1, align 8
  %rhead = getelementptr inbounds %struct.rhlist_head, %struct.rhlist_head* %list.0, i64 0, i32 0
  %cond = select i1 %tobool.not, %struct.rhash_head* %p.0, %struct.rhash_head* %rhead
  %call31 = call fastcc i8* @rht_obj(%struct.rhashtable* noundef %1, %struct.rhash_head* noundef %cond) #15
  br label %cleanup

if.end32:                                         ; preds = %if.end
  store i32 0, i32* %skip33, align 4
  %slot = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 4
  %8 = load i32, i32* %slot, align 8
  %inc34 = add i32 %8, 1
  store i32 %inc34, i32* %slot, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %entry
  %call36 = call fastcc i8* @__rhashtable_walk_find_next(%struct.rhashtable_iter* noundef %iter) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then27
  %retval.0 = phi i8* [ %call36, %if.end35 ], [ %call31, %if.then27 ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @rht_obj(%struct.rhashtable* nocapture noundef readonly %ht, %struct.rhash_head* noundef readnone %he) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.rhash_head* %he to i8*
  %head_offset = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 3
  %1 = load i16, i16* %head_offset, align 2
  %2 = zext i16 %1 to i64
  %idx.neg = sub nsw i64 0, %2
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.neg
  ret i8* %add.ptr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__rhashtable_walk_find_next(%struct.rhashtable_iter* nocapture noundef %iter) unnamed_addr #0 {
entry:
  %tbl1 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 3, i32 1
  %0 = load %struct.bucket_table*, %struct.bucket_table** %tbl1, align 8
  %list2 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 2
  %1 = load %struct.rhlist_head*, %struct.rhlist_head** %list2, align 8
  %ht3 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 0
  %2 = load %struct.rhashtable*, %struct.rhashtable** %ht3, align 8
  %p4 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 1
  %rhlist5 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %2, i64 0, i32 4
  %3 = load i8, i8* %rhlist5, align 8, !range !7
  %tobool.not = icmp eq i8 %3, 0
  %tobool6.not = icmp eq %struct.bucket_table* %0, null
  br i1 %tobool6.not, label %cleanup76, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %slot = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 4
  %size = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %0, i64 0, i32 0
  %4 = load i32, i32* %slot, align 8
  %5 = load i32, i32* %size, align 64
  %cmp153 = icmp ult i32 %4, %5
  br i1 %cmp153, label %for.body.lr.ph, label %for.end55

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %skip7 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 5
  %.pre = load i32, i32* %skip7, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc52
  %6 = phi i32 [ %.pre, %for.body.lr.ph ], [ 0, %for.inc52 ]
  %list.0154 = phi %struct.rhlist_head* [ %1, %for.body.lr.ph ], [ %list.4126, %for.inc52 ]
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !11
  %7 = load i32, i32* %slot, align 8
  %call = call fastcc %struct.rhash_lock_head** @rht_bucket(%struct.bucket_table* noundef nonnull %0, i32 noundef %7) #15
  %call9 = call fastcc %struct.rhash_head* @rht_ptr_rcu(%struct.rhash_lock_head** noundef %call) #15
  %call11147 = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %call9) #15
  br i1 %call11147, label %for.inc52, label %for.body12

for.body12:                                       ; preds = %for.body, %for.inc
  %list.1151 = phi %struct.rhlist_head* [ %list.3, %for.inc ], [ %list.0154, %for.body ]
  %p.0149 = phi %struct.rhash_head* [ %10, %for.inc ], [ %call9, %for.body ]
  %skip.0148 = phi i32 [ %skip.2, %for.inc ], [ %6, %for.body ]
  br i1 %tobool.not, label %if.end30, label %if.then14

if.then14:                                        ; preds = %for.body12
  %8 = bitcast %struct.rhash_head* %p.0149 to %struct.rhlist_head*
  br label %do.body15

do.body15:                                        ; preds = %if.end18, %if.then14
  %skip.1 = phi i32 [ %skip.0148, %if.then14 ], [ %dec, %if.end18 ]
  %list.2 = phi %struct.rhlist_head* [ %8, %if.then14 ], [ %9, %if.end18 ]
  %tobool16.not = icmp eq i32 %skip.1, 0
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %do.body15
  %dec = add i32 %skip.1, -1
  %next = getelementptr inbounds %struct.rhlist_head, %struct.rhlist_head* %list.2, i64 0, i32 1
  %9 = load volatile %struct.rhlist_head*, %struct.rhlist_head** %next, align 8
  %tobool28.not = icmp eq %struct.rhlist_head* %9, null
  br i1 %tobool28.not, label %for.inc, label %do.body15

if.end30:                                         ; preds = %for.body12
  %tobool31.not = icmp eq i32 %skip.0148, 0
  br i1 %tobool31.not, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.end30
  %dec34 = add i32 %skip.0148, -1
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %if.end33
  %skip.2 = phi i32 [ %dec34, %if.end33 ], [ %dec, %if.end18 ]
  %list.3 = phi %struct.rhlist_head* [ %list.1151, %if.end33 ], [ null, %if.end18 ]
  %next40 = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %p.0149, i64 0, i32 0
  %10 = load volatile %struct.rhash_head*, %struct.rhash_head** %next40, align 8
  %call11 = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %10) #15
  br i1 %call11, label %for.inc52, label %for.body12

cleanup:                                          ; preds = %if.end30, %do.body15
  %list.4129 = phi %struct.rhlist_head* [ %list.2, %do.body15 ], [ %list.1151, %if.end30 ]
  %11 = load i32, i32* %skip7, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %skip7, align 4
  store %struct.rhash_head* %p.0149, %struct.rhash_head** %p4, align 8
  store %struct.rhlist_head* %list.4129, %struct.rhlist_head** %list2, align 8
  %rhead = getelementptr inbounds %struct.rhlist_head, %struct.rhlist_head* %list.4129, i64 0, i32 0
  %cond = select i1 %tobool.not, %struct.rhash_head* %p.0149, %struct.rhash_head* %rhead
  %call49 = call fastcc i8* @rht_obj(%struct.rhashtable* noundef %2, %struct.rhash_head* noundef %cond) #15
  br label %cleanup76

for.inc52:                                        ; preds = %for.inc, %for.body
  %list.4126 = phi %struct.rhlist_head* [ %list.0154, %for.body ], [ %list.3, %for.inc ]
  store i32 0, i32* %skip7, align 4
  %12 = load i32, i32* %slot, align 8
  %inc54 = add i32 %12, 1
  store i32 %inc54, i32* %slot, align 8
  %13 = load i32, i32* %size, align 64
  %cmp = icmp ult i32 %inc54, %13
  br i1 %cmp, label %for.body, label %for.end55

for.end55:                                        ; preds = %for.inc52, %for.cond.preheader
  store %struct.rhash_head* null, %struct.rhash_head** %p4, align 8
  call void asm sideeffect "dmb ishld", "~{memory}"() #16, !srcloc !12
  %future_tbl = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %0, i64 0, i32 5
  %14 = load volatile %struct.bucket_table*, %struct.bucket_table** %future_tbl, align 16
  store %struct.bucket_table* %14, %struct.bucket_table** %tbl1, align 8
  %tobool70.not = icmp eq %struct.bucket_table* %14, null
  br i1 %tobool70.not, label %if.else, label %if.then71

if.then71:                                        ; preds = %for.end55
  store i32 0, i32* %slot, align 8
  %skip73 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 5
  store i32 0, i32* %skip73, align 4
  %call74 = call fastcc i8* @ERR_PTR(i64 noundef -11) #15
  br label %cleanup76

if.else:                                          ; preds = %for.end55
  %end_of_table = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 6
  store i8 1, i8* %end_of_table, align 8
  br label %cleanup76

cleanup76:                                        ; preds = %cleanup, %entry, %if.else, %if.then71
  %retval.2 = phi i8* [ %call49, %cleanup ], [ %call74, %if.then71 ], [ null, %if.else ], [ null, %entry ]
  ret i8* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @rhashtable_walk_peek(%struct.rhashtable_iter* nocapture noundef %iter) local_unnamed_addr #0 {
entry:
  %ht2 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 0
  %0 = load %struct.rhashtable*, %struct.rhashtable** %ht2, align 8
  %p3 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 1
  %1 = load %struct.rhash_head*, %struct.rhash_head** %p3, align 8
  %tobool.not = icmp eq %struct.rhash_head* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %list1 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 2
  %2 = load %struct.rhlist_head*, %struct.rhlist_head** %list1, align 8
  %rhlist = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %0, i64 0, i32 4
  %3 = load i8, i8* %rhlist, align 8, !range !7
  %tobool4.not = icmp eq i8 %3, 0
  %rhead = getelementptr inbounds %struct.rhlist_head, %struct.rhlist_head* %2, i64 0, i32 0
  %cond = select i1 %tobool4.not, %struct.rhash_head* %1, %struct.rhash_head* %rhead
  %call = call fastcc i8* @rht_obj(%struct.rhashtable* noundef %0, %struct.rhash_head* noundef %cond) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %skip = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 5
  %4 = load i32, i32* %skip, align 4
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %dec = add i32 %4, -1
  store i32 %dec, i32* %skip, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %call9 = call fastcc i8* @__rhashtable_walk_find_next(%struct.rhashtable_iter* noundef %iter) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %call9, %if.end8 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rhashtable_walk_stop(%struct.rhashtable_iter* noundef %iter) local_unnamed_addr #0 {
entry:
  %tbl1 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 3, i32 1
  %0 = load %struct.bucket_table*, %struct.bucket_table** %tbl1, align 8
  %tobool.not = icmp eq %struct.bucket_table* %0, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %ht2 = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 0
  %1 = load %struct.rhashtable*, %struct.rhashtable** %ht2, align 8
  %rlock.i = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %1, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  %rcu = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %0, i64 0, i32 4
  %call = call fastcc i1 @rcu_head_after_call_rcu(%struct.callback_head* noundef %rcu) #15
  br i1 %call, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store %struct.bucket_table* null, %struct.bucket_table** %tbl1, align 8
  br label %if.end7

if.else:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.rhashtable_iter, %struct.rhashtable_iter* %iter, i64 0, i32 3, i32 0
  %walkers = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %0, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %list, %struct.list_head* noundef %walkers) #15
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  br label %out

out:                                              ; preds = %entry, %if.end7
  call fastcc void @rcu_read_unlock() #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @rcu_head_after_call_rcu(%struct.callback_head* noundef %rhp) unnamed_addr #0 {
entry:
  %func1 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %rhp, i64 0, i32 1
  %0 = load volatile void (%struct.callback_head*)*, void (%struct.callback_head*)** %func1, align 8
  %cmp = icmp eq void (%struct.callback_head*)* %0, @bucket_table_free_rcu
  %cmp2.not = icmp eq void (%struct.callback_head*)* %0, inttoptr (i64 -1 to void (%struct.callback_head*)*)
  %or.cond = or i1 %cmp, %cmp2.not
  br i1 %or.cond, label %cleanup, label %if.then9, !prof !13

if.then9:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/rcupdate.h\22; .popsection; .long 14472b - 14470b; .short 1000; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #16, !srcloc !14
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %entry
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @bucket_table_free_rcu(%struct.callback_head* noundef %head) #0 {
entry:
  %add.ptr2 = getelementptr %struct.callback_head, %struct.callback_head* %head, i64 -2
  %0 = bitcast %struct.callback_head* %add.ptr2 to %struct.bucket_table*
  call fastcc void @bucket_table_free(%struct.bucket_table* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @rhashtable_init(%struct.rhashtable* noundef %ht, %struct.rhashtable_params* noundef %params) local_unnamed_addr #0 {
entry:
  %key_len = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %params, i64 0, i32 1
  %0 = load i16, i16* %key_len, align 2
  %tobool.not = icmp eq i16 %0, 0
  %obj_hashfn = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %params, i64 0, i32 8
  %1 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %obj_hashfn, align 8
  %tobool1.not = icmp eq i32 (i8*, i32, i32)* %1, null
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool1.not, label %cleanup, label %land.lhs.true4

lor.lhs.false:                                    ; preds = %entry
  br i1 %tobool1.not, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %obj_cmpfn = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %params, i64 0, i32 9
  %2 = load i32 (%struct.rhashtable_compare_arg*, i8*)*, i32 (%struct.rhashtable_compare_arg*, i8*)** %obj_cmpfn, align 8
  %tobool5.not = icmp eq i32 (%struct.rhashtable_compare_arg*, i8*)* %2, null
  br i1 %tobool5.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true4, %lor.lhs.false
  %3 = bitcast %struct.rhashtable* %ht to i8*
  %call = call i8* @memset(i8* noundef %3, i32 noundef 0, i64 noundef 136) #14
  %mutex = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 6
  call void @__mutex_init(%struct.mutex* noundef %mutex, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @rhashtable_init.__key) #14
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %p = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3
  %4 = bitcast %struct.rhashtable_params* %p to i8*
  %5 = bitcast %struct.rhashtable_params* %params to i8*
  %call11 = call i8* @memcpy(i8* noundef %4, i8* noundef %5, i64 noundef 40) #14
  %min_size = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %params, i64 0, i32 5
  %6 = load i16, i16* %min_size, align 4
  %tobool12.not = icmp eq i16 %6, 0
  br i1 %tobool12.not, label %if.end51, label %cond.end46

cond.end46:                                       ; preds = %if.end
  %conv44 = zext i16 %6 to i64
  %call45 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv44) #17
  %conv48 = trunc i64 %call45 to i16
  %min_size50 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 5
  store i16 %conv48, i16* %min_size50, align 4
  br label %if.end51

if.end51:                                         ; preds = %cond.end46, %if.end
  %max_elems = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 2
  store i32 -2147483648, i32* %max_elems, align 4
  %max_size = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %params, i64 0, i32 4
  %7 = load i32, i32* %max_size, align 8
  %tobool52.not = icmp eq i32 %7, 0
  br i1 %tobool52.not, label %if.end95, label %cond.end80

cond.end80:                                       ; preds = %if.end51
  %conv78 = zext i32 %7 to i64
  %call79 = call fastcc i64 @__rounddown_pow_of_two(i64 noundef %conv78) #17
  %conv82 = trunc i64 %call79 to i32
  %max_size84 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 4
  store i32 %conv82, i32* %max_size84, align 8
  %cmp88 = icmp ult i32 %conv82, 1073741824
  br i1 %cmp88, label %if.then90, label %if.end95

if.then90:                                        ; preds = %cond.end80
  %mul = shl nuw nsw i32 %conv82, 1
  store i32 %mul, i32* %max_elems, align 4
  br label %if.end95

if.end95:                                         ; preds = %cond.end80, %if.then90, %if.end51
  %min_size97 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 5
  %8 = load i16, i16* %min_size97, align 4
  %cmp100 = icmp ugt i16 %8, 4
  %cond107 = select i1 %cmp100, i16 %8, i16 4
  store i16 %cond107, i16* %min_size97, align 4
  %call112 = call fastcc i64 @rounded_hashtable_size(%struct.rhashtable_params* noundef %p) #15
  %key_len114 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 1
  %9 = load i16, i16* %key_len114, align 2
  %conv115 = zext i16 %9 to i32
  %key_len116 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 1
  store i32 %conv115, i32* %key_len116, align 8
  %hashfn = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %params, i64 0, i32 7
  %10 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %hashfn, align 8
  %tobool117.not = icmp eq i32 (i8*, i32, i32)* %10, null
  br i1 %tobool117.not, label %if.then118, label %if.end132

if.then118:                                       ; preds = %if.end95
  %hashfn120 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 7
  store i32 (i8*, i32, i32)* @jhash, i32 (i8*, i32, i32)** %hashfn120, align 8
  %11 = and i32 %conv115, 3
  %tobool123.not = icmp eq i32 %11, 0
  br i1 %tobool123.not, label %if.then124, label %if.end132

if.then124:                                       ; preds = %if.then118
  %div127 = lshr i32 %conv115, 2
  store i32 %div127, i32* %key_len116, align 8
  store i32 (i8*, i32, i32)* @rhashtable_jhash2, i32 (i8*, i32, i32)** %hashfn120, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.then118, %if.then124, %if.end95
  %call133 = call fastcc %struct.bucket_table* @bucket_table_alloc(i64 noundef %call112, i32 noundef 3264) #15
  %cmp134 = icmp eq %struct.bucket_table* %call133, null
  br i1 %cmp134, label %if.then139, label %if.end155, !prof !15

if.then139:                                       ; preds = %if.end132
  %12 = load i16, i16* %min_size97, align 4
  %conv143 = zext i16 %12 to i32
  %cmp145 = icmp ugt i32 %conv143, 4
  %cond152 = select i1 %cmp145, i32 %conv143, i32 4
  %13 = zext i32 %cond152 to i64
  %call154 = call fastcc %struct.bucket_table* @bucket_table_alloc(i64 noundef %13, i32 noundef 36032) #15
  br label %if.end155

if.end155:                                        ; preds = %if.then139, %if.end132
  %tbl.0 = phi %struct.bucket_table* [ %call154, %if.then139 ], [ %call133, %if.end132 ]
  %counter.i = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 8, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  %tbl162 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 0
  store volatile %struct.bucket_table* %tbl.0, %struct.bucket_table** %tbl162, align 8
  %.compoundliteral171.sroa.0.0..sroa_idx = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 5, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral171.sroa.0.0..sroa_idx, align 8
  %entry174 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 5, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry174) #15
  %func = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 5, i32 2
  store void (%struct.work_struct*)* @rht_deferred_worker, void (%struct.work_struct*)** %func, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %land.lhs.true4, %if.end155
  %retval.0 = phi i32 [ 0, %if.end155 ], [ -22, %land.lhs.true4 ], [ -22, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__roundup_pow_of_two(i64 noundef %n) unnamed_addr #9 {
entry:
  %sub = add i64 %n, -1
  %call = call fastcc i32 @fls_long(i64 noundef %sub) #15
  %sh_prom = zext i32 %call to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__rounddown_pow_of_two(i64 noundef %n) unnamed_addr #9 {
entry:
  %call = call fastcc i32 @fls_long(i64 noundef %n) #15
  %sub = add i32 %call, -1
  %sh_prom = zext i32 %sub to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @rounded_hashtable_size(%struct.rhashtable_params* nocapture noundef readonly %params) unnamed_addr #10 {
entry:
  %nelem_hint = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %params, i64 0, i32 0
  %0 = load i16, i16* %nelem_hint, align 8
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %if.else, label %cond.false39

cond.false39:                                     ; preds = %entry
  %conv = zext i16 %0 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %div = udiv i32 %mul, 3
  %1 = zext i32 %div to i64
  %call45 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %1) #17
  %min_size = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %params, i64 0, i32 5
  %2 = load i16, i16* %min_size, align 4
  %conv48 = zext i16 %2 to i64
  %cmp49 = icmp ugt i64 %call45, %conv48
  %cond54 = select i1 %cmp49, i64 %call45, i64 %conv48
  br label %if.end

if.else:                                          ; preds = %entry
  %min_size55 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %params, i64 0, i32 5
  %3 = load i16, i16* %min_size55, align 4
  %conv56 = zext i16 %3 to i64
  %4 = icmp ugt i64 %conv56, 64
  %cond63 = select i1 %4, i64 %conv56, i64 64
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.false39
  %retsize.0 = phi i64 [ %cond54, %cond.false39 ], [ %cond63, %if.else ]
  ret i64 %retsize.0
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal i32 @jhash(i8* nocapture noundef readonly %key, i32 noundef %length, i32 noundef %initval) #11 {
entry:
  %add = add i32 %length, -559038737
  %add1 = add i32 %add, %initval
  %cmp205 = icmp ugt i32 %length, 12
  br i1 %cmp205, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %k.0210 = phi i8* [ %add.ptr31, %while.body ], [ %key, %entry ]
  %c.0209 = phi i32 [ %xor28, %while.body ], [ %add1, %entry ]
  %b.0208 = phi i32 [ %add29, %while.body ], [ %add1, %entry ]
  %a.0207 = phi i32 [ %add25, %while.body ], [ %add1, %entry ]
  %length.addr.0206 = phi i32 [ %sub30, %while.body ], [ %length, %entry ]
  %call = call fastcc i32 @__get_unaligned_cpu32(i8* noundef %k.0210) #15
  %add2 = add i32 %call, %a.0207
  %add.ptr = getelementptr i8, i8* %k.0210, i64 4
  %call3 = call fastcc i32 @__get_unaligned_cpu32(i8* noundef %add.ptr) #15
  %add4 = add i32 %call3, %b.0208
  %add.ptr5 = getelementptr i8, i8* %k.0210, i64 8
  %call6 = call fastcc i32 @__get_unaligned_cpu32(i8* noundef %add.ptr5) #15
  %add7 = add i32 %call6, %c.0209
  %sub = sub i32 %add2, %add7
  %call8 = call fastcc i32 @rol32(i32 noundef %add7, i32 noundef 4) #15
  %xor = xor i32 %sub, %call8
  %add9 = add i32 %add7, %add4
  %sub10 = sub i32 %add4, %xor
  %call11 = call fastcc i32 @rol32(i32 noundef %xor, i32 noundef 6) #15
  %xor12 = xor i32 %sub10, %call11
  %add13 = add i32 %xor, %add9
  %sub14 = sub i32 %add9, %xor12
  %call15 = call fastcc i32 @rol32(i32 noundef %xor12, i32 noundef 8) #15
  %xor16 = xor i32 %sub14, %call15
  %add17 = add i32 %xor12, %add13
  %sub18 = sub i32 %add13, %xor16
  %call19 = call fastcc i32 @rol32(i32 noundef %xor16, i32 noundef 16) #15
  %xor20 = xor i32 %sub18, %call19
  %add21 = add i32 %xor16, %add17
  %sub22 = sub i32 %add17, %xor20
  %call23 = call fastcc i32 @rol32(i32 noundef %xor20, i32 noundef 19) #15
  %xor24 = xor i32 %sub22, %call23
  %add25 = add i32 %xor20, %add21
  %sub26 = sub i32 %add21, %xor24
  %call27 = call fastcc i32 @rol32(i32 noundef %xor24, i32 noundef 4) #15
  %xor28 = xor i32 %sub26, %call27
  %add29 = add i32 %xor24, %add25
  %sub30 = add i32 %length.addr.0206, -12
  %add.ptr31 = getelementptr i8, i8* %k.0210, i64 12
  %cmp = icmp ugt i32 %sub30, 12
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %length.addr.0.lcssa = phi i32 [ %length, %entry ], [ %sub30, %while.body ]
  %a.0.lcssa = phi i32 [ %add1, %entry ], [ %add25, %while.body ]
  %b.0.lcssa = phi i32 [ %add1, %entry ], [ %add29, %while.body ]
  %c.0.lcssa = phi i32 [ %add1, %entry ], [ %xor28, %while.body ]
  %k.0.lcssa = phi i8* [ %key, %entry ], [ %add.ptr31, %while.body ]
  switch i32 %length.addr.0.lcssa, label %sw.epilog [
    i32 12, label %sw.bb
    i32 11, label %sw.bb33
    i32 10, label %sw.bb38
    i32 9, label %sw.bb43
    i32 8, label %sw.bb47
    i32 7, label %sw.bb52
    i32 6, label %sw.bb57
    i32 5, label %sw.bb62
    i32 4, label %sw.bb66
    i32 3, label %sw.bb71
    i32 2, label %sw.bb76
    i32 1, label %sw.bb81
  ]

sw.bb:                                            ; preds = %while.end
  %arrayidx = getelementptr i8, i8* %k.0.lcssa, i64 11
  %0 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %shl = shl nuw i32 %conv, 24
  %add32 = add i32 %shl, %c.0.lcssa
  br label %sw.bb33

sw.bb33:                                          ; preds = %while.end, %sw.bb
  %c.1 = phi i32 [ %c.0.lcssa, %while.end ], [ %add32, %sw.bb ]
  %arrayidx34 = getelementptr i8, i8* %k.0.lcssa, i64 10
  %1 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %1 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %add37 = add i32 %shl36, %c.1
  br label %sw.bb38

sw.bb38:                                          ; preds = %while.end, %sw.bb33
  %c.2 = phi i32 [ %c.0.lcssa, %while.end ], [ %add37, %sw.bb33 ]
  %arrayidx39 = getelementptr i8, i8* %k.0.lcssa, i64 9
  %2 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %2 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %add42 = add i32 %shl41, %c.2
  br label %sw.bb43

sw.bb43:                                          ; preds = %while.end, %sw.bb38
  %c.3 = phi i32 [ %c.0.lcssa, %while.end ], [ %add42, %sw.bb38 ]
  %arrayidx44 = getelementptr i8, i8* %k.0.lcssa, i64 8
  %3 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %3 to i32
  %add46 = add i32 %c.3, %conv45
  br label %sw.bb47

sw.bb47:                                          ; preds = %while.end, %sw.bb43
  %c.4 = phi i32 [ %c.0.lcssa, %while.end ], [ %add46, %sw.bb43 ]
  %arrayidx48 = getelementptr i8, i8* %k.0.lcssa, i64 7
  %4 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %4 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %add51 = add i32 %shl50, %b.0.lcssa
  br label %sw.bb52

sw.bb52:                                          ; preds = %while.end, %sw.bb47
  %b.1 = phi i32 [ %b.0.lcssa, %while.end ], [ %add51, %sw.bb47 ]
  %c.5 = phi i32 [ %c.0.lcssa, %while.end ], [ %c.4, %sw.bb47 ]
  %arrayidx53 = getelementptr i8, i8* %k.0.lcssa, i64 6
  %5 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %5 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %add56 = add i32 %shl55, %b.1
  br label %sw.bb57

sw.bb57:                                          ; preds = %while.end, %sw.bb52
  %b.2 = phi i32 [ %b.0.lcssa, %while.end ], [ %add56, %sw.bb52 ]
  %c.6 = phi i32 [ %c.0.lcssa, %while.end ], [ %c.5, %sw.bb52 ]
  %arrayidx58 = getelementptr i8, i8* %k.0.lcssa, i64 5
  %6 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %6 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = add i32 %shl60, %b.2
  br label %sw.bb62

sw.bb62:                                          ; preds = %while.end, %sw.bb57
  %b.3 = phi i32 [ %b.0.lcssa, %while.end ], [ %add61, %sw.bb57 ]
  %c.7 = phi i32 [ %c.0.lcssa, %while.end ], [ %c.6, %sw.bb57 ]
  %arrayidx63 = getelementptr i8, i8* %k.0.lcssa, i64 4
  %7 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %7 to i32
  %add65 = add i32 %b.3, %conv64
  br label %sw.bb66

sw.bb66:                                          ; preds = %while.end, %sw.bb62
  %b.4 = phi i32 [ %b.0.lcssa, %while.end ], [ %add65, %sw.bb62 ]
  %c.8 = phi i32 [ %c.0.lcssa, %while.end ], [ %c.7, %sw.bb62 ]
  %arrayidx67 = getelementptr i8, i8* %k.0.lcssa, i64 3
  %8 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %8 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %add70 = add i32 %shl69, %a.0.lcssa
  br label %sw.bb71

sw.bb71:                                          ; preds = %while.end, %sw.bb66
  %a.1 = phi i32 [ %a.0.lcssa, %while.end ], [ %add70, %sw.bb66 ]
  %b.5 = phi i32 [ %b.0.lcssa, %while.end ], [ %b.4, %sw.bb66 ]
  %c.9 = phi i32 [ %c.0.lcssa, %while.end ], [ %c.8, %sw.bb66 ]
  %arrayidx72 = getelementptr i8, i8* %k.0.lcssa, i64 2
  %9 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %9 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %add75 = add i32 %shl74, %a.1
  br label %sw.bb76

sw.bb76:                                          ; preds = %while.end, %sw.bb71
  %a.2 = phi i32 [ %a.0.lcssa, %while.end ], [ %add75, %sw.bb71 ]
  %b.6 = phi i32 [ %b.0.lcssa, %while.end ], [ %b.5, %sw.bb71 ]
  %c.10 = phi i32 [ %c.0.lcssa, %while.end ], [ %c.9, %sw.bb71 ]
  %arrayidx77 = getelementptr i8, i8* %k.0.lcssa, i64 1
  %10 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %10 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %add80 = add i32 %shl79, %a.2
  br label %sw.bb81

sw.bb81:                                          ; preds = %while.end, %sw.bb76
  %a.3 = phi i32 [ %a.0.lcssa, %while.end ], [ %add80, %sw.bb76 ]
  %b.7 = phi i32 [ %b.0.lcssa, %while.end ], [ %b.6, %sw.bb76 ]
  %c.11 = phi i32 [ %c.0.lcssa, %while.end ], [ %c.10, %sw.bb76 ]
  %11 = load i8, i8* %k.0.lcssa, align 1
  %conv83 = zext i8 %11 to i32
  %add84 = add i32 %a.3, %conv83
  %xor85 = xor i32 %c.11, %b.7
  %call86 = call fastcc i32 @rol32(i32 noundef %b.7, i32 noundef 14) #15
  %sub87 = sub i32 %xor85, %call86
  %xor88 = xor i32 %add84, %sub87
  %call89 = call fastcc i32 @rol32(i32 noundef %sub87, i32 noundef 11) #15
  %sub90 = sub i32 %xor88, %call89
  %xor91 = xor i32 %sub90, %b.7
  %call92 = call fastcc i32 @rol32(i32 noundef %sub90, i32 noundef 25) #15
  %sub93 = sub i32 %xor91, %call92
  %xor94 = xor i32 %sub93, %sub87
  %call95 = call fastcc i32 @rol32(i32 noundef %sub93, i32 noundef 16) #15
  %sub96 = sub i32 %xor94, %call95
  %xor97 = xor i32 %sub96, %sub90
  %call98 = call fastcc i32 @rol32(i32 noundef %sub96, i32 noundef 4) #15
  %sub99 = sub i32 %xor97, %call98
  %xor100 = xor i32 %sub99, %sub93
  %call101 = call fastcc i32 @rol32(i32 noundef %sub99, i32 noundef 14) #15
  %sub102 = sub i32 %xor100, %call101
  %xor103 = xor i32 %sub102, %sub96
  %call104 = call fastcc i32 @rol32(i32 noundef %sub102, i32 noundef 24) #15
  %sub105 = sub i32 %xor103, %call104
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %sw.bb81
  %c.12 = phi i32 [ %c.0.lcssa, %while.end ], [ %sub105, %sw.bb81 ]
  ret i32 %c.12
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal i32 @rhashtable_jhash2(i8* nocapture noundef readonly %key, i32 noundef %length, i32 noundef %seed) #11 {
entry:
  %0 = bitcast i8* %key to i32*
  %call = call fastcc i32 @jhash2(i32* noundef %0, i32 noundef %length, i32 noundef %seed) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bucket_table* @bucket_table_alloc(i64 noundef %nbuckets, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ab_c_size(i64 noundef %nbuckets) #15
  %call1 = call fastcc i8* @kvzalloc(i64 noundef %call, i32 noundef %gfp) #15
  %0 = bitcast i8* %call1 to %struct.bucket_table*
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %gfp, -32769
  %cmp2.not = icmp eq i32 %and, 3264
  br i1 %cmp2.not, label %cleanup, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call3 = call fastcc %struct.bucket_table* @nested_bucket_table_alloc(i64 noundef %nbuckets, i32 noundef %gfp) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nbuckets.addr.0 = phi i64 [ 0, %if.then ], [ %nbuckets, %entry ]
  %tbl.0 = phi %struct.bucket_table* [ %call3, %if.then ], [ %0, %entry ]
  %cmp4 = icmp eq %struct.bucket_table* %tbl.0, null
  br i1 %cmp4, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end
  %conv = trunc i64 %nbuckets to i32
  %size7 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl.0, i64 0, i32 0
  store i32 %conv, i32* %size7, align 64
  %rcu = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl.0, i64 0, i32 4
  call fastcc void @rcu_head_init(%struct.callback_head* noundef %rcu) #15
  %walkers = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl.0, i64 0, i32 3
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %walkers) #15
  %call8 = call i32 @get_random_u32() #14
  %hash_rnd = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl.0, i64 0, i32 2
  store i32 %call8, i32* %hash_rnd, align 8
  %cmp104.not = icmp eq i64 %nbuckets.addr.0, 0
  br i1 %cmp104.not, label %cleanup, label %for.body

for.body:                                         ; preds = %do.end, %for.body
  %conv96 = phi i64 [ %conv9, %for.body ], [ 0, %do.end ]
  %arrayidx = getelementptr %struct.bucket_table, %struct.bucket_table* %tbl.0, i64 0, i32 8, i64 %conv96
  store %struct.rhash_lock_head* null, %struct.rhash_lock_head** %arrayidx, align 8
  %inc = shl nsw i64 %conv96, 32
  %sext = add i64 %inc, 4294967296
  %conv9 = ashr exact i64 %sext, 32
  %cmp10 = icmp ugt i64 %nbuckets.addr.0, %conv9
  br i1 %cmp10, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.body, %do.end, %land.lhs.true, %if.end
  %retval.0 = phi %struct.bucket_table* [ null, %if.end ], [ null, %land.lhs.true ], [ %tbl.0, %do.end ], [ %tbl.0, %for.body ]
  ret %struct.bucket_table* %retval.0
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rht_deferred_worker(%struct.work_struct* noundef %work) #0 {
entry:
  %add.ptr54 = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -2
  %0 = bitcast %struct.work_struct* %add.ptr54 to %struct.rhashtable*
  %mutex = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 1
  %1 = bitcast %struct.work_struct* %mutex to %struct.mutex*
  call void @mutex_lock(%struct.mutex* noundef %1) #14
  %tbl5 = bitcast %struct.work_struct* %add.ptr54 to %struct.bucket_table**
  %2 = load %struct.bucket_table*, %struct.bucket_table** %tbl5, align 8
  %call = call fastcc %struct.bucket_table* @rhashtable_last_table(%struct.bucket_table* noundef %2) #15
  %call6 = call fastcc i1 @rht_grow_above_75(%struct.rhashtable* noundef %0, %struct.bucket_table* noundef %call) #15
  br i1 %call6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %size = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %call, i64 0, i32 0
  %3 = load i32, i32* %size, align 64
  %mul = shl i32 %3, 1
  %call7 = call fastcc i32 @rhashtable_rehash_alloc(%struct.bucket_table* noundef %call, i32 noundef %mul) #15
  br label %if.end17

if.else:                                          ; preds = %entry
  %p = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -2, i32 1, i32 1
  %4 = bitcast %struct.list_head** %p to %struct.rhashtable_params*
  %automatic_shrinking = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %4, i64 0, i32 6
  %5 = load i8, i8* %automatic_shrinking, align 2, !range !7
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %call8 = call fastcc i1 @rht_shrink_below_30(%struct.rhashtable* noundef %0, %struct.bucket_table* noundef %call) #15
  br i1 %call8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %land.lhs.true
  %call10 = call fastcc i32 @rhashtable_shrink(%struct.rhashtable* noundef %0) #15
  br label %if.end17

if.else11:                                        ; preds = %land.lhs.true, %if.else
  %nest = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %call, i64 0, i32 1
  %6 = load i32, i32* %nest, align 4
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool12.not, label %if.then19.thread, label %if.then13

if.then19.thread:                                 ; preds = %if.else11
  %call2060 = call fastcc i32 @rhashtable_rehash_table(%struct.rhashtable* noundef %0) #15
  br label %if.end22

if.then13:                                        ; preds = %if.else11
  %size14 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %call, i64 0, i32 0
  %7 = load i32, i32* %size14, align 64
  %call15 = call fastcc i32 @rhashtable_rehash_alloc(%struct.bucket_table* noundef %call, i32 noundef %7) #15
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %if.then13, %if.then
  %err.0 = phi i32 [ %call7, %if.then ], [ %call10, %if.then9 ], [ %call15, %if.then13 ]
  switch i32 %err.0, label %if.then25.sink.split [
    i32 -17, label %if.then19
    i32 0, label %if.then19
  ]

if.then19:                                        ; preds = %if.end17, %if.end17
  %call20 = call fastcc i32 @rhashtable_rehash_table(%struct.rhashtable* noundef %0) #15
  %tobool21.not = icmp eq i32 %err.0, 0
  br i1 %tobool21.not, label %if.end22, label %if.then25.sink.split

if.end22:                                         ; preds = %if.then19, %if.then19.thread
  %call2062 = phi i32 [ %call2060, %if.then19.thread ], [ %call20, %if.then19 ]
  call void @mutex_unlock(%struct.mutex* noundef %1) #14
  %tobool24.not = icmp eq i32 %call2062, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25.sink.split:                             ; preds = %if.then19, %if.end17
  call void @mutex_unlock(%struct.mutex* noundef %1) #14
  br label %if.then25

if.then25:                                        ; preds = %if.then25.sink.split, %if.end22
  call fastcc void @schedule_work(%struct.work_struct* noundef %work) #15
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @rhltable_init(%struct.rhltable* noundef %hlt, %struct.rhashtable_params* noundef %params) local_unnamed_addr #0 {
entry:
  %ht = getelementptr inbounds %struct.rhltable, %struct.rhltable* %hlt, i64 0, i32 0
  %call = call i32 @rhashtable_init(%struct.rhashtable* noundef %ht, %struct.rhashtable_params* noundef %params) #15
  %rhlist = getelementptr inbounds %struct.rhltable, %struct.rhltable* %hlt, i64 0, i32 0, i32 4
  store i8 1, i8* %rhlist, align 8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rhashtable_free_and_destroy(%struct.rhashtable* noundef %ht, void (i8*, i8*)* noundef readonly %free_fn, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %run_work = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 5
  %call = call i1 @cancel_work_sync(%struct.work_struct* noundef %run_work) #14
  %mutex = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 6
  call void @mutex_lock(%struct.mutex* noundef %mutex) #14
  %tbl1 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 0
  %0 = load %struct.bucket_table*, %struct.bucket_table** %tbl1, align 8
  %tobool.not = icmp eq void (i8*, i8*)* %free_fn, null
  br label %restart

restart:                                          ; preds = %do.end29, %entry
  %tbl.0 = phi %struct.bucket_table* [ %0, %entry ], [ %4, %do.end29 ]
  br i1 %tobool.not, label %do.end29, label %for.cond.preheader

for.cond.preheader:                               ; preds = %restart
  %size = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl.0, i64 0, i32 0
  %1 = load i32, i32* %size, align 64
  %cmp59.not = icmp eq i32 %1, 0
  br i1 %cmp59.not, label %do.end29, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.end
  %i.060 = phi i32 [ %inc, %for.end ], [ 0, %for.cond.preheader ]
  call fastcc void @_cond_resched() #15
  %call4 = call fastcc %struct.rhash_lock_head** @rht_bucket(%struct.bucket_table* noundef %tbl.0, i32 noundef %i.060) #15
  %call5 = call fastcc %struct.rhash_head* @rht_ptr_exclusive(%struct.rhash_lock_head** noundef %call4) #15
  %call6 = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %call5) #15
  br i1 %call6, label %for.end, label %for.body14

for.body14:                                       ; preds = %for.body, %for.body14
  %.sink = phi %struct.rhash_head* [ %2, %for.body14 ], [ %call5, %for.body ]
  %next21 = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %.sink, i64 0, i32 0
  %2 = load %struct.rhash_head*, %struct.rhash_head** %next21, align 8
  call fastcc void @rhashtable_free_one(%struct.rhashtable* noundef %ht, %struct.rhash_head* noundef %.sink, void (i8*, i8*)* noundef nonnull %free_fn, i8* noundef %arg) #15
  %call15 = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %2) #15
  br i1 %call15, label %for.end, label %for.body14

for.end:                                          ; preds = %for.body14, %for.body
  %inc = add nuw i32 %i.060, 1
  %3 = load i32, i32* %size, align 64
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body, label %do.end29

do.end29:                                         ; preds = %for.end, %for.cond.preheader, %restart
  %future_tbl = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl.0, i64 0, i32 5
  %4 = load %struct.bucket_table*, %struct.bucket_table** %future_tbl, align 16
  call fastcc void @bucket_table_free(%struct.bucket_table* noundef %tbl.0) #15
  %tobool31.not = icmp eq %struct.bucket_table* %4, null
  br i1 %tobool31.not, label %if.end33, label %restart

if.end33:                                         ; preds = %do.end29
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @cancel_work_sync(%struct.work_struct* noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #0 {
entry:
  %call = call i32 @__cond_resched() #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.rhash_head* @rht_ptr_exclusive(%struct.rhash_lock_head** noundef readonly %bkt) unnamed_addr #5 {
entry:
  %0 = load %struct.rhash_lock_head*, %struct.rhash_lock_head** %bkt, align 8
  %call = call fastcc %struct.rhash_head* @__rht_ptr(%struct.rhash_lock_head* noundef %0, %struct.rhash_lock_head** noundef %bkt) #15
  ret %struct.rhash_head* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rhashtable_free_one(%struct.rhashtable* nocapture noundef readonly %ht, %struct.rhash_head* noundef %obj, void (i8*, i8*)* nocapture noundef readonly %free_fn, i8* noundef %arg) unnamed_addr #0 {
entry:
  %rhlist = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 4
  %0 = load i8, i8* %rhlist, align 8, !range !7
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call fastcc i8* @rht_obj(%struct.rhashtable* noundef %ht, %struct.rhash_head* noundef %obj) #15
  call void %free_fn(i8* noundef %call, i8* noundef %arg) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.rhash_head* %obj to %struct.rhlist_head*
  br label %do.body1

do.body1:                                         ; preds = %do.body1, %if.end
  %list.0 = phi %struct.rhlist_head* [ %1, %if.end ], [ %2, %do.body1 ]
  %rhead = getelementptr inbounds %struct.rhlist_head, %struct.rhlist_head* %list.0, i64 0, i32 0
  %next = getelementptr inbounds %struct.rhlist_head, %struct.rhlist_head* %list.0, i64 0, i32 1
  %2 = load %struct.rhlist_head*, %struct.rhlist_head** %next, align 8
  %call6 = call fastcc i8* @rht_obj(%struct.rhashtable* noundef %ht, %struct.rhash_head* noundef %rhead) #15
  call void %free_fn(i8* noundef %call6, i8* noundef %arg) #14
  %tobool8.not = icmp eq %struct.rhlist_head* %2, null
  br i1 %tobool8.not, label %cleanup, label %do.body1

cleanup:                                          ; preds = %do.body1, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bucket_table_free(%struct.bucket_table* noundef %tbl) unnamed_addr #0 {
entry:
  %nest = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 1
  %0 = load i32, i32* %nest, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @nested_bucket_table_free(%struct.bucket_table* noundef %tbl) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = bitcast %struct.bucket_table* %tbl to i8*
  call void @kvfree(i8* noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rhashtable_destroy(%struct.rhashtable* noundef %ht) local_unnamed_addr #0 {
entry:
  call void @rhashtable_free_and_destroy(%struct.rhashtable* noundef %ht, void (i8*, i8*)* noundef null, i8* noundef null) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local %struct.rhash_lock_head** @__rht_bucket_nested(%struct.bucket_table* nocapture noundef readonly %tbl, i32 noundef %hash) local_unnamed_addr #3 {
entry:
  %nest = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 1
  %0 = load i32, i32* %nest, align 4
  %notmask = shl nsw i32 -1, %0
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub, %hash
  %size1 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 0
  %1 = load i32, i32* %size1, align 64
  %shr = lshr i32 %1, %0
  %call = call fastcc %union.nested_table* @nested_table_top(%struct.bucket_table* noundef %tbl) #15
  %idxprom = zext i32 %and to i64
  %table = getelementptr %union.nested_table, %union.nested_table* %call, i64 %idxprom, i32 0
  %shr8 = lshr i32 %hash, %0
  %ntbl.052 = load volatile %union.nested_table*, %union.nested_table** %table, align 8
  %tobool53 = icmp ne %union.nested_table* %ntbl.052, null
  %cmp54 = icmp ugt i32 %shr, 512
  %2 = select i1 %tobool53, i1 %cmp54, i1 false
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %ntbl.057 = phi %union.nested_table* [ %ntbl.0, %while.body ], [ %ntbl.052, %entry ]
  %size.056 = phi i32 [ %shr22, %while.body ], [ %shr, %entry ]
  %subhash.055 = phi i32 [ %shr23, %while.body ], [ %shr8, %entry ]
  %and9 = and i32 %subhash.055, 511
  %idxprom15 = zext i32 %and9 to i64
  %table17 = getelementptr %union.nested_table, %union.nested_table* %ntbl.057, i64 %idxprom15, i32 0
  %shr22 = lshr i32 %size.056, 9
  %shr23 = lshr i32 %subhash.055, 9
  %ntbl.0 = load volatile %union.nested_table*, %union.nested_table** %table17, align 8
  %tobool = icmp ne %union.nested_table* %ntbl.0, null
  %cmp = icmp ugt i32 %size.056, 262655
  %3 = select i1 %tobool, i1 %cmp, i1 false
  br i1 %3, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %subhash.0.lcssa = phi i32 [ %shr8, %entry ], [ %shr23, %while.body ]
  %ntbl.0.lcssa = phi %union.nested_table* [ %ntbl.052, %entry ], [ %ntbl.0, %while.body ]
  %tobool.lcssa = phi i1 [ %tobool53, %entry ], [ %tobool, %while.body ]
  %idxprom25 = zext i32 %subhash.0.lcssa to i64
  %arrayidx26 = getelementptr %union.nested_table, %union.nested_table* %ntbl.0.lcssa, i64 %idxprom25
  %bucket = bitcast %union.nested_table* %arrayidx26 to %struct.rhash_lock_head**
  %retval.0 = select i1 %tobool.lcssa, %struct.rhash_lock_head** %bucket, %struct.rhash_lock_head** null
  ret %struct.rhash_lock_head** %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %union.nested_table* @nested_table_top(%struct.bucket_table* nocapture noundef readonly %tbl) unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 8, i64 0
  %0 = bitcast %struct.rhash_lock_head** %arrayidx to %union.nested_table**
  %1 = load %union.nested_table*, %union.nested_table** %0, align 64
  ret %union.nested_table* %1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local %struct.rhash_lock_head** @rht_bucket_nested(%struct.bucket_table* nocapture noundef readonly %tbl, i32 noundef %hash) local_unnamed_addr #3 {
entry:
  %0 = load %struct.rhash_lock_head*, %struct.rhash_lock_head** @rht_bucket_nested.rhnull, align 8
  %tobool.not = icmp eq %struct.rhash_lock_head* %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rhash_lock_head* null, %struct.rhash_lock_head** @rht_bucket_nested.rhnull, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct.rhash_lock_head** @__rht_bucket_nested(%struct.bucket_table* noundef %tbl, i32 noundef %hash) #15
  %tobool1.not = icmp eq %struct.rhash_lock_head** %call, null
  %call.rht_bucket_nested.rhnull = select i1 %tobool1.not, %struct.rhash_lock_head** @rht_bucket_nested.rhnull, %struct.rhash_lock_head** %call
  ret %struct.rhash_lock_head** %call.rht_bucket_nested.rhnull
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.rhash_lock_head** @rht_bucket_nested_insert(%struct.rhashtable* nocapture readnone %ht, %struct.bucket_table* nocapture noundef readonly %tbl, i32 noundef %hash) local_unnamed_addr #0 {
entry:
  %nest = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 1
  %0 = load i32, i32* %nest, align 4
  %notmask = shl nsw i32 -1, %0
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub, %hash
  %size1 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 0
  %1 = load i32, i32* %size1, align 64
  %shr = lshr i32 %1, %0
  %call = call fastcc %union.nested_table* @nested_table_top(%struct.bucket_table* noundef %tbl) #15
  %shr4 = lshr i32 %hash, %0
  %idxprom = zext i32 %and to i64
  %table = getelementptr %union.nested_table, %union.nested_table* %call, i64 %idxprom, i32 0
  %cmp = icmp ult i32 %shr, 513
  %call5 = call fastcc %union.nested_table* @nested_table_alloc(%union.nested_table** noundef %table, i1 noundef %cmp) #15
  %tobool42 = icmp ne %union.nested_table* %call5, null
  %cmp643 = icmp ugt i32 %shr, 512
  %2 = select i1 %tobool42, i1 %cmp643, i1 false
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %ntbl.046 = phi %union.nested_table* [ %call14, %while.body ], [ %call5, %entry ]
  %size.045 = phi i32 [ %shr8, %while.body ], [ %shr, %entry ]
  %hash.addr.044 = phi i32 [ %shr9, %while.body ], [ %shr4, %entry ]
  %and7 = and i32 %hash.addr.044, 511
  %shr8 = lshr i32 %size.045, 9
  %shr9 = lshr i32 %hash.addr.044, 9
  %idxprom10 = zext i32 %and7 to i64
  %table12 = getelementptr %union.nested_table, %union.nested_table* %ntbl.046, i64 %idxprom10, i32 0
  %cmp13 = icmp ult i32 %size.045, 262656
  %call14 = call fastcc %union.nested_table* @nested_table_alloc(%union.nested_table** noundef %table12, i1 noundef %cmp13) #15
  %tobool = icmp ne %union.nested_table* %call14, null
  %cmp6 = icmp ugt i32 %size.045, 262655
  %3 = select i1 %tobool, i1 %cmp6, i1 false
  br i1 %3, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %hash.addr.0.lcssa = phi i32 [ %shr4, %entry ], [ %shr9, %while.body ]
  %ntbl.0.lcssa = phi %union.nested_table* [ %call5, %entry ], [ %call14, %while.body ]
  %tobool.lcssa = phi i1 [ %tobool42, %entry ], [ %tobool, %while.body ]
  %idxprom16 = zext i32 %hash.addr.0.lcssa to i64
  %arrayidx17 = getelementptr %union.nested_table, %union.nested_table* %ntbl.0.lcssa, i64 %idxprom16
  %bucket = bitcast %union.nested_table* %arrayidx17 to %struct.rhash_lock_head**
  %retval.0 = select i1 %tobool.lcssa, %struct.rhash_lock_head** %bucket, %struct.rhash_lock_head** null
  ret %struct.rhash_lock_head** %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %union.nested_table* @nested_table_alloc(%union.nested_table** noundef %prev, i1 noundef %leaf) unnamed_addr #0 {
entry:
  %0 = load volatile %union.nested_table*, %union.nested_table** %prev, align 8
  %tobool.not = icmp eq %union.nested_table* %0, null
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @kzalloc(i64 noundef 4096, i32 noundef 2592) #15
  %1 = bitcast i8* %call to %union.nested_table*
  %tobool5.not = icmp ne i8* %call, null
  %2 = and i1 %tobool5.not, %leaf
  br i1 %2, label %vector.body, label %if.end9

vector.body:                                      ; preds = %if.end, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %if.end ]
  %induction4 = or i64 %index, 1
  %3 = getelementptr %union.nested_table, %union.nested_table* %1, i64 %index
  %4 = getelementptr %union.nested_table, %union.nested_table* %1, i64 %induction4
  %5 = bitcast %union.nested_table* %3 to %struct.rhash_lock_head**
  %6 = bitcast %union.nested_table* %4 to %struct.rhash_lock_head**
  store %struct.rhash_lock_head* null, %struct.rhash_lock_head** %5, align 8
  store %struct.rhash_lock_head* null, %struct.rhash_lock_head** %6, align 8
  %index.next = add nuw i64 %index, 2
  %7 = icmp eq i64 %index.next, 512
  br i1 %7, label %if.end9, label %vector.body, !llvm.loop !16

if.end9:                                          ; preds = %vector.body, %if.end
  %8 = bitcast %union.nested_table** %prev to i8*
  %9 = ptrtoint i8* %call to i64
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %8, i64 noundef %9) #14
  %cmp13 = icmp eq i64 %call14.i, 0
  br i1 %cmp13, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end9
  call void @kfree(i8* noundef %call) #14
  %10 = load volatile %union.nested_table*, %union.nested_table** %prev, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry, %if.end16
  %retval.0 = phi %union.nested_table* [ %10, %if.end16 ], [ %0, %entry ], [ %1, %if.end9 ]
  ret %union.nested_table* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rht_head_hashfn(%struct.rhashtable* nocapture noundef readonly %ht, %struct.bucket_table* nocapture noundef readonly %tbl, %struct.rhash_head* noundef %he, %struct.rhashtable_params* nocapture noundef readonly %params) unnamed_addr #0 {
entry:
  %byval-temp = alloca %struct.rhashtable_params, align 8
  %call = call fastcc i8* @rht_obj(%struct.rhashtable* noundef %ht, %struct.rhash_head* noundef %he) #15
  %obj_hashfn = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %params, i64 0, i32 8
  %0 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %obj_hashfn, align 8
  %tobool.not = icmp eq i32 (i8*, i32, i32)* %0, null
  br i1 %tobool.not, label %cond.false11, label %cond.true, !prof !15

cond.true:                                        ; preds = %entry
  %key_len = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %params, i64 0, i32 1
  %1 = load i16, i16* %key_len, align 2
  %tobool5.not = icmp eq i16 %1, 0
  br i1 %tobool5.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %cond.true
  %key_len7 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 1
  %2 = load i16, i16* %key_len7, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %cond.false
  %cond.in = phi i16 [ %2, %cond.false ], [ %1, %cond.true ]
  %cond = zext i16 %cond.in to i32
  %hash_rnd = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 2
  %3 = load i32, i32* %hash_rnd, align 8
  %call9 = call i32 %0(i8* noundef %call, i32 noundef %cond, i32 noundef %3) #14
  %call10 = call fastcc i32 @rht_bucket_index(%struct.bucket_table* noundef %tbl, i32 noundef %call9) #15
  br label %cond.end14

cond.false11:                                     ; preds = %entry
  %key_offset = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %params, i64 0, i32 2
  %4 = load i16, i16* %key_offset, align 4
  %5 = zext i16 %4 to i64
  %add.ptr = getelementptr i8, i8* %call, i64 %5
  %6 = bitcast %struct.rhashtable_params* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #16
  %7 = bitcast %struct.rhashtable_params* %params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef align 8 dereferenceable(40) %7, i64 40, i1 false)
  %call13 = call fastcc i32 @rht_key_hashfn(%struct.rhashtable* noundef %ht, %struct.bucket_table* noundef %tbl, i8* noundef %add.ptr, %struct.rhashtable_params* noundef nonnull %byval-temp) #15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #16
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false11, %cond.end
  %cond15 = phi i32 [ %call10, %cond.end ], [ %call13, %cond.false11 ]
  ret i32 %cond15
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.rhash_lock_head** @rht_bucket_var(%struct.bucket_table* noundef readonly %tbl, i32 noundef %hash) unnamed_addr #3 {
entry:
  %nest = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 1
  %0 = load i32, i32* %nest, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cond.false, label %cond.true, !prof !10

cond.true:                                        ; preds = %entry
  %call = call %struct.rhash_lock_head** @__rht_bucket_nested(%struct.bucket_table* noundef %tbl, i32 noundef %hash) #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  %idxprom = zext i32 %hash to i64
  %arrayidx = getelementptr %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 8, i64 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rhash_lock_head** [ %call, %cond.true ], [ %arrayidx, %cond.false ]
  ret %struct.rhash_lock_head** %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.rhash_lock_head** @rht_bucket_insert(%struct.rhashtable* nocapture noundef readnone %ht, %struct.bucket_table* noundef readonly %tbl, i32 noundef %hash) unnamed_addr #0 {
entry:
  %nest = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 1
  %0 = load i32, i32* %nest, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cond.false, label %cond.true, !prof !10

cond.true:                                        ; preds = %entry
  %call = call %struct.rhash_lock_head** @rht_bucket_nested_insert(%struct.rhashtable* undef, %struct.bucket_table* noundef %tbl, i32 noundef %hash) #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  %idxprom = zext i32 %hash to i64
  %arrayidx = getelementptr %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 8, i64 %idxprom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rhash_lock_head** [ %call, %cond.true ], [ %arrayidx, %cond.false ]
  ret %struct.rhash_lock_head** %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #2 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rht_lock(%struct.rhash_lock_head** noundef %bkt) unnamed_addr #0 {
entry:
  call fastcc void @local_bh_disable() #15
  %0 = bitcast %struct.rhash_lock_head** %bkt to i64*
  call fastcc void @bit_spin_lock(i64* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @rhashtable_lookup_one(%struct.rhashtable* noundef %ht, %struct.rhash_lock_head** noundef %bkt, i8* noundef %key, %struct.rhash_head* noundef %obj) unnamed_addr #0 {
entry:
  %arg = alloca %struct.rhashtable_compare_arg, align 8
  %0 = bitcast %struct.rhashtable_compare_arg* %arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #16
  %ht1 = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %arg, i64 0, i32 0
  store %struct.rhashtable* %ht, %struct.rhashtable** %ht1, align 8
  %key2 = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %arg, i64 0, i32 1
  store i8* %key, i8** %key2, align 8
  %call = call fastcc %struct.rhash_head* @rht_ptr(%struct.rhash_lock_head** noundef %bkt) #15
  %call39 = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %call) #15
  br i1 %call39, label %if.end88, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq i8* %key, null
  %obj_cmpfn = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %do.end82
  %pprev.013 = phi %struct.rhash_head** [ null, %for.body.lr.ph ], [ %next, %do.end82 ]
  %head.011 = phi %struct.rhash_head* [ %call, %for.body.lr.ph ], [ %7, %do.end82 ]
  %elasticity.010 = phi i32 [ 16, %for.body.lr.ph ], [ %dec, %do.end82 ]
  %dec = add i32 %elasticity.010, -1
  br i1 %tobool.not, label %do.end82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %1 = load i32 (%struct.rhashtable_compare_arg*, i8*)*, i32 (%struct.rhashtable_compare_arg*, i8*)** %obj_cmpfn, align 8
  %tobool4.not = icmp eq i32 (%struct.rhashtable_compare_arg*, i8*)* %1, null
  %call10 = call fastcc i8* @rht_obj(%struct.rhashtable* noundef %ht, %struct.rhash_head* noundef %head.011) #15
  br i1 %tobool4.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %call8 = call i32 %1(%struct.rhashtable_compare_arg* noundef nonnull %arg, i8* noundef %call10) #14
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end, label %do.end82

cond.false:                                       ; preds = %lor.lhs.false
  %call11 = call fastcc i32 @rhashtable_compare(%struct.rhashtable_compare_arg* noundef nonnull %arg, i8* noundef %call10) #15
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end, label %do.end82

if.end:                                           ; preds = %cond.false, %cond.true
  %rhlist = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 4
  %2 = load i8, i8* %rhlist, align 8, !range !7
  %tobool13.not = icmp eq i8 %2, 0
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end
  %call15 = call fastcc i8* @rht_obj(%struct.rhashtable* noundef %ht, %struct.rhash_head* noundef %head.011) #15
  br label %cleanup90

if.end16:                                         ; preds = %if.end
  %3 = bitcast %struct.rhash_head* %head.011 to %struct.rhlist_head*
  %next29 = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %obj, i64 1
  %4 = bitcast %struct.rhash_head* %next29 to %struct.rhlist_head**
  store volatile %struct.rhlist_head* %3, %struct.rhlist_head** %4, align 8
  %next40 = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %head.011, i64 0, i32 0
  %5 = load %struct.rhash_head*, %struct.rhash_head** %next40, align 8
  %next47 = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %obj, i64 0, i32 0
  store volatile %struct.rhash_head* %5, %struct.rhash_head** %next47, align 8
  %tobool54.not = icmp eq %struct.rhash_head** %pprev.013, null
  br i1 %tobool54.not, label %if.else77, label %do.body56

do.body56:                                        ; preds = %if.end16
  %6 = ptrtoint %struct.rhash_head* %obj to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.rhash_head** nonnull elementtype(%struct.rhash_head*) %pprev.013, i64 %6) #16, !srcloc !19
  br label %cleanup90

if.else77:                                        ; preds = %if.end16
  call fastcc void @rht_assign_locked(%struct.rhash_lock_head** noundef %bkt, %struct.rhash_head* noundef %obj) #15
  br label %cleanup90

do.end82:                                         ; preds = %cond.false, %cond.true, %for.body
  %next = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %head.011, i64 0, i32 0
  %7 = load %struct.rhash_head*, %struct.rhash_head** %next, align 8
  %call3 = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %7) #15
  br i1 %call3, label %for.end, label %for.body

for.end:                                          ; preds = %do.end82
  %phi.cmp = icmp slt i32 %dec, 1
  br i1 %phi.cmp, label %if.then86, label %if.end88

if.then86:                                        ; preds = %for.end
  %call87 = call fastcc i8* @ERR_PTR(i64 noundef -11) #15
  br label %cleanup90

if.end88:                                         ; preds = %entry, %for.end
  %call89 = call fastcc i8* @ERR_PTR(i64 noundef -2) #15
  br label %cleanup90

cleanup90:                                        ; preds = %do.body56, %if.else77, %if.then14, %if.end88, %if.then86
  %retval.2 = phi i8* [ %call87, %if.then86 ], [ %call89, %if.end88 ], [ null, %do.body56 ], [ null, %if.else77 ], [ %call15, %if.then14 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #16
  ret i8* %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bucket_table* @rhashtable_insert_one(%struct.rhashtable* noundef %ht, %struct.rhash_lock_head** noundef %bkt, %struct.bucket_table* noundef %tbl, %struct.rhash_head* noundef %obj, i8* noundef %data) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %data) #15
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef -17) #15
  %0 = bitcast i8* %call1 to %struct.bucket_table*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i64 @PTR_ERR(i8* noundef %data) #15
  switch i64 %call2, label %if.then5 [
    i64 -11, label %if.end7.thread
    i64 -2, label %if.end7
  ]

if.then5:                                         ; preds = %if.end
  %1 = bitcast i8* %data to %struct.bucket_table*
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %future_tbl = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 5
  %2 = load volatile %struct.bucket_table*, %struct.bucket_table** %future_tbl, align 16
  %tobool.not = icmp eq %struct.bucket_table* %2, null
  br i1 %tobool.not, label %if.end18, label %cleanup

if.end7.thread:                                   ; preds = %if.end
  %future_tbl1 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 5
  %3 = load volatile %struct.bucket_table*, %struct.bucket_table** %future_tbl1, align 16
  %tobool.not2 = icmp eq %struct.bucket_table* %3, null
  %4 = bitcast i8* %data to %struct.bucket_table*
  %spec.select = select i1 %tobool.not2, %struct.bucket_table* %4, %struct.bucket_table* %3
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %call19 = call fastcc i1 @rht_grow_above_max(%struct.rhashtable* noundef %ht) #15
  br i1 %call19, label %if.then22, label %if.end24, !prof !15

if.then22:                                        ; preds = %if.end18
  %call23 = call fastcc i8* @ERR_PTR(i64 noundef -7) #15
  %5 = bitcast i8* %call23 to %struct.bucket_table*
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %call25 = call fastcc i1 @rht_grow_above_100(%struct.rhashtable* noundef %ht, %struct.bucket_table* noundef %tbl) #15
  br i1 %call25, label %if.then33, label %if.end35, !prof !15

if.then33:                                        ; preds = %if.end24
  %call34 = call fastcc i8* @ERR_PTR(i64 noundef -11) #15
  %6 = bitcast i8* %call34 to %struct.bucket_table*
  br label %cleanup

if.end35:                                         ; preds = %if.end24
  %call36 = call fastcc %struct.rhash_head* @rht_ptr(%struct.rhash_lock_head** noundef %bkt) #15
  %next = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %obj, i64 0, i32 0
  store volatile %struct.rhash_head* %call36, %struct.rhash_head** %next, align 8
  %rhlist = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 4
  %7 = load i8, i8* %rhlist, align 8, !range !7
  %tobool49.not = icmp eq i8 %7, 0
  br i1 %tobool49.not, label %if.end68, label %if.then50

if.then50:                                        ; preds = %if.end35
  %next61 = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %obj, i64 1
  %8 = bitcast %struct.rhash_head* %next61 to %struct.rhlist_head**
  store volatile %struct.rhlist_head* null, %struct.rhlist_head** %8, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then50, %if.end35
  call fastcc void @rht_assign_locked(%struct.rhash_lock_head** noundef %bkt, %struct.rhash_head* noundef %obj) #15
  %nelems = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 8
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %nelems) #14
  %call69 = call fastcc i1 @rht_grow_above_75(%struct.rhashtable* noundef %ht, %struct.bucket_table* noundef %tbl) #15
  br i1 %call69, label %if.then70, label %cleanup

if.then70:                                        ; preds = %if.end68
  %run_work = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 5
  call fastcc void @schedule_work(%struct.work_struct* noundef %run_work) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end7.thread, %if.end68, %if.then70, %if.end7, %if.then33, %if.then22, %if.then5, %if.then
  %retval.0 = phi %struct.bucket_table* [ %1, %if.then5 ], [ %5, %if.then22 ], [ %6, %if.then33 ], [ %0, %if.then ], [ %2, %if.end7 ], [ null, %if.then70 ], [ null, %if.end68 ], [ %spec.select, %if.end7.thread ]
  ret %struct.bucket_table* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rht_unlock(%struct.rhash_lock_head** noundef %bkt) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rhash_lock_head** %bkt to i64*
  call fastcc void @bit_spin_unlock(i64* noundef %0) #15
  call fastcc void @local_bh_enable() #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #2 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rhashtable_insert_rehash(%struct.rhashtable* noundef %ht, %struct.bucket_table* noundef %tbl) unnamed_addr #0 {
entry:
  %tbl1 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 0
  %0 = load volatile %struct.bucket_table*, %struct.bucket_table** %tbl1, align 8
  %size6 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 0
  %1 = load i32, i32* %size6, align 64
  %call = call fastcc i1 @rht_grow_above_75(%struct.rhashtable* noundef %ht, %struct.bucket_table* noundef %tbl) #15
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mul = shl i32 %1, 1
  br label %if.end8

if.else:                                          ; preds = %entry
  %cmp.not = icmp eq %struct.bucket_table* %0, %tbl
  br i1 %cmp.not, label %if.end8, label %fail.thread

fail.thread:                                      ; preds = %if.else
  %future_tbl67 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 5
  %2 = load volatile %struct.bucket_table*, %struct.bucket_table** %future_tbl67, align 16
  %tobool28.not68.not = icmp eq %struct.bucket_table* %2, null
  %.mux72 = select i1 %tobool28.not68.not, i32 -16, i32 0, !prof !20
  br label %cleanup

if.end8:                                          ; preds = %if.else, %if.then
  %size.0 = phi i32 [ %mul, %if.then ], [ %1, %if.else ]
  %conv = zext i32 %size.0 to i64
  %call9 = call fastcc %struct.bucket_table* @bucket_table_alloc(i64 noundef %conv, i32 noundef 10784) #15
  %cmp10 = icmp eq %struct.bucket_table* %call9, null
  br i1 %cmp10, label %fail, label %if.end13

if.end13:                                         ; preds = %if.end8
  %call14 = call fastcc i32 @rhashtable_rehash_attach(%struct.bucket_table* noundef %tbl, %struct.bucket_table* noundef nonnull %call9) #15
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.else20, label %if.then15

if.then15:                                        ; preds = %if.end13
  call fastcc void @bucket_table_free(%struct.bucket_table* noundef nonnull %call9) #15
  %cmp16 = icmp eq i32 %call14, -17
  %spec.store.select = select i1 %cmp16, i32 0, i32 %call14
  br label %cleanup

if.else20:                                        ; preds = %if.end13
  %run_work = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 5
  call fastcc void @schedule_work(%struct.work_struct* noundef %run_work) #15
  br label %cleanup

fail:                                             ; preds = %if.end8
  %future_tbl = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 5
  %3 = load volatile %struct.bucket_table*, %struct.bucket_table** %future_tbl, align 16
  %tobool28.not.not = icmp eq %struct.bucket_table* %3, null
  br i1 %tobool28.not.not, label %if.then36, label %cleanup, !prof !21

if.then36:                                        ; preds = %fail
  %run_work37 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 5
  call fastcc void @schedule_work(%struct.work_struct* noundef %run_work37) #15
  br label %cleanup

cleanup:                                          ; preds = %fail.thread, %fail, %if.then36, %if.then15, %if.else20
  %retval.0 = phi i32 [ %spec.store.select, %if.then15 ], [ 0, %if.else20 ], [ 0, %fail ], [ -12, %if.then36 ], [ %.mux72, %fail.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @rht_bucket_index(%struct.bucket_table* nocapture noundef readonly %tbl, i32 noundef %hash) unnamed_addr #5 {
entry:
  %size = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 0
  %0 = load i32, i32* %size, align 64
  %sub = add i32 %0, -1
  %and = and i32 %sub, %hash
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rht_key_hashfn(%struct.rhashtable* nocapture noundef readonly %ht, %struct.bucket_table* nocapture noundef readonly %tbl, i8* noundef %key, %struct.rhashtable_params* nocapture noundef readonly %params) unnamed_addr #0 {
entry:
  %byval-temp = alloca %struct.rhashtable_params, align 8
  %hash_rnd = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 2
  %0 = load i32, i32* %hash_rnd, align 8
  %1 = bitcast %struct.rhashtable_params* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #16
  %2 = bitcast %struct.rhashtable_params* %params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %1, i8* noundef align 8 dereferenceable(40) %2, i64 40, i1 false)
  %call = call fastcc i32 @rht_key_get_hash(%struct.rhashtable* noundef %ht, i8* noundef %key, %struct.rhashtable_params* noundef nonnull %byval-temp, i32 noundef %0) #15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #16
  %call1 = call fastcc i32 @rht_bucket_index(%struct.bucket_table* noundef %tbl, i32 noundef %call) #15
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rht_key_get_hash(%struct.rhashtable* nocapture noundef readonly %ht, i8* noundef %key, %struct.rhashtable_params* nocapture noundef readonly %params, i32 noundef %hash_rnd) unnamed_addr #0 {
entry:
  %hashfn = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 7
  %0 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %hashfn, align 8
  %key_len1 = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 1
  %1 = load i32, i32* %key_len1, align 8
  %call = call i32 %0(i8* noundef %key, i32 noundef %1, i32 noundef %hash_rnd) #14
  ret i32 %call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid readonly
define internal fastcc i32 @jhash2(i32* nocapture noundef readonly %k, i32 noundef %length, i32 noundef %initval) unnamed_addr #11 {
entry:
  %shl = shl i32 %length, 2
  %add = add i32 %shl, -559038737
  %add1 = add i32 %add, %initval
  %cmp138 = icmp ugt i32 %length, 3
  br i1 %cmp138, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %c.0143 = phi i32 [ %xor26, %while.body ], [ %add1, %entry ]
  %b.0142 = phi i32 [ %add27, %while.body ], [ %add1, %entry ]
  %a.0141 = phi i32 [ %add23, %while.body ], [ %add1, %entry ]
  %k.addr.0140 = phi i32* [ %add.ptr, %while.body ], [ %k, %entry ]
  %length.addr.0139 = phi i32 [ %sub28, %while.body ], [ %length, %entry ]
  %0 = load i32, i32* %k.addr.0140, align 4
  %add2 = add i32 %0, %a.0141
  %arrayidx3 = getelementptr i32, i32* %k.addr.0140, i64 1
  %1 = load i32, i32* %arrayidx3, align 4
  %add4 = add i32 %1, %b.0142
  %arrayidx5 = getelementptr i32, i32* %k.addr.0140, i64 2
  %2 = load i32, i32* %arrayidx5, align 4
  %add6 = add i32 %2, %c.0143
  %sub = sub i32 %add2, %add6
  %call = call fastcc i32 @rol32(i32 noundef %add6, i32 noundef 4) #15
  %xor = xor i32 %sub, %call
  %add7 = add i32 %add6, %add4
  %sub8 = sub i32 %add4, %xor
  %call9 = call fastcc i32 @rol32(i32 noundef %xor, i32 noundef 6) #15
  %xor10 = xor i32 %sub8, %call9
  %add11 = add i32 %xor, %add7
  %sub12 = sub i32 %add7, %xor10
  %call13 = call fastcc i32 @rol32(i32 noundef %xor10, i32 noundef 8) #15
  %xor14 = xor i32 %sub12, %call13
  %add15 = add i32 %xor10, %add11
  %sub16 = sub i32 %add11, %xor14
  %call17 = call fastcc i32 @rol32(i32 noundef %xor14, i32 noundef 16) #15
  %xor18 = xor i32 %sub16, %call17
  %add19 = add i32 %xor14, %add15
  %sub20 = sub i32 %add15, %xor18
  %call21 = call fastcc i32 @rol32(i32 noundef %xor18, i32 noundef 19) #15
  %xor22 = xor i32 %sub20, %call21
  %add23 = add i32 %xor18, %add19
  %sub24 = sub i32 %add19, %xor22
  %call25 = call fastcc i32 @rol32(i32 noundef %xor22, i32 noundef 4) #15
  %xor26 = xor i32 %sub24, %call25
  %add27 = add i32 %xor22, %add23
  %sub28 = add i32 %length.addr.0139, -3
  %add.ptr = getelementptr i32, i32* %k.addr.0140, i64 3
  %cmp = icmp ugt i32 %sub28, 3
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %length.addr.0.lcssa = phi i32 [ %length, %entry ], [ %sub28, %while.body ]
  %k.addr.0.lcssa = phi i32* [ %k, %entry ], [ %add.ptr, %while.body ]
  %a.0.lcssa = phi i32 [ %add1, %entry ], [ %add23, %while.body ]
  %b.0.lcssa = phi i32 [ %add1, %entry ], [ %add27, %while.body ]
  %c.0.lcssa = phi i32 [ %add1, %entry ], [ %xor26, %while.body ]
  switch i32 %length.addr.0.lcssa, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb31
    i32 1, label %sw.bb34
  ]

sw.bb:                                            ; preds = %while.end
  %arrayidx29 = getelementptr i32, i32* %k.addr.0.lcssa, i64 2
  %3 = load i32, i32* %arrayidx29, align 4
  %add30 = add i32 %3, %c.0.lcssa
  br label %sw.bb31

sw.bb31:                                          ; preds = %while.end, %sw.bb
  %c.1 = phi i32 [ %c.0.lcssa, %while.end ], [ %add30, %sw.bb ]
  %arrayidx32 = getelementptr i32, i32* %k.addr.0.lcssa, i64 1
  %4 = load i32, i32* %arrayidx32, align 4
  %add33 = add i32 %4, %b.0.lcssa
  br label %sw.bb34

sw.bb34:                                          ; preds = %while.end, %sw.bb31
  %b.1 = phi i32 [ %b.0.lcssa, %while.end ], [ %add33, %sw.bb31 ]
  %c.2 = phi i32 [ %c.0.lcssa, %while.end ], [ %c.1, %sw.bb31 ]
  %5 = load i32, i32* %k.addr.0.lcssa, align 4
  %add36 = add i32 %5, %a.0.lcssa
  %xor37 = xor i32 %c.2, %b.1
  %call38 = call fastcc i32 @rol32(i32 noundef %b.1, i32 noundef 14) #15
  %sub39 = sub i32 %xor37, %call38
  %xor40 = xor i32 %sub39, %add36
  %call41 = call fastcc i32 @rol32(i32 noundef %sub39, i32 noundef 11) #15
  %sub42 = sub i32 %xor40, %call41
  %xor43 = xor i32 %sub42, %b.1
  %call44 = call fastcc i32 @rol32(i32 noundef %sub42, i32 noundef 25) #15
  %sub45 = sub i32 %xor43, %call44
  %xor46 = xor i32 %sub45, %sub39
  %call47 = call fastcc i32 @rol32(i32 noundef %sub45, i32 noundef 16) #15
  %sub48 = sub i32 %xor46, %call47
  %xor49 = xor i32 %sub48, %sub42
  %call50 = call fastcc i32 @rol32(i32 noundef %sub48, i32 noundef 4) #15
  %sub51 = sub i32 %xor49, %call50
  %xor52 = xor i32 %sub51, %sub45
  %call53 = call fastcc i32 @rol32(i32 noundef %sub51, i32 noundef 14) #15
  %sub54 = sub i32 %xor52, %call53
  %xor55 = xor i32 %sub54, %sub48
  %call56 = call fastcc i32 @rol32(i32 noundef %sub54, i32 noundef 24) #15
  %sub57 = sub i32 %xor55, %call56
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %sw.bb34
  %c.3 = phi i32 [ %c.0.lcssa, %while.end ], [ %sub57, %sw.bb34 ]
  ret i32 %c.3
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @rol32(i32 noundef %word, i32 noundef %shift) unnamed_addr #9 {
entry:
  %or = call i32 @llvm.fshl.i32(i32 %word, i32 %word, i32 %shift)
  ret i32 %or
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_bh_disable() unnamed_addr #0 {
__here:
  call fastcc void @__preempt_count_add() #14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bit_spin_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %call2 = call fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) #15
  br i1 %call2, label %while.body, label %while.end, !prof !15

while.body:                                       ; preds = %entry, %do.end
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %do.body

do.body:                                          ; preds = %do.body, %while.body
  call fastcc void @cpu_relax() #15
  %0 = load volatile i64, i64* %addr, align 8
  %conv.i1 = and i64 %0, 1
  %tobool4.not = icmp eq i64 %conv.i1, 0
  br i1 %tobool4.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %call = call fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) #15
  br i1 %call, label %while.body, label %while.end, !prof !15

while.end:                                        ; preds = %do.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__preempt_count_add() unnamed_addr #0 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !26
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0, i32 1
  %count = bitcast %union.anon.2* %2 to i32*
  %3 = load volatile i32, i32* %count, align 8
  %add = add i32 %3, 512
  store volatile i32 %add, i32* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_set_bit_lock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %arch_test_and_set_bit_lock.exit

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %1) #14
  %2 = and i64 %call.i.i.i, 1
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_set_bit_lock.exit

arch_test_and_set_bit_lock.exit:                  ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #16, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_or_acquire(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_or_acquire\0A\09prfm\09pstl1strm, $3\0A1:\09ldaxr\09$0, $3\0A\09orr\09$1, $0, $4\0A\09stxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Lr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #16, !srcloc !28
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.rhash_head* @rht_ptr(%struct.rhash_lock_head** noundef readonly %bkt) unnamed_addr #5 {
entry:
  %0 = load %struct.rhash_lock_head*, %struct.rhash_lock_head** %bkt, align 8
  %call = call fastcc %struct.rhash_head* @__rht_ptr(%struct.rhash_lock_head* noundef %0, %struct.rhash_lock_head** noundef %bkt) #15
  ret %struct.rhash_head* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rhashtable_compare(%struct.rhashtable_compare_arg* nocapture noundef readonly %arg, i8* noundef %obj) unnamed_addr #0 {
entry:
  %ht1 = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %arg, i64 0, i32 0
  %0 = load %struct.rhashtable*, %struct.rhashtable** %ht1, align 8
  %key_offset = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %0, i64 0, i32 3, i32 2
  %1 = load i16, i16* %key_offset, align 4
  %2 = zext i16 %1 to i64
  %add.ptr = getelementptr i8, i8* %obj, i64 %2
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %arg, i64 0, i32 1
  %3 = load i8*, i8** %key, align 8
  %key_len = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %0, i64 0, i32 3, i32 1
  %4 = load i16, i16* %key_len, align 2
  %conv3 = zext i16 %4 to i64
  %call = call i32 @memcmp(i8* noundef %add.ptr, i8* noundef %3, i64 noundef %conv3) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rht_assign_locked(%struct.rhash_lock_head** noundef %bkt, %struct.rhash_head* noundef %obj) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %obj) #15
  %0 = ptrtoint %struct.rhash_head* %obj to i64
  %.op = or i64 %0, 1
  %or = select i1 %call, i64 1, i64 %.op
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.rhash_lock_head** elementtype(%struct.rhash_lock_head*) %bkt, i64 %or) #16, !srcloc !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.rhash_head* @__rht_ptr(%struct.rhash_lock_head* noundef %p, %struct.rhash_lock_head** noundef %bkt) unnamed_addr #2 {
entry:
  %0 = ptrtoint %struct.rhash_lock_head* %p to i64
  %and = and i64 %0, -2
  %tobool.not = icmp eq i64 %and, 0
  %1 = ptrtoint %struct.rhash_lock_head** %bkt to i64
  %or = or i64 %1, 1
  %cond = select i1 %tobool.not, i64 %or, i64 %and
  %2 = inttoptr i64 %cond to %struct.rhash_head*
  ret %struct.rhash_head* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rht_grow_above_max(%struct.rhashtable* noundef %ht) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 8, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %max_elems = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 2
  %1 = load i32, i32* %max_elems, align 4
  %cmp = icmp uge i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rht_grow_above_100(%struct.rhashtable* noundef %ht, %struct.bucket_table* nocapture noundef readonly %tbl) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 8, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %size = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 0
  %1 = load i32, i32* %size, align 64
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %max_size = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 4
  %2 = load i32, i32* %max_size, align 8
  %tobool.not = icmp eq i32 %2, 0
  %cmp4 = icmp ult i32 %1, %2
  %spec.select = select i1 %tobool.not, i1 true, i1 %cmp4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %spec.select, %land.rhs ]
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rht_grow_above_75(%struct.rhashtable* noundef %ht, %struct.bucket_table* nocapture noundef readonly %tbl) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 8, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %size = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 0
  %1 = load i32, i32* %size, align 64
  %div = lshr i32 %1, 2
  %mul = mul nuw i32 %div, 3
  %cmp = icmp ugt i32 %0, %mul
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %max_size = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 4
  %2 = load i32, i32* %max_size, align 8
  %tobool.not = icmp eq i32 %2, 0
  %cmp4 = icmp ult i32 %1, %2
  %spec.select = select i1 %tobool.not, i1 true, i1 %cmp4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %spec.select, %land.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #16, !srcloc !30
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #0 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bit_spin_unlock(i64* noundef %addr) unnamed_addr #0 {
entry:
  call fastcc void @clear_bit_unlock(i64* noundef %addr) #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @local_bh_enable() #0 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  call void @__local_bh_enable_ip(i64 noundef ptrtoint (i8* blockaddress(@local_bh_enable, %__here) to i64), i32 noundef 512) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit_unlock(i64* noundef %addr) unnamed_addr #0 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_fetch_andnot_release(%struct.atomic64_t* noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_fetch_andnot_release(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #16, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rhashtable_rehash_attach(%struct.bucket_table* noundef %old_tbl, %struct.bucket_table* noundef %new_tbl) unnamed_addr #0 {
entry:
  %future_tbl = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %old_tbl, i64 0, i32 5
  %0 = bitcast %struct.bucket_table** %future_tbl to i8*
  %1 = ptrtoint %struct.bucket_table* %new_tbl to i64
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %0, i64 noundef %1) #14
  %cmp.not = icmp eq i64 %call14.i, 0
  %. = select i1 %cmp.not, i32 0, i32 -17
  ret i32 %.
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %new) #15
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 0, i64 %new, i64* elementtype(i64) %0) #16, !srcloc !33
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  call void @rcu_read_unlock_strict() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #14
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #14
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #16, !srcloc !36
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
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

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #16, !srcloc !38
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #15
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

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @fls_long(i64 noundef %l) unnamed_addr #9 {
entry:
  %cmp.i = icmp eq i64 %l, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %l, i1 false) #16, !range !39
  %1 = trunc i64 %0 to i32
  %conv.i = sub nuw nsw i32 64, %1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %conv.i
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__get_unaligned_cpu32(i8* nocapture noundef readonly %p) unnamed_addr #5 {
entry:
  %x = bitcast i8* %p to i32*
  %0 = load i32, i32* %x, align 1
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvzalloc(i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 256
  %call = call fastcc i8* @kvmalloc(i64 noundef %size, i32 noundef %or) #15
  ret i8* %call
}

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @__ab_c_size(i64 noundef %a) unnamed_addr #9 {
entry:
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a, i64 8)
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %2, i64 64)
  %retval.0 = select i1 %1, i64 -1, i64 %spec.select
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.bucket_table* @nested_bucket_table_alloc(i64 noundef %nbuckets, i32 noundef %gfp) unnamed_addr #0 {
entry:
  %cmp = icmp ult i64 %nbuckets, 1024
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @kzalloc(i64 noundef 72, i32 noundef %gfp) #15
  %0 = bitcast i8* %call to %struct.bucket_table*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %buckets = getelementptr inbounds i8, i8* %call, i64 64
  %1 = bitcast i8* %buckets to %union.nested_table**
  %call3 = call fastcc %union.nested_table* @nested_table_alloc(%union.nested_table** noundef %1, i1 noundef false) #15
  %tobool4.not = icmp eq %union.nested_table* %call3, null
  br i1 %tobool4.not, label %if.then5, label %cond.end11

if.then5:                                         ; preds = %if.end2
  call void @kfree(i8* noundef nonnull %call) #14
  br label %cleanup

cond.end11:                                       ; preds = %if.end2
  %call10 = call fastcc i32 @__ilog2_u64(i64 noundef %nbuckets) #17
  %sub13 = add i32 %call10, -1
  %rem = urem i32 %sub13, 9
  %add = add nuw nsw i32 %rem, 1
  %nest = getelementptr inbounds i8, i8* %call, i64 4
  %2 = bitcast i8* %nest to i32*
  store i32 %add, i32* %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %cond.end11, %if.then5
  %retval.0 = phi %struct.bucket_table* [ %0, %cond.end11 ], [ null, %if.then5 ], [ null, %entry ], [ null, %if.end ]
  ret %struct.bucket_table* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rcu_head_init(%struct.callback_head* nocapture noundef writeonly %rhp) unnamed_addr #12 {
entry:
  %func = getelementptr inbounds %struct.callback_head, %struct.callback_head* %rhp, i64 0, i32 1
  store void (%struct.callback_head*)* inttoptr (i64 -1 to void (%struct.callback_head*)*), void (%struct.callback_head*)** %func, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kvmalloc(i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %call = call i8* @kvmalloc_node(i64 noundef %size, i32 noundef %flags, i32 noundef -1) #14
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 256
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef %or) #14
  ret i8* %call10.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__ilog2_u64(i64 noundef %n) unnamed_addr #9 {
entry:
  %cmp.i = icmp eq i64 %n, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %n, i1 false) #16, !range !39
  %1 = trunc i64 %0 to i32
  %conv.i.op = sub nsw i32 63, %1
  %sub = select i1 %cmp.i, i32 -1, i32 %conv.i.op
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc %struct.bucket_table* @rhashtable_last_table(%struct.bucket_table* noundef %tbl) unnamed_addr #3 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %tbl.addr.0 = phi %struct.bucket_table* [ %tbl, %entry ], [ %0, %do.body ]
  %future_tbl = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl.addr.0, i64 0, i32 5
  %0 = load volatile %struct.bucket_table*, %struct.bucket_table** %future_tbl, align 16
  %tobool.not = icmp eq %struct.bucket_table* %0, null
  br i1 %tobool.not, label %do.end7, label %do.body

do.end7:                                          ; preds = %do.body
  ret %struct.bucket_table* %tbl.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rhashtable_rehash_alloc(%struct.bucket_table* noundef %old_tbl, i32 noundef %size) unnamed_addr #0 {
entry:
  %conv = zext i32 %size to i64
  %call = call fastcc %struct.bucket_table* @bucket_table_alloc(i64 noundef %conv, i32 noundef 3264) #15
  %cmp = icmp eq %struct.bucket_table* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @rhashtable_rehash_attach(%struct.bucket_table* noundef %old_tbl, %struct.bucket_table* noundef nonnull %call) #15
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  call fastcc void @bucket_table_free(%struct.bucket_table* noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ -12, %entry ], [ %call2, %if.then3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @rht_shrink_below_30(%struct.rhashtable* noundef %ht, %struct.bucket_table* nocapture noundef readonly %tbl) unnamed_addr #4 {
entry:
  %counter.i = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 8, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %size = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 0
  %1 = load i32, i32* %size, align 64
  %mul = mul i32 %1, 3
  %div = udiv i32 %mul, 10
  %cmp = icmp ult i32 %0, %div
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %min_size = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 5
  %2 = load i16, i16* %min_size, align 4
  %conv = zext i16 %2 to i32
  %cmp2 = icmp ugt i32 %1, %conv
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  ret i1 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rhashtable_shrink(%struct.rhashtable* noundef %ht) unnamed_addr #0 {
entry:
  %tbl = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 0
  %0 = load %struct.bucket_table*, %struct.bucket_table** %tbl, align 8
  %counter.i = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 8, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %cond.end32

cond.end32:                                       ; preds = %entry
  %mul = mul i32 %1, 3
  %div = lshr i32 %mul, 1
  %conv30 = zext i32 %div to i64
  %call31 = call fastcc i64 @__roundup_pow_of_two(i64 noundef %conv30) #17
  %conv34 = trunc i64 %call31 to i32
  br label %if.end

if.end:                                           ; preds = %cond.end32, %entry
  %size.0 = phi i32 [ %conv34, %cond.end32 ], [ 0, %entry ]
  %min_size = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3, i32 5
  %2 = load i16, i16* %min_size, align 4
  %conv35 = zext i16 %2 to i32
  %cmp36 = icmp ult i32 %size.0, %conv35
  %spec.select = select i1 %cmp36, i32 %conv35, i32 %size.0
  %size43 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %0, i64 0, i32 0
  %3 = load i32, i32* %size43, align 64
  %cmp44.not = icmp ugt i32 %3, %spec.select
  br i1 %cmp44.not, label %do.end50, label %cleanup

do.end50:                                         ; preds = %if.end
  %future_tbl = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %0, i64 0, i32 5
  %4 = load %struct.bucket_table*, %struct.bucket_table** %future_tbl, align 16
  %tobool52.not = icmp eq %struct.bucket_table* %4, null
  br i1 %tobool52.not, label %if.end54, label %cleanup

if.end54:                                         ; preds = %do.end50
  %call55 = call fastcc i32 @rhashtable_rehash_alloc(%struct.bucket_table* noundef %0, i32 noundef %spec.select) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end, %if.end54
  %retval.0 = phi i32 [ %call55, %if.end54 ], [ 0, %if.end ], [ -17, %do.end50 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rhashtable_rehash_table(%struct.rhashtable* noundef %ht) unnamed_addr #0 {
entry:
  %tbl = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 0
  %0 = load %struct.bucket_table*, %struct.bucket_table** %tbl, align 8
  %future_tbl = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %0, i64 0, i32 5
  %1 = load %struct.bucket_table*, %struct.bucket_table** %future_tbl, align 16
  %tobool.not = icmp eq %struct.bucket_table* %1, null
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %size = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %0, i64 0, i32 0
  %2 = load i32, i32* %size, align 64
  %cmp91.not = icmp eq i32 %2, 0
  br i1 %cmp91.not, label %do.body10, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %if.end7
  %old_hash.092 = phi i32 [ %inc, %if.end7 ], [ 0, %for.cond.preheader ]
  %call = call fastcc i32 @rhashtable_rehash_chain(%struct.rhashtable* noundef %ht, i32 noundef %old_hash.092) #15
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %for.body
  call fastcc void @_cond_resched() #15
  %inc = add nuw i32 %old_hash.092, 1
  %3 = load i32, i32* %size, align 64
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body, label %do.body10

do.body10:                                        ; preds = %if.end7, %for.cond.preheader
  %4 = ptrtoint %struct.bucket_table* %1 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.bucket_table** elementtype(%struct.bucket_table*) %tbl, i64 %4) #16, !srcloc !40
  %rlock.i = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 7, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #14
  %walkers = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %0, i64 0, i32 3
  %5 = bitcast %struct.list_head* %walkers to %struct.rhashtable_walker**
  %walker.093 = load %struct.rhashtable_walker*, %struct.rhashtable_walker** %5, align 8
  %list94 = getelementptr inbounds %struct.rhashtable_walker, %struct.rhashtable_walker* %walker.093, i64 0, i32 0
  %cmp40.not95 = icmp eq %struct.list_head* %list94, %walkers
  br i1 %cmp40.not95, label %for.end52, label %for.body41

for.body41:                                       ; preds = %do.body10, %for.body41
  %walker.096 = phi %struct.rhashtable_walker* [ %walker.0, %for.body41 ], [ %walker.093, %do.body10 ]
  %tbl42 = getelementptr inbounds %struct.rhashtable_walker, %struct.rhashtable_walker* %walker.096, i64 0, i32 1
  store %struct.bucket_table* null, %struct.bucket_table** %tbl42, align 8
  %6 = bitcast %struct.rhashtable_walker* %walker.096 to %struct.rhashtable_walker**
  %walker.0 = load %struct.rhashtable_walker*, %struct.rhashtable_walker** %6, align 8
  %list = getelementptr inbounds %struct.rhashtable_walker, %struct.rhashtable_walker* %walker.0, i64 0, i32 0
  %cmp40.not = icmp eq %struct.list_head* %list, %walkers
  br i1 %cmp40.not, label %for.end52, label %for.body41

for.end52:                                        ; preds = %for.body41, %do.body10
  %rcu = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %0, i64 0, i32 4
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @bucket_table_free_rcu) #14
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #14
  %future_tbl58 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %1, i64 0, i32 5
  %7 = load %struct.bucket_table*, %struct.bucket_table** %future_tbl58, align 16
  %tobool59.not = icmp eq %struct.bucket_table* %7, null
  %cond = select i1 %tobool59.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %for.body, %entry, %for.end52
  %retval.0 = phi i32 [ %cond, %for.end52 ], [ 0, %entry ], [ %call, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rhashtable_rehash_chain(%struct.rhashtable* nocapture noundef readonly %ht, i32 noundef %old_hash) unnamed_addr #0 {
entry:
  %tbl = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 0
  %0 = load %struct.bucket_table*, %struct.bucket_table** %tbl, align 8
  %call = call fastcc %struct.rhash_lock_head** @rht_bucket_var(%struct.bucket_table* noundef %0, i32 noundef %old_hash) #15
  %tobool.not = icmp eq %struct.rhash_lock_head** %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @rht_lock(%struct.rhash_lock_head** noundef nonnull %call) #15
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end
  %call1 = call fastcc i32 @rhashtable_rehash_one(%struct.rhashtable* noundef %ht, %struct.rhash_lock_head** noundef nonnull %call) #15
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %cmp = icmp eq i32 %call1, -2
  %spec.store.select = select i1 %cmp, i32 0, i32 %call1
  call fastcc void @rht_unlock(%struct.rhash_lock_head** noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %spec.store.select, %while.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @rhashtable_rehash_one(%struct.rhashtable* nocapture noundef readonly %ht, %struct.rhash_lock_head** noundef %bkt) unnamed_addr #0 {
entry:
  %tbl = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 0
  %0 = load %struct.bucket_table*, %struct.bucket_table** %tbl, align 8
  %call = call fastcc %struct.bucket_table* @rhashtable_last_table(%struct.bucket_table* noundef %0) #15
  %nest = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %call, i64 0, i32 1
  %1 = load i32, i32* %nest, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %out

if.end:                                           ; preds = %entry
  %call2 = call fastcc %struct.rhash_head* @rht_ptr(%struct.rhash_lock_head** noundef %bkt) #15
  %call312 = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %call2) #15
  br i1 %call312, label %out, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %pprev.014 = phi %struct.rhash_head** [ %next8, %for.body ], [ null, %if.end ]
  %entry1.013 = phi %struct.rhash_head* [ %2, %for.body ], [ %call2, %if.end ]
  %next8 = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %entry1.013, i64 0, i32 0
  %2 = load %struct.rhash_head*, %struct.rhash_head** %next8, align 8
  %call9 = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %2) #15
  br i1 %call9, label %if.end20, label %for.body

if.end20:                                         ; preds = %for.body
  %call21 = call fastcc i32 @head_hashfn(%struct.rhashtable* noundef %ht, %struct.bucket_table* noundef %call, %struct.rhash_head* noundef %entry1.013) #15
  %idxprom = zext i32 %call21 to i64
  %arrayidx = getelementptr %struct.bucket_table, %struct.bucket_table* %call, i64 0, i32 8, i64 %idxprom
  call fastcc void @rht_lock_nested(%struct.rhash_lock_head** noundef %arrayidx) #15
  %call23 = call fastcc %struct.rhash_head* @rht_ptr(%struct.rhash_lock_head** noundef %arrayidx) #15
  %next30 = getelementptr inbounds %struct.rhash_head, %struct.rhash_head* %entry1.013, i64 0, i32 0
  store volatile %struct.rhash_head* %call23, %struct.rhash_head** %next30, align 8
  call fastcc void @rht_assign_unlock(%struct.rhash_lock_head** noundef %arrayidx, %struct.rhash_head* noundef %entry1.013) #15
  %tobool40.not = icmp eq %struct.rhash_head** %pprev.014, null
  br i1 %tobool40.not, label %if.else64, label %do.body42

do.body42:                                        ; preds = %if.end20
  %3 = ptrtoint %struct.rhash_head* %2 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.rhash_head** nonnull elementtype(%struct.rhash_head*) %pprev.014, i64 %3) #16, !srcloc !41
  br label %out

if.else64:                                        ; preds = %if.end20
  call fastcc void @rht_assign_locked(%struct.rhash_lock_head** noundef %bkt, %struct.rhash_head* noundef %2) #15
  br label %out

out:                                              ; preds = %if.end, %do.body42, %if.else64, %entry
  %err.2 = phi i32 [ -11, %entry ], [ 0, %do.body42 ], [ 0, %if.else64 ], [ -2, %if.end ]
  ret i32 %err.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @head_hashfn(%struct.rhashtable* nocapture noundef readonly %ht, %struct.bucket_table* nocapture noundef readonly %tbl, %struct.rhash_head* noundef %he) unnamed_addr #0 {
entry:
  %byval-temp = alloca %struct.rhashtable_params, align 8
  %p = getelementptr inbounds %struct.rhashtable, %struct.rhashtable* %ht, i64 0, i32 3
  %0 = bitcast %struct.rhashtable_params* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #16
  %1 = bitcast %struct.rhashtable_params* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8* noundef align 8 dereferenceable(40) %1, i64 40, i1 false)
  %call = call fastcc i32 @rht_head_hashfn(%struct.rhashtable* noundef %ht, %struct.bucket_table* noundef %tbl, %struct.rhash_head* noundef %he, %struct.rhashtable_params* noundef nonnull %byval-temp) #15
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rht_lock_nested(%struct.rhash_lock_head** noundef %bucket) unnamed_addr #0 {
entry:
  call fastcc void @local_bh_disable() #15
  %0 = bitcast %struct.rhash_lock_head** %bucket to i64*
  call fastcc void @bit_spin_lock(i64* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rht_assign_unlock(%struct.rhash_lock_head** noundef %bkt, %struct.rhash_head* noundef %obj) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @rht_is_a_nulls(%struct.rhash_head* noundef %obj) #15
  %0 = ptrtoint %struct.rhash_head* %obj to i64
  %1 = select i1 %call, i64 0, i64 %0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.rhash_lock_head** elementtype(%struct.rhash_lock_head*) %bkt, i64 %1) #16, !srcloc !42
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !43
  call fastcc void @local_bh_enable() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @nested_bucket_table_free(%struct.bucket_table* nocapture noundef readonly %tbl) unnamed_addr #0 {
entry:
  %size1 = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 0
  %0 = load i32, i32* %size1, align 64
  %nest = getelementptr inbounds %struct.bucket_table, %struct.bucket_table* %tbl, i64 0, i32 1
  %1 = load i32, i32* %nest, align 4
  %shr = lshr i32 %0, %1
  %call = call fastcc %union.nested_table* @nested_table_top(%struct.bucket_table* noundef %tbl) #15
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %idx.ext = zext i32 %i.013 to i64
  %add.ptr = getelementptr %union.nested_table, %union.nested_table* %call, i64 %idx.ext
  call fastcc void @nested_table_free(%union.nested_table* noundef %add.ptr, i32 noundef %shr) #15
  %inc = add i32 %i.013, 1
  %i.0.highbits = lshr i32 %inc, %1
  %cmp = icmp eq i32 %i.0.highbits, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %2 = bitcast %union.nested_table* %call to i8*
  call void @kfree(i8* noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @nested_table_free(%union.nested_table* nocapture noundef readonly %ntbl, i32 noundef %size) unnamed_addr #0 {
entry:
  %table = getelementptr %union.nested_table, %union.nested_table* %ntbl, i64 0, i32 0
  %0 = load %union.nested_table*, %union.nested_table** %table, align 8
  %tobool.not = icmp eq %union.nested_table* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp = icmp ugt i32 %size, 512
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %shr = lshr i32 %size, 9
  br label %for.body

for.body:                                         ; preds = %if.then1, %for.body
  %indvars.iv = phi i64 [ 0, %if.then1 ], [ %indvars.iv.next, %for.body ]
  %add.ptr = getelementptr %union.nested_table, %union.nested_table* %0, i64 %indvars.iv
  call fastcc void @nested_table_free(%union.nested_table* noundef %add.ptr, i32 noundef %shr) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %if.end3, label %for.body

if.end3:                                          ; preds = %for.body, %if.end
  %1 = bitcast %union.nested_table* %0 to i8*
  call void @kfree(i8* noundef nonnull %1) #14
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #13

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { nofree noinline nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #18 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i8 0, i8 2}
!8 = !{i64 2152910260}
!9 = !{i64 2152913139}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152921270}
!12 = !{i64 2152929104}
!13 = !{!"branch_weights", i32 4001, i32 1}
!14 = !{i64 2149476265}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{i64 2149463472}
!19 = !{i64 2152883541}
!20 = !{!"branch_weights", i32 1, i32 4000}
!21 = !{!"branch_weights", i32 1, i32 4001}
!22 = !{i64 2149165446}
!23 = !{i64 2151193151}
!24 = !{i64 2151193262}
!25 = !{i64 2151193324}
!26 = !{i64 1094108}
!27 = !{i64 1835275}
!28 = !{i64 2147748094, i64 2147748764, i64 2147748794, i64 2147748826, i64 2147748858, i64 2147748892, i64 2147748917}
!29 = !{i64 2152711791}
!30 = !{i64 2147676126, i64 2147676642, i64 2147676672, i64 2147676699, i64 2147676733, i64 2147676763}
!31 = !{i64 2151193885}
!32 = !{i64 2147759724, i64 2147760404, i64 2147760434, i64 2147760465, i64 2147760497, i64 2147760532, i64 2147760557}
!33 = !{i64 2147790846, i64 2147790879, i64 2147790930, i64 2147790986, i64 2147791019, i64 2147791074, i64 2147791103, i64 2147791130}
!34 = !{i64 2149463689}
!35 = !{i64 2149707961}
!36 = !{i64 2147771988, i64 2147772021, i64 2147772074, i64 2147772133, i64 2147772167, i64 2147772222, i64 2147772251, i64 2147772271}
!37 = !{i64 2149715242}
!38 = !{i64 2149662090}
!39 = !{i64 0, i64 65}
!40 = !{i64 2152850067}
!41 = !{i64 2152841405}
!42 = !{i64 2152718393}
!43 = !{i64 2152721603}
