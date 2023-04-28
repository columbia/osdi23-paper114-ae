; ModuleID = 'fs/eventpoll.c'
source_filename = "fs/eventpoll.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall5.init\22, \22a\22\09\09"
module asm "__initcall__kmod_eventpoll__662_2387_eventpoll_init5:\09\09\09"
module asm ".long\09eventpoll_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.9, i32 }
%union.anon.9 = type { %struct.kuid_t }
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
%struct.sock = type { %struct.sock_common, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff*, %struct.sk_buff_head, %struct.anon.65, i32, i32, %struct.sk_filter*, %union.anon.97, %struct.dst_entry*, %struct.dst_entry*, %struct.atomic_t, i32, i32, %struct.refcount_struct, i64, %union.anon.100, %struct.sk_buff*, %struct.sk_buff_head, i32, i32, i32, i32, i64, %struct.timer_list, i32, i32, i64, i64, %struct.page_frag, i64, i64, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i64, %struct.proto*, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, %struct.spinlock, %struct.pid*, %struct.cred*, i64, i64, i16, i32, i8, i32, %struct.atomic_t, i8, i8, %struct.socket*, i8*, %struct.sock_cgroup_data, %struct.mem_cgroup*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*)*, %struct.sock_reuseport*, %struct.callback_head }
%struct.sock_common = type { %union.anon.36, %union.anon.38, %union.anon.39, i16, i8, i8, i32, %union.anon.41, %struct.proto*, %struct.possible_net_t, %struct.atomic64_t, %union.anon.61, [0 x i32], %union.anon.62, i16, %union.anon.63, %struct.refcount_struct, [0 x i32], %union.anon.64 }
%union.anon.36 = type { i64 }
%union.anon.38 = type { i32 }
%union.anon.39 = type { i32 }
%union.anon.41 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%union.anon.61 = type { i64 }
%union.anon.62 = type { %struct.hlist_node }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.65 = type { %struct.atomic_t, i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.sk_filter = type { %struct.refcount_struct, %struct.callback_head, %struct.bpf_prog* }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], %struct.bpf_prog_stats*, i32*, i32 (i8*, %struct.bpf_insn*)*, %struct.bpf_prog_aux*, %struct.sock_fprog_kern*, [0 x %struct.sock_filter], [0 x %struct.bpf_insn] }
%struct.bpf_prog_stats = type { i64, i64, i64, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_sync = type {}
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, %struct.bpf_ctx_arg_aux*, %struct.mutex, %struct.bpf_prog*, %struct.bpf_trampoline*, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, %struct.btf_type*, i8*, %struct.bpf_prog**, i8*, %struct.bpf_jit_poke_descriptor*, %struct.bpf_kfunc_desc_tab*, i32, %struct.bpf_ksym, %struct.bpf_prog_ops*, %struct.bpf_map**, %struct.mutex, %struct.btf_mod_pair*, %struct.bpf_prog*, %struct.user_struct*, i64, [2 x %struct.bpf_map*], [16 x i8], %struct.bpf_prog_offload*, %struct.btf*, %struct.bpf_func_info*, %struct.bpf_func_info_aux*, %struct.bpf_line_info*, i8**, i32, i32, i32, i32, %struct.exception_table_entry*, %union.anon.96 }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.bpf_trampoline = type { %struct.hlist_node, %struct.mutex, %struct.refcount_struct, i64, %struct.anon.66, %struct.bpf_prog*, [3 x %struct.hlist_head], [3 x i32], %struct.bpf_tramp_image*, i64, %struct.module* }
%struct.anon.66 = type { %struct.btf_func_model, i8*, i8 }
%struct.btf_func_model = type { i8, i8, [12 x i8] }
%struct.bpf_tramp_image = type { i8*, %struct.bpf_ksym, %struct.percpu_ref, i8*, i8*, %union.anon.67 }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%union.anon.67 = type { %struct.work_struct }
%struct.btf_type = type opaque
%struct.bpf_jit_poke_descriptor = type { i8*, i8*, i8*, i8*, %union.anon.68, i8, i8, i16, i32 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { %struct.bpf_map*, i32 }
%struct.bpf_map = type { %struct.bpf_map_ops*, %struct.bpf_map*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.btf*, [16 x i8], i32, i8, i8, [34 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, i64, [40 x i8] }
%struct.bpf_map_ops = type { i32 (%union.bpf_attr*)*, %struct.bpf_map* (%union.bpf_attr*)*, void (%struct.bpf_map*, %struct.file*)*, void (%struct.bpf_map*)*, i32 (%struct.bpf_map*, i8*, i8*)*, void (%struct.bpf_map*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i32 (%struct.bpf_map*, %union.bpf_attr*, %union.bpf_attr*)*, i8* (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*, i64)*, i32 (%struct.bpf_map*, i8*)*, i32 (%struct.bpf_map*, i8*)*, i8* (%struct.bpf_map*, %struct.file*, i32)*, void (i8*)*, i32 (%struct.bpf_map*, %struct.bpf_insn*)*, i32 (i8*)*, void (%struct.bpf_map*, i8*, %struct.seq_file*)*, i32 (%struct.bpf_map*, %struct.btf*, %struct.btf_type*, %struct.btf_type*)*, i32 (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, %struct.bpf_prog_aux*)*, void (%struct.bpf_map*, i32, %struct.bpf_prog*, %struct.bpf_prog*)*, i32 (%struct.bpf_map*, i64*, i32)*, i32 (%struct.bpf_map*, i64, i32*)*, i32 (%struct.bpf_map*, %struct.vm_area_struct*)*, i32 (%struct.bpf_map*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.bpf_local_storage_map*, i8*, i32)*, void (%struct.bpf_local_storage_map*, i8*, i32)*, %struct.bpf_local_storage** (i8*)*, i32 (%struct.bpf_map*, i32, i64)*, i1 (%struct.bpf_map*, %struct.bpf_map*)*, i32 (%struct.bpf_verifier_env*, %struct.bpf_func_state*, %struct.bpf_func_state*)*, i32 (%struct.bpf_map*, i8*, i8*, i64)*, i8*, i32*, %struct.bpf_iter_seq_info* }
%union.bpf_attr = type { %struct.anon.74 }
%struct.anon.74 = type { i32, i32, i64, i64, i32, i32, i64, i32, i32, [16 x i8], i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, %union.anon.75, i32, i64 }
%union.anon.75 = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.24, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.23, [0 x i64] }
%struct.anon.23 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.122, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.cpumask = type { [4 x i64] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.proc_dir_entry = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.7, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.kgid_t = type { i32 }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.net_device = type { [16 x i8], %struct.netdev_name_node*, %struct.dev_ifalias*, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.144, i32, i32, %struct.net_device_ops*, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.ethtool_ops*, %struct.header_ops*, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.kset*, i32, i32, i8, %struct.in_device*, %struct.inet6_dev*, %struct.wireless_dev*, %struct.wpan_dev*, i8*, %struct.netdev_rx_queue*, i32, i32, %struct.bpf_prog*, i64, i32, i32 (%struct.sk_buff**)*, i8*, %struct.netdev_queue*, [32 x i8], %struct.hlist_node, [40 x i8], %struct.netdev_queue*, i32, i32, %struct.Qdisc*, i32, %struct.spinlock, %struct.xdp_dev_bulk_queue*, %struct.timer_list, i32, i32, %struct.list_head, %struct.refcount_struct, %struct.list_head, i8, i8, i16, i8, void (%struct.net_device*)*, %struct.possible_net_t, i8*, i32, %union.anon.162, %struct.device, [4 x %struct.attribute_group*], %struct.attribute_group*, %struct.rtnl_link_ops*, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], %struct.phy_device*, %struct.sfp_bus*, %struct.lock_class_key*, %struct.lock_class_key*, i8, i8, %struct.list_head, %struct.udp_tunnel_nic_info*, %struct.udp_tunnel_nic*, [3 x %struct.bpf_xdp_entity] }
%struct.netdev_name_node = type { %struct.hlist_node, %struct.list_head, %struct.net_device*, i8* }
%struct.dev_ifalias = type { %struct.callback_head, [0 x i8] }
%struct.anon.144 = type { %struct.list_head, %struct.list_head }
%struct.net_device_ops = type { i32 (%struct.net_device*)*, void (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.sk_buff*, %struct.net_device*, i64)*, i16 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*)*, i32 (%struct.net_device*, i8*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.ifreq*, i32)*, i32 (%struct.net_device*, %struct.if_settings*)*, i32 (%struct.net_device*, %struct.ifreq*, i8*, i32)*, i32 (%struct.net_device*, %struct.ifmap*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.neigh_parms*)*, void (%struct.net_device*, i32)*, void (%struct.net_device*, %struct.rtnl_link_stats64*)*, i1 (%struct.net_device*, i32)*, i32 (i32, %struct.net_device*, i8*)*, %struct.net_device_stats* (%struct.net_device*)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i16, i16)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i16, i8, i16)*, i32 (%struct.net_device*, i32, i32, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_stats*)*, i32 (%struct.net_device*, i32, %struct.nlattr**)*, i32 (%struct.net_device*, i32, %struct.sk_buff*)*, i32 (%struct.net_device*, i32, %struct.ifla_vf_guid*, %struct.ifla_vf_guid*)*, i32 (%struct.net_device*, i32, i64, i32)*, i32 (%struct.net_device*, i32, i1)*, i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.net_device*)*, %struct.net_device* (%struct.net_device*, %struct.sk_buff*, i1)*, %struct.net_device* (%struct.net_device*, %struct.sock*)*, i64 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, %struct.neighbour*)*, void (%struct.net_device*, %struct.neighbour*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16, i16, %struct.netlink_ext_ack*)*, i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i16)*, i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)*, i32 (%struct.sk_buff*, %struct.nlattr**, %struct.net_device*, i8*, i16, i32, i32, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16, %struct.netlink_ext_ack*)*, i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)*, i32 (%struct.net_device*, %struct.nlmsghdr*, i16)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, %struct.netdev_phys_item_id*)*, i32 (%struct.net_device*, i8*, i64)*, i8* (%struct.net_device*, %struct.net_device*)*, void (%struct.net_device*, i8*)*, i32 (%struct.net_device*, i32, i32)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i1)*, i32 (%struct.net_device*, %struct.sk_buff*)*, void (%struct.net_device*, i32)*, i32 (%struct.net_device*, %struct.netdev_bpf*)*, i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)*, %struct.net_device* (%struct.net_device*, %struct.xdp_buff*)*, i32 (%struct.net_device*, i32, i32)*, %struct.devlink_port* (%struct.net_device*)*, i32 (%struct.net_device*, %struct.ip_tunnel_parm*, i32)*, %struct.net_device* (%struct.net_device*)*, i32 (%struct.net_device_path_ctx*, %struct.net_device_path*)* }
%struct.ifreq = type { %union.anon.145, %union.anon.146 }
%union.anon.145 = type { [16 x i8] }
%union.anon.146 = type { %struct.ifmap }
%struct.ifmap = type { i64, i64, i16, i8, i8, i8 }
%struct.if_settings = type { i32, i32, %union.anon.147 }
%union.anon.147 = type { %struct.raw_hdlc_proto* }
%struct.raw_hdlc_proto = type { i16, i16 }
%struct.neigh_parms = type { %struct.possible_net_t, %struct.net_device*, %struct.list_head, i32 (%struct.neighbour*)*, %struct.neigh_table*, i8*, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i64] }
%struct.neighbour = type { %struct.neighbour*, %struct.neigh_table*, %struct.neigh_parms*, i64, i64, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i64, %struct.atomic_t, i8, i8, i8, i8, i8, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, i32 (%struct.neighbour*, %struct.sk_buff*)*, %struct.neigh_ops*, %struct.list_head, %struct.callback_head, %struct.net_device*, [0 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hh_cache = type { i32, %struct.seqlock_t, [4 x i64] }
%struct.neigh_ops = type { i32, void (%struct.neighbour*, %struct.sk_buff*)*, void (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)*, i32 (%struct.neighbour*, %struct.sk_buff*)* }
%struct.neigh_table = type { i32, i32, i32, i16, i32 (i8*, %struct.net_device*, i32*)*, i1 (%struct.neighbour*, i8*)*, i32 (%struct.neighbour*)*, i32 (%struct.pneigh_entry*)*, void (%struct.pneigh_entry*)*, void (%struct.sk_buff*)*, i32 (i8*)*, i1 (%struct.net_device*, %struct.netlink_ext_ack*)*, i8*, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i64, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.rwlock_t, i64, %struct.neigh_statistics*, %struct.neigh_hash_table*, %struct.pneigh_entry** }
%struct.pneigh_entry = type { %struct.pneigh_entry*, %struct.possible_net_t, %struct.net_device*, i8, i8, [0 x i8] }
%struct.netlink_ext_ack = type { i8*, %struct.nlattr*, %struct.nla_policy*, [20 x i8], i8 }
%struct.nlattr = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.98 }
%union.anon.98 = type { i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.neigh_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.neigh_hash_table = type { %struct.neighbour**, i32, [4 x i32], %struct.callback_head }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ifla_vf_guid = type { i32, i64 }
%struct.ndmsg = type { i8, i8, i16, i32, i16, i8, i8 }
%struct.netlink_callback = type { %struct.sk_buff*, %struct.nlmsghdr*, i32 (%struct.sk_buff*, %struct.netlink_callback*)*, i32 (%struct.netlink_callback*)*, i8*, %struct.module*, %struct.netlink_ext_ack*, i16, i16, i32, i32, i32, i8, %union.anon.148 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%union.anon.148 = type { [6 x i64] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.netdev_bpf = type { i32, %union.anon.149 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, %struct.bpf_prog*, %struct.netlink_ext_ack* }
%struct.xdp_frame = type { i8*, i16, i16, i32, %struct.xdp_mem_info, %struct.net_device* }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i8*, %struct.xdp_rxq_info*, %struct.xdp_txq_info*, i32 }
%struct.xdp_rxq_info = type { %struct.net_device*, i32, i32, %struct.xdp_mem_info, i32, [36 x i8] }
%struct.xdp_txq_info = type { %struct.net_device* }
%struct.devlink_port = type opaque
%struct.ip_tunnel_parm = type opaque
%struct.net_device_path_ctx = type { %struct.net_device*, i8*, i32, [2 x %struct.anon.153] }
%struct.anon.153 = type { i16, i16 }
%struct.net_device_path = type { i32, %struct.net_device*, %union.anon.154 }
%union.anon.154 = type { %struct.anon.156, [4 x i8] }
%struct.anon.156 = type { i32, i16, i16 }
%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_ops = type opaque
%struct.header_ops = type { i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)*, i32 (%struct.sk_buff*, i8*)*, i32 (%struct.neighbour*, %struct.hh_cache*, i16)*, void (%struct.hh_cache*, %struct.net_device*, i8*)*, i1 (i8*, i32)*, i16 (%struct.sk_buff*)* }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.in_device = type opaque
%struct.inet6_dev = type { %struct.net_device*, %struct.list_head, %struct.ifmcaddr6*, %struct.ifmcaddr6*, i8, i8, i8, i8, i64, i64, i64, i64, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.ifacaddr6*, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, %struct.neigh_parms*, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i64, %struct.callback_head, i32 }
%struct.ifmcaddr6 = type { %struct.in6_addr, %struct.inet6_dev*, %struct.ifmcaddr6*, %struct.ip6_sf_list*, %struct.ip6_sf_list*, i32, i8, [2 x i64], %struct.delayed_work, i32, i32, %struct.refcount_struct, i64, i64, %struct.callback_head }
%struct.ip6_sf_list = type { %struct.ip6_sf_list*, %struct.in6_addr, [2 x i64], i8, i8, i8, %struct.callback_head }
%struct.ifacaddr6 = type { %struct.in6_addr, %struct.fib6_info*, %struct.ifacaddr6*, %struct.hlist_node, i32, %struct.refcount_struct, i64, i64, %struct.callback_head }
%struct.fib6_info = type opaque
%struct.in6_addr = type { %union.anon.104 }
%union.anon.104 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.ctl_table_header* }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { %struct.proc_dir_entry*, %struct.ipstats_mib*, %struct.icmpv6_mib_device*, %struct.icmpv6msg_mib_device* }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.icmpv6_mib_device = type { [6 x %struct.atomic64_t] }
%struct.icmpv6msg_mib_device = type { [512 x %struct.atomic64_t] }
%struct.wireless_dev = type opaque
%struct.wpan_dev = type opaque
%struct.netdev_rx_queue = type { %struct.xdp_rxq_info, %struct.kobject, %struct.net_device*, [56 x i8] }
%struct.netdev_queue = type { %struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.kobject, i64, i64, %struct.net_device*, [16 x i8], %struct.spinlock, i32, i64, i64, [40 x i8] }
%struct.Qdisc = type { i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, i32, i32, %struct.Qdisc_ops*, %struct.qdisc_size_table*, %struct.hlist_node, i32, i32, %struct.netdev_queue*, %struct.net_rate_estimator*, %struct.gnet_stats_basic_cpu*, %struct.gnet_stats_queue*, i32, %struct.refcount_struct, [24 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_packed, %struct.seqcount, %struct.gnet_stats_queue, i64, %struct.Qdisc*, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.callback_head, [40 x i8], [0 x i64] }
%struct.Qdisc_ops = type { %struct.Qdisc_ops*, %struct.Qdisc_class_ops*, [16 x i8], i32, i32, i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)*, %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*)*, i32 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, %struct.sk_buff*)*, i32 (%struct.Qdisc*, %struct.gnet_dump*)*, void (%struct.Qdisc*, i32)*, void (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*)*, i32 (%struct.Qdisc*)*, %struct.module* }
%struct.Qdisc_class_ops = type { i32, %struct.netdev_queue* (%struct.Qdisc*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)*, %struct.Qdisc* (%struct.Qdisc*, i64)*, void (%struct.Qdisc*, i64)*, i64 (%struct.Qdisc*, i32)*, i32 (%struct.Qdisc*, i32, i32, %struct.nlattr**, i64*, %struct.netlink_ext_ack*)*, i32 (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, void (%struct.Qdisc*, %struct.qdisc_walker*)*, %struct.tcf_block* (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)*, i64 (%struct.Qdisc*, i64, i32)*, void (%struct.Qdisc*, i64)*, i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)*, i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.qdisc_walker = type opaque
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, %struct.net*, %struct.Qdisc*, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.158, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.flow_block = type { %struct.list_head }
%struct.anon.158 = type { %struct.tcf_chain*, %struct.list_head }
%struct.tcf_chain = type { %struct.mutex, %struct.tcf_proto*, %struct.list_head, %struct.tcf_block*, i32, i32, i32, i8, i8, %struct.tcf_proto_ops*, i8*, %struct.callback_head }
%struct.tcf_proto = type { %struct.tcf_proto*, i8*, i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i16, i32, i8*, %struct.tcf_proto_ops*, %struct.tcf_chain*, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.tcf_result = type { %union.anon.159 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i32 }
%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)*, i32 (%struct.tcf_proto*)*, void (%struct.tcf_proto*, i1, %struct.netlink_ext_ack*)*, i8* (%struct.tcf_proto*, i32)*, void (%struct.tcf_proto*, i8*)*, i32 (%struct.net*, %struct.sk_buff*, %struct.tcf_proto*, i64, i32, %struct.nlattr**, i8**, i32, %struct.netlink_ext_ack*)*, i32 (%struct.tcf_proto*, i8*, i8*, i1, %struct.netlink_ext_ack*)*, i1 (%struct.tcf_proto*)*, void (%struct.tcf_proto*, %struct.tcf_walker*, i1)*, i32 (%struct.tcf_proto*, i1, i32 (i32, i8*, i8*)*, i8*, %struct.netlink_ext_ack*)*, void (%struct.tcf_proto*, i8*)*, void (%struct.tcf_proto*, i8*)*, void (i8*, i32, i64, i8*, i64)*, i8* (%struct.net*, %struct.tcf_chain*, %struct.nlattr**, %struct.netlink_ext_ack*)*, void (i8*)*, i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i1)*, i32 (%struct.net*, %struct.tcf_proto*, i8*, %struct.sk_buff*, %struct.tcmsg*, i1)*, i32 (%struct.sk_buff*, %struct.net*, i8*)*, %struct.module*, i32 }
%struct.tcf_walker = type opaque
%struct.gnet_dump = type { %struct.spinlock*, %struct.sk_buff*, %struct.nlattr*, i32, i32, i32, i8*, i32, %struct.tc_stats }
%struct.tc_stats = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.qdisc_size_table = type { %struct.callback_head, %struct.list_head, %struct.tc_sizespec, i32, [0 x i16] }
%struct.tc_sizespec = type { i8, i8, i16, i32, i32, i32, i32, i32 }
%struct.net_rate_estimator = type opaque
%struct.gnet_stats_basic_cpu = type { %struct.gnet_stats_basic_packed, %struct.u64_stats_sync }
%struct.qdisc_skb_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.gnet_stats_basic_packed = type { i64, i64 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.xdp_dev_bulk_queue = type opaque
%union.anon.162 = type { %struct.pcpu_lstats* }
%struct.pcpu_lstats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { %struct.local64_t }
%struct.local64_t = type { %struct.local_t }
%struct.local_t = type { %struct.atomic64_t }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.rtnl_link_ops = type { %struct.list_head, i8*, i64, %struct.net_device* (%struct.nlattr**, i8*, i8, i32, i32)*, void (%struct.net_device*)*, i8, i32, %struct.nla_policy*, i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, void (%struct.net_device*, %struct.list_head*)*, i64 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i64 (%struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)*, i32 ()*, i32 ()*, i32, %struct.nla_policy*, i32 (%struct.net_device*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)*, i64 (%struct.net_device*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*, %struct.net_device*)*, %struct.net* (%struct.net_device*)*, i64 (%struct.net_device*, i32)*, i32 (%struct.sk_buff*, %struct.net_device*, i32*, i32)* }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.phy_device = type opaque
%struct.sfp_bus = type opaque
%struct.udp_tunnel_nic_info = type opaque
%struct.udp_tunnel_nic = type opaque
%struct.bpf_xdp_entity = type { %struct.bpf_prog*, %struct.bpf_xdp_link* }
%struct.bpf_xdp_link = type opaque
%struct.netns_core = type { %struct.ctl_table_header*, i32, i32*, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.ipstats_mib*, %struct.tcp_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib* }
%struct.tcp_mib = type { [16 x i64] }
%struct.linux_mib = type { [126 x i64] }
%struct.udp_mib = type { [10 x i64] }
%struct.icmp_mib = type { [28 x i64] }
%struct.icmpmsg_mib = type { [512 x %struct.atomic64_t] }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, %struct.ctl_table_header* }
%struct.netns_nexthop = type { %struct.rb_root, %struct.hlist_head*, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ctl_table_header*, %struct.ipv4_devconf*, %struct.ipv4_devconf*, %struct.ip_ra_chain*, %struct.mutex, i8, i8, %struct.hlist_head*, %struct.sock*, %struct.sock**, %struct.sock*, %struct.inet_peer_base*, %struct.sock**, %struct.fqdir*, i8, i8, i8, i8, i8, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i64, i64, i32, i32, %struct.tcp_congestion_ops*, %struct.tcp_fastopen_context*, i32, %struct.atomic_t, i64, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, i64*, i32, %struct.fib_notifier_ops*, i32, %struct.fib_notifier_ops*, i32, %struct.atomic_t, %struct.siphash_key_t, [48 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], %struct.inet_hashinfo*, i32 }
%struct.inet_hashinfo = type opaque
%struct.ipv4_devconf = type opaque
%struct.ip_ra_chain = type { %struct.ip_ra_chain*, %struct.sock*, %union.anon.102, %struct.callback_head }
%union.anon.102 = type { void (%struct.sock*)* }
%struct.inet_peer_base = type { %struct.rb_root, %struct.seqlock_t, i32 }
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.103, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.103 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type { i32, %struct.list_head, i32 (%struct.net*)*, i32 (%struct.net*, %struct.notifier_block*, %struct.netlink_ext_ack*)*, %struct.module*, %struct.callback_head }
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.105 }
%union.anon.105 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
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
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.106, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.106 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.10, %union.anon.126, %struct.atomic_t, [8 x i8] }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.126 = type { %struct.atomic_t }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.107, %union.anon.108, i32 }
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.128, %union.anon.129, %union.anon.130, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.133, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { %struct.rb_node }
%union.anon.130 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.133 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.blk_queue_stats = type opaque
%struct.rq_qos = type opaque
%struct.blk_mq_ops = type opaque
%struct.blk_mq_ctx = type opaque
%struct.blk_stat_callback = type opaque
%struct.blk_rq_stat = type { i64, i64, i64, i32, i64 }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, %struct.sbq_wait_state*, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, %struct.sbitmap_word*, i32* }
%struct.sbitmap_word = type { i64, [56 x i8], i64, [56 x i8], i64, [56 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [32 x i8] }
%struct.queue_limits = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.blk_flush_queue = type opaque
%struct.blk_mq_tag_set = type opaque
%union.anon.107 = type { %struct.list_head }
%union.anon.108 = type { %struct.hlist_node }
%struct.kernel_siginfo = type { %struct.anon.109 }
%struct.anon.109 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.121, i32, [12 x i8] }
%union.anon.121 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.122 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.123, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.123 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.uprobes_state = type {}
%struct.pgprot_t = type { i64 }
%struct.anon.24 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.25, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.26, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.25 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%union.anon.26 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.bpf_local_storage_map = type opaque
%struct.bpf_local_storage = type opaque
%struct.bpf_verifier_env = type opaque
%struct.bpf_func_state = type opaque
%struct.bpf_iter_seq_info = type { %struct.seq_operations*, i32 (i8*, %struct.bpf_iter_aux_info*)*, void (i8*)*, i32 }
%struct.bpf_iter_aux_info = type opaque
%struct.bpf_kfunc_desc_tab = type opaque
%struct.bpf_ksym = type { i64, i64, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.bpf_prog_ops = type { i32 (%struct.bpf_prog*, %union.bpf_attr*, %union.bpf_attr*)* }
%struct.btf_mod_pair = type { %struct.btf*, %struct.module* }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.bpf_prog_offload = type { %struct.bpf_prog*, %struct.net_device*, %struct.bpf_offload_dev*, i8*, %struct.list_head, i8, i8, i8*, i32 }
%struct.bpf_offload_dev = type opaque
%struct.btf = type opaque
%struct.bpf_func_info = type { i32, i32 }
%struct.bpf_func_info_aux = type { i16, i8 }
%struct.bpf_line_info = type { i32, i32, i32, i32 }
%struct.exception_table_entry = type { i32, i32 }
%union.anon.96 = type { %struct.work_struct }
%struct.sock_fprog_kern = type { i16, %struct.sock_filter* }
%struct.sock_filter = type { i16, i8, i8, i32 }
%union.anon.97 = type { %struct.socket_wq* }
%struct.socket_wq = type { %struct.wait_queue_head, %struct.fasync_struct*, i64, %struct.callback_head, [8 x i8] }
%struct.dst_entry = type { %struct.net_device*, %struct.dst_ops*, i64, i64, i8*, i32 (%struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i16, i16, i16, i16, %struct.atomic_t, i32, i64, %struct.lwtunnel_state*, %struct.callback_head, i16, i16, i32 }
%struct.dst_ops = type { i16, i32, i32 (%struct.dst_ops*)*, %struct.dst_entry* (%struct.dst_entry*, i32)*, i32 (%struct.dst_entry*)*, i32 (%struct.dst_entry*)*, i32* (%struct.dst_entry*, i64)*, void (%struct.dst_entry*)*, void (%struct.dst_entry*, %struct.net_device*, i32)*, %struct.dst_entry* (%struct.dst_entry*)*, void (%struct.sk_buff*)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*, i32, i1)*, void (%struct.dst_entry*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, %struct.neighbour* (%struct.dst_entry*, %struct.sk_buff*, i8*)*, void (%struct.dst_entry*, i8*)*, %struct.kmem_cache*, %struct.percpu_counter, [40 x i8] }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.sk_buff*)*, %struct.callback_head, [0 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.100 = type { %struct.sk_buff* }
%struct.sk_buff = type { %union.anon.49, %union.anon.52, %union.anon.53, [48 x i8], %union.anon.54, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.56, i32, i32, i32, i16, i16, %union.anon.58, %union.anon.59, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.51 }
%union.anon.51 = type { %struct.net_device* }
%union.anon.52 = type { %struct.sock* }
%union.anon.53 = type { i64 }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { i64, void (%struct.sk_buff*)* }
%union.anon.56 = type { i32 }
%union.anon.58 = type { i32 }
%union.anon.59 = type { i16 }
%struct.sk_buff_head = type { %struct.sk_buff*, %struct.sk_buff*, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.proto = type { void (%struct.sock*, i64)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, i32)*, %struct.sock* (%struct.sock*, i32, i32*, i1)*, i32 (%struct.sock*, i32, i64)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, i32, i32, [2 x i64], i32)*, i32 (%struct.sock*, i32, i32, i8*, i32*)*, void (%struct.sock*, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sockaddr*, i32)*, i32 (%struct.sock*, %struct.sk_buff*)*, i1 (i32, i32)*, void (%struct.sock*)*, i32 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, i32 (%struct.sock*, i16)*, i32, i1 (%struct.sock*, i32)*, i1 (%struct.sock*)*, void (%struct.sock*)*, void (%struct.sock*)*, %struct.atomic64_t*, %struct.percpu_counter*, i64*, i64*, i32*, i32*, i32, i32, i32, i8, %struct.kmem_cache*, i32, i32, i32, i32, %struct.percpu_counter*, %struct.request_sock_ops*, %struct.timewait_sock_ops*, %union.anon.60, %struct.module*, [32 x i8], %struct.list_head, i32 (%struct.sock*, i32)* }
%struct.msghdr = type { i8*, i32, %struct.iov_iter, %union.anon.47, i8, i64, i32, %struct.kiocb* }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.42, %union.anon.45 }
%union.anon.42 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.45 = type { i64 }
%union.anon.47 = type { i8* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.48 }
%union.anon.48 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.sockaddr = type { i16, [14 x i8] }
%struct.request_sock_ops = type { i32, i32, %struct.kmem_cache*, i8*, i32 (%struct.sock*, %struct.request_sock*)*, void (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)*, void (%struct.sock*, %struct.sk_buff*)*, void (%struct.request_sock*)*, void (%struct.request_sock*)* }
%struct.request_sock = type { %struct.sock_common, %struct.request_sock*, i16, i8, i8, i32, %struct.timer_list, %struct.request_sock_ops*, %struct.sock*, %struct.saved_syn*, i32, i32 }
%struct.saved_syn = type { i32, i32, i32, [0 x i8] }
%struct.timewait_sock_ops = type { %struct.kmem_cache*, i8*, i32, i32 (%struct.sock*, %struct.sock*, i8*)*, void (%struct.sock*)* }
%union.anon.60 = type { %struct.inet_hashinfo* }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.43, %struct.qspinlock }
%union.anon.43 = type { %struct.atomic_t }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.socket = type { i32, i16, i64, %struct.file*, %struct.sock*, %struct.proto_ops*, [24 x i8], %struct.socket_wq }
%struct.proto_ops = type { i32, %struct.module*, i32 (%struct.socket*)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.socket*)*, i32 (%struct.socket*, %struct.socket*, i32, i1)*, i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.file*, %struct.socket*, %struct.poll_table_struct*)*, i32 (%struct.socket*, i32, i64)*, i32 (%struct.socket*, i8*, i1, i1)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32, i32, [2 x i64], i32)*, i32 (%struct.socket*, i32, i32, i8*, i32*)*, void (%struct.seq_file*, %struct.socket*)*, i32 (%struct.socket*, %struct.msghdr*, i64)*, i32 (%struct.socket*, %struct.msghdr*, i64, i32)*, i32 (%struct.file*, %struct.socket*, %struct.vm_area_struct*)*, i64 (%struct.socket*, %struct.page*, i32, i64, i32)*, i64 (%struct.socket*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.sock*, i32)*, i32 (%struct.socket*)*, i32 (%struct.sock*, %struct.read_descriptor_t*, i32 (%struct.read_descriptor_t*, %struct.sk_buff*, i32, i64)*)*, i32 (%struct.sock*, %struct.page*, i32, i64, i32)*, i32 (%struct.sock*, %struct.msghdr*, i64)*, i32 (%struct.sock*, i32)* }
%struct.read_descriptor_t = type { i64, i64, %union.anon.101, i32 }
%union.anon.101 = type { i8* }
%struct.sock_cgroup_data = type {}
%struct.sock_reuseport = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.127, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.127 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.mtd_info = type opaque
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
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
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6, [48 x i8] }
%struct.anon.6 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.142, %struct.list_head, %struct.list_head, %union.anon.143 }
%struct.lockref = type { %union.anon.140 }
%union.anon.140 = type { i64 }
%union.anon.142 = type { %struct.list_head }
%union.anon.143 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.134, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.135, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.136, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.139, i32, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%union.anon.134 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.135 = type { %struct.callback_head }
%union.anon.136 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, {}* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.139 = type { %struct.pipe_inode_info* }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.35 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.137 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.137 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.eventpoll = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, %struct.rwlock_t, %struct.rb_root_cached, %struct.epitem*, %struct.wakeup_source*, %struct.user_struct*, %struct.file*, i64, %struct.hlist_head }
%struct.epitem = type { %union.anon.163, %struct.list_head, %struct.epitem*, %struct.epoll_filefd, %struct.eppoll_entry*, %struct.eventpoll*, %struct.hlist_node, %struct.wakeup_source*, %struct.epoll_event }
%union.anon.163 = type { %struct.rb_node }
%struct.epoll_filefd = type <{ %struct.file*, i32 }>
%struct.eppoll_entry = type { %struct.eppoll_entry*, %struct.epitem*, %struct.wait_queue_entry, %struct.wait_queue_head* }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.epoll_event = type { i32, i64 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.wake_irq = type opaque
%struct.epitems_head = type { %struct.hlist_head, %struct.epitems_head* }
%struct.pt_regs = type { %union.anon.164, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.164 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.ep_pqueue = type { %struct.poll_table_struct, %struct.epitem* }
%struct.__kernel_timespec = type { i64, i64 }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.name_snapshot = type { %struct.qstr, [32 x i8] }

@.str = private unnamed_addr constant [17 x i8] c"max_user_watches\00", align 1
@max_user_watches = internal global i64 0, section ".data..read_mostly", align 8
@long_zero = internal global i64 0, align 8
@long_max = internal global i64 9223372036854775807, align 8
@epoll_table = dso_local local_unnamed_addr global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* bitcast (i64* @max_user_watches to i8*), i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i64* @long_zero to i8*), i8* bitcast (i64* @long_max to i8*) }, %struct.ctl_table zeroinitializer], align 8
@epmutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @epmutex to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @epmutex to i8*), i64 16) to %struct.list_head*) } }, align 8
@loop_check_gen = internal unnamed_addr global i64 0, align 8
@__UNIQUE_ID___addressable_eventpoll_init663 = internal global i8* bitcast (i32 ()* @eventpoll_init to i8*), section ".discard.addressable", align 8
@pwq_cache = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@ephead_cache = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@epi_cache = internal unnamed_addr global %struct.kmem_cache* null, section ".data..read_mostly", align 8
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"[eventpoll]\00", align 1
@eventpoll_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @ep_eventpoll_poll, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @ep_eventpoll_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* @ep_show_fdinfo, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@ep_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&ep->mtx\00", align 1
@ep_alloc.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"&ep->wq\00", align 1
@ep_alloc.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"&ep->poll_wait\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@.str.7 = private unnamed_addr constant [61 x i8] c"tfd: %8d events: %8x data: %16llx  pos:%lli ino:%lx sdev:%x\0A\00", align 1
@inserting_into = internal unnamed_addr global %struct.eventpoll* null, align 8
@tfile_check_list = internal unnamed_addr global %struct.epitems_head* inttoptr (i64 -1 to %struct.epitems_head*), align 8
@path_count = internal unnamed_addr global [5 x i32] zeroinitializer, align 4
@path_limits = internal unnamed_addr constant [5 x i32] [i32 1000, i32 500, i32 100, i32 50, i32 10], align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"eventpoll_epi\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"eventpoll_pwq\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ep_head\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_eventpoll_init663 to i8*)], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @eventpoll_release_file(%struct.file* nocapture noundef readonly %file) local_unnamed_addr #1 {
entry:
  call void @mutex_lock(%struct.mutex* noundef nonnull @epmutex) #15
  %f_ep = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 16
  %0 = load %struct.hlist_head*, %struct.hlist_head** %f_ep, align 8
  %tobool.not = icmp eq %struct.hlist_head* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %0, i64 0, i32 0
  %1 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool5.not = icmp eq %struct.hlist_node* %1, null
  %add.ptr45 = getelementptr %struct.hlist_node, %struct.hlist_node* %1, i64 -5
  %tobool7.not4850 = icmp eq %struct.hlist_node* %add.ptr45, null
  %tobool7.not48 = or i1 %tobool5.not, %tobool7.not4850
  br i1 %tobool7.not48, label %cleanup, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.end
  %2 = bitcast %struct.hlist_node* %add.ptr45 to %struct.epitem*
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %land.rhs
  %epi.049 = phi %struct.epitem* [ %spec.select47, %land.rhs ], [ %2, %land.rhs.preheader ]
  %next8 = getelementptr inbounds %struct.epitem, %struct.epitem* %epi.049, i64 0, i32 6, i32 0
  %3 = load %struct.hlist_node*, %struct.hlist_node** %next8, align 8
  %ep11 = getelementptr inbounds %struct.epitem, %struct.epitem* %epi.049, i64 0, i32 5
  %4 = load %struct.eventpoll*, %struct.eventpoll** %ep11, align 8
  %mtx = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %4, i64 0, i32 0
  call void @mutex_lock(%struct.mutex* noundef %mtx) #15
  call fastcc void @ep_remove(%struct.eventpoll* noundef %4, %struct.epitem* noundef nonnull %epi.049) #16
  call void @mutex_unlock(%struct.mutex* noundef %mtx) #15
  %tobool15.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr2244 = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -5
  %5 = bitcast %struct.hlist_node* %add.ptr2244 to %struct.epitem*
  %spec.select47 = select i1 %tobool15.not, %struct.epitem* null, %struct.epitem* %5
  %tobool7.not = icmp eq %struct.epitem* %spec.select47, null
  br i1 %tobool7.not, label %cleanup, label %land.rhs

cleanup:                                          ; preds = %land.rhs, %if.end, %entry
  call void @mutex_unlock(%struct.mutex* noundef nonnull @epmutex) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ep_remove(%struct.eventpoll* noundef %ep, %struct.epitem* noundef %epi) unnamed_addr #1 {
entry:
  %file1 = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 3, i32 0
  %0 = load %struct.file*, %struct.file** %file1, align 8
  call fastcc void @ep_unregister_pollwait(%struct.epitem* noundef %epi) #16
  %rlock.i = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 4, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %f_ep = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 16
  %1 = load %struct.hlist_head*, %struct.hlist_head** %f_ep, align 8
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %1, i64 0, i32 0
  %2 = load %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %fllink = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 6
  %cmp = icmp eq %struct.hlist_node* %2, %fllink
  br i1 %cmp, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %entry
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %2, i64 0, i32 0
  %3 = load %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %3, null
  br i1 %tobool.not, label %if.then, label %if.end18

if.then:                                          ; preds = %land.lhs.true
  store %struct.hlist_head* null, %struct.hlist_head** %f_ep, align 8
  %call = call fastcc i32 @is_file_epoll(%struct.file* noundef %0) #16
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then5, label %if.end18

if.then5:                                         ; preds = %if.then
  %next9 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %1, i64 1
  %4 = bitcast %struct.hlist_head* %next9 to %struct.epitems_head**
  %5 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.epitems_head** elementtype(%struct.epitems_head*) %4) #17, !srcloc !8
  %tobool15.not = icmp eq i64 %5, 0
  %6 = bitcast %struct.hlist_head* %1 to %struct.epitems_head*
  %spec.select = select i1 %tobool15.not, %struct.epitems_head* %6, %struct.epitems_head* null
  br label %if.end18

if.end18:                                         ; preds = %if.then, %if.then5, %land.lhs.true, %entry
  %to_free.1 = phi %struct.epitems_head* [ null, %land.lhs.true ], [ null, %if.then ], [ %spec.select, %if.then5 ], [ null, %entry ]
  call fastcc void @hlist_del_rcu(%struct.hlist_node* noundef %fllink) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  call fastcc void @free_ephead(%struct.epitems_head* noundef %to_free.1) #16
  %rbn = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 0, i32 0
  %rbr = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 5
  call fastcc void @rb_erase_cached(%struct.rb_node* noundef %rbn, %struct.rb_root_cached* noundef %rbr) #16
  %lock = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 4
  call fastcc void @__raw_write_lock_irq(%struct.rwlock_t* noundef %lock) #16
  %call22 = call fastcc i32 @ep_is_linked(%struct.epitem* noundef %epi) #16
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end18
  %rdllink = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 1
  call fastcc void @list_del_init(%struct.list_head* noundef %rdllink) #16
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end18
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) #16
  %call27 = call fastcc %struct.wakeup_source* @ep_wakeup_source(%struct.epitem* noundef %epi) #16
  %rcu = bitcast %struct.epitem* %epi to %struct.callback_head*
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @epi_rcu_free) #15
  %user = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 8
  %7 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  %epoll_watches = getelementptr inbounds %struct.user_struct, %struct.user_struct* %7, i64 0, i32 1
  call fastcc void @percpu_counter_dec(%struct.percpu_counter* noundef %epoll_watches) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_epoll_create1(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_epoll_create1(i64 noundef %0) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_epoll_create1(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %call = call fastcc i64 @__do_sys_epoll_create1(i32 noundef %conv) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_epoll_create(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_epoll_create(i64 noundef %0) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_epoll_create(i64 noundef %size) unnamed_addr #1 {
entry:
  %conv = trunc i64 %size to i32
  %call = call fastcc i64 @__do_sys_epoll_create(i32 noundef %conv) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @do_epoll_ctl(i32 noundef %epfd, i32 noundef %op, i32 noundef %fd, %struct.epoll_event* nocapture noundef %epds, i1 noundef %nonblock) local_unnamed_addr #1 {
entry:
  %call = call fastcc [2 x i64] @fdget(i32 noundef %epfd) #16
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %0 = inttoptr i64 %call.fca.0.extract to %struct.file*
  %tobool.not = icmp eq i64 %call.fca.0.extract, 0
  br i1 %tobool.not, label %error_return, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc [2 x i64] @fdget(i32 noundef %fd) #16
  %call2.fca.0.extract = extractvalue [2 x i64] %call2, 0
  %1 = inttoptr i64 %call2.fca.0.extract to %struct.file*
  %tobool4.not = icmp eq i64 %call2.fca.0.extract, 0
  br i1 %tobool4.not, label %error_fput, label %if.end6

if.end6:                                          ; preds = %if.end
  %call8 = call fastcc i1 @file_can_poll(%struct.file* noundef nonnull %1) #16
  br i1 %call8, label %if.end10, label %if.end115

if.end10:                                         ; preds = %if.end6
  %call11 = call fastcc i32 @ep_op_has_event(i32 noundef %op) #16
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  call fastcc void @ep_take_care_of_epollwakeup(%struct.epoll_event* noundef %epds) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10
  %cmp = icmp eq %struct.file* %0, %1
  br i1 %cmp, label %if.end115, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %call18 = call fastcc i32 @is_file_epoll(%struct.file* noundef nonnull %0) #16
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end115, label %if.end21

if.end21:                                         ; preds = %lor.lhs.false
  br i1 %tobool12.not, label %if.end40, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end21
  %events = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %epds, i64 0, i32 0
  %2 = load i32, i32* %events, align 8
  %and = and i32 %2, 268435456
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end40, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  switch i32 %op, label %if.end40 [
    i32 3, label %if.end115
    i32 1, label %land.lhs.true30
  ]

land.lhs.true30:                                  ; preds = %if.then25
  %call32 = call fastcc i32 @is_file_epoll(%struct.file* noundef nonnull %1) #16
  %tobool33.not = icmp eq i32 %call32, 0
  %and36 = and i32 %2, 1342177250
  %tobool37.not = icmp eq i32 %and36, 0
  %or.cond = select i1 %tobool33.not, i1 %tobool37.not, i1 false
  br i1 %or.cond, label %if.end40, label %if.end115

if.end40:                                         ; preds = %land.lhs.true30, %if.then25, %land.lhs.true, %if.end21
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 15
  %3 = bitcast i8** %private_data to %struct.eventpoll**
  %4 = load %struct.eventpoll*, %struct.eventpoll** %3, align 8
  %mtx = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %4, i64 0, i32 0
  %call43 = call fastcc i32 @epoll_mutex_lock(%struct.mutex* noundef %mtx, i1 noundef %nonblock) #16
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end115

if.end46:                                         ; preds = %if.end40
  %cmp47 = icmp eq i32 %op, 1
  br i1 %cmp47, label %do.end, label %if.end83

do.end:                                           ; preds = %if.end46
  %f_ep = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 16
  %5 = load volatile %struct.hlist_head*, %struct.hlist_head** %f_ep, align 8
  %tobool51.not = icmp eq %struct.hlist_head* %5, null
  br i1 %tobool51.not, label %lor.lhs.false52, label %if.then58

lor.lhs.false52:                                  ; preds = %do.end
  %gen = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %4, i64 0, i32 10
  %6 = load i64, i64* %gen, align 8
  %7 = load i64, i64* @loop_check_gen, align 8
  %cmp53 = icmp eq i64 %6, %7
  br i1 %cmp53, label %if.then58, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false52
  %call56 = call fastcc i32 @is_file_epoll(%struct.file* noundef nonnull %1) #16
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end83.thread, label %if.then58

if.then58:                                        ; preds = %lor.lhs.false54, %lor.lhs.false52, %do.end
  call void @mutex_unlock(%struct.mutex* noundef %mtx) #15
  %call61 = call fastcc i32 @epoll_mutex_lock(%struct.mutex* noundef nonnull @epmutex, i1 noundef %nonblock) #16
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end115

if.end64:                                         ; preds = %if.then58
  %8 = load i64, i64* @loop_check_gen, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* @loop_check_gen, align 8
  %call66 = call fastcc i32 @is_file_epoll(%struct.file* noundef nonnull %1) #16
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end75, label %if.then68

if.then68:                                        ; preds = %if.end64
  %private_data70 = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 15
  %9 = bitcast i8** %private_data70 to %struct.eventpoll**
  %10 = load %struct.eventpoll*, %struct.eventpoll** %9, align 8
  %call71 = call fastcc i32 @ep_loop_check(%struct.eventpoll* noundef %4, %struct.eventpoll* noundef %10) #16
  %cmp72.not = icmp eq i32 %call71, 0
  br i1 %cmp72.not, label %if.end75, label %if.then113

if.end75:                                         ; preds = %if.then68, %if.end64
  %call78 = call fastcc i32 @epoll_mutex_lock(%struct.mutex* noundef %mtx, i1 noundef %nonblock) #16
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end83.thread, label %if.then113

if.end83.thread:                                  ; preds = %lor.lhs.false54, %if.end75
  %tobool112.not = phi i1 [ true, %lor.lhs.false54 ], [ false, %if.end75 ]
  %full_check.0.ph = phi i32 [ 0, %lor.lhs.false54 ], [ 1, %if.end75 ]
  %call85186 = call fastcc %struct.epitem* @ep_find(%struct.eventpoll* noundef %4, %struct.file* noundef nonnull %1, i32 noundef %fd) #16
  %tobool86.not = icmp eq %struct.epitem* %call85186, null
  br i1 %tobool86.not, label %if.then87, label %error_tgt_fput

if.end83:                                         ; preds = %if.end46
  %call85 = call fastcc %struct.epitem* @ep_find(%struct.eventpoll* noundef %4, %struct.file* noundef nonnull %1, i32 noundef %fd) #16
  switch i32 %op, label %error_tgt_fput.thread202 [
    i32 3, label %sw.bb98
    i32 2, label %sw.bb92
  ]

if.then87:                                        ; preds = %if.end83.thread
  %events88 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %epds, i64 0, i32 0
  %11 = load i32, i32* %events88, align 8
  %or = or i32 %11, 24
  store i32 %or, i32* %events88, align 8
  %call90 = call fastcc i32 @ep_insert(%struct.eventpoll* noundef %4, %struct.epoll_event* noundef %epds, %struct.file* noundef nonnull %1, i32 noundef %fd, i32 noundef %full_check.0.ph) #16
  br label %error_tgt_fput

sw.bb92:                                          ; preds = %if.end83
  %tobool93.not = icmp eq %struct.epitem* %call85, null
  br i1 %tobool93.not, label %error_tgt_fput.thread202, label %if.then94

if.then94:                                        ; preds = %sw.bb92
  call fastcc void @ep_remove(%struct.eventpoll* noundef %4, %struct.epitem* noundef nonnull %call85) #16
  br label %error_tgt_fput.thread202

sw.bb98:                                          ; preds = %if.end83
  %tobool99.not = icmp eq %struct.epitem* %call85, null
  br i1 %tobool99.not, label %error_tgt_fput.thread202, label %if.then100

if.then100:                                       ; preds = %sw.bb98
  %events101 = getelementptr inbounds %struct.epitem, %struct.epitem* %call85, i64 0, i32 8, i32 0
  %12 = load i32, i32* %events101, align 8
  %and102 = and i32 %12, 268435456
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.then104, label %error_tgt_fput.thread202

if.then104:                                       ; preds = %if.then100
  %events105 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %epds, i64 0, i32 0
  %13 = load i32, i32* %events105, align 8
  %or106 = or i32 %13, 24
  store i32 %or106, i32* %events105, align 8
  call fastcc void @ep_modify(%struct.eventpoll* noundef %4, %struct.epitem* noundef nonnull %call85, %struct.epoll_event* noundef %epds) #16
  br label %error_tgt_fput.thread202

error_tgt_fput.thread202:                         ; preds = %if.end83, %if.then100, %if.then104, %if.then94, %sw.bb92, %sw.bb98
  %error.0.ph = phi i32 [ -2, %sw.bb98 ], [ -2, %sw.bb92 ], [ 0, %if.then94 ], [ 0, %if.then104 ], [ -22, %if.then100 ], [ -22, %if.end83 ]
  call void @mutex_unlock(%struct.mutex* noundef %mtx) #15
  br label %if.end115

error_tgt_fput:                                   ; preds = %if.then87, %if.end83.thread
  %error.0 = phi i32 [ %call90, %if.then87 ], [ -17, %if.end83.thread ]
  call void @mutex_unlock(%struct.mutex* noundef %mtx) #15
  br i1 %tobool112.not, label %if.end115, label %if.then113

if.then113:                                       ; preds = %if.end75, %if.then68, %error_tgt_fput
  %error.1200 = phi i32 [ %error.0, %error_tgt_fput ], [ %call78, %if.end75 ], [ -40, %if.then68 ]
  call fastcc void @clear_tfile_check_list() #16
  %14 = load i64, i64* @loop_check_gen, align 8
  %inc114 = add i64 %14, 1
  store i64 %inc114, i64* @loop_check_gen, align 8
  call void @mutex_unlock(%struct.mutex* noundef nonnull @epmutex) #15
  br label %if.end115

if.end115:                                        ; preds = %if.end6, %lor.lhs.false, %if.then58, %if.end40, %land.lhs.true30, %if.then25, %if.end14, %error_tgt_fput.thread202, %if.then113, %error_tgt_fput
  %error.1193 = phi i32 [ %error.1200, %if.then113 ], [ %error.0, %error_tgt_fput ], [ %error.0.ph, %error_tgt_fput.thread202 ], [ -1, %if.end6 ], [ -22, %lor.lhs.false ], [ %call61, %if.then58 ], [ %call43, %if.end40 ], [ -22, %land.lhs.true30 ], [ -22, %if.then25 ], [ -22, %if.end14 ]
  call fastcc void @fdput([2 x i64] %call2) #16
  br label %error_fput

error_fput:                                       ; preds = %if.end, %if.end115
  %error.2 = phi i32 [ %error.1193, %if.end115 ], [ -9, %if.end ]
  call fastcc void @fdput([2 x i64] %call) #16
  br label %error_return

error_return:                                     ; preds = %entry, %error_fput
  %error.3 = phi i32 [ %error.2, %error_fput ], [ -9, %entry ]
  ret i32 %error.3
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc [2 x i64] @fdget(i32 noundef %fd) unnamed_addr #1 {
entry:
  %call = call i64 @__fdget(i32 noundef %fd) #15
  %call1 = call fastcc [2 x i64] @__to_fd(i64 noundef %call) #16
  ret [2 x i64] %call1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @file_can_poll(%struct.file* nocapture noundef readonly %file) unnamed_addr #5 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %poll = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 9
  %1 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %poll, align 8
  %tobool = icmp ne i32 (%struct.file*, %struct.poll_table_struct*)* %1, null
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @ep_op_has_event(i32 noundef %op) unnamed_addr #6 {
entry:
  %cmp = icmp ne i32 %op, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @ep_take_care_of_epollwakeup(%struct.epoll_event* nocapture noundef %epev) unnamed_addr #7 {
entry:
  %events = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %epev, i64 0, i32 0
  %0 = load i32, i32* %events, align 8
  %and = and i32 %0, -536870913
  store i32 %and, i32* %events, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @is_file_epoll(%struct.file* nocapture noundef readonly %f) unnamed_addr #5 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %cmp = icmp eq %struct.file_operations* %0, @eventpoll_fops
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @epoll_mutex_lock(%struct.mutex* noundef %mutex, i1 noundef %nonblock) unnamed_addr #1 {
entry:
  br i1 %nonblock, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef %mutex) #15
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @mutex_trylock(%struct.mutex* noundef %mutex) #15
  %tobool1.not = icmp eq i32 %call, 0
  %. = select i1 %tobool1.not, i32 -11, i32 0
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ep_loop_check(%struct.eventpoll* noundef %ep, %struct.eventpoll* noundef %to) unnamed_addr #1 {
entry:
  store %struct.eventpoll* %ep, %struct.eventpoll** @inserting_into, align 8
  %call = call fastcc i32 @ep_loop_check_proc(%struct.eventpoll* noundef %to, i32 noundef 0) #16
  ret i32 %call
}

; Function Attrs: nofree noinline nosync nounwind null_pointer_is_valid
define internal fastcc %struct.epitem* @ep_find(%struct.eventpoll* nocapture noundef readonly %ep, %struct.file* noundef %file, i32 noundef %fd) unnamed_addr #8 {
entry:
  %ffd = alloca %struct.epoll_filefd, align 1
  %0 = bitcast %struct.epoll_filefd* %ffd to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %0, i8 0, i64 12, i1 false), !annotation !9
  call fastcc void @ep_set_ffd(%struct.epoll_filefd* noundef nonnull %ffd, %struct.file* noundef %file, i32 noundef %fd) #16
  %rb_node = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 5, i32 0, i32 0
  %rbp.018 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not19 = icmp eq %struct.rb_node* %rbp.018, null
  br i1 %tobool.not19, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %if.end5
  %rbp.020 = phi %struct.rb_node* [ %rbp.0, %if.end5 ], [ %rbp.018, %entry ]
  %ffd1 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rbp.020, i64 2
  %1 = bitcast %struct.rb_node* %ffd1 to %struct.epoll_filefd*
  %call = call fastcc i32 @ep_cmp_ffd(%struct.epoll_filefd* noundef nonnull %ffd, %struct.epoll_filefd* noundef %1) #16
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rbp.020, i64 0, i32 1
  br label %if.end5

if.else:                                          ; preds = %for.body
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %for.end.split.loop.exit

if.then3:                                         ; preds = %if.else
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rbp.020, i64 0, i32 2
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then
  %rbp.1.in = phi %struct.rb_node** [ %rb_right, %if.then ], [ %rb_left, %if.then3 ]
  %rbp.0 = load %struct.rb_node*, %struct.rb_node** %rbp.1.in, align 8
  %tobool.not = icmp eq %struct.rb_node* %rbp.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end.split.loop.exit:                          ; preds = %if.else
  %2 = bitcast %struct.rb_node* %rbp.020 to %struct.epitem*
  br label %for.end

for.end:                                          ; preds = %if.end5, %entry, %for.end.split.loop.exit
  %epir.0 = phi %struct.epitem* [ %2, %for.end.split.loop.exit ], [ null, %entry ], [ null, %if.end5 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #17
  ret %struct.epitem* %epir.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ep_insert(%struct.eventpoll* noundef %ep, %struct.epoll_event* nocapture noundef readonly %event, %struct.file* noundef %tfile, i32 noundef %fd, i32 noundef %full_check) unnamed_addr #1 {
entry:
  %epq = alloca %struct.ep_pqueue, align 8
  %0 = bitcast %struct.ep_pqueue* %epq to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !annotation !9
  %call = call fastcc i32 @is_file_epoll(%struct.file* noundef %tfile) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, %struct.file* %tfile, i64 0, i32 15
  %1 = bitcast i8** %private_data to %struct.eventpoll**
  %2 = load %struct.eventpoll*, %struct.eventpoll** %1, align 8
  br label %do.end

do.end:                                           ; preds = %entry, %if.then
  %tep.0 = phi %struct.eventpoll* [ %2, %if.then ], [ null, %entry ]
  %user = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 8
  %3 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  %epoll_watches = getelementptr inbounds %struct.user_struct, %struct.user_struct* %3, i64 0, i32 1
  %4 = load i64, i64* @max_user_watches, align 8
  %call1 = call fastcc i32 @percpu_counter_compare(%struct.percpu_counter* noundef %epoll_watches, i64 noundef %4) #16
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %cleanup, label %if.end5, !prof !7

if.end5:                                          ; preds = %do.end
  %5 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  %epoll_watches7 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %5, i64 0, i32 1
  call fastcc void @percpu_counter_inc(%struct.percpu_counter* noundef %epoll_watches7) #16
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** @epi_cache, align 8
  %call8 = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %6) #16
  %7 = bitcast i8* %call8 to %struct.epitem*
  %tobool9.not = icmp eq i8* %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end5
  %8 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  %epoll_watches12 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %8, i64 0, i32 1
  call fastcc void @percpu_counter_dec(%struct.percpu_counter* noundef %epoll_watches12) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %rdllink = getelementptr inbounds i8, i8* %call8, i64 24
  %9 = bitcast i8* %rdllink to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %9) #16
  %ep14 = getelementptr inbounds i8, i8* %call8, i64 72
  %10 = bitcast i8* %ep14 to %struct.eventpoll**
  store %struct.eventpoll* %ep, %struct.eventpoll** %10, align 8
  %ffd = getelementptr inbounds i8, i8* %call8, i64 48
  %11 = bitcast i8* %ffd to %struct.epoll_filefd*
  call fastcc void @ep_set_ffd(%struct.epoll_filefd* noundef %11, %struct.file* noundef %tfile, i32 noundef %fd) #16
  %event15 = getelementptr inbounds i8, i8* %call8, i64 104
  %12 = bitcast %struct.epoll_event* %event to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %event15, i8* noundef align 8 dereferenceable(16) %12, i64 16, i1 false)
  %next = getelementptr inbounds i8, i8* %call8, i64 40
  %13 = bitcast i8* %next to %struct.epitem**
  store %struct.epitem* inttoptr (i64 -1 to %struct.epitem*), %struct.epitem** %13, align 8
  %tobool16.not = icmp eq %struct.eventpoll* %tep.0, null
  br i1 %tobool16.not, label %if.end18.thread, label %if.end18

if.end18:                                         ; preds = %if.end13
  %mtx = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %tep.0, i64 0, i32 0
  call void @mutex_lock(%struct.mutex* noundef %mtx) #15
  %call19 = call fastcc i32 @attach_epitem(%struct.file* noundef %tfile, %struct.epitem* noundef nonnull %7) #16
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then31, label %if.end44, !prof !7

if.end18.thread:                                  ; preds = %if.end13
  %call19161 = call fastcc i32 @attach_epitem(%struct.file* noundef %tfile, %struct.epitem* noundef nonnull %7) #16
  %cmp20162 = icmp slt i32 %call19161, 0
  br i1 %cmp20162, label %if.end33, label %if.end36, !prof !7

if.then31:                                        ; preds = %if.end18
  call void @mutex_unlock(%struct.mutex* noundef %mtx) #15
  br label %if.end33

if.end33:                                         ; preds = %if.end18.thread, %if.then31
  %14 = load %struct.kmem_cache*, %struct.kmem_cache** @epi_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %14, i8* noundef nonnull %call8) #15
  %15 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  %epoll_watches35 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %15, i64 0, i32 1
  call fastcc void @percpu_counter_dec(%struct.percpu_counter* noundef %epoll_watches35) #16
  br label %cleanup

if.end36:                                         ; preds = %if.end18.thread
  %tobool37 = icmp eq i32 %full_check, 0
  br i1 %tobool37, label %if.end40.thread.thread, label %if.end40.thread

if.end40.thread.thread:                           ; preds = %if.end36
  call fastcc void @ep_rbtree_insert(%struct.eventpoll* noundef %ep, %struct.epitem* noundef nonnull %7) #16
  br label %if.end57

if.end40.thread:                                  ; preds = %if.end36
  call fastcc void @list_file(%struct.file* noundef %tfile) #16
  call fastcc void @ep_rbtree_insert(%struct.eventpoll* noundef %ep, %struct.epitem* noundef nonnull %7) #16
  br label %land.rhs

if.end44:                                         ; preds = %if.end18
  %tobool37163 = icmp eq i32 %full_check, 0
  call fastcc void @ep_rbtree_insert(%struct.eventpoll* noundef %ep, %struct.epitem* noundef nonnull %7) #16
  call void @mutex_unlock(%struct.mutex* noundef %mtx) #15
  br i1 %tobool37163, label %if.end57, label %land.rhs

land.rhs:                                         ; preds = %if.end40.thread, %if.end44
  %call46 = call fastcc i32 @reverse_path_check() #16
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end57, label %if.then55, !prof !10

if.then55:                                        ; preds = %land.rhs
  call fastcc void @ep_remove(%struct.eventpoll* noundef %ep, %struct.epitem* noundef nonnull %7) #16
  br label %cleanup

if.end57:                                         ; preds = %if.end40.thread.thread, %if.end44, %land.rhs
  %events = bitcast i8* %event15 to i32*
  %16 = load i32, i32* %events, align 8
  %and = and i32 %16, 536870912
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %if.end66, label %if.then60

if.then60:                                        ; preds = %if.end57
  call fastcc void @ep_create_wakeup_source(%struct.epitem* noundef nonnull %7) #16
  call fastcc void @ep_remove(%struct.eventpoll* noundef %ep, %struct.epitem* noundef nonnull %7) #16
  br label %cleanup

if.end66:                                         ; preds = %if.end57
  %epi67 = getelementptr inbounds %struct.ep_pqueue, %struct.ep_pqueue* %epq, i64 0, i32 1
  %17 = bitcast %struct.epitem** %epi67 to i8**
  store i8* %call8, i8** %17, align 8
  %pt = getelementptr inbounds %struct.ep_pqueue, %struct.ep_pqueue* %epq, i64 0, i32 0
  call fastcc void @init_poll_funcptr(%struct.poll_table_struct* noundef nonnull %pt, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* noundef nonnull @ep_ptable_queue_proc) #16
  %call69 = call fastcc i32 @ep_item_poll(%struct.epitem* noundef nonnull %7, %struct.poll_table_struct* noundef nonnull %pt, i32 noundef 1) #16
  %18 = load %struct.epitem*, %struct.epitem** %epi67, align 8
  %tobool71.not = icmp eq %struct.epitem* %18, null
  br i1 %tobool71.not, label %if.then81, label %if.end83, !prof !7

if.then81:                                        ; preds = %if.end66
  call fastcc void @ep_remove(%struct.eventpoll* noundef %ep, %struct.epitem* noundef nonnull %7) #16
  br label %cleanup

if.end83:                                         ; preds = %if.end66
  %lock = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 4
  call fastcc void @__raw_write_lock_irq(%struct.rwlock_t* noundef %lock) #16
  %tobool84.not = icmp eq i32 %call69, 0
  br i1 %tobool84.not, label %if.end103.critedge160, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %if.end83
  %call86 = call fastcc i32 @ep_is_linked(%struct.epitem* noundef nonnull %7) #16
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then88, label %if.end103.critedge

if.then88:                                        ; preds = %land.lhs.true85
  %rdllist = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 3
  call fastcc void @list_add_tail(%struct.list_head* noundef %9, %struct.list_head* noundef %rdllist) #16
  call fastcc void @ep_pm_stay_awake(%struct.epitem* noundef nonnull %7) #16
  %wq = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 1
  %call90 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq) #16
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end94, label %if.then92

if.then92:                                        ; preds = %if.then88
  call void @__wake_up(%struct.wait_queue_head* noundef %wq, i32 noundef 3, i32 noundef 1, i8* noundef null) #15
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.then88
  %poll_wait = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 2
  %call95 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %poll_wait) #16
  %tobool96.not = icmp eq i32 %call95, 0
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) #16
  br i1 %tobool96.not, label %cleanup, label %if.then102

if.then102:                                       ; preds = %if.end94
  call fastcc void @ep_poll_safewake(%struct.eventpoll* noundef %ep) #16
  br label %cleanup

if.end103.critedge:                               ; preds = %land.lhs.true85
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) #16
  br label %cleanup

if.end103.critedge160:                            ; preds = %if.end83
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then102, %if.end103.critedge, %if.end103.critedge160, %do.end, %if.then81, %if.then60, %if.then55, %if.end33, %if.then10
  %retval.0 = phi i32 [ -12, %if.end33 ], [ -22, %if.then55 ], [ -12, %if.then60 ], [ -12, %if.then81 ], [ -12, %if.then10 ], [ -28, %do.end ], [ 0, %if.end103.critedge160 ], [ 0, %if.end103.critedge ], [ 0, %if.then102 ], [ 0, %if.end94 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ep_modify(%struct.eventpoll* noundef %ep, %struct.epitem* noundef %epi, %struct.epoll_event* nocapture noundef readonly %event) unnamed_addr #1 {
entry:
  %pt = alloca %struct.poll_table_struct, align 8
  %0 = bitcast %struct.poll_table_struct* %pt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  call fastcc void @init_poll_funcptr(%struct.poll_table_struct* noundef nonnull %pt, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* noundef null) #16
  %events = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %event, i64 0, i32 0
  %1 = load i32, i32* %events, align 8
  %events2 = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 8, i32 0
  store i32 %1, i32* %events2, align 8
  %data = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %event, i64 0, i32 1
  %2 = load i64, i64* %data, align 8
  %data4 = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 8, i32 1
  store i64 %2, i64* %data4, align 8
  %and = and i32 %1, 536870912
  %tobool.not = icmp eq i32 %and, 0
  %call9 = call fastcc i1 @ep_has_wakeup_source(%struct.epitem* noundef %epi) #16
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %call9, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.then
  call fastcc void @ep_create_wakeup_source(%struct.epitem* noundef %epi) #16
  br label %if.end12

if.else:                                          ; preds = %entry
  br i1 %call9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  call fastcc void @ep_destroy_wakeup_source(%struct.epitem* noundef %epi) #16
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10, %if.then, %if.then7
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !11
  %call13 = call fastcc i32 @ep_item_poll(%struct.epitem* noundef %epi, %struct.poll_table_struct* noundef nonnull %pt, i32 noundef 1) #16
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end33, label %if.then15

if.then15:                                        ; preds = %if.end12
  %lock = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 4
  call fastcc void @__raw_write_lock_irq(%struct.rwlock_t* noundef %lock) #16
  %call16 = call fastcc i32 @ep_is_linked(%struct.epitem* noundef %epi) #16
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end30.thread3

if.then18:                                        ; preds = %if.then15
  %rdllink = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 1
  %rdllist = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 3
  call fastcc void @list_add_tail(%struct.list_head* noundef %rdllink, %struct.list_head* noundef %rdllist) #16
  call fastcc void @ep_pm_stay_awake(%struct.epitem* noundef %epi) #16
  %wq = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 1
  %call19 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq) #16
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then18
  call void @__wake_up(%struct.wait_queue_head* noundef %wq, i32 noundef 3, i32 noundef 1, i8* noundef null) #15
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18
  %poll_wait = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 2
  %call24 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %poll_wait) #16
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end30.thread3, label %if.then32

if.end30.thread3:                                 ; preds = %if.then15, %if.end23
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) #16
  br label %if.end33

if.then32:                                        ; preds = %if.end23
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) #16
  call fastcc void @ep_poll_safewake(%struct.eventpoll* noundef %ep) #16
  br label %if.end33

if.end33:                                         ; preds = %if.end12, %if.end30.thread3, %if.then32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_tfile_check_list() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %0 = load %struct.epitems_head*, %struct.epitems_head** @tfile_check_list, align 8
  %cmp.not3 = icmp eq %struct.epitems_head* %0, inttoptr (i64 -1 to %struct.epitems_head*)
  br i1 %cmp.not3, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %1 = phi %struct.epitems_head* [ %3, %while.body ], [ %0, %entry ]
  %next = getelementptr inbounds %struct.epitems_head, %struct.epitems_head* %1, i64 0, i32 1
  %2 = load %struct.epitems_head*, %struct.epitems_head** %next, align 8
  store %struct.epitems_head* %2, %struct.epitems_head** @tfile_check_list, align 8
  call fastcc void @unlist_file(%struct.epitems_head* noundef %1) #16
  %3 = load %struct.epitems_head*, %struct.epitems_head** @tfile_check_list, align 8
  %cmp.not = icmp eq %struct.epitems_head* %3, inttoptr (i64 -1 to %struct.epitems_head*)
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  call fastcc void @rcu_read_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fdput([2 x i64] %fd.coerce) unnamed_addr #1 {
entry:
  %fd.coerce.fca.1.extract = extractvalue [2 x i64] %fd.coerce, 1
  %and1 = and i64 %fd.coerce.fca.1.extract, 1
  %tobool.not = icmp eq i64 %and1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %fd.coerce.fca.0.extract = extractvalue [2 x i64] %fd.coerce, 0
  %0 = inttoptr i64 %fd.coerce.fca.0.extract to %struct.file*
  call void @fput(%struct.file* noundef %0) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_epoll_ctl(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_epoll_ctl(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_epoll_ctl(i64 noundef %epfd, i64 noundef %op, i64 noundef %fd, i64 noundef %event) unnamed_addr #1 {
entry:
  %conv = trunc i64 %epfd to i32
  %conv1 = trunc i64 %op to i32
  %conv2 = trunc i64 %fd to i32
  %0 = inttoptr i64 %event to %struct.epoll_event*
  %call = call fastcc i64 @__do_sys_epoll_ctl(i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, %struct.epoll_event* noundef %0) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_epoll_wait(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %call = call fastcc i64 @__se_sys_epoll_wait(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_epoll_wait(i64 noundef %epfd, i64 noundef %events, i64 noundef %maxevents, i64 noundef %timeout) unnamed_addr #1 {
entry:
  %conv = trunc i64 %epfd to i32
  %0 = inttoptr i64 %events to %struct.epoll_event*
  %conv1 = trunc i64 %maxevents to i32
  %conv2 = trunc i64 %timeout to i32
  %call = call fastcc i64 @__do_sys_epoll_wait(i32 noundef %conv, %struct.epoll_event* noundef %0, i32 noundef %conv1, i32 noundef %conv2) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_epoll_pwait(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %arrayidx11 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 5
  %5 = load i64, i64* %arrayidx11, align 8
  %call = call fastcc i64 @__se_sys_epoll_pwait(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_epoll_pwait(i64 noundef %epfd, i64 noundef %events, i64 noundef %maxevents, i64 noundef %timeout, i64 noundef %sigmask, i64 noundef %sigsetsize) unnamed_addr #1 {
entry:
  %conv = trunc i64 %epfd to i32
  %0 = inttoptr i64 %events to %struct.epoll_event*
  %conv1 = trunc i64 %maxevents to i32
  %conv2 = trunc i64 %timeout to i32
  %1 = inttoptr i64 %sigmask to %struct.sigset_t*
  %call = call fastcc i64 @__do_sys_epoll_pwait(i32 noundef %conv, %struct.epoll_event* noundef %0, i32 noundef %conv1, i32 noundef %conv2, %struct.sigset_t* noundef %1, i64 noundef %sigsetsize) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_epoll_pwait2(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #1 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %arrayidx5 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx5, align 8
  %arrayidx7 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx7, align 8
  %arrayidx9 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx9, align 8
  %arrayidx11 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 5
  %5 = load i64, i64* %arrayidx11, align 8
  %call = call fastcc i64 @__se_sys_epoll_pwait2(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_epoll_pwait2(i64 noundef %epfd, i64 noundef %events, i64 noundef %maxevents, i64 noundef %timeout, i64 noundef %sigmask, i64 noundef %sigsetsize) unnamed_addr #1 {
entry:
  %conv = trunc i64 %epfd to i32
  %0 = inttoptr i64 %events to %struct.epoll_event*
  %conv1 = trunc i64 %maxevents to i32
  %1 = inttoptr i64 %timeout to %struct.__kernel_timespec*
  %2 = inttoptr i64 %sigmask to %struct.sigset_t*
  %call = call fastcc i64 @__do_sys_epoll_pwait2(i32 noundef %conv, %struct.epoll_event* noundef %0, i32 noundef %conv1, %struct.__kernel_timespec* noundef %1, %struct.sigset_t* noundef %2, i64 noundef %sigsetsize) #16
  ret i64 %call
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @eventpoll_init() #9 section ".init.text" {
entry:
  %si = alloca %struct.sysinfo, align 8
  %0 = bitcast %struct.sysinfo* %si to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %0, i8 0, i64 112, i1 false), !annotation !9
  call void @si_meminfo(%struct.sysinfo* noundef nonnull %si) #15
  %totalram = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %si, i64 0, i32 2
  %1 = load i64, i64* %totalram, align 8
  %totalhigh = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %si, i64 0, i32 10
  %2 = load i64, i64* %totalhigh, align 8
  %sub = sub i64 %1, %2
  %div = udiv i64 %sub, 25
  %shl = shl i64 %div, 12
  %div1 = udiv i64 %shl, 184
  store i64 %div1, i64* @max_user_watches, align 8
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 noundef 120, i32 noundef 0, i32 noundef 270336, void (i8*)* noundef null) #15
  store %struct.kmem_cache* %call, %struct.kmem_cache** @epi_cache, align 8
  %call12 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 noundef 64, i32 noundef 0, i32 noundef 262144, void (i8*)* noundef null) #15
  store %struct.kmem_cache* %call12, %struct.kmem_cache** @pwq_cache, align 8
  %call13 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 noundef 16, i32 noundef 0, i32 noundef 262144, void (i8*)* noundef null) #15
  store %struct.kmem_cache* %call13, %struct.kmem_cache** @ephead_cache, align 8
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #17
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ep_unregister_pollwait(%struct.epitem* nocapture noundef %epi) unnamed_addr #1 {
entry:
  %pwqlist = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 4
  %0 = load %struct.eppoll_entry*, %struct.eppoll_entry** %pwqlist, align 8
  %cmp.not1 = icmp eq %struct.eppoll_entry* %0, null
  br i1 %cmp.not1, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %1 = phi %struct.eppoll_entry* [ %5, %while.body ], [ %0, %entry ]
  %next = getelementptr inbounds %struct.eppoll_entry, %struct.eppoll_entry* %1, i64 0, i32 0
  %2 = load %struct.eppoll_entry*, %struct.eppoll_entry** %next, align 8
  store %struct.eppoll_entry* %2, %struct.eppoll_entry** %pwqlist, align 8
  call fastcc void @ep_remove_wait_queue(%struct.eppoll_entry* noundef nonnull %1) #16
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @pwq_cache, align 8
  %4 = bitcast %struct.eppoll_entry* %1 to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %3, i8* noundef nonnull %4) #15
  %5 = load %struct.eppoll_entry*, %struct.eppoll_entry** %pwqlist, align 8
  %cmp.not = icmp eq %struct.eppoll_entry* %5, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_rcu(%struct.hlist_node* noundef %n) unnamed_addr #10 {
entry:
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #16
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** inttoptr (i64 -2401263026318606046 to %struct.hlist_node**), %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_ephead(%struct.epitems_head* noundef %head) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.epitems_head* %head, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @ephead_cache, align 8
  %1 = bitcast %struct.epitems_head* %head to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef nonnull %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rb_erase_cached(%struct.rb_node* noundef %node, %struct.rb_root_cached* noundef %root) unnamed_addr #1 {
entry:
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %cmp = icmp eq %struct.rb_node* %0, %node
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.rb_node* @rb_next(%struct.rb_node* noundef %node) #15
  store %struct.rb_node* %call, %struct.rb_node** %rb_leftmost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  call void @rb_erase(%struct.rb_node* noundef %node, %struct.rb_root* noundef %rb_root) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_lock_irq(%struct.rwlock_t* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @arch_local_irq_disable() #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !12
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_write_lock(%struct.qrwlock* noundef %raw_lock) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @ep_is_linked(%struct.epitem* noundef %epi) unnamed_addr #11 {
entry:
  %rdllink = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %rdllink) #16
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) unnamed_addr #1 {
entry:
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_write_unlock(%struct.qrwlock* noundef %raw_lock) #16
  call fastcc void @arch_local_irq_enable() #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.wakeup_source* @ep_wakeup_source(%struct.epitem* noundef %epi) unnamed_addr #11 {
entry:
  %ws = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 7
  %0 = load volatile %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8
  ret %struct.wakeup_source* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @epi_rcu_free(%struct.callback_head* noundef %head) #1 {
entry:
  %0 = bitcast %struct.callback_head* %head to i8*
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @epi_cache, align 8
  call void @kmem_cache_free(%struct.kmem_cache* noundef %1, i8* noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_counter_dec(%struct.percpu_counter* noundef %fbc) unnamed_addr #1 {
entry:
  call fastcc void @percpu_counter_add(%struct.percpu_counter* noundef %fbc, i64 noundef -1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ep_remove_wait_queue(%struct.eppoll_entry* noundef %pwq) unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %whead1 = getelementptr inbounds %struct.eppoll_entry, %struct.eppoll_entry* %pwq, i64 0, i32 3
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.wait_queue_head** elementtype(%struct.wait_queue_head*) %whead1) #17, !srcloc !14
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = inttoptr i64 %0 to %struct.wait_queue_head*
  %wait = getelementptr inbounds %struct.eppoll_entry, %struct.eppoll_entry* %pwq, i64 0, i32 2
  call void @remove_wait_queue(%struct.wait_queue_head* noundef nonnull %1, %struct.wait_queue_entry* noundef %wait) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @rcu_read_unlock() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !16
  call void @rcu_read_unlock_strict() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !17
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #15
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #15
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #17, !srcloc !18
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #10 {
entry:
  %next1 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %next1, align 8
  %pprev2 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  %1 = load %struct.hlist_node**, %struct.hlist_node*** %pprev2, align 8
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %1, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end, label %do.body13

do.body13:                                        ; preds = %entry
  %pprev14 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %1, %struct.hlist_node*** %pprev14, align 8
  br label %if.end

if.end:                                           ; preds = %do.body13, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #1 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #17, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.rb_node* @rb_next(%struct.rb_node* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #16
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !7

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #17, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_lock(%struct.qrwlock* noundef %lock) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.qrwlock* %lock to i8*
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 255) #15
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  call void @queued_write_lock_slowpath(%struct.qrwlock* noundef %lock) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #11 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_write_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #11 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_unlock(%struct.qrwlock* noundef %lock) unnamed_addr #1 {
entry:
  %wlocked = bitcast %struct.qrwlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %wlocked, i8 0) #17, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #17, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_counter_add(%struct.percpu_counter* noundef %fbc, i64 noundef %amount) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef %fbc, i64 noundef %amount, i32 noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(%struct.percpu_counter* noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_epoll_create1(i32 noundef %flags) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @do_epoll_create(i32 noundef %flags) #16
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_epoll_create(i32 noundef %flags) unnamed_addr #1 {
entry:
  %ep = alloca %struct.eventpoll*, align 8
  %0 = bitcast %struct.eventpoll** %ep to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #17
  store %struct.eventpoll* null, %struct.eventpoll** %ep, align 8
  %and = and i32 %flags, -524289
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @ep_alloc(%struct.eventpoll** noundef nonnull %ep) #16
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %and3 = and i32 %flags, 524288
  %or = or i32 %and3, 2
  %call4 = call i32 @get_unused_fd_flags(i32 noundef %or) #15
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end2.out_free_ep_crit_edge, label %if.end7

if.end2.out_free_ep_crit_edge:                    ; preds = %if.end2
  %.pre = load %struct.eventpoll*, %struct.eventpoll** %ep, align 8
  br label %out_free_ep

if.end7:                                          ; preds = %if.end2
  %1 = bitcast %struct.eventpoll** %ep to i8**
  %2 = load i8*, i8** %1, align 8
  %call10 = call %struct.file* @anon_inode_getfile(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.file_operations* noundef nonnull @eventpoll_fops, i8* noundef %2, i32 noundef %or) #15
  %3 = bitcast %struct.file* %call10 to i8*
  %call11 = call fastcc i1 @IS_ERR(i8* noundef %3) #16
  br i1 %call11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end7
  %4 = bitcast i8* %2 to %struct.eventpoll*
  %call13 = call fastcc i64 @PTR_ERR(i8* noundef %3) #16
  %conv = trunc i64 %call13 to i32
  call void @put_unused_fd(i32 noundef %call4) #15
  br label %out_free_ep

if.end14:                                         ; preds = %if.end7
  %file15 = getelementptr inbounds i8, i8* %2, i64 144
  %5 = bitcast i8* %file15 to %struct.file**
  store %struct.file* %call10, %struct.file** %5, align 8
  call void @fd_install(i32 noundef %call4, %struct.file* noundef %call10) #15
  br label %cleanup

out_free_ep:                                      ; preds = %if.end2.out_free_ep_crit_edge, %if.then12
  %6 = phi %struct.eventpoll* [ %4, %if.then12 ], [ %.pre, %if.end2.out_free_ep_crit_edge ]
  %error.0 = phi i32 [ %conv, %if.then12 ], [ %call4, %if.end2.out_free_ep_crit_edge ]
  call fastcc void @ep_free(%struct.eventpoll* noundef %6) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %out_free_ep, %if.end14
  %retval.0 = phi i32 [ %error.0, %out_free_ep ], [ %call4, %if.end14 ], [ -22, %entry ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ep_alloc(%struct.eventpoll** nocapture noundef writeonly %pep) unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !24
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 80
  %2 = load %struct.cred*, %struct.cred** %cred, align 8
  %user1 = getelementptr inbounds %struct.cred, %struct.cred* %2, i64 0, i32 15
  %3 = load %struct.user_struct*, %struct.user_struct** %user1, align 8
  %call2 = call fastcc %struct.user_struct* @get_uid(%struct.user_struct* noundef %3) #16
  %call4 = call fastcc i8* @kzalloc() #16
  %tobool.not = icmp eq i8* %call4, null
  br i1 %tobool.not, label %free_uid, label %do.body8, !prof !7

do.body8:                                         ; preds = %entry
  %mtx = bitcast i8* %call4 to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef nonnull %mtx, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @ep_alloc.__key) #15
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call4, i64 96
  %4 = bitcast i8* %.compoundliteral.sroa.0.0..sroa_idx to i32*
  store i32 0, i32* %4, align 8
  %.compoundliteral.sroa.2.0..sroa_idx26 = getelementptr inbounds i8, i8* %call4, i64 100
  %5 = bitcast i8* %.compoundliteral.sroa.2.0..sroa_idx26 to i32*
  store i32 0, i32* %5, align 4
  %wq = getelementptr inbounds i8, i8* %call4, i64 32
  %6 = bitcast i8* %wq to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %6, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @ep_alloc.__key.3) #15
  %poll_wait = getelementptr inbounds i8, i8* %call4, i64 56
  %7 = bitcast i8* %poll_wait to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @ep_alloc.__key.5) #15
  %rdllist = getelementptr inbounds i8, i8* %call4, i64 80
  %8 = bitcast i8* %rdllist to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %8) #16
  %.compoundliteral21.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call4, i64 104
  %9 = bitcast i8* %.compoundliteral21.sroa.0.0..sroa_idx to %struct.rb_node**
  store %struct.rb_node* null, %struct.rb_node** %9, align 8
  %.compoundliteral21.sroa.2.0..sroa_idx25 = getelementptr inbounds i8, i8* %call4, i64 112
  %10 = bitcast i8* %.compoundliteral21.sroa.2.0..sroa_idx25 to %struct.rb_node**
  store %struct.rb_node* null, %struct.rb_node** %10, align 8
  %ovflist = getelementptr inbounds i8, i8* %call4, i64 120
  %11 = bitcast i8* %ovflist to %struct.epitem**
  store %struct.epitem* inttoptr (i64 -1 to %struct.epitem*), %struct.epitem** %11, align 8
  %user22 = getelementptr inbounds i8, i8* %call4, i64 136
  %12 = bitcast i8* %user22 to %struct.user_struct**
  store %struct.user_struct* %3, %struct.user_struct** %12, align 8
  %13 = bitcast %struct.eventpoll** %pep to i8**
  store i8* %call4, i8** %13, align 8
  br label %cleanup

free_uid:                                         ; preds = %entry
  call void @free_uid(%struct.user_struct* noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %free_uid, %do.body8
  %retval.0 = phi i32 [ -12, %free_uid ], [ 0, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @anon_inode_getfile(i8* noundef, %struct.file_operations* noundef, i8* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #6 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #6 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, %struct.file* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ep_free(%struct.eventpoll* noundef %ep) unnamed_addr #1 {
entry:
  %poll_wait = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 2
  %call = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %poll_wait) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @ep_poll_safewake(%struct.eventpoll* noundef %ep) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @epmutex) #15
  %rb_leftmost = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 5, i32 1
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %tobool1.not37 = icmp eq %struct.rb_node* %0, null
  br i1 %tobool1.not37, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %rbp.038 = phi %struct.rb_node* [ %call4, %for.body ], [ %0, %if.end ]
  %1 = bitcast %struct.rb_node* %rbp.038 to %struct.epitem*
  call fastcc void @ep_unregister_pollwait(%struct.epitem* noundef nonnull %1) #16
  call fastcc void @_cond_resched() #16
  %call4 = call %struct.rb_node* @rb_next(%struct.rb_node* noundef nonnull %rbp.038) #15
  %tobool1.not = icmp eq %struct.rb_node* %call4, null
  br i1 %tobool1.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %mtx = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 0
  call void @mutex_lock(%struct.mutex* noundef %mtx) #15
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %cmp.not39 = icmp eq %struct.rb_node* %2, null
  br i1 %cmp.not39, label %while.end, label %while.body

while.body:                                       ; preds = %for.end, %while.body
  %3 = phi %struct.rb_node* [ %5, %while.body ], [ %2, %for.end ]
  %4 = bitcast %struct.rb_node* %3 to %struct.epitem*
  call fastcc void @ep_remove(%struct.eventpoll* noundef %ep, %struct.epitem* noundef nonnull %4) #16
  call fastcc void @_cond_resched() #16
  %5 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %cmp.not = icmp eq %struct.rb_node* %5, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %for.end
  call void @mutex_unlock(%struct.mutex* noundef %mtx) #15
  call void @mutex_unlock(%struct.mutex* noundef nonnull @epmutex) #15
  %user = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 8
  %6 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  call void @free_uid(%struct.user_struct* noundef %6) #15
  %7 = bitcast %struct.eventpoll* %ep to i8*
  call void @kfree(i8* noundef %7) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.user_struct* @get_uid(%struct.user_struct* noundef returned %u) unnamed_addr #1 {
entry:
  %__count = getelementptr inbounds %struct.user_struct, %struct.user_struct* %u, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %__count) #16
  ret %struct.user_struct* %u
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #1 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 8), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #15
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(%struct.user_struct* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #1 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #15
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !7

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !10

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #15
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #17, !srcloc !25
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(%struct.file* noundef, i64 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @ep_eventpoll_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %wait) #1 {
entry:
  %call = call fastcc i32 @__ep_eventpoll_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %wait, i32 noundef 0) #16
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @ep_eventpoll_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef readonly %file) #1 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.eventpoll**
  %1 = load %struct.eventpoll*, %struct.eventpoll** %0, align 8
  %tobool.not = icmp eq %struct.eventpoll* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @ep_free(%struct.eventpoll* noundef nonnull %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @ep_show_fdinfo(%struct.seq_file* noundef %m, %struct.file* nocapture noundef readonly %f) #1 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.eventpoll**
  %1 = load %struct.eventpoll*, %struct.eventpoll** %0, align 8
  %mtx = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %1, i64 0, i32 0
  call void @mutex_lock(%struct.mutex* noundef %mtx) #15
  %rb_leftmost = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %1, i64 0, i32 5, i32 1
  %2 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %tobool.not24 = icmp eq %struct.rb_node* %2, null
  br i1 %tobool.not24, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %rbp.025 = phi %struct.rb_node* [ %call7, %for.inc ], [ %2, %entry ]
  %ffd = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rbp.025, i64 2
  %file = bitcast %struct.rb_node* %ffd to %struct.file**
  %3 = load %struct.file*, %struct.file** %file, align 8
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %3) #16
  %fd = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rbp.025, i64 2, i32 1
  %4 = bitcast %struct.rb_node** %fd to i32*
  %5 = load i32, i32* %4, align 8
  %event = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rbp.025, i64 4, i32 1
  %events = bitcast %struct.rb_node** %event to i32*
  %6 = load i32, i32* %events, align 8
  %data = getelementptr inbounds %struct.rb_node*, %struct.rb_node** %event, i64 1
  %7 = bitcast %struct.rb_node** %data to i64*
  %8 = load i64, i64* %7, align 8
  %f_pos = getelementptr inbounds %struct.file, %struct.file* %3, i64 0, i32 10
  %9 = load i64, i64* %f_pos, align 8
  %i_ino = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 8
  %10 = load i64, i64* %i_ino, align 8
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 6
  %11 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %s_dev = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i64 0, i32 1
  %12 = load i32, i32* %s_dev, align 16
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 noundef %5, i32 noundef %6, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %12) #15
  %call5 = call fastcc i1 @seq_has_overflowed(%struct.seq_file* noundef %m) #16
  br i1 %call5, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %call7 = call %struct.rb_node* @rb_next(%struct.rb_node* noundef nonnull %rbp.025) #15
  %tobool.not = icmp eq %struct.rb_node* %call7, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.body, %entry
  call void @mutex_unlock(%struct.mutex* noundef %mtx) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ep_eventpoll_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %wait, i32 noundef %depth) unnamed_addr #1 {
entry:
  %txlist = alloca %struct.list_head, align 8
  %pt = alloca %struct.poll_table_struct, align 8
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.eventpoll**
  %1 = load %struct.eventpoll*, %struct.eventpoll** %0, align 8
  %2 = bitcast %struct.list_head* %txlist to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #17
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %txlist, i64 0, i32 0
  store %struct.list_head* %txlist, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %txlist, i64 0, i32 1
  store %struct.list_head* %txlist, %struct.list_head** %prev, align 8
  %3 = bitcast %struct.poll_table_struct* %pt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !9
  call fastcc void @init_poll_funcptr(%struct.poll_table_struct* noundef nonnull %pt, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* noundef null) #16
  %poll_wait = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %1, i64 0, i32 2
  call fastcc void @poll_wait(%struct.file* noundef %file, %struct.wait_queue_head* noundef %poll_wait, %struct.poll_table_struct* noundef %wait) #16
  %mtx = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %1, i64 0, i32 0
  call void @mutex_lock(%struct.mutex* noundef %mtx) #15
  call fastcc void @ep_start_scan(%struct.eventpoll* noundef %1, %struct.list_head* noundef nonnull %txlist) #16
  %4 = bitcast %struct.list_head* %txlist to i8**
  %5 = load i8*, i8** %4, align 8
  %add = add i32 %depth, 1
  %6 = bitcast i8* %5 to %struct.list_head*
  %cmp.not44 = icmp eq %struct.list_head* %txlist, %6
  br i1 %cmp.not44, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %if.else
  %7 = phi %struct.list_head* [ %8, %if.else ], [ %6, %entry ]
  %.pn46.in.in = phi i8* [ %.pn46, %if.else ], [ %5, %entry ]
  %epi.045.in = getelementptr i8, i8* %.pn46.in.in, i64 -24
  %epi.045 = bitcast i8* %epi.045.in to %struct.epitem*
  %.pn46.in = bitcast i8* %.pn46.in.in to i8**
  %.pn46 = load i8*, i8** %.pn46.in, align 8
  %call = call fastcc i32 @ep_item_poll(%struct.epitem* noundef %epi.045, %struct.poll_table_struct* noundef nonnull %pt, i32 noundef %add) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %for.end

if.else:                                          ; preds = %for.body
  %call11 = call fastcc %struct.wakeup_source* @ep_wakeup_source(%struct.epitem* noundef %epi.045) #16
  call fastcc void @list_del_init(%struct.list_head* noundef %7) #16
  %8 = bitcast i8* %.pn46 to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %txlist, %8
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.else, %for.body, %entry
  %res.0 = phi i32 [ 0, %entry ], [ 65, %for.body ], [ 0, %if.else ]
  call fastcc void @ep_done_scan(%struct.eventpoll* noundef %1, %struct.list_head* noundef nonnull %txlist) #16
  call void @mutex_unlock(%struct.mutex* noundef %mtx) #15
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #17
  ret i32 %res.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_poll_funcptr(%struct.poll_table_struct* nocapture noundef writeonly %pt, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* noundef %qproc) unnamed_addr #12 {
entry:
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %pt, i64 0, i32 0
  store void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %qproc, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  %_key = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %pt, i64 0, i32 1
  store i32 -1, i32* %_key, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @poll_wait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %wait_address, %struct.poll_table_struct* noundef %p) unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.poll_table_struct* %p, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %p, i64 0, i32 0
  %0 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %0, null
  %tobool3 = icmp ne %struct.wait_queue_head* %wait_address, null
  %or.cond = and i1 %tobool3, %tobool1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull %wait_address, %struct.poll_table_struct* noundef nonnull %p) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ep_start_scan(%struct.eventpoll* noundef %ep, %struct.list_head* noundef %txlist) unnamed_addr #1 {
entry:
  %lock = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 4
  call fastcc void @__raw_write_lock_irq(%struct.rwlock_t* noundef %lock) #16
  %rdllist = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 3
  call fastcc void @list_splice_init(%struct.list_head* noundef %rdllist, %struct.list_head* noundef %txlist) #16
  %ovflist = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 6
  store volatile %struct.epitem* null, %struct.epitem** %ovflist, align 8
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ep_item_poll(%struct.epitem* nocapture noundef readonly %epi, %struct.poll_table_struct* noundef %pt, i32 noundef %depth) unnamed_addr #1 {
entry:
  %file1 = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 3, i32 0
  %0 = load %struct.file*, %struct.file** %file1, align 8
  %events = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 8, i32 0
  %1 = load i32, i32* %events, align 8
  %_key = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %pt, i64 0, i32 1
  store i32 %1, i32* %_key, align 8
  %call = call fastcc i32 @is_file_epoll(%struct.file* noundef %0) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call fastcc i32 @vfs_poll(%struct.file* noundef %0, %struct.poll_table_struct* noundef %pt) #16
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call fastcc i32 @__ep_eventpoll_poll(%struct.file* noundef %0, %struct.poll_table_struct* noundef %pt, i32 noundef %depth) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %res.0 = phi i32 [ %call3, %if.else ], [ %call2, %if.then ]
  %2 = load i32, i32* %events, align 8
  %and = and i32 %2, %res.0
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ep_done_scan(%struct.eventpoll* noundef %ep, %struct.list_head* noundef %txlist) unnamed_addr #1 {
entry:
  %lock = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 4
  call fastcc void @__raw_write_lock_irq(%struct.rwlock_t* noundef %lock) #16
  %ovflist = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 6
  %0 = load volatile %struct.epitem*, %struct.epitem** %ovflist, align 8
  %cmp.not39 = icmp eq %struct.epitem* %0, null
  br i1 %cmp.not39, label %do.body6, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %rdllist = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %nepi.040 = phi %struct.epitem* [ %0, %for.body.lr.ph ], [ %1, %for.inc ]
  %call = call fastcc i32 @ep_is_linked(%struct.epitem* noundef nonnull %nepi.040) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %rdllink = getelementptr inbounds %struct.epitem, %struct.epitem* %nepi.040, i64 0, i32 1
  call fastcc void @list_add(%struct.list_head* noundef %rdllink, %struct.list_head* noundef %rdllist) #16
  call fastcc void @ep_pm_stay_awake(%struct.epitem* noundef nonnull %nepi.040) #16
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %next = getelementptr inbounds %struct.epitem, %struct.epitem* %nepi.040, i64 0, i32 2
  %1 = load %struct.epitem*, %struct.epitem** %next, align 8
  store %struct.epitem* inttoptr (i64 -1 to %struct.epitem*), %struct.epitem** %next, align 8
  %cmp.not = icmp eq %struct.epitem* %1, null
  br i1 %cmp.not, label %do.body6, label %for.body

do.body6:                                         ; preds = %for.inc, %entry
  store volatile %struct.epitem* inttoptr (i64 -1 to %struct.epitem*), %struct.epitem** %ovflist, align 8
  %rdllist12 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 3
  call fastcc void @list_splice(%struct.list_head* noundef %txlist, %struct.list_head* noundef %rdllist12) #16
  %call14 = call fastcc i32 @list_empty(%struct.list_head* noundef %rdllist12) #16
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end22

if.then16:                                        ; preds = %do.body6
  %wq = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 1
  %call17 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq) #16
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.then16
  call void @__wake_up(%struct.wait_queue_head* noundef %wq, i32 noundef 3, i32 noundef 1, i8* noundef null) #15
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.then19, %do.body6
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_splice_init(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #10 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #16
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @__list_splice(%struct.list_head* nocapture noundef readonly %list, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  %1 = load %struct.list_head*, %struct.list_head** %prev2, align 8
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev3, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store %struct.list_head* %0, %struct.list_head** %next4, align 8
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next5, align 8
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %1, %struct.list_head** %prev6, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @vfs_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %pt) unnamed_addr #1 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %poll = getelementptr inbounds %struct.file_operations, %struct.file_operations* %0, i64 0, i32 9
  %1 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %poll, align 8
  %tobool.not = icmp eq i32 (%struct.file*, %struct.poll_table_struct*)* %1, null
  br i1 %tobool.not, label %return, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %call = call i32 %1(%struct.file* noundef %file, %struct.poll_table_struct* noundef %pt) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 325, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #10 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @ep_pm_stay_awake(%struct.epitem* noundef %epi) unnamed_addr #11 {
entry:
  %call = call fastcc %struct.wakeup_source* @ep_wakeup_source(%struct.epitem* noundef %epi) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_splice(%struct.list_head* noundef %list, %struct.list_head* noundef %head, %struct.list_head* noundef %0) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq_head) unnamed_addr #11 {
entry:
  %head = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %head) #16
  %tobool.not = icmp eq i32 %call, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #0

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #10 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #5 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(%struct.seq_file* noundef, i8* noundef, ...) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @seq_has_overflowed(%struct.seq_file* nocapture noundef readonly %m) unnamed_addr #5 {
entry:
  %count = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 3
  %0 = load i64, i64* %count, align 8
  %size = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %0, %1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ep_poll_safewake(%struct.eventpoll* noundef %ep) unnamed_addr #1 {
entry:
  %poll_wait = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 2
  call void @__wake_up(%struct.wait_queue_head* noundef %poll_wait, i32 noundef 3, i32 noundef 1, i8* noundef nonnull inttoptr (i64 1 to i8*)) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @_cond_resched() unnamed_addr #1 {
entry:
  %call = call i32 @__cond_resched() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_epoll_create(i32 noundef %size) unnamed_addr #1 {
entry:
  %cmp = icmp slt i32 %size, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @do_epoll_create(i32 noundef 0) #16
  %conv = sext i32 %call to i64
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -22, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc [2 x i64] @__to_fd(i64 noundef %v) unnamed_addr #6 {
entry:
  %and = and i64 %v, -4
  %conv = and i64 %v, 3
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %and, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %conv, 1
  ret [2 x i64] %.fca.1.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__fdget(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(%struct.mutex* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ep_loop_check_proc(%struct.eventpoll* noundef %ep, i32 noundef %depth) unnamed_addr #1 {
entry:
  %mtx = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 0
  call void @mutex_lock(%struct.mutex* noundef %mtx) #15
  %0 = load i64, i64* @loop_check_gen, align 8
  %gen = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 10
  store i64 %0, i64* %gen, align 8
  %rb_leftmost = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 5, i32 1
  %1 = load %struct.rb_node*, %struct.rb_node** %rb_leftmost, align 8
  %add = add nsw i32 %depth, 1
  %tobool.not58 = icmp eq %struct.rb_node* %1, null
  br i1 %tobool.not58, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %cmp11 = icmp sgt i32 %depth, 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %error.060 = phi i32 [ 0, %for.body.lr.ph ], [ %error.3, %for.inc ]
  %rbp.059 = phi %struct.rb_node* [ %1, %for.body.lr.ph ], [ %call24, %for.inc ]
  %ffd = getelementptr inbounds %struct.rb_node, %struct.rb_node* %rbp.059, i64 2
  %file = bitcast %struct.rb_node* %ffd to %struct.file**
  %2 = load %struct.file*, %struct.file** %file, align 8
  %call = call fastcc i32 @is_file_epoll(%struct.file* noundef %2) #16
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.else20, label %if.then, !prof !10

if.then:                                          ; preds = %for.body
  %private_data = getelementptr inbounds %struct.file, %struct.file* %2, i64 0, i32 15
  %3 = bitcast i8** %private_data to %struct.eventpoll**
  %4 = load %struct.eventpoll*, %struct.eventpoll** %3, align 8
  %gen6 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %4, i64 0, i32 10
  %5 = load i64, i64* %gen6, align 8
  %6 = load i64, i64* @loop_check_gen, align 8
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %for.inc, label %if.end

if.end:                                           ; preds = %if.then
  %7 = load %struct.eventpoll*, %struct.eventpoll** @inserting_into, align 8
  %cmp9 = icmp eq %struct.eventpoll* %4, %7
  %or.cond = or i1 %cmp11, %cmp9
  br i1 %or.cond, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end
  %call14 = call fastcc i32 @ep_loop_check_proc(%struct.eventpoll* noundef %4, i32 noundef %add) #16
  %cmp16.not = icmp eq i32 %call14, 0
  %not.cmp16.not = xor i1 %cmp16.not, true
  %. = sext i1 %not.cmp16.not to i32
  br i1 %cmp16.not, label %for.inc, label %for.end

if.else20:                                        ; preds = %for.body
  call fastcc void @list_file(%struct.file* noundef %2) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then, %cleanup, %if.else20
  %error.3 = phi i32 [ %., %cleanup ], [ %error.060, %if.else20 ], [ %error.060, %if.then ]
  %call24 = call %struct.rb_node* @rb_next(%struct.rb_node* noundef nonnull %rbp.059) #15
  %tobool.not = icmp eq %struct.rb_node* %call24, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %cleanup, %if.end, %entry
  %error.4 = phi i32 [ 0, %entry ], [ -1, %if.end ], [ %., %cleanup ], [ %error.3, %for.inc ]
  call void @mutex_unlock(%struct.mutex* noundef %mtx) #15
  ret i32 %error.4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @list_file(%struct.file* nocapture noundef readonly %file) unnamed_addr #7 {
entry:
  %f_ep = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 16
  %0 = bitcast %struct.hlist_head** %f_ep to %struct.epitems_head**
  %1 = load %struct.epitems_head*, %struct.epitems_head** %0, align 8
  %next = getelementptr inbounds %struct.epitems_head, %struct.epitems_head* %1, i64 0, i32 1
  %2 = load %struct.epitems_head*, %struct.epitems_head** %next, align 8
  %tobool.not = icmp eq %struct.epitems_head* %2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.epitems_head*, %struct.epitems_head** @tfile_check_list, align 8
  store %struct.epitems_head* %3, %struct.epitems_head** %next, align 8
  store %struct.epitems_head* %1, %struct.epitems_head** @tfile_check_list, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @ep_set_ffd(%struct.epoll_filefd* nocapture noundef writeonly %ffd, %struct.file* noundef %file, i32 noundef %fd) unnamed_addr #12 {
entry:
  %file1 = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %ffd, i64 0, i32 0
  store %struct.file* %file, %struct.file** %file1, align 1
  %fd2 = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %ffd, i64 0, i32 1
  store i32 %fd, i32* %fd2, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @ep_cmp_ffd(%struct.epoll_filefd* nocapture noundef readonly %p1, %struct.epoll_filefd* nocapture noundef readonly %p2) unnamed_addr #5 {
entry:
  %file = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %p1, i64 0, i32 0
  %0 = load %struct.file*, %struct.file** %file, align 1
  %file1 = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %p2, i64 0, i32 0
  %1 = load %struct.file*, %struct.file** %file1, align 1
  %cmp = icmp ugt %struct.file* %0, %1
  br i1 %cmp, label %cond.end8, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp4 = icmp ult %struct.file* %0, %1
  br i1 %cmp4, label %cond.end8, label %cond.false6

cond.false6:                                      ; preds = %cond.false
  %fd = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %p1, i64 0, i32 1
  %2 = load i32, i32* %fd, align 1
  %fd7 = getelementptr inbounds %struct.epoll_filefd, %struct.epoll_filefd* %p2, i64 0, i32 1
  %3 = load i32, i32* %fd7, align 1
  %sub = sub i32 %2, %3
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false6, %cond.false, %entry
  %cond9 = phi i32 [ 1, %entry ], [ %sub, %cond.false6 ], [ -1, %cond.false ]
  ret i32 %cond9
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @percpu_counter_compare(%struct.percpu_counter* noundef %fbc, i64 noundef %rhs) unnamed_addr #1 {
entry:
  %0 = load i32, i32* @percpu_counter_batch, align 4
  %call = call i32 @__percpu_counter_compare(%struct.percpu_counter* noundef %fbc, i64 noundef %rhs, i32 noundef %0) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_counter_inc(%struct.percpu_counter* noundef %fbc) unnamed_addr #1 {
entry:
  call fastcc void @percpu_counter_add(%struct.percpu_counter* noundef %fbc, i64 noundef 1) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #1 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #15
  ret i8* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @attach_epitem(%struct.file* noundef %file, %struct.epitem* noundef %epi) unnamed_addr #1 {
entry:
  %call = call fastcc i32 @is_file_epoll(%struct.file* noundef %file) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.eventpoll**
  %1 = load %struct.eventpoll*, %struct.eventpoll** %0, align 8
  %tobool1.not = icmp eq %struct.eventpoll* %1, null
  br i1 %tobool1.not, label %do.end, label %if.then2

if.then2:                                         ; preds = %if.end
  %refs = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %1, i64 0, i32 11
  br label %if.end10

do.end:                                           ; preds = %entry, %if.end
  %f_ep = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 16
  %2 = load volatile %struct.hlist_head*, %struct.hlist_head** %f_ep, align 8
  %tobool3.not = icmp eq %struct.hlist_head* %2, null
  br i1 %tobool3.not, label %allocate, label %if.end10

allocate:                                         ; preds = %do.end, %if.then18
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @ephead_cache, align 8
  %call5 = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %3) #16
  %tobool6.not = icmp eq i8* %call5, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %allocate
  %4 = bitcast i8* %call5 to %struct.epitems_head*
  %epitems = bitcast i8* %call5 to %struct.hlist_head*
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end8, %if.then2
  %to_free.1 = phi %struct.epitems_head* [ null, %if.then2 ], [ %4, %if.end8 ], [ null, %do.end ]
  %head.1 = phi %struct.hlist_head* [ %refs, %if.then2 ], [ %epitems, %if.end8 ], [ null, %do.end ]
  %rlock.i = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 4, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %f_ep11 = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 16
  %5 = load %struct.hlist_head*, %struct.hlist_head** %f_ep11, align 8
  %tobool12.not = icmp eq %struct.hlist_head* %5, null
  br i1 %tobool12.not, label %if.then13, label %if.end22

if.then13:                                        ; preds = %if.end10
  %tobool14.not = icmp eq %struct.hlist_head* %head.1, null
  br i1 %tobool14.not, label %if.then18, label %if.end20, !prof !7

if.then18:                                        ; preds = %if.then13
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  br label %allocate

if.end20:                                         ; preds = %if.then13
  store %struct.hlist_head* %head.1, %struct.hlist_head** %f_ep11, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.end10
  %6 = phi %struct.hlist_head* [ %5, %if.end10 ], [ %head.1, %if.end20 ]
  %to_free.2 = phi %struct.epitems_head* [ %to_free.1, %if.end10 ], [ null, %if.end20 ]
  %fllink = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 6
  call fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %fllink, %struct.hlist_head* noundef nonnull %6) #16
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #15
  call fastcc void @free_ephead(%struct.epitems_head* noundef %to_free.2) #16
  br label %cleanup

cleanup:                                          ; preds = %allocate, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -12, %allocate ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ep_rbtree_insert(%struct.eventpoll* noundef %ep, %struct.epitem* noundef %epi) unnamed_addr #1 {
entry:
  %rbr = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 5
  %rb_node = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %rbr, i64 0, i32 0, i32 0
  %0 = load %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %tobool.not19 = icmp eq %struct.rb_node* %0, null
  br i1 %tobool.not19, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %ffd = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %1 = phi %struct.rb_node* [ %0, %while.body.lr.ph ], [ %3, %while.body ]
  %leftmost.0.off020 = phi i1 [ true, %while.body.lr.ph ], [ %leftmost.1.off0, %while.body ]
  %ffd1 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 2
  %2 = bitcast %struct.rb_node* %ffd1 to %struct.epoll_filefd*
  %call = call fastcc i32 @ep_cmp_ffd(%struct.epoll_filefd* noundef %ffd, %struct.epoll_filefd* noundef %2) #16
  %cmp = icmp sgt i32 %call, 0
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 1
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %1, i64 0, i32 2
  %not.cmp = xor i1 %cmp, true
  %leftmost.1.off0 = select i1 %not.cmp, i1 %leftmost.0.off020, i1 false
  %p.1 = select i1 %cmp, %struct.rb_node** %rb_right, %struct.rb_node** %rb_left
  %3 = load %struct.rb_node*, %struct.rb_node** %p.1, align 8
  %tobool.not = icmp eq %struct.rb_node* %3, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %parent.0.lcssa = phi %struct.rb_node* [ null, %entry ], [ %1, %while.body ]
  %leftmost.0.off0.lcssa = phi i1 [ true, %entry ], [ %leftmost.1.off0, %while.body ]
  %p.0.lcssa = phi %struct.rb_node** [ %rb_node, %entry ], [ %p.1, %while.body ]
  %rbn = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 0, i32 0
  call fastcc void @rb_link_node(%struct.rb_node* noundef %rbn, %struct.rb_node* noundef %parent.0.lcssa, %struct.rb_node** noundef %p.0.lcssa) #16
  call fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %rbn, %struct.rb_root_cached* noundef %rbr, i1 noundef %leftmost.0.off0.lcssa) #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @reverse_path_check() unnamed_addr #1 {
entry:
  %p.07 = load %struct.epitems_head*, %struct.epitems_head** @tfile_check_list, align 8
  %cmp.not8 = icmp eq %struct.epitems_head* %p.07, inttoptr (i64 -1 to %struct.epitems_head*)
  br i1 %cmp.not8, label %cleanup1, label %for.body

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct.epitems_head, %struct.epitems_head* %p.09, i64 0, i32 1
  %p.0 = load %struct.epitems_head*, %struct.epitems_head** %next, align 8
  %cmp.not = icmp eq %struct.epitems_head* %p.0, inttoptr (i64 -1 to %struct.epitems_head*)
  br i1 %cmp.not, label %cleanup1, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %p.09 = phi %struct.epitems_head* [ %p.0, %for.cond ], [ %p.07, %entry ]
  call fastcc void @path_count_init() #16
  call fastcc void @__rcu_read_lock() #15
  %epitems = getelementptr inbounds %struct.epitems_head, %struct.epitems_head* %p.09, i64 0, i32 0
  %call = call fastcc i32 @reverse_path_check_proc(%struct.hlist_head* noundef %epitems, i32 noundef 0) #16
  call fastcc void @rcu_read_unlock() #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %cleanup1

cleanup1:                                         ; preds = %for.body, %for.cond, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %for.cond ], [ %call, %for.body ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ep_create_wakeup_source(%struct.epitem* nocapture noundef readonly %epi) unnamed_addr #1 {
entry:
  %n = alloca %struct.name_snapshot, align 8
  %0 = bitcast %struct.name_snapshot* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false), !annotation !9
  %ep = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 5
  %1 = load %struct.eventpoll*, %struct.eventpoll** %ep, align 8
  %ws1 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %1, i64 0, i32 7
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %ws1, align 8
  %tobool.not = icmp eq %struct.wakeup_source* %2, null
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  store %struct.wakeup_source* null, %struct.wakeup_source** %ws1, align 8
  %3 = load %struct.eventpoll*, %struct.eventpoll** %ep, align 8
  %ws5 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %3, i64 0, i32 7
  %4 = load %struct.wakeup_source*, %struct.wakeup_source** %ws5, align 8
  %tobool6.not = icmp eq %struct.wakeup_source* %4, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.then, %entry
  %file = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 3, i32 0
  %5 = load %struct.file*, %struct.file** %file, align 8
  %dentry = getelementptr inbounds %struct.file, %struct.file* %5, i64 0, i32 1, i32 1
  %6 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  call void @take_dentry_name_snapshot(%struct.name_snapshot* noundef nonnull %n, %struct.dentry* noundef %6) #15
  call void @release_dentry_name_snapshot(%struct.name_snapshot* noundef nonnull %n) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @ep_ptable_queue_proc(%struct.file* nocapture noundef readnone %file, %struct.wait_queue_head* noundef %whead, %struct.poll_table_struct* nocapture noundef %pt) #1 {
entry:
  %epi1 = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %pt, i64 1
  %0 = bitcast %struct.poll_table_struct* %epi1 to %struct.epitem**
  %1 = load %struct.epitem*, %struct.epitem** %0, align 8
  %tobool.not = icmp eq %struct.epitem* %1, null
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %2 = load %struct.kmem_cache*, %struct.kmem_cache** @pwq_cache, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %2, i32 noundef 3264) #15
  %tobool5.not = icmp eq i8* %call, null
  br i1 %tobool5.not, label %if.then15, label %if.end17, !prof !7

if.then15:                                        ; preds = %if.end
  store %struct.epitem* null, %struct.epitem** %0, align 8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %wait = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %wait to %struct.wait_queue_entry*
  call fastcc void @init_waitqueue_func_entry(%struct.wait_queue_entry* noundef %3) #16
  %whead18 = getelementptr inbounds i8, i8* %call, i64 56
  %4 = bitcast i8* %whead18 to %struct.wait_queue_head**
  store %struct.wait_queue_head* %whead, %struct.wait_queue_head** %4, align 8
  %base = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %base to %struct.epitem**
  store %struct.epitem* %1, %struct.epitem** %5, align 8
  %events = getelementptr inbounds %struct.epitem, %struct.epitem* %1, i64 0, i32 8, i32 0
  %6 = load i32, i32* %events, align 8
  %and = and i32 %6, 268435456
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @add_wait_queue_exclusive(%struct.wait_queue_head* noundef %whead, %struct.wait_queue_entry* noundef %3) #15
  br label %if.end23

if.else:                                          ; preds = %if.end17
  call void @add_wait_queue(%struct.wait_queue_head* noundef %whead, %struct.wait_queue_entry* noundef %3) #15
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %pwqlist = getelementptr inbounds %struct.epitem, %struct.epitem* %1, i64 0, i32 4
  %7 = load %struct.eppoll_entry*, %struct.eppoll_entry** %pwqlist, align 8
  %next = bitcast i8* %call to %struct.eppoll_entry**
  store %struct.eppoll_entry* %7, %struct.eppoll_entry** %next, align 8
  %8 = bitcast %struct.eppoll_entry** %pwqlist to i8**
  store i8* %call, i8** %8, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end23, %if.then15
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #10 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_compare(%struct.percpu_counter* noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head_rcu(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #1 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev, align 8
  %1 = ptrtoint %struct.hlist_node* %n to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.hlist_node** elementtype(%struct.hlist_node*) %first1, i64 %1) #17, !srcloc !26
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end41, label %do.body34

do.body34:                                        ; preds = %entry
  %pprev36 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev36, align 8
  br label %if.end41

if.end41:                                         ; preds = %do.body34, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rb_link_node(%struct.rb_node* noundef %node, %struct.rb_node* noundef %parent, %struct.rb_node** nocapture noundef writeonly %rb_link) unnamed_addr #12 {
entry:
  %0 = ptrtoint %struct.rb_node* %parent to i64
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 0
  store i64 %0, i64* %__rb_parent_color, align 8
  %rb_right = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 1
  store %struct.rb_node* null, %struct.rb_node** %rb_right, align 8
  %rb_left = getelementptr inbounds %struct.rb_node, %struct.rb_node* %node, i64 0, i32 2
  store %struct.rb_node* null, %struct.rb_node** %rb_left, align 8
  store %struct.rb_node* %node, %struct.rb_node** %rb_link, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rb_insert_color_cached(%struct.rb_node* noundef %node, %struct.rb_root_cached* noundef %root, i1 noundef %leftmost) unnamed_addr #1 {
entry:
  br i1 %leftmost, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 1
  store %struct.rb_node* %node, %struct.rb_node** %rb_leftmost, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_root = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %root, i64 0, i32 0
  call void @rb_insert_color(%struct.rb_node* noundef %node, %struct.rb_root* noundef %rb_root) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(%struct.rb_node* noundef, %struct.rb_root* noundef) local_unnamed_addr #0

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly
define internal fastcc void @path_count_init() unnamed_addr #13 {
entry:
  store i32 0, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @path_count, i64 0, i64 0), align 4
  store i32 0, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @path_count, i64 0, i64 1), align 4
  store i32 0, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @path_count, i64 0, i64 2), align 4
  store i32 0, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @path_count, i64 0, i64 3), align 4
  store i32 0, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @path_count, i64 0, i64 4), align 4
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid
define internal fastcc i32 @reverse_path_check_proc(%struct.hlist_head* noundef %refs, i32 noundef %depth) unnamed_addr #14 {
entry:
  %cmp = icmp sgt i32 %depth, 4
  br i1 %cmp, label %cleanup37, label %if.end

if.end:                                           ; preds = %entry
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %refs, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %add.ptr58 = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -5
  %tobool7.not6164 = icmp eq %struct.hlist_node* %add.ptr58, null
  %tobool7.not61 = or i1 %tobool.not, %tobool7.not6164
  br i1 %tobool7.not61, label %cleanup37, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %1 = bitcast %struct.hlist_node* %add.ptr58 to %struct.epitem*
  %add = add nsw i32 %depth, 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %epi.062 = phi %struct.epitem* [ %1, %for.body.lr.ph ], [ %spec.select60, %for.inc ]
  %ep = getelementptr inbounds %struct.epitem, %struct.epitem* %epi.062, i64 0, i32 5
  %2 = load %struct.eventpoll*, %struct.eventpoll** %ep, align 8
  %refs9 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %2, i64 0, i32 11
  %call = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %refs9) #16
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %for.body
  %call12 = call fastcc i32 @path_count_inc(i32 noundef %depth) #16
  br label %if.end14

if.else:                                          ; preds = %for.body
  %call13 = call fastcc i32 @reverse_path_check_proc(%struct.hlist_head* noundef %refs9, i32 noundef %add) #16
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %error.1 = phi i32 [ %call12, %if.then11 ], [ %call13, %if.else ]
  %cmp15.not = icmp eq i32 %error.1, 0
  br i1 %cmp15.not, label %for.inc, label %cleanup37

for.inc:                                          ; preds = %if.end14
  %next = getelementptr inbounds %struct.epitem, %struct.epitem* %epi.062, i64 0, i32 6, i32 0
  %3 = load volatile %struct.hlist_node*, %struct.hlist_node** %next, align 8
  %tobool26.not = icmp eq %struct.hlist_node* %3, null
  %add.ptr3357 = getelementptr %struct.hlist_node, %struct.hlist_node* %3, i64 -5
  %4 = bitcast %struct.hlist_node* %add.ptr3357 to %struct.epitem*
  %spec.select60 = select i1 %tobool26.not, %struct.epitem* null, %struct.epitem* %4
  %tobool7.not = icmp eq %struct.epitem* %spec.select60, null
  br i1 %tobool7.not, label %cleanup37, label %for.body

cleanup37:                                        ; preds = %for.inc, %if.end14, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %if.end ], [ 0, %for.inc ], [ %error.1, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_empty(%struct.hlist_head* noundef %h) unnamed_addr #11 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @path_count_inc(i32 noundef %nests) unnamed_addr #7 {
entry:
  %cmp = icmp eq i32 %nests, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %nests to i64
  %arrayidx = getelementptr [5 x i32], [5 x i32]* @path_count, i64 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr [5 x i32], [5 x i32]* @path_limits, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp sgt i32 %inc, %1
  %. = sext i1 %cmp3 to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @take_dentry_name_snapshot(%struct.name_snapshot* noundef, %struct.dentry* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_dentry_name_snapshot(%struct.name_snapshot* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @init_waitqueue_func_entry(%struct.wait_queue_entry* nocapture noundef writeonly %wq_entry) unnamed_addr #12 {
entry:
  %flags = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 0
  store i32 0, i32* %flags, align 8
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 1
  store i8* null, i8** %private, align 8
  %func1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 2
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @ep_poll_callback, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func1, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @ep_poll_callback(%struct.wait_queue_entry* noundef %wait, i32 noundef %mode, i32 noundef %sync, i8* noundef %key) #1 {
entry:
  %call = call fastcc %struct.epitem* @ep_item_from_wait(%struct.wait_queue_entry* noundef %wait) #16
  %ep1 = getelementptr inbounds %struct.epitem, %struct.epitem* %call, i64 0, i32 5
  %0 = load %struct.eventpoll*, %struct.eventpoll** %ep1, align 8
  %1 = ptrtoint i8* %key to i64
  %conv = trunc i64 %1 to i32
  %lock = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %0, i64 0, i32 4
  %call3 = call fastcc i64 @__raw_read_lock_irqsave(%struct.rwlock_t* noundef %lock) #16
  %events = getelementptr inbounds %struct.epitem, %struct.epitem* %call, i64 0, i32 8, i32 0
  %2 = load i32, i32* %events, align 8
  %and = and i32 %2, 268435455
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body62.thread, label %if.end

if.end:                                           ; preds = %entry
  %tobool4.not = icmp ne i32 %conv, 0
  %and7 = and i32 %2, %conv
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %tobool4.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %do.body62.thread, label %do.end13

do.end13:                                         ; preds = %if.end
  %ovflist = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %0, i64 0, i32 6
  %3 = load volatile %struct.epitem*, %struct.epitem** %ovflist, align 8
  %cmp15.not = icmp eq %struct.epitem* %3, inttoptr (i64 -1 to %struct.epitem*)
  br i1 %cmp15.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %do.end13
  %call18 = call fastcc i1 @chain_epi_lockless(%struct.epitem* noundef %call) #16
  br i1 %call18, label %if.end28.sink.split, label %if.end28

if.else:                                          ; preds = %do.end13
  %call21 = call fastcc i32 @ep_is_linked(%struct.epitem* noundef %call) #16
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.else
  %rdllink = getelementptr inbounds %struct.epitem, %struct.epitem* %call, i64 0, i32 1
  %rdllist = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %0, i64 0, i32 3
  %call24 = call fastcc i1 @list_add_tail_lockless(%struct.list_head* noundef %rdllink, %struct.list_head* noundef %rdllist) #16
  br i1 %call24, label %if.end28.sink.split, label %if.end28

if.end28.sink.split:                              ; preds = %if.then23, %if.then17
  call fastcc void @ep_pm_stay_awake_rcu(%struct.epitem* noundef %call) #16
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.else, %if.then23, %if.then17
  %wq = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %0, i64 0, i32 1
  %call29 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %wq) #16
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body62, label %if.then31

if.then31:                                        ; preds = %if.end28
  %4 = load i32, i32* %events, align 8
  %and34 = and i32 %4, 268435456
  %tobool35.not = icmp ne i32 %and34, 0
  %and37 = and i32 %conv, 16384
  %tobool38.not = icmp eq i32 %and37, 0
  %or.cond129 = and i1 %tobool38.not, %tobool35.not
  br i1 %or.cond129, label %if.then39, label %if.end55

if.then39:                                        ; preds = %if.then31
  %and40 = and i32 %conv, 5
  switch i32 %and40, label %if.end55 [
    i32 1, label %sw.bb
    i32 4, label %sw.bb47
    i32 0, label %sw.bb54
  ]

sw.bb:                                            ; preds = %if.then39
  %and43 = and i32 %4, 1
  br label %if.end55

sw.bb47:                                          ; preds = %if.then39
  %and50 = lshr i32 %4, 2
  %and50.lobit = and i32 %and50, 1
  br label %if.end55

sw.bb54:                                          ; preds = %if.then39
  br label %if.end55

if.end55:                                         ; preds = %sw.bb47, %sw.bb, %sw.bb54, %if.then39, %if.then31
  %ewake.0 = phi i32 [ 0, %if.then39 ], [ 1, %sw.bb54 ], [ 0, %if.then31 ], [ %and43, %sw.bb ], [ %and50.lobit, %sw.bb47 ]
  call void @__wake_up(%struct.wait_queue_head* noundef %wq, i32 noundef 3, i32 noundef 1, i8* noundef null) #15
  br label %do.body62

do.body62.thread:                                 ; preds = %entry, %if.end
  call fastcc void @__raw_read_unlock_irqrestore(%struct.rwlock_t* noundef %lock, i64 noundef %call3) #16
  br label %if.end73

do.body62:                                        ; preds = %if.end28, %if.end55
  %ewake.1 = phi i32 [ %ewake.0, %if.end55 ], [ 0, %if.end28 ]
  %poll_wait = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %0, i64 0, i32 2
  %call58 = call fastcc i32 @waitqueue_active(%struct.wait_queue_head* noundef %poll_wait) #16
  %tobool59.not = icmp eq i32 %call58, 0
  call fastcc void @__raw_read_unlock_irqrestore(%struct.rwlock_t* noundef %lock, i64 noundef %call3) #16
  br i1 %tobool59.not, label %if.end73, label %if.then72

if.then72:                                        ; preds = %do.body62
  call fastcc void @ep_poll_safewake(%struct.eventpoll* noundef %0) #16
  br label %if.end73

if.end73:                                         ; preds = %do.body62.thread, %if.then72, %do.body62
  %ewake.2135 = phi i32 [ 0, %do.body62.thread ], [ %ewake.1, %if.then72 ], [ %ewake.1, %do.body62 ]
  %5 = load i32, i32* %events, align 8
  %and80 = and i32 %conv, 16384
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end92, label %if.then82

if.then82:                                        ; preds = %if.end73
  %entry83 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  call fastcc void @list_del_init(%struct.list_head* noundef %entry83) #16
  %call85 = call fastcc %struct.eppoll_entry* @ep_pwq_from_wait(%struct.wait_queue_entry* noundef %wait) #16
  %whead = getelementptr inbounds %struct.eppoll_entry, %struct.eppoll_entry* %call85, i64 0, i32 3
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.wait_queue_head** elementtype(%struct.wait_queue_head*) %whead, i64 0) #17, !srcloc !27
  br label %if.end92

if.end92:                                         ; preds = %if.then82, %if.end73
  %and76 = and i32 %5, 268435456
  %tobool77.not = icmp eq i32 %and76, 0
  %spec.select132 = select i1 %tobool77.not, i32 1, i32 %ewake.2135
  ret i32 %spec.select132
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.epitem* @ep_item_from_wait(%struct.wait_queue_entry* nocapture noundef readonly %p) unnamed_addr #5 {
entry:
  %base = getelementptr %struct.wait_queue_entry, %struct.wait_queue_entry* %p, i64 -1, i32 3, i32 1
  %0 = bitcast %struct.list_head** %base to %struct.epitem**
  %1 = load %struct.epitem*, %struct.epitem** %0, align 8
  ret %struct.epitem* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_read_lock_irqsave(%struct.rwlock_t* noundef %lock) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !28
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_read_lock(%struct.qrwlock* noundef %raw_lock) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @chain_epi_lockless(%struct.epitem* noundef %epi) unnamed_addr #1 {
entry:
  %ep1 = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 5
  %0 = load %struct.eventpoll*, %struct.eventpoll** %ep1, align 8
  %next = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 2
  %1 = load %struct.epitem*, %struct.epitem** %next, align 8
  %cmp.not = icmp eq %struct.epitem* %1, inttoptr (i64 -1 to %struct.epitem*)
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.epitem** %next to i8*
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %2, i64 noundef -1, i64 noundef 0) #15
  %3 = inttoptr i64 %call14.i to %struct.epitem*
  %cmp4.not = icmp eq %struct.epitem* %3, inttoptr (i64 -1 to %struct.epitem*)
  br i1 %cmp4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %ovflist = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %0, i64 0, i32 6
  %4 = bitcast %struct.epitem** %ovflist to i8*
  %5 = ptrtoint %struct.epitem* %epi to i64
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i64 noundef %5, i8* noundef %4) #15
  %6 = inttoptr i64 %call11.i to %struct.epitem*
  store %struct.epitem* %6, %struct.epitem** %next, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i1 [ true, %if.end6 ], [ false, %entry ], [ false, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ep_pm_stay_awake_rcu(%struct.epitem* noundef %epi) unnamed_addr #1 {
entry:
  call fastcc void @__rcu_read_lock() #15
  %ws1 = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 7
  %0 = load volatile %struct.wakeup_source*, %struct.wakeup_source** %ws1, align 8
  call fastcc void @rcu_read_unlock() #16
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @list_add_tail_lockless(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.list_head* %new to i8*
  %1 = ptrtoint %struct.list_head* %new to i64
  %2 = ptrtoint %struct.list_head* %head to i64
  %call14.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %0, i64 noundef %1, i64 noundef %2) #15
  %3 = inttoptr i64 %call14.i to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %3, %new
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %4 = bitcast %struct.list_head** %prev3 to i8*
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i64 noundef %1, i8* noundef %4) #15
  %5 = inttoptr i64 %call11.i to %struct.list_head*
  %next8 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i64 0, i32 0
  store %struct.list_head* %new, %struct.list_head** %next8, align 8
  %prev9 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %5, %struct.list_head** %prev9, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %cmp.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock_irqrestore(%struct.rwlock_t* noundef %lock, i64 noundef %flags) unnamed_addr #1 {
entry:
  %raw_lock = getelementptr inbounds %struct.rwlock_t, %struct.rwlock_t* %lock, i64 0, i32 0
  call fastcc void @queued_read_unlock(%struct.qrwlock* noundef %raw_lock) #16
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #16
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.eppoll_entry* @ep_pwq_from_wait(%struct.wait_queue_entry* noundef readnone %p) unnamed_addr #6 {
entry:
  %add.ptr = getelementptr %struct.wait_queue_entry, %struct.wait_queue_entry* %p, i64 -1, i32 3
  %0 = bitcast %struct.list_head* %add.ptr to %struct.eppoll_entry*
  ret %struct.eppoll_entry* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
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
define internal fastcc void @queued_read_lock(%struct.qrwlock* noundef %lock) unnamed_addr #1 {
entry:
  %cnts1 = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire(%struct.atomic_t* noundef %cnts1) #15
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !10

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef %lock) #15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #17, !srcloc !30
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #17, !srcloc !31
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 512, i32* elementtype(i32) %counter) #17, !srcloc !32
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #17, !srcloc !33
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i64 noundef %x, i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %x, i64* elementtype(i64) %0) #17, !srcloc !34
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock(%struct.qrwlock* noundef %lock) unnamed_addr #1 {
entry:
  %cnts = getelementptr inbounds %struct.qrwlock, %struct.qrwlock* %lock, i64 0, i32 0, i32 0
  call fastcc void @__ll_sc_atomic_sub_return_release(%struct.atomic_t* noundef %cnts) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #17, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release(%struct.atomic_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 512, i32* elementtype(i32) %counter) #17, !srcloc !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @ep_has_wakeup_source(%struct.epitem* noundef %epi) unnamed_addr #11 {
entry:
  %ws = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 7
  %0 = load volatile %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8
  %tobool = icmp ne %struct.wakeup_source* %0, null
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ep_destroy_wakeup_source(%struct.epitem* noundef %epi) unnamed_addr #1 {
entry:
  %call = call fastcc %struct.wakeup_source* @ep_wakeup_source(%struct.epitem* noundef %epi) #16
  %ws4 = getelementptr inbounds %struct.epitem, %struct.epitem* %epi, i64 0, i32 7
  store volatile %struct.wakeup_source* null, %struct.wakeup_source** %ws4, align 8
  call void @synchronize_rcu() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @unlist_file(%struct.epitems_head* noundef %head) unnamed_addr #1 {
entry:
  %first = getelementptr inbounds %struct.epitems_head, %struct.epitems_head* %head, i64 0, i32 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %epitems = getelementptr inbounds %struct.epitems_head, %struct.epitems_head* %head, i64 0, i32 0
  %ffd = getelementptr %struct.hlist_node, %struct.hlist_node* %0, i64 -2
  %file = bitcast %struct.hlist_node* %ffd to %struct.file**
  %1 = load %struct.file*, %struct.file** %file, align 8
  %rlock.i = getelementptr inbounds %struct.file, %struct.file* %1, i64 0, i32 4, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #15
  %call = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %epitems) #16
  %tobool10.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool10.not, %struct.epitems_head* null, %struct.epitems_head* %head
  %next = getelementptr inbounds %struct.epitems_head, %struct.epitems_head* %head, i64 0, i32 1
  store %struct.epitems_head* null, %struct.epitems_head** %next, align 8
  %2 = load %struct.file*, %struct.file** %file, align 8
  %rlock.i27 = getelementptr inbounds %struct.file, %struct.file* %2, i64 0, i32 4, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i27) #15
  br label %if.end15

if.end15:                                         ; preds = %if.then, %entry
  %to_free.1 = phi %struct.epitems_head* [ %spec.select, %if.then ], [ %head, %entry ]
  call fastcc void @free_ephead(%struct.epitems_head* noundef %to_free.1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_epoll_ctl(i32 noundef %epfd, i32 noundef %op, i32 noundef %fd, %struct.epoll_event* noundef %event) unnamed_addr #1 {
entry:
  %epds = alloca %struct.epoll_event, align 8
  %0 = bitcast %struct.epoll_event* %epds to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %call = call fastcc i32 @ep_op_has_event(i32 noundef %op) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = bitcast %struct.epoll_event* %event to i8*
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %1) #15
  %tobool2.not = icmp eq i64 %call2.i, 0
  br i1 %tobool2.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = call i32 @do_epoll_ctl(i32 noundef %epfd, i32 noundef %op, i32 noundef %fd, %struct.epoll_event* noundef nonnull %epds, i1 noundef false) #16
  %conv = sext i32 %call3 to i64
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i64 [ %conv, %if.end ], [ -14, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from) unnamed_addr #1 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef 16) #16
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.then16, label %if.end, !prof !7

if.end:                                           ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #16
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef 16) #15
  %tobool8.not = icmp eq i64 %call6, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !10

if.then16:                                        ; preds = %entry, %if.end
  %res.03 = phi i64 [ %call6, %if.end ], [ 16, %entry ]
  %sub = sub i64 16, %res.03
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.03) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  %res.04 = phi i64 [ %res.03, %if.then16 ], [ 0, %if.end ]
  ret i64 %res.04
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #1 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #17, !srcloc !37
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #17, !srcloc !38
  call void asm sideeffect "hint #20", "~{memory}"() #17, !srcloc !39
  ret i8* %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_epoll_wait(i32 noundef %epfd, %struct.epoll_event* noundef %events, i32 noundef %maxevents, i32 noundef %timeout) unnamed_addr #1 {
entry:
  %to = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %to to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %conv = sext i32 %timeout to i64
  %call = call fastcc %struct.timespec64* @ep_timeout_to_timespec(%struct.timespec64* noundef nonnull %to, i64 noundef %conv) #16
  %call1 = call fastcc i32 @do_epoll_wait(i32 noundef %epfd, %struct.epoll_event* noundef %events, i32 noundef %maxevents, %struct.timespec64* noundef %call) #16
  %conv2 = sext i32 %call1 to i64
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret i64 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_epoll_wait(i32 noundef %epfd, %struct.epoll_event* noundef %events, i32 noundef %maxevents, %struct.timespec64* noundef %to) unnamed_addr #1 {
entry:
  %0 = add i32 %maxevents, -134217728
  %1 = icmp ult i32 %0, -134217727
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv35 = zext i32 %maxevents to i64
  %2 = bitcast %struct.epoll_event* %events to i8*
  %mul = shl nuw nsw i64 %conv35, 4
  %call = call fastcc i64 @__range_ok(i8* noundef %2, i64 noundef %mul) #16
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc [2 x i64] @fdget(i32 noundef %epfd) #16
  %call6.fca.0.extract = extractvalue [2 x i64] %call6, 0
  %3 = inttoptr i64 %call6.fca.0.extract to %struct.file*
  %tobool7.not = icmp eq i64 %call6.fca.0.extract, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call11 = call fastcc i32 @is_file_epoll(%struct.file* noundef nonnull %3) #16
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %error_fput, label %if.end14

if.end14:                                         ; preds = %if.end9
  %private_data = getelementptr inbounds %struct.file, %struct.file* %3, i64 0, i32 15
  %4 = bitcast i8** %private_data to %struct.eventpoll**
  %5 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %call16 = call fastcc i32 @ep_poll(%struct.eventpoll* noundef %5, %struct.epoll_event* noundef %events, i32 noundef %maxevents, %struct.timespec64* noundef %to) #16
  br label %error_fput

error_fput:                                       ; preds = %if.end9, %if.end14
  %error.0 = phi i32 [ %call16, %if.end14 ], [ -22, %if.end9 ]
  call fastcc void @fdput([2 x i64] %call6) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end, %entry, %error_fput
  %retval.0 = phi i32 [ %error.0, %error_fput ], [ -22, %entry ], [ -14, %if.end ], [ -9, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.timespec64* @ep_timeout_to_timespec(%struct.timespec64* noundef %to, i64 noundef %ms) unnamed_addr #1 {
entry:
  %now = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %now to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %cmp = icmp slt i64 %ms, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i64 %ms, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %to, i64 0, i32 0
  store i64 0, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %to, i64 0, i32 1
  store i64 0, i64* %tv_nsec, align 8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %div20 = udiv i64 %ms, 1000
  %tv_sec3 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %to, i64 0, i32 0
  store i64 %div20, i64* %tv_sec3, align 8
  %1 = mul i64 %div20, 1000
  %rem21.decomposed = sub i64 %ms, %1
  %mul = mul nuw nsw i64 %rem21.decomposed, 1000000
  %tv_nsec4 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %to, i64 0, i32 1
  store i64 %mul, i64* %tv_nsec4, align 8
  call void @ktime_get_ts64(%struct.timespec64* noundef nonnull %now) #15
  %.fca.0.gep = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 0
  %.fca.0.load = load i64, i64* %.fca.0.gep, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %2 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %now, i64 0, i32 1
  %.fca.1.load = load i64, i64* %2, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  %.unpack = load i64, i64* %tv_sec3, align 8
  %3 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.unpack19 = load i64, i64* %tv_nsec4, align 8
  %4 = insertvalue [2 x i64] %3, i64 %.unpack19, 1
  %call = call [2 x i64] @timespec64_add_safe([2 x i64] %.fca.1.insert, [2 x i64] %4) #15
  %call.fca.0.extract = extractvalue [2 x i64] %call, 0
  %call.fca.1.extract = extractvalue [2 x i64] %call, 1
  store i64 %call.fca.0.extract, i64* %tv_sec3, align 8
  store i64 %call.fca.1.extract, i64* %tv_nsec4, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2, %if.then1
  %retval.0 = phi %struct.timespec64* [ %to, %if.end2 ], [ %to, %if.then1 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret %struct.timespec64* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ep_poll(%struct.eventpoll* noundef %ep, %struct.epoll_event* noundef %events, i32 noundef %maxevents, %struct.timespec64* noundef %timeout) unnamed_addr #1 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 8
  %expires = alloca i64, align 8
  %0 = bitcast %struct.wait_queue_entry* %wait to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !9
  %1 = bitcast i64* %expires to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #17
  store i64 0, i64* %expires, align 8, !annotation !9
  %tobool.not = icmp eq %struct.timespec64* %timeout, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %timeout, i64 0, i32 0
  %2 = load i64, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %timeout, i64 0, i32 1
  %3 = load i64, i64* %tv_nsec, align 8
  %or = or i64 %3, %2
  %tobool1.not = icmp eq i64 %or, 0
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i64 @select_estimate_accuracy(%struct.timespec64* noundef nonnull %timeout) #15
  %.unpack = load i64, i64* %tv_sec, align 8
  %4 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.unpack120 = load i64, i64* %tv_nsec, align 8
  %5 = insertvalue [2 x i64] %4, i64 %.unpack120, 1
  %call2 = call fastcc i64 @timespec64_to_ktime([2 x i64] %5) #16
  store i64 %call2, i64* %expires, align 8
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true, %entry
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select = zext i1 %not.tobool.not to i32
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then
  %timed_out.0 = phi i32 [ 0, %if.then ], [ %spec.select, %if.else ]
  %slack.0 = phi i64 [ %call, %if.then ], [ 0, %if.else ]
  %to.0 = phi i64* [ %expires, %if.then ], [ null, %if.else ]
  %call6 = call fastcc i32 @ep_events_available(%struct.eventpoll* noundef %ep) #16
  %private = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 1
  %6 = bitcast i8** %private to %struct.task_struct**
  %func = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 2
  %entry28 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 3
  %flags = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wait, i64 0, i32 0
  %lock = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 4
  %wq = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end5
  %eavail.0 = phi i32 [ %call6, %if.end5 ], [ %eavail.0.be, %while.cond.backedge ]
  %timed_out.1 = phi i32 [ %timed_out.0, %if.end5 ], [ %timed_out.2, %while.cond.backedge ]
  %tobool7.not = icmp eq i32 %eavail.0, 0
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %while.cond
  %call9 = call fastcc i32 @ep_send_events(%struct.eventpoll* noundef %ep, %struct.epoll_event* noundef %events, i32 noundef %maxevents) #16
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.then8, %while.cond
  %tobool14.not = icmp eq i32 %timed_out.1, 0
  br i1 %tobool14.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.end13
  %7 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !24
  %8 = inttoptr i64 %7 to %struct.task_struct*
  %call22 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %8) #16
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body26, label %cleanup

do.body26:                                        ; preds = %if.end16
  store %struct.task_struct* %8, %struct.task_struct** %6, align 8
  store i32 (%struct.wait_queue_entry*, i32, i32, i8*)* @autoremove_wake_function, i32 (%struct.wait_queue_entry*, i32, i32, i8*)** %func, align 8
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry28) #16
  store i32 0, i32* %flags, align 8
  call fastcc void @__raw_write_lock_irq(%struct.rwlock_t* noundef %lock) #16
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i64 0, i32 1
  store volatile i32 1, i32* %__state, align 16
  %call47 = call fastcc i32 @ep_events_available(%struct.eventpoll* noundef %ep) #16
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %do.body65.critedge

if.then49:                                        ; preds = %do.body26
  call fastcc void @__add_wait_queue_exclusive(%struct.wait_queue_head* noundef %wq, %struct.wait_queue_entry* noundef nonnull %wait) #16
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) #16
  %call54 = call i32 @schedule_hrtimeout_range(i64* noundef %to.0, i64 noundef %slack.0, i32 noundef 0) #15
  %tobool55.not = icmp eq i32 %call54, 0
  %lnot.ext = zext i1 %tobool55.not to i32
  br label %do.body65

do.body65.critedge:                               ; preds = %do.body26
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) #16
  br label %do.body65

do.body65:                                        ; preds = %do.body65.critedge, %if.then49
  %timed_out.2 = phi i32 [ %lnot.ext, %if.then49 ], [ 0, %do.body65.critedge ]
  store volatile i32 0, i32* %__state, align 16
  %call75 = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %entry28) #16
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then77, label %while.cond.backedge

if.then77:                                        ; preds = %do.body65
  call fastcc void @__raw_write_lock_irq(%struct.rwlock_t* noundef %lock) #16
  %tobool79.not = icmp eq i32 %timed_out.2, 0
  br i1 %tobool79.not, label %if.end83, label %if.then80

if.then80:                                        ; preds = %if.then77
  %call82 = call fastcc i32 @list_empty(%struct.list_head* noundef %entry28) #16
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.then77
  %eavail.1 = phi i32 [ %call82, %if.then80 ], [ 1, %if.then77 ]
  call fastcc void @__remove_wait_queue(%struct.wait_queue_entry* noundef nonnull %wait) #16
  call fastcc void @__raw_write_unlock_irq(%struct.rwlock_t* noundef %lock) #16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end83, %do.body65
  %eavail.0.be = phi i32 [ 1, %do.body65 ], [ %eavail.1, %if.end83 ]
  br label %while.cond

cleanup:                                          ; preds = %if.end16, %if.end13, %if.then8
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ 0, %if.end13 ], [ -4, %if.end16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @select_estimate_accuracy(%struct.timespec64* noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @timespec64_to_ktime([2 x i64] %ts.coerce) unnamed_addr #6 {
entry:
  %ts.coerce.fca.0.extract = extractvalue [2 x i64] %ts.coerce, 0
  %ts.coerce.fca.1.extract = extractvalue [2 x i64] %ts.coerce, 1
  %call = call fastcc i64 @ktime_set(i64 noundef %ts.coerce.fca.0.extract, i64 noundef %ts.coerce.fca.1.extract) #16
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ep_events_available(%struct.eventpoll* noundef %ep) unnamed_addr #1 {
entry:
  %rdllist = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 3
  %call = call fastcc i32 @list_empty_careful(%struct.list_head* noundef %rdllist) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.end, label %do.end

do.end:                                           ; preds = %entry
  %ovflist = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 6
  %0 = load volatile %struct.epitem*, %struct.epitem** %ovflist, align 8
  %cmp = icmp ne %struct.epitem* %0, inttoptr (i64 -1 to %struct.epitem*)
  %phi.cast = zext i1 %cmp to i32
  br label %lor.end

lor.end:                                          ; preds = %do.end, %entry
  %1 = phi i32 [ 1, %entry ], [ %phi.cast, %do.end ]
  ret i32 %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @ep_send_events(%struct.eventpoll* noundef %ep, %struct.epoll_event* noundef %events, i32 noundef %maxevents) unnamed_addr #1 {
entry:
  %txlist = alloca %struct.list_head, align 8
  %pt = alloca %struct.poll_table_struct, align 8
  %0 = bitcast %struct.list_head* %txlist to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %txlist, i64 0, i32 0
  store %struct.list_head* %txlist, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %txlist, i64 0, i32 1
  store %struct.list_head* %txlist, %struct.list_head** %prev, align 8
  %1 = bitcast %struct.poll_table_struct* %pt to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !9
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !24
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %call1 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %3) #16
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup60

if.end:                                           ; preds = %entry
  call fastcc void @init_poll_funcptr(%struct.poll_table_struct* noundef nonnull %pt, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* noundef null) #16
  %mtx = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 0
  call void @mutex_lock(%struct.mutex* noundef %mtx) #15
  call fastcc void @ep_start_scan(%struct.eventpoll* noundef %ep, %struct.list_head* noundef nonnull %txlist) #16
  %4 = bitcast %struct.list_head* %txlist to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast i8* %5 to %struct.list_head*
  %cmp.not111 = icmp ne %struct.list_head* %txlist, %6
  %cmp12.not112 = icmp sgt i32 %maxevents, 0
  %or.cond113 = and i1 %cmp.not111, %cmp12.not112
  br i1 %or.cond113, label %if.end14.lr.ph, label %for.end

if.end14.lr.ph:                                   ; preds = %if.end
  %rdllist = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %ep, i64 0, i32 3
  br label %if.end14

if.end14:                                         ; preds = %if.end14.lr.ph, %cleanup
  %7 = phi %struct.list_head* [ %6, %if.end14.lr.ph ], [ %12, %cleanup ]
  %events.addr.0116 = phi %struct.epoll_event* [ %events, %if.end14.lr.ph ], [ %events.addr.1, %cleanup ]
  %.pn.in.in115 = phi i8* [ %5, %if.end14.lr.ph ], [ %.pn119, %cleanup ]
  %res.0114 = phi i32 [ 0, %if.end14.lr.ph ], [ %res.1, %cleanup ]
  %epi.0.in117 = getelementptr i8, i8* %.pn.in.in115, i64 -24
  %epi.0118 = bitcast i8* %epi.0.in117 to %struct.epitem*
  %.pn119.in = bitcast i8* %.pn.in.in115 to i8**
  %.pn119 = load i8*, i8** %.pn119.in, align 8
  %call15 = call fastcc %struct.wakeup_source* @ep_wakeup_source(%struct.epitem* noundef %epi.0118) #16
  call fastcc void @list_del_init(%struct.list_head* noundef %7) #16
  %call23 = call fastcc i32 @ep_item_poll(%struct.epitem* noundef %epi.0118, %struct.poll_table_struct* noundef nonnull %pt, i32 noundef 1) #16
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end14
  %data = getelementptr i8, i8* %.pn.in.in115, i64 88
  %8 = bitcast i8* %data to i64*
  %9 = load i64, i64* %8, align 8
  %call27 = call fastcc %struct.epoll_event* @epoll_put_uevent(i32 noundef %call23, i64 noundef %9, %struct.epoll_event* noundef %events.addr.0116) #16
  %tobool28.not = icmp eq %struct.epoll_event* %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end26
  %epi.0118.le = bitcast i8* %epi.0.in117 to %struct.epitem*
  %10 = bitcast i8* %.pn.in.in115 to %struct.list_head*
  call fastcc void @list_add(%struct.list_head* noundef %10, %struct.list_head* noundef nonnull %txlist) #16
  call fastcc void @ep_pm_stay_awake(%struct.epitem* noundef %epi.0118.le) #16
  %tobool31.not = icmp eq i32 %res.0114, 0
  %spec.store.select = select i1 %tobool31.not, i32 -14, i32 %res.0114
  br label %for.end

if.end34:                                         ; preds = %if.end26
  %event = getelementptr i8, i8* %.pn.in.in115, i64 80
  %inc = add nsw i32 %res.0114, 1
  %events36 = bitcast i8* %event to i32*
  %11 = load i32, i32* %events36, align 8
  %and = and i32 %11, 1073741824
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end34
  %and41 = and i32 %11, -268435456
  store i32 %and41, i32* %events36, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end34
  %tobool45.not = icmp sgt i32 %11, -1
  br i1 %tobool45.not, label %if.then46, label %cleanup

if.then46:                                        ; preds = %if.else
  call fastcc void @list_add_tail(%struct.list_head* noundef %7, %struct.list_head* noundef %rdllist) #16
  call fastcc void @ep_pm_stay_awake(%struct.epitem* noundef %epi.0118) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.then46, %if.else, %if.end14
  %res.1 = phi i32 [ %res.0114, %if.end14 ], [ %inc, %if.else ], [ %inc, %if.then46 ], [ %inc, %if.then38 ]
  %events.addr.1 = phi %struct.epoll_event* [ %events.addr.0116, %if.end14 ], [ %call27, %if.else ], [ %call27, %if.then46 ], [ %call27, %if.then38 ]
  %12 = bitcast i8* %.pn119 to %struct.list_head*
  %cmp.not = icmp ne %struct.list_head* %txlist, %12
  %cmp12.not = icmp slt i32 %res.1, %maxevents
  %or.cond = select i1 %cmp.not, i1 %cmp12.not, i1 false
  br i1 %or.cond, label %if.end14, label %for.end

for.end:                                          ; preds = %cleanup, %if.end, %if.then29
  %res.2 = phi i32 [ %spec.store.select, %if.then29 ], [ 0, %if.end ], [ %res.1, %cleanup ]
  call fastcc void @ep_done_scan(%struct.eventpoll* noundef %ep, %struct.list_head* noundef nonnull %txlist) #16
  call void @mutex_unlock(%struct.mutex* noundef %mtx) #15
  br label %cleanup60

cleanup60:                                        ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %res.2, %for.end ], [ -4, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @signal_pending(%struct.task_struct* noundef %p) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 6) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return, !prof !10

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #16
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call3, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(%struct.wait_queue_entry* noundef, i32 noundef, i32 noundef, i8* noundef) #0

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__add_wait_queue_exclusive(%struct.wait_queue_head* noundef %wq_head, %struct.wait_queue_entry* noundef %wq_entry) unnamed_addr #10 {
entry:
  %flags = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 0
  %0 = load i32, i32* %flags, align 8
  %or = or i32 %0, 1
  store i32 %or, i32* %flags, align 8
  call fastcc void @__add_wait_queue(%struct.wait_queue_head* noundef %wq_head, %struct.wait_queue_entry* noundef %wq_entry) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(i64* noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @list_empty_careful(%struct.list_head* noundef %head) unnamed_addr #1 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = call i64 asm sideeffect "ldar $0, $1", "=r,*Q,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next1) #17, !srcloc !40
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__remove_wait_queue(%struct.wait_queue_entry* nocapture noundef %wq_entry) unnamed_addr #10 {
entry:
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 3
  call fastcc void @list_del(%struct.list_head* noundef %entry1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) unnamed_addr #6 {
entry:
  %cmp = icmp sgt i64 %secs, 9223372035
  %mul = mul i64 %secs, 1000000000
  %add = add i64 %mul, %nsecs
  %retval.0 = select i1 %cmp, i64 9223372036854775807, i64 %add, !prof !7
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #16
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.epoll_event* @epoll_put_uevent(i32 noundef %revents, i64 noundef %data, %struct.epoll_event* noundef %uevent) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.epoll_event* %uevent to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef %0, i64 noundef 4) #16
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %0) #16
  %1 = bitcast i8* %call1 to i32*
  %2 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %revents, i32* %1, i32 -14, i32 0) #17, !srcloc !41
  %phi.cmp = icmp eq i32 %2, 0
  br i1 %phi.cmp, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.then
  %data14 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %uevent, i64 0, i32 1
  %3 = bitcast i64* %data14 to i8*
  %call15 = call fastcc i64 @__range_ok(i8* noundef %3, i64 noundef 8) #16
  %tobool16.not = icmp eq i64 %call15, 0
  br i1 %tobool16.not, label %return, label %if.then17

if.then17:                                        ; preds = %lor.lhs.false
  %call18 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %3) #16
  %4 = bitcast i8* %call18 to i64*
  %5 = call i32 asm sideeffect "1:\09sttr\09${1:x}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i64 %data, i64* %4, i32 -14, i32 0) #17, !srcloc !42
  %phi.cmp50 = icmp eq i32 %5, 0
  %add.ptr = getelementptr %struct.epoll_event, %struct.epoll_event* %uevent, i64 1
  %spec.select = select i1 %phi.cmp50, %struct.epoll_event* %add.ptr, %struct.epoll_event* null
  br label %return

return:                                           ; preds = %if.then17, %if.then, %entry, %lor.lhs.false
  %retval.0 = phi %struct.epoll_event* [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.then ], [ %spec.select, %if.then17 ]
  ret %struct.epoll_event* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #11 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p, i32 noundef 0) #16
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #5 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #16
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk, i32 noundef %flag) unnamed_addr #11 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #16
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef %flag) #16
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #11 {
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
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #6 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #5 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__add_wait_queue(%struct.wait_queue_head* noundef %wq_head, %struct.wait_queue_entry* noundef %wq_entry) unnamed_addr #10 {
entry:
  %head1 = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %wq_head, i64 0, i32 1
  %0 = bitcast %struct.list_head* %head1 to i8**
  %.pn24 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn24 to %struct.list_head*
  %cmp.not25 = icmp eq %struct.list_head* %head1, %1
  br i1 %cmp.not25, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wq.0.in29 = getelementptr i8, i8* %.pn24, i64 -24
  %flags30 = bitcast i8* %wq.0.in29 to i32*
  %2 = load i32, i32* %flags30, align 8
  %and31 = and i32 %2, 32
  %tobool.not32 = icmp eq i32 %and31, 0
  br i1 %tobool.not32, label %for.end, label %if.end

for.body:                                         ; preds = %if.end
  %wq.0.in = getelementptr i8, i8* %.pn, i64 -24
  %flags = bitcast i8* %wq.0.in to i32*
  %3 = load i32, i32* %flags, align 8
  %and = and i32 %3, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end, label %if.end

if.end:                                           ; preds = %for.body.preheader, %for.body
  %.pn2733 = phi i8* [ %.pn, %for.body ], [ %.pn24, %for.body.preheader ]
  %4 = phi %struct.list_head* [ %6, %for.body ], [ %1, %for.body.preheader ]
  %5 = bitcast i8* %.pn2733 to i8**
  %.pn = load i8*, i8** %5, align 8
  %6 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %head1, %6
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end, %for.body.preheader, %entry
  %head.0.lcssa = phi %struct.list_head* [ %head1, %entry ], [ %head1, %for.body.preheader ], [ %4, %if.end ], [ %4, %for.body ]
  %entry14 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %wq_entry, i64 0, i32 3
  call fastcc void @list_add(%struct.list_head* noundef %entry14, %struct.list_head* noundef %head.0.lcssa) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #10 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #16
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(%struct.timespec64* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local [2 x i64] @timespec64_add_safe([2 x i64], [2 x i64]) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_epoll_pwait(i32 noundef %epfd, %struct.epoll_event* noundef %events, i32 noundef %maxevents, i32 noundef %timeout, %struct.sigset_t* noundef %sigmask, i64 noundef %sigsetsize) unnamed_addr #1 {
entry:
  %to = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %to to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %conv = sext i32 %timeout to i64
  %call = call fastcc %struct.timespec64* @ep_timeout_to_timespec(%struct.timespec64* noundef nonnull %to, i64 noundef %conv) #16
  %call1 = call fastcc i32 @do_epoll_pwait(i32 noundef %epfd, %struct.epoll_event* noundef %events, i32 noundef %maxevents, %struct.timespec64* noundef %call, %struct.sigset_t* noundef %sigmask, i64 noundef %sigsetsize) #16
  %conv2 = sext i32 %call1 to i64
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret i64 %conv2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @do_epoll_pwait(i32 noundef %epfd, %struct.epoll_event* noundef %events, i32 noundef %maxevents, %struct.timespec64* noundef %to, %struct.sigset_t* noundef %sigmask, i64 noundef %sigsetsize) unnamed_addr #1 {
entry:
  %call = call i32 @set_user_sigmask(%struct.sigset_t* noundef %sigmask, i64 noundef %sigsetsize) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @do_epoll_wait(i32 noundef %epfd, %struct.epoll_event* noundef %events, i32 noundef %maxevents, %struct.timespec64* noundef %to) #16
  %cmp = icmp eq i32 %call1, -4
  call fastcc void @restore_saved_sigmask_unless(i1 noundef %cmp) #16
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_user_sigmask(%struct.sigset_t* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restore_saved_sigmask_unless(i1 noundef %interrupted) unnamed_addr #1 {
entry:
  br i1 %interrupted, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !24
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i32 @signal_pending(%struct.task_struct* noundef %1) #16
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then11, label %if.end19, !prof !7

if.then11:                                        ; preds = %if.then
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/sched/signal.h\22; .popsection; .long 14472b - 14470b; .short 515; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #17, !srcloc !43
  br label %if.end19

if.else:                                          ; preds = %entry
  call fastcc void @restore_saved_sigmask() #16
  br label %if.end19

if.end19:                                         ; preds = %if.then, %if.then11, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @restore_saved_sigmask() unnamed_addr #1 {
entry:
  %call = call fastcc i1 @test_and_clear_restore_sigmask() #16
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !24
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %saved_sigmask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 91
  call void @__set_current_blocked(%struct.sigset_t* noundef %saved_sigmask) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_restore_sigmask() unnamed_addr #1 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #18, !srcloc !24
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = getelementptr %struct.task_struct, %struct.task_struct* %1, i64 0, i32 0
  %call1 = call fastcc i32 @test_and_clear_ti_thread_flag(%struct.thread_info* noundef %2) #16
  %tobool = icmp ne i32 %call1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_current_blocked(%struct.sigset_t* noundef) local_unnamed_addr #0

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @test_and_clear_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %call = call fastcc i1 @test_and_clear_bit(i64* noundef %flags) #16
  %conv1 = zext i1 %call to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @test_and_clear_bit(i64* noundef %addr) unnamed_addr #1 {
entry:
  %0 = load volatile i64, i64* %addr, align 8
  %and.i = and i64 %0, 1048576
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %arch_test_and_clear_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = bitcast i64* %addr to %struct.atomic64_t*
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %1) #15
  %2 = and i64 %call.i.i.i, 1048576
  %phi.cmp = icmp ne i64 %2, 0
  br label %arch_test_and_clear_bit.exit

arch_test_and_clear_bit.exit:                     ; preds = %entry, %if.end.i
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_fetch_andnot(%struct.atomic64_t* noundef %v) unnamed_addr #1 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64, i64 } asm sideeffect "// atomic64_fetch_andnot\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09$0, $3\0A\09bic\09$1, $0, $4\0A\09stlxr\09${2:w}, $1, $3\0A\09cbnz\09${2:w}, 1b\0A\09dmb ish", "=&r,=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1048576, i64* elementtype(i64) %counter) #17, !srcloc !44
  %asmresult = extractvalue { i64, i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_epoll_pwait2(i32 noundef %epfd, %struct.epoll_event* noundef %events, i32 noundef %maxevents, %struct.__kernel_timespec* noundef %timeout, %struct.sigset_t* noundef %sigmask, i64 noundef %sigsetsize) unnamed_addr #1 {
entry:
  %ts = alloca %struct.timespec64, align 8
  %0 = bitcast %struct.timespec64* %ts to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #17
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !9
  %tobool.not = icmp eq %struct.__kernel_timespec* %timeout, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @get_timespec64(%struct.timespec64* noundef nonnull %ts, %struct.__kernel_timespec* noundef nonnull %timeout) #15
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 0
  %1 = load i64, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i64 0, i32 1
  %2 = load i64, i64* %tv_nsec, align 8
  %call3 = call i32 @poll_select_set_timeout(%struct.timespec64* noundef nonnull %ts, i64 noundef %1, i64 noundef %2) #15
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end, %entry
  %to.0 = phi %struct.timespec64* [ %ts, %if.end ], [ null, %entry ]
  %call8 = call fastcc i32 @do_epoll_pwait(i32 noundef %epfd, %struct.epoll_event* noundef %events, i32 noundef %maxevents, %struct.timespec64* noundef %to.0, %struct.sigset_t* noundef %sigmask, i64 noundef %sigsetsize) #16
  %conv = sext i32 %call8 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %if.end7
  %retval.0 = phi i64 [ %conv, %if.end7 ], [ -14, %if.then ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #17
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(%struct.timespec64* noundef, %struct.__kernel_timespec* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @poll_select_set_timeout(%struct.timespec64* noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(%struct.sysinfo* noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { nofree noinline nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { nofree noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nounwind }
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
!7 = !{!"branch_weights", i32 1, i32 2000}
!8 = !{i64 2158009335}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2158080716}
!12 = !{i64 2149895651}
!13 = !{i64 2149937305}
!14 = !{i64 2157985742}
!15 = !{i64 2149440868}
!16 = !{i64 2149441085}
!17 = !{i64 2149809988}
!18 = !{i64 2147893152, i64 2147893185, i64 2147893238, i64 2147893297, i64 2147893331, i64 2147893386, i64 2147893415, i64 2147893435}
!19 = !{i64 2149821330}
!20 = !{i64 2149764117}
!21 = !{i64 2148918472, i64 2148918519, i64 2148918525, i64 2148918562, i64 2148918580, i64 2148919921, i64 2148919969, i64 2148920017, i64 2148920080, i64 2148920129, i64 2148918658, i64 2148918683, i64 2148918709, i64 2148918715, i64 2148919587, i64 2148919627, i64 2148919645, i64 2148919677, i64 2148919705, i64 2148919759, i64 2148919779, i64 2148919876, i64 2148918738, i64 2148918752, i64 2148918758, i64 2148918808, i64 2148918854, i64 2148918887}
!22 = !{i64 2149773775}
!23 = !{i64 2148909016, i64 2148909063, i64 2148909069, i64 2148909106, i64 2148909124, i64 2148910464, i64 2148910512, i64 2148910560, i64 2148910623, i64 2148910672, i64 2148909202, i64 2148909227, i64 2148909253, i64 2148909259, i64 2148910130, i64 2148910170, i64 2148910188, i64 2148910220, i64 2148910248, i64 2148910302, i64 2148910322, i64 2148910419, i64 2148909282, i64 2148909296, i64 2148909302, i64 2148909352, i64 2148909398, i64 2148909431}
!24 = !{i64 1513247}
!25 = !{i64 2147803254, i64 2147803918, i64 2147803948, i64 2147803980, i64 2147804014, i64 2147804049, i64 2147804074}
!26 = !{i64 2149531358}
!27 = !{i64 2158040931}
!28 = !{i64 2149869231}
!29 = !{i64 2149921200}
!30 = !{i64 2148924175, i64 2148924222, i64 2148924228, i64 2148924265, i64 2148924283, i64 2148925594, i64 2148925642, i64 2148925690, i64 2148925753, i64 2148925802, i64 2148924361, i64 2148924386, i64 2148924412, i64 2148924418, i64 2148925260, i64 2148925300, i64 2148925318, i64 2148925350, i64 2148925378, i64 2148925432, i64 2148925452, i64 2148925549, i64 2148924441, i64 2148924455, i64 2148924461, i64 2148924511, i64 2148924557, i64 2148924590}
!31 = !{i64 2148926354, i64 2148926401, i64 2148926407, i64 2148926444, i64 2148926462, i64 2148927405, i64 2148927453, i64 2148927501, i64 2148927564, i64 2148927613, i64 2148926540, i64 2148926565, i64 2148926591, i64 2148926597, i64 2148926634, i64 2148926640, i64 2148926690, i64 2148926736, i64 2148926769}
!32 = !{i64 2147800174, i64 2147800840, i64 2147800870, i64 2147800903, i64 2147800937, i64 2147800972, i64 2147800997}
!33 = !{i64 2147912010, i64 2147912043, i64 2147912094, i64 2147912150, i64 2147912183, i64 2147912238, i64 2147912267, i64 2147912294}
!34 = !{i64 2147932168, i64 2147932200, i64 2147932244, i64 2147932291, i64 2147932317}
!35 = !{i64 2148930188, i64 2148930235, i64 2148930241, i64 2148930278, i64 2148930296, i64 2148931607, i64 2148931655, i64 2148931703, i64 2148931766, i64 2148931815, i64 2148930374, i64 2148930399, i64 2148930425, i64 2148930431, i64 2148931273, i64 2148931313, i64 2148931331, i64 2148931363, i64 2148931391, i64 2148931445, i64 2148931465, i64 2148931562, i64 2148930454, i64 2148930468, i64 2148930474, i64 2148930524, i64 2148930570, i64 2148930603}
!36 = !{i64 2147810922, i64 2147811588, i64 2147811618, i64 2147811650, i64 2147811684, i64 2147811720, i64 2147811745}
!37 = !{i64 3094477, i64 3094560, i64 3094784, i64 3095004, i64 3095027}
!38 = !{i64 3099179, i64 3099203}
!39 = !{i64 2150898637}
!40 = !{i64 2148640297}
!41 = !{i64 2154819992, i64 2154820030, i64 2154820047, i64 2154820081, i64 2154820103, i64 2154820129, i64 2154820147, i64 2154820305, i64 2154820346, i64 2154820368, i64 2154820414}
!42 = !{i64 2154824392, i64 2154824430, i64 2154824447, i64 2154824481, i64 2154824503, i64 2154824529, i64 2154824547, i64 2154824705, i64 2154824746, i64 2154824768, i64 2154824814}
!43 = !{i64 2151262957}
!44 = !{i64 2147877793, i64 2147878455, i64 2147878485, i64 2147878516, i64 2147878548, i64 2147878583, i64 2147878608}
