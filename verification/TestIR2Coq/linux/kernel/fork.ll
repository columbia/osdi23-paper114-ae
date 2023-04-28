; ModuleID = 'kernel/fork.c'
source_filename = "kernel/fork.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon, %struct.qspinlock }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.cpumask = type { [4 x i64] }
%struct.kmem_cache = type opaque
%struct.mm_struct = type { %struct.anon.6, [0 x i64] }
%struct.anon.6 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.7, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.pgprot_t = type { i64 }
%struct.anon.7 = type { %struct.rb_node, i64 }
%struct.anon_vma = type { %struct.anon_vma*, %struct.rw_semaphore, %struct.atomic_t, i32, %struct.anon_vma*, %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64, i64, i64)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, i32 (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.anon.8, i32, %struct.pmd_t*, %struct.pud_t*, %union.anon.9, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.anon.8 = type { %struct.vm_area_struct*, i32, i64, i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { %struct.p4d_t }
%struct.p4d_t = type { %struct.pgd_t }
%struct.pgd_t = type { i64 }
%union.anon.9 = type { %struct.pte_t }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.10, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.83, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.84, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.85, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.86, i32, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.user_namespace*, %struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32, i1)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.iattr*)*, i32 (%struct.user_namespace*, %struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.dentry*, i16)*, i32 (%struct.user_namespace*, %struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.user_namespace*, %struct.dentry*, %struct.fileattr*)*, i32 (%struct.dentry*, %struct.fileattr*)*, [8 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.36, %struct.list_head, %struct.list_head, %union.anon.37 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.14, i8* }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32, %struct.user_namespace* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.36 = type { %struct.list_head }
%union.anon.37 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.fileattr = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type { %struct.fs_context_operations*, %struct.mutex, %struct.file_system_type*, i8*, i8*, %struct.dentry*, %struct.user_namespace*, %struct.net*, %struct.cred*, %struct.p_log, i8*, i8*, i8*, i32, i32, i32, i32, i24 }
%struct.fs_context_operations = type { void (%struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_parameter*)*, i32 (%struct.fs_context*, i8*)*, {}*, {}* }
%struct.fs_parameter = type { i8*, i8, %union.anon.18, i64, i32 }
%union.anon.18 = type { i8* }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, %struct.user_namespace*, %struct.ucounts*, %struct.idr, %struct.ns_common, %struct.list_head, %struct.proc_dir_entry*, %struct.proc_dir_entry*, %struct.ctl_table_set, %struct.sock*, %struct.sock*, %struct.uevent_sock*, %struct.hlist_head*, %struct.hlist_head*, %struct.raw_notifier_head, i32, %struct.net_device*, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [16 x i8], %struct.netns_ipv4, %struct.net_generic*, %struct.netns_bpf, i64, %struct.sock*, [40 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { %struct.llist_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.proc_ns_operations = type opaque
%struct.proc_dir_entry = type opaque
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.21, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.uevent_sock = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.net_device = type opaque
%struct.netns_core = type { %struct.ctl_table_header*, i32, i32*, %struct.prot_inuse* }
%struct.prot_inuse = type opaque
%struct.netns_mib = type { %struct.ipstats_mib*, %struct.tcp_mib*, %struct.linux_mib*, %struct.udp_mib*, %struct.udp_mib*, %struct.icmp_mib*, %struct.icmpmsg_mib* }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type {}
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
%struct.ip_ra_chain = type opaque
%struct.inet_peer_base = type opaque
%struct.fqdir = type { i64, i64, i32, i32, %struct.inet_frags*, %struct.net*, i8, [23 x i8], %struct.rhashtable, [56 x i8], %struct.atomic64_t, %struct.work_struct, %struct.llist_node, [16 x i8] }
%struct.inet_frags = type { i32, void (%struct.inet_frag_queue*, i8*)*, void (%struct.inet_frag_queue*)*, void (%struct.timer_list*)*, %struct.kmem_cache*, i8*, %struct.rhashtable_params, %struct.refcount_struct, %struct.completion }
%struct.inet_frag_queue = type { %struct.rhash_head, %union.anon.87, %struct.timer_list, %struct.spinlock, %struct.refcount_struct, %struct.rb_root, %struct.sk_buff*, %struct.sk_buff*, i64, i32, i32, i8, i16, %struct.fqdir*, %struct.callback_head }
%struct.rhash_head = type { %struct.rhash_head* }
%union.anon.87 = type { %struct.frag_v6_compare_key }
%struct.frag_v6_compare_key = type { %struct.in6_addr, %struct.in6_addr, i32, i32, i32 }
%struct.in6_addr = type { %union.anon.88 }
%union.anon.88 = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.sk_buff = type { %union.anon.89, %union.anon.92, %union.anon.93, [48 x i8], %union.anon.94, i32, i32, i16, i16, i16, [0 x i8], i8, [0 x i32], [0 x i8], i16, [0 x i8], i16, %union.anon.96, i32, i32, i32, i16, i16, %union.anon.98, %union.anon.99, i16, i16, i16, i16, i16, i16, i16, [0 x i32], i32, i32, i8*, i8*, i32, %struct.refcount_struct }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { %struct.sk_buff*, %struct.sk_buff*, %union.anon.91 }
%union.anon.91 = type { %struct.net_device* }
%union.anon.92 = type { %struct.sock* }
%union.anon.93 = type { i64 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { i64, void (%struct.sk_buff*)* }
%union.anon.96 = type { i32 }
%union.anon.98 = type { i32 }
%union.anon.99 = type { i16 }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (%struct.rhashtable_compare_arg*, i8*)* }
%struct.rhashtable_compare_arg = type { %struct.rhashtable*, i8* }
%struct.rhashtable = type { %struct.bucket_table*, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.bucket_table = type opaque
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.tcp_congestion_ops = type opaque
%struct.tcp_fastopen_context = type opaque
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.fib_notifier_ops = type opaque
%struct.siphash_key_t = type { [2 x i64] }
%struct.net_generic = type opaque
%struct.netns_bpf = type { [2 x %struct.bpf_prog_array*], [2 x %struct.bpf_prog*], [2 x %struct.list_head] }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.bpf_prog_array_item = type { %struct.bpf_prog*, %union.anon.100 }
%struct.bpf_prog = type opaque
%union.anon.100 = type { [2 x %struct.bpf_cgroup_storage*] }
%struct.bpf_cgroup_storage = type opaque
%struct.sock = type opaque
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.user_struct*, %struct.user_namespace*, %struct.ucounts*, %struct.group_info*, %union.anon.23 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, i32* }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.23 = type { %struct.callback_head }
%struct.p_log = type { i8*, %struct.fc_log* }
%struct.fc_log = type { %struct.refcount_struct, i8, i8, i8, %struct.module*, [8 x i8*] }
%struct.fs_parameter_spec = type { i8*, i32 (%struct.p_log*, %struct.fs_parameter_spec*, %struct.fs_parameter*, %struct.fs_parse_result*)*, i8, i16, i8* }
%struct.fs_parse_result = type { i8, %union.anon.24 }
%union.anon.24 = type { i64 }
%struct.module = type opaque
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
%struct.xattr_handler = type { i8*, i8*, i32, i1 (%struct.dentry*)*, i32 (%struct.xattr_handler*, %struct.dentry*, %struct.inode*, i8*, i8*, i64)*, i32 (%struct.xattr_handler*, %struct.user_namespace*, %struct.dentry*, %struct.inode*, i8*, i8*, i64, i32)* }
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.26, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.26 = type { %struct.kernfs_elem_dir }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, %struct.block_device*, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.mutex, i32, %struct.backing_dev_info*, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, i32, %struct.badblocks*, %struct.lockdep_map, i64 }
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, i32 (%struct.block_device*, i1)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops*, i32 (%struct.gendisk*, i64*)* }
%struct.bio = type { %struct.bio*, %struct.block_device*, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.27, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.27 = type {}
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.bio_alloc_cache*, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct*, %struct.hlist_node }
%struct.bio_alloc_cache = type opaque
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, i8*, i64, %struct.atomic_t, i32, %struct.spinlock, %struct.gendisk*, %struct.kobject, %struct.kobject*, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.28, %union.anon.29, %union.anon.30, %struct.gendisk*, %struct.block_device*, i64, i64, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.35, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.28 = type { %struct.hlist_node }
%union.anon.29 = type { %struct.rb_node }
%union.anon.30 = type { %struct.anon.34 }
%struct.anon.34 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.35 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %struct.__call_single_node, void (i8*)*, i8* }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5, i16, i16 }
%union.anon.5 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { i32 (%struct.request_queue*, %struct.elevator_type*)*, void (%struct.elevator_queue*)*, i32 (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*, i32)*, void (%struct.blk_mq_hw_ctx*)*, i1 (%struct.request_queue*, %struct.request*, %struct.bio*)*, i1 (%struct.request_queue*, %struct.bio*, i32)*, i32 (%struct.request_queue*, %struct.request**, %struct.bio*)*, void (%struct.request_queue*, %struct.request*, i32)*, void (%struct.request_queue*, %struct.request*, %struct.request*)*, void (i32, %struct.blk_mq_alloc_data*)*, void (%struct.request*)*, void (%struct.request*)*, void (%struct.blk_mq_hw_ctx*, %struct.list_head*, i1)*, %struct.request* (%struct.blk_mq_hw_ctx*)*, i1 (%struct.blk_mq_hw_ctx*)*, void (%struct.request*, i64)*, void (%struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, %struct.request* (%struct.request_queue*, %struct.request*)*, void (%struct.io_cq*)*, void (%struct.io_cq*)* }
%struct.blk_mq_alloc_data = type opaque
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.elv_fs_entry = type { %struct.attribute, i64 (%struct.elevator_queue*, i8*)*, i64 (%struct.elevator_queue*, i8*, i64)* }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.blk_mq_tag_set = type opaque
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i64, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.81, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i64, %union.anon.3 }
%union.anon.3 = type { i64 }
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
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.nameidata = type opaque
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, %struct.fdtable*, %struct.fdtable, [32 x i8], %struct.spinlock, i32, [1 x i64], [1 x i64], [1 x i64], [64 x %struct.file*], [32 x i8] }
%struct.fdtable = type { i32, %struct.file**, i64*, i64*, i64*, %struct.callback_head }
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.css_set = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, %struct.winsize, %struct.anon.78, %struct.anon.79, i32, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.38 }
%union.anon.38 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i8, i8, i64, i64, %union.anon.39, %union.anon.40 }
%union.anon.39 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.40 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.42 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.42 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64, i8**, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module* }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.78 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.79 = type { %struct.spinlock, %struct.pid*, %struct.pid*, i8, i8, [0 x i64] }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.77, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.77 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
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
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.kernel_siginfo = type { %struct.anon.58 }
%struct.anon.58 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.62 }
%struct.anon.62 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type { %struct.robust_list, i64, %struct.robust_list* }
%struct.robust_list = type { %struct.robust_list* }
%struct.futex_pi_state = type opaque
%struct.rseq = type { i32, i32, %union.anon.80, i32, [12 x i8] }
%union.anon.80 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.81 = type { %struct.callback_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.page*, %struct.fasync_struct*, %struct.fasync_struct*, %struct.pipe_buffer*, %struct.user_struct* }
%struct.pipe_buffer = type { %struct.page*, i32, i32, %struct.pipe_buf_operations*, i32, i64 }
%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, void (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i1 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.82, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.82 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64, [24 x i8] }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.83 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.84 = type { %struct.callback_head }
%union.anon.85 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.86 = type { %struct.pipe_inode_info* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, %struct.file_ra_state*, i64, i32, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.swap_info_struct = type { %struct.percpu_ref, i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.57 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type { %struct.list_head, %struct.module*, i32 (%struct.linux_binprm*)*, i32 (%struct.file*)*, i32 (%struct.coredump_params*)*, i64 }
%struct.linux_binprm = type { %struct.vm_area_struct*, i64, %struct.mm_struct*, i64, i64, i8, %struct.file*, %struct.file*, %struct.file*, %struct.cred*, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i64, %struct.rlimit, [256 x i8] }
%struct.coredump_params = type { %struct.kernel_siginfo*, %struct.pt_regs*, %struct.file*, i64, i64, i64, i64, i64 }
%struct.pt_regs = type { %union.anon.70, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.70 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [48 x i8] }
%struct.anon.20 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.hlist_head*, %struct.address_space*, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, i64, i64, i64, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.task_struct*, i32, i32, i32, i64, [56 x i8], %struct.zone_padding, %struct.lruvec, i64, [48 x i8], %struct.zone_padding, %struct.per_cpu_nodestat*, [38 x %struct.atomic64_t], [8 x i8] }
%struct.zone = type { [3 x i64], i64, i64, [4 x i64], %struct.pglist_data*, %struct.per_cpu_pages*, %struct.per_cpu_zonestat*, i32, i32, i64, %struct.atomic64_t, i64, i64, i8*, i32, [44 x i8], %struct.zone_padding, [11 x %struct.free_area], i64, %struct.spinlock, [28 x i8], %struct.zone_padding, i64, i8, [55 x i8], %struct.zone_padding, [10 x %struct.atomic64_t], [0 x %struct.atomic64_t], [48 x i8] }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.free_area = type { [4 x %struct.list_head], i64 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { %struct.zone*, i32 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i64, i64, %struct.atomic64_t, [2 x i64], i64 }
%struct.zone_padding = type { [0 x i8] }
%struct.per_cpu_nodestat = type { i8, [38 x i8] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.kernel_clone_args = type { i64, i32*, i32*, i32*, i32, i64, i64, i64, i32*, i64, i32, i32, %struct.cgroup*, %struct.css_set* }
%struct.cgroup = type opaque
%struct.multiprocess_signals = type { %struct.sigset_t, %struct.hlist_node }
%struct.clone_args = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.proc_fs_info = type { %struct.pid_namespace*, %struct.dentry*, %struct.dentry*, %struct.kgid_t, i32, i32 }
%struct.nodemask_t = type { [1 x i64] }

@process_counts = dso_local global i64 0, section ".data..percpu", align 8
@tasklist_lock = dso_local global %struct.rwlock_t zeroinitializer, section ".data..cacheline_aligned", align 64
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@vm_area_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@init_mm = external dso_local global %struct.mm_struct, align 8
@mm_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"task_struct\00", align 1
@task_struct_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@max_threads = internal unnamed_addr global i32 0, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@init_user_ns = external dso_local global %struct.user_namespace, align 8
@mmlist_lock = dso_local global %struct.spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@__setup_str_coredump_filter_setup = internal constant [17 x i8] c"coredump_filter=\00", section ".init.rodata", align 1
@__setup_coredump_filter_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__setup_str_coredump_filter_setup, i32 0, i32 0), i32 (i8*)* @coredump_filter_setup, i32 0 }, section ".init.setup", align 8
@sighand_cachep = dso_local local_unnamed_addr global %struct.kmem_cache* null, align 8
@pidfd_fops = dso_local constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @pidfd_poll, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @pidfd_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* @pidfd_show_fdinfo, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8
@init_struct_pid = external dso_local global %struct.pid, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"sighand_cache\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"signal_cache\00", align 1
@signal_cachep = internal unnamed_addr global %struct.kmem_cache* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"files_cache\00", align 1
@files_cachep = dso_local local_unnamed_addr global %struct.kmem_cache* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"fs_cache\00", align 1
@fs_cachep = dso_local local_unnamed_addr global %struct.kmem_cache* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"mm_struct\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"vm_area_struct\00", align 1
@total_forks = dso_local local_unnamed_addr global i64 0, align 8
@nr_threads = dso_local local_unnamed_addr global i32 0, align 4
@vma_init.dummy_vm_ops = internal constant %struct.vm_operations_struct zeroinitializer, align 8
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@.str.7 = private unnamed_addr constant [52 x i8] c"\011BUG: Bad rss-counter state mm:%p type:%s val:%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"\011BUG: non-zero pgtables_bytes on freeing mm: %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"MM_FILEPAGES\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"MM_ANONPAGES\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"MM_SWAPENTS\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"MM_SHMEMPAGES\00", align 1
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@default_dump_filter = internal unnamed_addr global i64 140, align 8
@mmap_init_lock.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"&mm->mmap_lock\00", align 1
@system_wq = external dso_local local_unnamed_addr global %struct.workqueue_struct*, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"Pid:\09\00", align 1
@root_user = external dso_local global %struct.user_struct, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"[pidfd]\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@copy_signal.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"&sig->wait_chldexit\00", align 1
@copy_signal.__key.18 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"&sig->cred_guard_mutex\00", align 1
@copy_signal.__key.20 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"&sig->exec_update_lock\00", align 1
@futex_init_task.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"&tsk->futex_exit_mutex\00", align 1
@oom_adj_mutex = external dso_local global %struct.mutex, align 8
@dup_mm_exe_file.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\014deny_write_access() failed in %s\0A\00", align 1
@__func__.dup_mm_exe_file = private unnamed_addr constant [16 x i8] c"dup_mm_exe_file\00", align 1
@arm64_const_caps_ready = external dso_local global %struct.static_key_false, align 4
@cpu_hwcap_keys = external dso_local global [61 x %struct.static_key_false], align 4
@cpu_hwcaps = external dso_local global [1 x i64], align 8
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@sighand_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"&sighand->signalfd_wqh\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_coredump_filter_setup to i8*)], section "llvm.metadata"

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define dso_local i32 @nr_processes() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call12 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %cmp13 = icmp ult i32 %call12, %0
  br i1 %cmp13, label %do.body, label %for.end

do.body:                                          ; preds = %entry, %do.body
  %call15 = phi i32 [ %call, %do.body ], [ %call12, %entry ]
  %total.014 = phi i32 [ %conv3, %do.body ], [ 0, %entry ]
  %idxprom = sext i32 %call15 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %1 = load i64, i64* %arrayidx, align 8
  %add = add i64 %1, ptrtoint (i64* @process_counts to i64)
  %2 = inttoptr i64 %add to i64*
  %3 = load i64, i64* %2, align 8
  %4 = trunc i64 %3 to i32
  %conv3 = add i32 %total.014, %4
  %call = call i32 @cpumask_next(i32 noundef %call15, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #20
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body, label %for.end

for.end:                                          ; preds = %do.body, %entry
  %total.0.lcssa = phi i32 [ 0, %entry ], [ %conv3, %do.body ]
  ret i32 %total.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local void @arch_release_task_struct(%struct.task_struct* noundef %tsk) local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct* noundef %mm) local_unnamed_addr #3 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @vm_area_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #21
  %1 = bitcast i8* %call to %struct.vm_area_struct*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @vma_init(%struct.vm_area_struct* noundef nonnull %1, %struct.mm_struct* noundef %mm) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.vm_area_struct* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vma_init(%struct.vm_area_struct* noundef %vma, %struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.vm_area_struct* %vma to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 176) #21
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 6
  store %struct.mm_struct* %mm, %struct.mm_struct** %vm_mm, align 8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 12
  store %struct.vm_operations_struct* @vma_init.dummy_vm_ops, %struct.vm_operations_struct** %vm_ops, align 8
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 10
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %anon_vma_chain) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.vm_area_struct* @vm_area_dup(%struct.vm_area_struct* nocapture noundef readonly %orig) local_unnamed_addr #3 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @vm_area_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #21
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.vm_area_struct* %orig to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(176) %call, i8* noundef align 8 dereferenceable(176) %1, i64 176, i1 false)
  %anon_vma_chain = getelementptr inbounds i8, i8* %call, i64 120
  %2 = bitcast i8* %anon_vma_chain to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %2) #22
  %vm_prev = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %vm_prev to %struct.vm_area_struct**
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %3, align 8
  %vm_next = getelementptr inbounds i8, i8* %call, i64 16
  %4 = bitcast i8* %vm_next to %struct.vm_area_struct**
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = bitcast i8* %call to %struct.vm_area_struct*
  ret %struct.vm_area_struct* %5
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) unnamed_addr #7 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 0
  store volatile %struct.list_head* %list, %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i64 0, i32 1
  store %struct.list_head* %list, %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @vm_area_free(%struct.vm_area_struct* noundef %vma) local_unnamed_addr #3 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @vm_area_cachep, align 8
  %1 = bitcast %struct.vm_area_struct* %vma to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %1) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(%struct.kmem_cache* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @put_task_stack(%struct.task_struct* noundef %tsk) local_unnamed_addr #3 {
entry:
  %stack_refcount = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 136
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %stack_refcount) #22
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @release_task_stack(%struct.task_struct* noundef %tsk) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #22
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @release_task_stack(%struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 1
  %0 = load volatile i32, i32* %__state, align 16
  %cmp.not = icmp eq i32 %0, 128
  br i1 %cmp.not, label %if.end17, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/fork.c\22; .popsection; .long 14472b - 14470b; .short 428; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !9
  br label %return

if.end17:                                         ; preds = %entry
  call fastcc void @account_kernel_stack(%struct.task_struct* noundef %tsk, i32 noundef -1) #22
  call fastcc void @free_thread_stack(%struct.task_struct* noundef %tsk) #22
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 2
  store i8* null, i8** %stack, align 8
  br label %return

return:                                           ; preds = %if.then, %if.end17
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @free_task(%struct.task_struct* noundef %tsk) local_unnamed_addr #3 {
entry:
  call void @release_user_cpus_ptr(%struct.task_struct* noundef %tsk) #21
  %stack_refcount = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 136
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %stack_refcount) #22
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/fork.c\22; .popsection; .long 14472b - 14470b; .short 463; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @arch_release_task_struct(%struct.task_struct* noundef %tsk) #22
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4
  %and = and i32 %0, 2097152
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @free_kthread_struct(%struct.task_struct* noundef %tsk) #21
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end
  call fastcc void @free_task_struct(%struct.task_struct* noundef %tsk) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_user_cpus_ptr(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #8 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_kthread_struct(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_task_struct(%struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @task_struct_cachep, align 8
  %1 = bitcast %struct.task_struct* %tsk to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %1) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__mmdrop(%struct.mm_struct* noundef %mm) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.mm_struct* %mm, @init_mm
  br i1 %cmp, label %do.body2, label %do.end5, !prof !11

do.body2:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/fork.c\22; .popsection; .long 14472b - 14470b; .short 696; .short 0; .popsection; 14471: brk 0x800", ""() #23, !srcloc !12
  unreachable

do.end5:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm6, align 8
  %cmp7 = icmp eq %struct.mm_struct* %2, %mm
  br i1 %cmp7, label %if.then21, label %if.end22, !prof !11

if.then21:                                        ; preds = %do.end5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/fork.c\22; .popsection; .long 14472b - 14470b; .short 697; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !14
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.end5
  %active_mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 36
  %3 = load %struct.mm_struct*, %struct.mm_struct** %active_mm, align 16
  %cmp32 = icmp eq %struct.mm_struct* %3, %mm
  br i1 %cmp32, label %if.then46, label %if.end47, !prof !11

if.then46:                                        ; preds = %if.end22
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/fork.c\22; .popsection; .long 14472b - 14470b; .short 698; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !15
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end22
  call fastcc void @mm_free_pgd(%struct.mm_struct* noundef %mm) #22
  call fastcc void @check_mm(%struct.mm_struct* noundef %mm) #22
  %4 = load %struct.kmem_cache*, %struct.kmem_cache** @mm_cachep, align 8
  %5 = bitcast %struct.mm_struct* %mm to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %4, i8* noundef %5) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_free_pgd(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %pgd = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 8
  %0 = load %struct.pgd_t*, %struct.pgd_t** %pgd, align 8
  call void @pgd_free(%struct.mm_struct* noundef %mm, %struct.pgd_t* noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @check_mm(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %counter.i.i = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.end, label %do.end5, !prof !8

do.end5:                                          ; preds = %entry
  %call8 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), %struct.mm_struct* noundef %mm, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 noundef %0) #25
  br label %if.end

if.end:                                           ; preds = %do.end5, %entry
  %counter.i.i.1 = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 1, i32 0
  %1 = load volatile i64, i64* %counter.i.i.1, align 8
  %tobool.not.1 = icmp eq i64 %1, 0
  br i1 %tobool.not.1, label %if.end.1, label %do.end5.1, !prof !8

do.end5.1:                                        ; preds = %if.end
  %call8.1 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), %struct.mm_struct* noundef %mm, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64 noundef %1) #25
  br label %if.end.1

if.end.1:                                         ; preds = %do.end5.1, %if.end
  %counter.i.i.2 = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 2, i32 0
  %2 = load volatile i64, i64* %counter.i.i.2, align 8
  %tobool.not.2 = icmp eq i64 %2, 0
  br i1 %tobool.not.2, label %if.end.2, label %do.end5.2, !prof !8

do.end5.2:                                        ; preds = %if.end.1
  %call8.2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), %struct.mm_struct* noundef %mm, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 noundef %2) #25
  br label %if.end.2

if.end.2:                                         ; preds = %do.end5.2, %if.end.1
  %counter.i.i.3 = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 3, i32 0
  %3 = load volatile i64, i64* %counter.i.i.3, align 8
  %tobool.not.3 = icmp eq i64 %3, 0
  br i1 %tobool.not.3, label %if.end.3, label %do.end5.3, !prof !8

do.end5.3:                                        ; preds = %if.end.2
  %call8.3 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), %struct.mm_struct* noundef %mm, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i64 noundef %3) #25
  br label %if.end.3

if.end.3:                                         ; preds = %do.end5.3, %if.end.2
  %call9 = call fastcc i64 @mm_pgtables_bytes(%struct.mm_struct* noundef %mm) #22
  %tobool10.not = icmp eq i64 %call9, 0
  br i1 %tobool10.not, label %if.end18, label %do.end14

do.end14:                                         ; preds = %if.end.3
  %call16 = call fastcc i64 @mm_pgtables_bytes(%struct.mm_struct* noundef %mm) #22
  %call17 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i64 noundef %call16) #25
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.end.3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__put_task_struct(%struct.task_struct* noundef %tsk) local_unnamed_addr #3 {
entry:
  %exit_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 39
  %0 = load i32, i32* %exit_state, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/fork.c\22; .popsection; .long 14472b - 14470b; .short 745; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 3
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %usage) #22
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.end31, label %if.then30, !prof !8

if.then30:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/fork.c\22; .popsection; .long 14472b - 14470b; .short 746; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !17
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %cmp = icmp eq %struct.task_struct* %2, %tsk
  br i1 %cmp, label %if.then55, label %if.end56, !prof !11

if.then55:                                        ; preds = %if.end31
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/fork.c\22; .popsection; .long 14472b - 14470b; .short 747; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !18
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end31
  call fastcc void @io_uring_free(%struct.task_struct* noundef %tsk) #22
  call void @exit_creds(%struct.task_struct* noundef %tsk) #21
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %3 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  call fastcc void @put_signal_struct(%struct.signal_struct* noundef %3) #22
  call void @free_task(%struct.task_struct* noundef %tsk) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @io_uring_free(%struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  %io_uring = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 85
  %0 = load %struct.io_uring_task*, %struct.io_uring_task** %io_uring, align 8
  %tobool.not = icmp eq %struct.io_uring_task* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__io_uring_free(%struct.task_struct* noundef %tsk) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_creds(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_signal_struct(%struct.signal_struct* noundef %sig) unnamed_addr #3 {
entry:
  %sigcnt = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %sigcnt) #22
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @free_signal_struct(%struct.signal_struct* noundef %sig) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define weak dso_local void @arch_task_cache_init() local_unnamed_addr #9 section ".init.text" {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @fork_init() local_unnamed_addr #9 section ".init.text" {
entry:
  %useroffset = alloca i64, align 8
  %usersize = alloca i64, align 8
  %0 = bitcast i64* %useroffset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store i64 0, i64* %useroffset, align 8, !annotation !19
  %1 = bitcast i64* %usersize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #23
  store i64 0, i64* %usersize, align 8, !annotation !19
  call fastcc void @task_struct_whitelist(i64* noundef nonnull %useroffset, i64* noundef nonnull %usersize) #22
  %2 = load i64, i64* %useroffset, align 8
  %conv = trunc i64 %2 to i32
  %3 = load i64, i64* %usersize, align 8
  %conv1 = trunc i64 %3 to i32
  %call = call %struct.kmem_cache* @kmem_cache_create_usercopy(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef 2560, i32 noundef 64, i32 noundef 262144, i32 noundef %conv, i32 noundef %conv1, void (i8*)* noundef null) #21
  store %struct.kmem_cache* %call, %struct.kmem_cache** @task_struct_cachep, align 8
  call void @arch_task_cache_init() #26
  call fastcc void @set_max_threads() #22
  %4 = load i32, i32* @max_threads, align 4
  %div = sdiv i32 %4, 2
  %conv2 = sext i32 %div to i64
  %5 = load %struct.signal_struct*, %struct.signal_struct** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 87), align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %5, i64 0, i32 49, i64 6, i32 0
  store i64 %conv2, i64* %rlim_cur, align 8
  %6 = load %struct.signal_struct*, %struct.signal_struct** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 87), align 8
  %rlim_max = getelementptr %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 49, i64 6, i32 1
  store i64 %conv2, i64* %rlim_max, align 8
  %7 = load %struct.signal_struct*, %struct.signal_struct** getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 87), align 8
  %arrayidx8 = getelementptr %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 49, i64 11
  %arrayidx10 = getelementptr %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 49, i64 6
  %8 = bitcast %struct.rlimit* %arrayidx8 to i8*
  %9 = bitcast %struct.rlimit* %arrayidx10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 8 dereferenceable(16) %8, i8* noundef align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx14 = getelementptr %struct.user_namespace, %struct.user_namespace* @init_user_ns, i64 0, i32 14, i64 %indvars.iv
  store i64 %conv2, i64* %arrayidx14, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call fastcc void @set_rlimit_ucount_max(i32 noundef 8) #22
  call fastcc void @set_rlimit_ucount_max(i32 noundef 9) #22
  call fastcc void @set_rlimit_ucount_max(i32 noundef 10) #22
  call fastcc void @set_rlimit_ucount_max(i32 noundef 11) #22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @task_struct_whitelist(i64* nocapture noundef %offset, i64* nocapture noundef %size) unnamed_addr #10 {
entry:
  call fastcc void @arch_thread_struct_whitelist(i64* noundef %offset, i64* noundef %size) #22
  %0 = load i64, i64* %size, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.end, label %if.else, !prof !11

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %offset, align 8
  %add = add i64 %1, 1840
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %storemerge = phi i64 [ %add, %if.else ], [ 0, %entry ]
  store i64 %storemerge, i64* %offset, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create_usercopy(i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid willreturn
define internal fastcc void @set_max_threads() unnamed_addr #11 {
entry:
  %call = call fastcc i64 @totalram_pages() #22
  %cmp.i = icmp ne i64 %call, 0
  %0 = call i64 @llvm.ctlz.i64(i64 %call, i1 false) #23, !range !20
  %1 = trunc i64 %0 to i32
  %cmp8 = icmp ult i32 %1, 13
  %cmp = select i1 %cmp.i, i1 %cmp8, i1 false
  br i1 %cmp, label %.thread6, label %if.end

if.end:                                           ; preds = %entry
  %mul = shl i64 %call, 12
  %call3 = call fastcc i64 @div64_u64(i64 noundef %mul) #22
  %cmp4 = icmp ugt i64 %call3, 1073741823
  br i1 %cmp4, label %.thread6, label %2

2:                                                ; preds = %if.end
  %cmp9 = icmp ugt i64 %call3, 20
  br i1 %cmp9, label %3, label %.thread4

3:                                                ; preds = %2
  %cmp12 = icmp ult i64 %call3, 1073741823
  br i1 %cmp12, label %.thread4, label %.thread6

.thread4:                                         ; preds = %2, %3
  %4 = phi i64 [ %call3, %3 ], [ 20, %2 ]
  br label %.thread6

.thread6:                                         ; preds = %entry, %if.end, %3, %.thread4
  %5 = phi i64 [ %4, %.thread4 ], [ 1073741823, %3 ], [ 1073741823, %if.end ], [ 1073741823, %entry ]
  %conv18 = trunc i64 %5 to i32
  store i32 %conv18, i32* @max_threads, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @set_rlimit_ucount_max(i32 noundef %type) unnamed_addr #12 {
entry:
  %idxprom = zext i32 %type to i64
  %arrayidx = getelementptr %struct.user_namespace, %struct.user_namespace* @init_user_ns, i64 0, i32 14, i64 %idxprom
  store i64 9223372036854775807, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define weak dso_local i32 @arch_dup_task_struct(%struct.task_struct* noundef %dst, %struct.task_struct* noundef %src) local_unnamed_addr #3 {
entry:
  %0 = bitcast %struct.task_struct* %dst to i8*
  %1 = bitcast %struct.task_struct* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef align 64 dereferenceable(2560) %0, i8* noundef align 64 dereferenceable(2560) %1, i64 2560, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @set_task_stack_end_magic(%struct.task_struct* nocapture noundef readonly %tsk) local_unnamed_addr #10 {
entry:
  %call = call fastcc i64* @end_of_stack(%struct.task_struct* noundef %tsk) #22
  store i64 1470918301, i64* %call, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64* @end_of_stack(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #13 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = bitcast i8** %stack to i64**
  %1 = load i64*, i64** %0, align 8
  ret i64* %1
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @coredump_filter_setup(i8* noundef %s) #9 section ".init.text" {
entry:
  %call = call i64 @simple_strtoul(i8* noundef %s, i8** noundef null, i32 noundef 0) #21
  %shl = shl i64 %call, 2
  %and = and i64 %shl, 2044
  store i64 %and, i64* @default_dump_filter, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.mm_struct* @mm_alloc() local_unnamed_addr #3 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @mm_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #21
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to %struct.mm_struct*
  %call1 = call i8* @memset(i8* noundef nonnull %call, i32 noundef 0, i64 noundef 856) #21
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %call4 = call fastcc %struct.mm_struct* @mm_init(%struct.mm_struct* noundef nonnull %1) #22
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.mm_struct* [ %call4, %if.end ], [ null, %entry ]
  ret %struct.mm_struct* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.mm_struct* @mm_init(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 0
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %mmap, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 1, i32 0
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %vmacache_seqnum = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 2
  store i64 0, i64* %vmacache_seqnum, align 8
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 10, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  %counter.i1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11, i32 0
  store volatile i32 1, i32* %counter.i1, align 4
  %write_protect_seq = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 26
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %write_protect_seq) #22
  call fastcc void @mmap_init_lock(%struct.mm_struct* noundef %mm) #22
  %mmlist = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 16
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %mmlist) #22
  %core_state = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 44
  store %struct.core_state* null, %struct.core_state** %core_state, align 8
  call fastcc void @mm_pgtables_bytes_init(%struct.mm_struct* noundef %mm) #22
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 13
  store i32 0, i32* %map_count, align 8
  %locked_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 20
  store i64 0, i64* %locked_vm, align 8
  %counter.i2 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 21, i32 0
  store volatile i64 0, i64* %counter.i2, align 8
  %rss_stat = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40
  %0 = bitcast %struct.mm_rss_stat* %rss_stat to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #21
  %.compoundliteral3.sroa.0.0..sroa_idx = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral3.sroa.0.0..sroa_idx, align 4
  %.compoundliteral7.sroa.0.0..sroa_idx = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral7.sroa.0.0..sroa_idx, align 4
  call fastcc void @mm_init_cpumask(%struct.mm_struct* noundef %mm) #22
  call fastcc void @mm_init_aio(%struct.mm_struct* noundef %mm) #22
  %exe_file = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 48
  store volatile %struct.file* null, %struct.file** %exe_file, align 8
  call fastcc void @init_tlb_flush_pending(%struct.mm_struct* noundef %mm) #22
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %mm22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 35
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm22, align 8
  %tobool.not = icmp eq %struct.mm_struct* %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i64 0, i32 0, i32 43
  %4 = load i64, i64* %flags, align 8
  %and = and i64 %4, 16779263
  %flags25 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  store i64 %and, i64* %flags25, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %mm22, align 8
  %def_flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %5, i64 0, i32 0, i32 25
  %6 = load i64, i64* %def_flags, align 8
  %and28 = and i64 %6, 1073741824
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i64, i64* @default_dump_filter, align 8
  %flags30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 43
  store i64 %7, i64* %flags30, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %and28.sink = phi i64 [ 0, %if.else ], [ %and28, %if.then ]
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 25
  store i64 %and28.sink, i64* %8, align 8
  %call32 = call fastcc i32 @mm_alloc_pgd(%struct.mm_struct* noundef %mm) #22
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %fail_nopgd

if.end35:                                         ; preds = %if.end
  call fastcc void @init_new_context(%struct.mm_struct* noundef %mm) #22
  %user_ns41 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 47
  store %struct.user_namespace* @init_user_ns, %struct.user_namespace** %user_ns41, align 8
  br label %return

fail_nopgd:                                       ; preds = %if.end
  %9 = load %struct.kmem_cache*, %struct.kmem_cache** @mm_cachep, align 8
  %10 = bitcast %struct.mm_struct* %mm to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %9, i8* noundef %10) #21
  br label %return

return:                                           ; preds = %fail_nopgd, %if.end35
  %retval.0 = phi %struct.mm_struct* [ null, %fail_nopgd ], [ %mm, %if.end35 ]
  ret %struct.mm_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mmput(%struct.mm_struct* noundef %mm) local_unnamed_addr #3 {
entry:
  %mm_users = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 10
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %mm_users) #21
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__mmput(%struct.mm_struct* noundef %mm) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__mmput(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  call void @exit_aio(%struct.mm_struct* noundef %mm) #21
  call void @exit_mmap(%struct.mm_struct* noundef %mm) #21
  %call = call i32 @set_mm_exe_file(%struct.mm_struct* noundef %mm, %struct.file* noundef null) #22
  %mmlist = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 16
  %call1 = call fastcc i32 @list_empty(%struct.list_head* noundef %mmlist) #22
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @mmlist_lock, i64 0, i32 0, i32 0)) #21
  call fastcc void @list_del(%struct.list_head* noundef %mmlist) #22
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @mmlist_lock, i64 0, i32 0, i32 0)) #21
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.then
  call fastcc void @mmdrop(%struct.mm_struct* noundef %mm) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @mmput_async(%struct.mm_struct* noundef %mm) local_unnamed_addr #3 {
entry:
  %mm_users = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 10
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %mm_users) #21
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  %async_put_work = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 51
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 51, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry3 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 51, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry3) #22
  %func = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 51, i32 2
  store void (%struct.work_struct*)* @mmput_async_fn, void (%struct.work_struct*)** %func, align 8
  call fastcc void @schedule_work(%struct.work_struct* noundef %async_put_work) #22
  br label %if.end

if.end:                                           ; preds = %do.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @mmput_async_fn(%struct.work_struct* noundef %work) #3 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -26, i32 1
  %0 = bitcast %struct.list_head* %add.ptr to %struct.mm_struct*
  call fastcc void @__mmput(%struct.mm_struct* noundef %0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @schedule_work(%struct.work_struct* noundef %work) unnamed_addr #3 {
entry:
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8
  call fastcc void @queue_work(%struct.workqueue_struct* noundef %0, %struct.work_struct* noundef %work) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @set_mm_exe_file(%struct.mm_struct* noundef %mm, %struct.file* noundef %new_exe_file) local_unnamed_addr #3 {
entry:
  %exe_file = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 48
  %0 = load volatile %struct.file*, %struct.file** %exe_file, align 8
  %tobool.not = icmp eq %struct.file* %new_exe_file, null
  br i1 %tobool.not, label %do.body8, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @deny_write_access(%struct.file* noundef nonnull %new_exe_file) #22
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %cleanup, !prof !8

if.end:                                           ; preds = %if.then
  call fastcc void @get_file(%struct.file* noundef nonnull %new_exe_file) #22
  br label %do.body8

do.body8:                                         ; preds = %entry, %if.end
  %1 = ptrtoint %struct.file* %new_exe_file to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.file** elementtype(%struct.file*) %exe_file, i64 %1) #23, !srcloc !21
  %tobool32.not = icmp eq %struct.file* %0, null
  br i1 %tobool32.not, label %cleanup, label %if.then33

if.then33:                                        ; preds = %do.body8
  call fastcc void @allow_write_access(%struct.file* noundef nonnull %0) #22
  call void @fput(%struct.file* noundef nonnull %0) #21
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %if.then33, %if.then
  %retval.0 = phi i32 [ -13, %if.then ], [ 0, %if.then33 ], [ 0, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @deny_write_access(%struct.file* nocapture noundef readonly %file) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef %file) #22
  %i_writecount = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 34
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %i_writecount, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %1 = bitcast %struct.atomic_t* %i_writecount to i8*
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i, %entry
  %c.0.i.i = phi i32 [ %0, %entry ], [ %call11.i.i.i.i, %do.cond.i.i ]
  %cmp.i.i = icmp sgt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %atomic_dec_unless_positive.exit, label %do.cond.i.i, !prof !11

do.cond.i.i:                                      ; preds = %do.body.i.i
  %sub.i.i = add i32 %c.0.i.i, -1
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %1, i32 noundef %c.0.i.i, i32 noundef %sub.i.i) #21
  %cmp.not.i.i.i = icmp eq i32 %c.0.i.i, %call11.i.i.i.i
  br i1 %cmp.not.i.i.i, label %atomic_dec_unless_positive.exit, label %do.body.i.i, !prof !8

atomic_dec_unless_positive.exit:                  ; preds = %do.body.i.i, %do.cond.i.i
  %cond = phi i32 [ -26, %do.body.i.i ], [ 0, %do.cond.i.i ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_file(%struct.file* noundef %f) unnamed_addr #3 {
entry:
  %f_count = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 6
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %f_count) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @allow_write_access(%struct.file* noundef readonly %file) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.file* %file, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc %struct.inode* @file_inode(%struct.file* noundef nonnull %file) #22
  %i_writecount = getelementptr inbounds %struct.inode, %struct.inode* %call, i64 0, i32 34
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %i_writecount) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(%struct.file* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @replace_mm_exe_file(%struct.mm_struct* noundef %mm, %struct.file* noundef %new_exe_file) local_unnamed_addr #3 {
entry:
  %call = call %struct.file* @get_mm_exe_file(%struct.mm_struct* noundef %mm) #22
  %tobool.not = icmp eq %struct.file* %call, null
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) #22
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 0
  %vma.053 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap, align 8
  %tobool154.not = icmp eq %struct.vm_area_struct* %vma.053, null
  br i1 %tobool154.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %f_path6 = getelementptr inbounds %struct.file, %struct.file* %call, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %vma.056 = phi %struct.vm_area_struct* [ %vma.053, %for.body.lr.ph ], [ %vma.0, %for.inc ]
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.056, i64 0, i32 14
  %0 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool3.not = icmp eq %struct.file* %0, null
  br i1 %tobool3.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %f_path = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %call7 = call fastcc i32 @path_equal(%struct.path* noundef %f_path, %struct.path* noundef %f_path6) #22
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 -16
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body
  %ret.1 = phi i32 [ 0, %for.body ], [ %spec.select, %if.end ]
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma.056, i64 0, i32 2
  %vma.0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next, align 8
  %tobool1 = icmp ne %struct.vm_area_struct* %vma.0, null
  %tobool2.not = icmp eq i32 %ret.1, 0
  %1 = select i1 %tobool1, i1 %tobool2.not, i1 false
  br i1 %1, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.then
  %ret.0.lcssa = phi i32 [ 0, %if.then ], [ %ret.1, %for.inc ]
  %tobool2.not.lcssa = phi i1 [ true, %if.then ], [ %tobool2.not, %for.inc ]
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) #22
  call void @fput(%struct.file* noundef nonnull %call) #21
  br i1 %tobool2.not.lcssa, label %if.end14, label %cleanup

if.end14:                                         ; preds = %for.end, %entry
  %call15 = call fastcc i32 @deny_write_access(%struct.file* noundef %new_exe_file) #22
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.end14
  call fastcc void @get_file(%struct.file* noundef %new_exe_file) #22
  %exe_file = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 48
  %2 = bitcast %struct.file** %exe_file to i8*
  %3 = ptrtoint %struct.file* %new_exe_file to i64
  %call11.i = call fastcc i64 @__xchg_case_mb_64(i64 noundef %3, i8* noundef %2) #21
  %4 = inttoptr i64 %call11.i to %struct.file*
  %tobool22.not = icmp eq i64 %call11.i, 0
  br i1 %tobool22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %if.end18
  call fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) #22
  call fastcc void @allow_write_access(%struct.file* noundef nonnull %4) #22
  call void @fput(%struct.file* noundef nonnull %4) #21
  call fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then23, %if.end14, %for.end
  %retval.0 = phi i32 [ %ret.0.lcssa, %for.end ], [ -13, %if.end14 ], [ 0, %if.then23 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @get_mm_exe_file(%struct.mm_struct* noundef %mm) local_unnamed_addr #3 {
entry:
  call fastcc void @__rcu_read_lock() #21
  %exe_file1 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 48
  %0 = load volatile %struct.file*, %struct.file** %exe_file1, align 8
  %tobool.not = icmp eq %struct.file* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %f_count = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 6
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %f_count, i64 0, i32 0
  %1 = load volatile i64, i64* %counter.i.i.i.i, align 8
  %2 = bitcast %struct.atomic64_t* %f_count to i8*
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.cond.i.i.i.i, %land.lhs.true
  %c.0.i.i.i.i = phi i64 [ %1, %land.lhs.true ], [ %call14.i.i.i.i.i.i, %do.cond.i.i.i.i ]
  %cmp.i.i.i.i = icmp eq i64 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end, label %do.cond.i.i.i.i, !prof !11

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i64 %c.0.i.i.i.i, 1
  %call14.i.i.i.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %2, i64 noundef %c.0.i.i.i.i, i64 noundef %add.i.i.i.i) #21
  %cmp.not.i.i.i.i.i = icmp eq i64 %call14.i.i.i.i.i.i, %c.0.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %if.end, label %do.body.i.i.i.i, !prof !8

if.end:                                           ; preds = %do.cond.i.i.i.i, %do.body.i.i.i.i, %entry
  %exe_file.0 = phi %struct.file* [ null, %entry ], [ %0, %do.cond.i.i.i.i ], [ null, %do.body.i.i.i.i ]
  call fastcc void @rcu_read_unlock() #22
  ret %struct.file* %exe_file.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_lock(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @down_read(%struct.rw_semaphore* noundef %mmap_lock) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @path_equal(%struct.path* nocapture noundef readonly %path1, %struct.path* nocapture noundef readonly %path2) unnamed_addr #13 {
entry:
  %mnt = getelementptr inbounds %struct.path, %struct.path* %path1, i64 0, i32 0
  %0 = load %struct.vfsmount*, %struct.vfsmount** %mnt, align 8
  %mnt1 = getelementptr inbounds %struct.path, %struct.path* %path2, i64 0, i32 0
  %1 = load %struct.vfsmount*, %struct.vfsmount** %mnt1, align 8
  %cmp = icmp eq %struct.vfsmount* %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %dentry = getelementptr inbounds %struct.path, %struct.path* %path1, i64 0, i32 1
  %2 = load %struct.dentry*, %struct.dentry** %dentry, align 8
  %dentry2 = getelementptr inbounds %struct.path, %struct.path* %path2, i64 0, i32 1
  %3 = load %struct.dentry*, %struct.dentry** %dentry2, align 8
  %cmp3 = icmp eq %struct.dentry* %2, %3
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_read_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_read(%struct.rw_semaphore* noundef %mmap_lock) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 {
entry:
  call fastcc void @__rcu_read_unlock() #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.file* @get_task_exe_file(%struct.task_struct* noundef %task) local_unnamed_addr #3 {
entry:
  call fastcc void @task_lock(%struct.task_struct* noundef %task) #22
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 35
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %tobool.not = icmp eq %struct.mm_struct* %0, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 4
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 2097152
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then
  %call = call %struct.file* @get_mm_exe_file(%struct.mm_struct* noundef nonnull %0) #22
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.then3, %entry
  %exe_file.0 = phi %struct.file* [ null, %if.then ], [ %call, %if.then3 ], [ null, %entry ]
  call fastcc void @task_unlock(%struct.task_struct* noundef %task) #22
  ret %struct.file* %exe_file.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_lock(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @task_unlock(%struct.task_struct* noundef %p) unnamed_addr #3 {
entry:
  %rlock.i = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 101, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef %task) local_unnamed_addr #3 {
entry:
  call fastcc void @task_lock(%struct.task_struct* noundef %task) #22
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 35
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm1, align 8
  %tobool.not = icmp eq %struct.mm_struct* %0, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 4
  %1 = load i32, i32* %flags, align 4
  %and = and i32 %1, 2097152
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.end4

if.else:                                          ; preds = %if.then
  call fastcc void @mmget(%struct.mm_struct* noundef nonnull %0) #22
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.else, %entry
  %mm.0 = phi %struct.mm_struct* [ %0, %if.else ], [ null, %entry ], [ null, %if.then ]
  call fastcc void @task_unlock(%struct.task_struct* noundef %task) #22
  ret %struct.mm_struct* %mm.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmget(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mm_users = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 10
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %mm_users) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.mm_struct* @mm_access(%struct.task_struct* noundef %task, i32 noundef %mode) local_unnamed_addr #3 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 55
  %call = call i32 @down_read_killable(%struct.rw_semaphore* noundef %exec_update_lock) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @ERR_PTR(i64 noundef %conv) #22
  %1 = bitcast i8* %call1 to %struct.mm_struct*
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* noundef %task) #22
  %tobool3.not = icmp eq %struct.mm_struct* %call2, null
  br i1 %tobool3.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %mm5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 35
  %4 = load %struct.mm_struct*, %struct.mm_struct** %mm5, align 8
  %cmp.not = icmp eq %struct.mm_struct* %call2, %4
  br i1 %cmp.not, label %if.end11, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call8 = call i1 @ptrace_may_access(%struct.task_struct* noundef %task, i32 noundef %mode) #21
  br i1 %call8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %land.lhs.true7
  call void @mmput(%struct.mm_struct* noundef nonnull %call2) #22
  %call10 = call fastcc i8* @ERR_PTR(i64 noundef -13) #22
  %5 = bitcast i8* %call10 to %struct.mm_struct*
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true7, %land.lhs.true, %if.end
  %mm.0 = phi %struct.mm_struct* [ %call2, %land.lhs.true7 ], [ %5, %if.then9 ], [ %call2, %land.lhs.true ], [ null, %if.end ]
  %6 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %exec_update_lock13 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 55
  call void @up_read(%struct.rw_semaphore* noundef %exec_update_lock13) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi %struct.mm_struct* [ %1, %if.then ], [ %mm.0, %if.end11 ]
  ret %struct.mm_struct* %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i8* @ERR_PTR(i64 noundef %error) unnamed_addr #14 {
entry:
  %0 = inttoptr i64 %error to i8*
  ret i8* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ptrace_may_access(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @exit_mm_release(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %mm) local_unnamed_addr #3 {
entry:
  call void @futex_exit_release(%struct.task_struct* noundef %tsk) #21
  call fastcc void @mm_release(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %mm) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_exit_release(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_release(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %clear_child_tid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 65
  %0 = load i32*, i32** %clear_child_tid, align 8
  %tobool.not = icmp eq i32* %0, null
  %1 = bitcast i32* %0 to i8*
  br i1 %tobool.not, label %if.end20, label %if.then

if.then:                                          ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %2 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %flags = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 12
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 8
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 10, i32 0
  %4 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.then2, label %if.end18

if.then2:                                         ; preds = %land.lhs.true
  %call4 = call fastcc i64 @__range_ok(i8* noundef nonnull %1, i64 noundef 4) #22
  %tobool5.not = icmp eq i64 %call4, 0
  br i1 %tobool5.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then2
  %call7 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef nonnull %1) #22
  %5 = bitcast i8* %call7 to i32*
  %6 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 0, i32* %5, i32 -14, i32 0) #23, !srcloc !22
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then6
  %7 = load i32*, i32** %clear_child_tid, align 8
  %call17 = call i64 @do_futex(i32* noundef %7, i32 noundef 1, i32 noundef 1, i64* noundef null, i32* noundef null, i32 noundef 0, i32 noundef 0) #21
  br label %if.end18

if.end18:                                         ; preds = %if.end, %land.lhs.true, %if.then
  store i32* null, i32** %clear_child_tid, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %entry
  %vfork_done = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 63
  %8 = load %struct.completion*, %struct.completion** %vfork_done, align 8
  %tobool21.not = icmp eq %struct.completion* %8, null
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end20
  call fastcc void @complete_vfork_done(%struct.task_struct* noundef %tsk) #22
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @exec_mm_release(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %mm) local_unnamed_addr #3 {
entry:
  call void @futex_exec_release(%struct.task_struct* noundef %tsk) #21
  call fastcc void @mm_release(%struct.task_struct* noundef %tsk, %struct.mm_struct* noundef %mm) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_exec_release(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__cleanup_sighand(%struct.sighand_struct* noundef %sighand) local_unnamed_addr #3 {
entry:
  %count = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %sighand, i64 0, i32 1
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %count) #22
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @signalfd_cleanup(%struct.sighand_struct* noundef %sighand) #21
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @sighand_cachep, align 8
  %1 = bitcast %struct.sighand_struct* %sighand to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %0, i8* noundef %1) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @signalfd_cleanup(%struct.sighand_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_set_tid_address(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_set_tid_address(i64 noundef %0) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_set_tid_address(i64 noundef %tidptr) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %tidptr to i32*
  %call = call fastcc i64 @__do_sys_set_tid_address(i32* noundef %0) #22
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local %struct.pid* @pidfd_pid(%struct.file* nocapture noundef readonly %file) local_unnamed_addr #13 {
entry:
  %f_op = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 3
  %0 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8
  %cmp = icmp eq %struct.file_operations* %0, @pidfd_fops
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %1 = load i8*, i8** %private_data, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call fastcc i8* @ERR_PTR(i64 noundef -9) #22
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0.in = phi i8* [ %1, %if.then ], [ %call, %if.end ]
  %retval.0 = bitcast i8* %retval.0.in to %struct.pid*
  ret %struct.pid* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pidfd_poll(%struct.file* noundef %file, %struct.poll_table_struct* noundef %pts) #3 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.pid**
  %1 = load %struct.pid*, %struct.pid** %0, align 8
  %wait_pidfd = getelementptr inbounds %struct.pid, %struct.pid* %1, i64 0, i32 5
  call fastcc void @poll_wait(%struct.file* noundef %file, %struct.wait_queue_head* noundef %wait_pidfd, %struct.poll_table_struct* noundef %pts) #22
  %call = call i1 @thread_group_exited(%struct.pid* noundef %1) #21
  %spec.select = select i1 %call, i32 65, i32 0
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @pidfd_release(%struct.inode* nocapture noundef readnone %inode, %struct.file* nocapture noundef %file) #3 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %file, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.pid**
  %1 = load %struct.pid*, %struct.pid** %0, align 8
  store i8* null, i8** %private_data, align 8
  call void @put_pid(%struct.pid* noundef %1) #21
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @pidfd_show_fdinfo(%struct.seq_file* noundef %m, %struct.file* nocapture noundef readonly %f) #3 {
entry:
  %private_data = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 15
  %0 = bitcast i8** %private_data to %struct.pid**
  %1 = load %struct.pid*, %struct.pid** %0, align 8
  %call = call fastcc i1 @pid_has_task(%struct.pid* noundef %1) #22
  br i1 %call, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  %file = getelementptr inbounds %struct.seq_file, %struct.seq_file* %m, i64 0, i32 10
  %2 = load %struct.file*, %struct.file** %file, align 8
  %call2 = call fastcc %struct.inode* @file_inode(%struct.file* noundef %2) #22
  %i_sb = getelementptr inbounds %struct.inode, %struct.inode* %call2, i64 0, i32 6
  %3 = load %struct.super_block*, %struct.super_block** %i_sb, align 8
  %call3 = call fastcc %struct.pid_namespace* @proc_pid_ns(%struct.super_block* noundef %3) #22
  %call4 = call i32 @pid_nr_ns(%struct.pid* noundef %1, %struct.pid_namespace* noundef %call3) #21
  %phi.cast = sext i32 %call4 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nr.0 = phi i64 [ %phi.cast, %if.then ], [ -1, %entry ]
  call void @seq_put_decimal_ll(%struct.seq_file* noundef %m, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i64 noundef %nr.0) #21
  call void @seq_putc(%struct.seq_file* noundef %m, i8 noundef 10) #21
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local %struct.task_struct* @fork_idle(i32 noundef %cpu) local_unnamed_addr #9 section ".init.text" {
entry:
  %args = alloca %struct.kernel_clone_args, align 8
  %0 = bitcast %struct.kernel_clone_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %0) #23
  %1 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 1
  %2 = bitcast i32** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(104) %2, i8 0, i64 96, i1 false)
  %3 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 0
  store i64 256, i64* %3, align 8
  %call = call fastcc %struct.task_struct* @copy_process(%struct.pid* noundef nonnull @init_struct_pid, i32 noundef 0, i32 noundef 0, %struct.kernel_clone_args* noundef nonnull %args) #22
  %4 = bitcast %struct.task_struct* %call to i8*
  %call1 = call fastcc i1 @IS_ERR(i8* noundef %4) #22
  br i1 %call1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @init_idle_pids(%struct.task_struct* noundef %call) #22
  call void @init_idle(%struct.task_struct* noundef %call, i32 noundef %cpu) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %0) #23
  ret %struct.task_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @copy_process(%struct.pid* noundef readnone %pid, i32 noundef %trace, i32 noundef %node, %struct.kernel_clone_args* nocapture noundef readonly %args) unnamed_addr #3 {
entry:
  %delayed = alloca %struct.multiprocess_signals, align 8
  %0 = bitcast %struct.multiprocess_signals* %delayed to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #23
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !annotation !19
  %flags = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 0
  %1 = load i64, i64* %flags, align 8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 86
  %4 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %and = and i64 %1, 131584
  %cmp = icmp eq i64 %and, 131584
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call fastcc i8* @ERR_PTR(i64 noundef -22) #22
  %5 = bitcast i8* %call2 to %struct.task_struct*
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i64 %1, 268435968
  %cmp4 = icmp eq i64 %and3, 268435968
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call fastcc i8* @ERR_PTR(i64 noundef -22) #22
  %6 = bitcast i8* %call6 to %struct.task_struct*
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and8 = and i64 %1, 65536
  %tobool.not = icmp eq i64 %and8, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %and9 = and i64 %1, 2048
  %tobool10.not = icmp eq i64 %and9, 0
  %or.cond = select i1 %tobool.not.not, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %call12 = call fastcc i8* @ERR_PTR(i64 noundef -22) #22
  %7 = bitcast i8* %call12 to %struct.task_struct*
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %8 = and i64 %1, 2304
  %9 = icmp eq i64 %8, 2048
  br i1 %9, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end13
  %call20 = call fastcc i8* @ERR_PTR(i64 noundef -22) #22
  %10 = bitcast i8* %call20 to %struct.task_struct*
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %and22 = and i64 %1, 32768
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.end31, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.end21
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 87
  %11 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %flags26 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %11, i64 0, i32 12
  %12 = load i32, i32* %flags26, align 4
  %and27 = and i32 %12, 64
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %land.lhs.true24
  %call30 = call fastcc i8* @ERR_PTR(i64 noundef -22) #22
  %13 = bitcast i8* %call30 to %struct.task_struct*
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true24, %if.end21
  br i1 %tobool.not, label %if.end43, label %if.then34

if.then34:                                        ; preds = %if.end31
  %and35 = and i64 %1, 805306368
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %lor.lhs.false, label %if.then40

lor.lhs.false:                                    ; preds = %if.then34
  %call38 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %3) #21
  %pid_ns_for_children = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %4, i64 0, i32 4
  %14 = load %struct.pid_namespace*, %struct.pid_namespace** %pid_ns_for_children, align 8
  %cmp39.not = icmp eq %struct.pid_namespace* %call38, %14
  br i1 %cmp39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %lor.lhs.false, %if.then34
  %call41 = call fastcc i8* @ERR_PTR(i64 noundef -22) #22
  %15 = bitcast i8* %call41 to %struct.task_struct*
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false, %if.end31
  %and44 = and i64 %1, 65792
  %tobool45.not = icmp eq i64 %and44, 0
  br i1 %tobool45.not, label %if.end51, label %if.then46

if.then46:                                        ; preds = %if.end43
  %time_ns = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %4, i64 0, i32 6
  %16 = load %struct.time_namespace*, %struct.time_namespace** %time_ns, align 8
  %time_ns_for_children = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %4, i64 0, i32 7
  %17 = load %struct.time_namespace*, %struct.time_namespace** %time_ns_for_children, align 8
  %cmp47.not = icmp eq %struct.time_namespace* %16, %17
  br i1 %cmp47.not, label %if.end51, label %if.then48

if.then48:                                        ; preds = %if.then46
  %call49 = call fastcc i8* @ERR_PTR(i64 noundef -22) #22
  %18 = bitcast i8* %call49 to %struct.task_struct*
  br label %cleanup

if.end51:                                         ; preds = %if.then46, %if.end43
  %and52 = and i64 %1, 4096
  %tobool53.not = icmp eq i64 %and52, 0
  %and55 = and i64 %1, 4259840
  %tobool56.not = icmp eq i64 %and55, 0
  %or.cond721 = or i1 %tobool53.not, %tobool56.not
  br i1 %or.cond721, label %if.end60, label %if.then57

if.then57:                                        ; preds = %if.end51
  %call58 = call fastcc i8* @ERR_PTR(i64 noundef -22) #22
  %19 = bitcast i8* %call58 to %struct.task_struct*
  br label %cleanup

if.end60:                                         ; preds = %if.end51
  %signal61 = getelementptr inbounds %struct.multiprocess_signals, %struct.multiprocess_signals* %delayed, i64 0, i32 0
  call fastcc void @sigemptyset(%struct.sigset_t* noundef nonnull %signal61) #22
  %node62 = getelementptr inbounds %struct.multiprocess_signals, %struct.multiprocess_signals* %delayed, i64 0, i32 1
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %node62) #22
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 88
  %20 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %20, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #21
  br i1 %tobool.not, label %if.then66, label %if.end70

if.then66:                                        ; preds = %if.end60
  %signal69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 87
  %21 = load %struct.signal_struct*, %struct.signal_struct** %signal69, align 8
  %multiprocess = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %21, i64 0, i32 7
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef %node62, %struct.hlist_head* noundef %multiprocess) #22
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %if.end60
  call void @recalc_sigpending() #21
  %22 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i722 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %22, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i722) #21
  %call75 = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %3) #22
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %fork_out

if.end78:                                         ; preds = %if.end70
  %call80 = call fastcc %struct.task_struct* @dup_task_struct(%struct.task_struct* noundef %3, i32 noundef %node) #22
  %tobool81.not = icmp eq %struct.task_struct* %call80, null
  br i1 %tobool81.not, label %fork_out, label %if.end83

if.end83:                                         ; preds = %if.end78
  %io_thread = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 11
  %23 = load i32, i32* %io_thread, align 4
  %tobool84.not = icmp eq i32 %23, 0
  br i1 %tobool84.not, label %if.end87, label %if.then85

if.then85:                                        ; preds = %if.end83
  %flags86 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 4
  %24 = load i32, i32* %flags86, align 4
  %or = or i32 %24, 16
  store i32 %or, i32* %flags86, align 4
  %blocked = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 89
  call fastcc void @siginitsetinv(%struct.sigset_t* noundef %blocked) #22
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %if.end83
  %and88 = and i64 %1, 16777216
  %tobool89.not = icmp eq i64 %and88, 0
  br i1 %tobool89.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end87
  %child_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 2
  %25 = load i32*, i32** %child_tid, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.end87, %cond.true
  %cond = phi i32* [ %25, %cond.true ], [ null, %if.end87 ]
  %set_child_tid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 64
  store i32* %cond, i32** %set_child_tid, align 16
  %and90 = and i64 %1, 2097152
  %tobool91.not = icmp eq i64 %and90, 0
  br i1 %tobool91.not, label %cond.end95, label %cond.true92

cond.true92:                                      ; preds = %cond.end
  %child_tid93 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 2
  %26 = load i32*, i32** %child_tid93, align 8
  br label %cond.end95

cond.end95:                                       ; preds = %cond.end, %cond.true92
  %cond96 = phi i32* [ %26, %cond.true92 ], [ null, %cond.end ]
  %clear_child_tid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 65
  store i32* %cond96, i32** %clear_child_tid, align 8
  call fastcc void @rt_mutex_init_task(%struct.task_struct* noundef nonnull %call80) #22
  call fastcc void @__rcu_read_lock() #21
  %real_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 79
  %27 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %ucounts = getelementptr inbounds %struct.cred, %struct.cred* %27, i64 0, i32 17
  %28 = load %struct.ucounts*, %struct.ucounts** %ucounts, align 8
  call fastcc void @rcu_read_unlock() #22
  %call105 = call fastcc i64 @rlimit() #22
  %call106 = call i1 @is_ucounts_overlimit(%struct.ucounts* noundef %28, i32 noundef 8, i64 noundef %call105) #21
  br i1 %call106, label %if.then107, label %if.end116

if.then107:                                       ; preds = %cond.end95
  %29 = load %struct.cred*, %struct.cred** %real_cred, align 64
  %user = getelementptr inbounds %struct.cred, %struct.cred* %29, i64 0, i32 15
  %30 = load %struct.user_struct*, %struct.user_struct** %user, align 8
  %cmp109.not = icmp eq %struct.user_struct* %30, @root_user
  br i1 %cmp109.not, label %if.end116, label %land.lhs.true110

land.lhs.true110:                                 ; preds = %if.then107
  %call111 = call i1 @capable(i32 noundef 24) #21
  br i1 %call111, label %if.end116, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %land.lhs.true110
  %call113 = call i1 @capable(i32 noundef 21) #21
  br i1 %call113, label %if.end116, label %do.body445

if.end116:                                        ; preds = %if.then107, %land.lhs.true110, %land.lhs.true112, %cond.end95
  %flags118 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 4
  %31 = load i32, i32* %flags118, align 4
  %and119 = and i32 %31, -4097
  store i32 %and119, i32* %flags118, align 4
  %call120 = call i32 @copy_creds(%struct.task_struct* noundef nonnull %call80, i64 noundef %1) #21
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %do.body445, label %if.end123

if.end123:                                        ; preds = %if.end116
  %32 = load i32, i32* @nr_threads, align 4
  %33 = load i32, i32* @max_threads, align 4
  %cmp125.not = icmp slt i32 %32, %33
  br i1 %cmp125.not, label %if.end129, label %bad_fork_cleanup_count

if.end129:                                        ; preds = %if.end123
  %flags130 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 4
  %34 = load i32, i32* %flags130, align 4
  %and131 = and i32 %34, -67109219
  %or133 = or i32 %and131, 64
  store i32 %or133, i32* %flags130, align 4
  %children = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 54
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %children) #22
  %sibling = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 55
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %sibling) #22
  %vfork_done = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 63
  store %struct.completion* null, %struct.completion** %vfork_done, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 101, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %pending = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 92
  call fastcc void @init_sigpending(%struct.sigpending* noundef %pending) #22
  %gtime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 69
  store i64 0, i64* %gtime, align 8
  %stime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 68
  store i64 0, i64* %stime, align 16
  %utime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 67
  store i64 0, i64* %utime, align 8
  %prev_cputime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 70
  call fastcc void @prev_cputime_init(%struct.prev_cputime* noundef %prev_cputime) #22
  %io_uring = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 85
  store %struct.io_uring_task* null, %struct.io_uring_task** %io_uring, align 8
  %rss_stat = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 38
  %35 = bitcast %struct.task_rss_stat* %rss_stat to i8*
  %call139 = call i8* @memset(i8* noundef %35, i32 noundef 0, i64 noundef 20) #21
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 131
  %36 = load i64, i64* %timer_slack_ns, align 64
  %default_timer_slack_ns = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 132
  store i64 %36, i64* %default_timer_slack_ns, align 8
  %posix_cputimers = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 77
  call fastcc void @posix_cputimers_init(%struct.posix_cputimers* noundef %posix_cputimers) #22
  %io_context = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 112
  store %struct.io_context* null, %struct.io_context** %io_context, align 16
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 134
  store i32 0, i32* %pagefault_disabled, align 16
  %call141 = call i32 @sched_fork(i64 noundef %1, %struct.task_struct* noundef nonnull %call80) #21
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %bad_fork_cleanup_count

if.end144:                                        ; preds = %if.end129
  %call161 = call fastcc i32 @copy_files(i64 noundef %1, %struct.task_struct* noundef nonnull %call80) #22
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %bad_fork_cleanup_count

if.end164:                                        ; preds = %if.end144
  %call165 = call fastcc i32 @copy_fs(i64 noundef %1, %struct.task_struct* noundef nonnull %call80) #22
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %bad_fork_cleanup_files

if.end168:                                        ; preds = %if.end164
  %call169 = call fastcc i32 @copy_sighand(i64 noundef %1, %struct.task_struct* noundef nonnull %call80) #22
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end172, label %bad_fork_cleanup_fs

if.end172:                                        ; preds = %if.end168
  %call173 = call fastcc i32 @copy_signal(i64 noundef %1, %struct.task_struct* noundef nonnull %call80) #22
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.end176, label %bad_fork_cleanup_sighand

if.end176:                                        ; preds = %if.end172
  %call177 = call fastcc i32 @copy_mm(i64 noundef %1, %struct.task_struct* noundef nonnull %call80) #22
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %bad_fork_cleanup_signal

if.end180:                                        ; preds = %if.end176
  %call181 = call i32 @copy_namespaces(i64 noundef %1, %struct.task_struct* noundef nonnull %call80) #21
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end184, label %bad_fork_cleanup_mm

if.end184:                                        ; preds = %if.end180
  %call185 = call fastcc i32 @copy_io(i64 noundef %1, %struct.task_struct* noundef nonnull %call80) #22
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %bad_fork_cleanup_namespaces

if.end188:                                        ; preds = %if.end184
  %stack = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 5
  %37 = load i64, i64* %stack, align 8
  %stack_size = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 6
  %38 = load i64, i64* %stack_size, align 8
  %tls = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 7
  %39 = load i64, i64* %tls, align 8
  %call189 = call i32 @copy_thread(i64 noundef %1, i64 noundef %37, i64 noundef %38, %struct.task_struct* noundef nonnull %call80, i64 noundef %39) #21
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end192, label %bad_fork_cleanup_io

if.end192:                                        ; preds = %if.end188
  %cmp193.not = icmp eq %struct.pid* %pid, @init_struct_pid
  br i1 %cmp193.not, label %if.end204, label %if.then195

if.then195:                                       ; preds = %if.end192
  %nsproxy196 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 86
  %40 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy196, align 64
  %pid_ns_for_children197 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %40, i64 0, i32 4
  %41 = load %struct.pid_namespace*, %struct.pid_namespace** %pid_ns_for_children197, align 8
  %set_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 8
  %42 = load i32*, i32** %set_tid, align 8
  %set_tid_size = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 9
  %43 = load i64, i64* %set_tid_size, align 8
  %call198 = call %struct.pid* @alloc_pid(%struct.pid_namespace* noundef %41, i32* noundef %42, i64 noundef %43) #21
  %44 = bitcast %struct.pid* %call198 to i8*
  %call199 = call fastcc i1 @IS_ERR(i8* noundef %44) #22
  br i1 %call199, label %if.then200, label %if.end204

if.then200:                                       ; preds = %if.then195
  %call201 = call fastcc i64 @PTR_ERR(i8* noundef %44) #22
  %conv202 = trunc i64 %call201 to i32
  br label %bad_fork_cleanup_io

if.end204:                                        ; preds = %if.then195, %if.end192
  %pid.addr.0 = phi %struct.pid* [ %call198, %if.then195 ], [ @init_struct_pid, %if.end192 ]
  br i1 %tobool53.not, label %if.end241, label %if.then207

if.then207:                                       ; preds = %if.end204
  %call208 = call i32 @get_unused_fd_flags(i32 noundef 524290) #21
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %bad_fork_free_pid, label %if.end212

if.end212:                                        ; preds = %if.then207
  %45 = bitcast %struct.pid* %pid.addr.0 to i8*
  %call213 = call %struct.file* @anon_inode_getfile(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), %struct.file_operations* noundef nonnull @pidfd_fops, i8* noundef %45, i32 noundef 524290) #21
  %46 = bitcast %struct.file* %call213 to i8*
  %call214 = call fastcc i1 @IS_ERR(i8* noundef %46) #22
  br i1 %call214, label %if.then215, label %if.end218

if.then215:                                       ; preds = %if.end212
  call void @put_unused_fd(i32 noundef %call208) #21
  %call216 = call fastcc i64 @PTR_ERR(i8* noundef %46) #22
  %conv217 = trunc i64 %call216 to i32
  br label %bad_fork_free_pid

if.end218:                                        ; preds = %if.end212
  call fastcc void @get_pid(%struct.pid* noundef %pid.addr.0) #22
  %pidfd221 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 1
  %47 = bitcast i32** %pidfd221 to i8**
  %48 = load i8*, i8** %47, align 8
  %call222 = call fastcc i64 @__range_ok(i8* noundef %48, i64 noundef 4) #22
  %tobool223.not = icmp eq i64 %call222, 0
  br i1 %tobool223.not, label %if.then406, label %if.end234

if.end234:                                        ; preds = %if.end218
  %call225 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %48) #22
  %49 = bitcast i8* %call225 to i32*
  %50 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call208, i32* %49, i32 -14, i32 0) #23, !srcloc !23
  %tobool238.not = icmp eq i32 %50, 0
  br i1 %tobool238.not, label %if.end241, label %if.then406

if.end241:                                        ; preds = %if.end234, %if.end204
  %pidfile.0 = phi %struct.file* [ %call213, %if.end234 ], [ null, %if.end204 ]
  %pidfd.0 = phi i32 [ %call208, %if.end234 ], [ -1, %if.end204 ]
  %plug = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 109
  store %struct.blk_plug* null, %struct.blk_plug** %plug, align 8
  call fastcc void @futex_init_task(%struct.task_struct* noundef nonnull %call80) #22
  %and242 = and i64 %1, 16640
  %cmp243 = icmp eq i64 %and242, 256
  br i1 %cmp243, label %if.then245, label %if.end246

if.then245:                                       ; preds = %if.end241
  call fastcc void @sas_ss_reset(%struct.task_struct* noundef nonnull %call80) #22
  br label %if.end246

if.end246:                                        ; preds = %if.then245, %if.end241
  call void @user_disable_single_step(%struct.task_struct* noundef nonnull %call80) #21
  %call247 = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef nonnull %call80) #22
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call247, i32 noundef 8) #22
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call247, i32 noundef 12) #22
  %call249 = call fastcc i32 @pid_nr(%struct.pid* noundef %pid.addr.0) #22
  %pid250 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 50
  store i32 %call249, i32* %pid250, align 32
  br i1 %tobool.not, label %if.else258, label %if.then253

if.then253:                                       ; preds = %if.end246
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 56
  %51 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  %group_leader255 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 56
  store %struct.task_struct* %51, %struct.task_struct** %group_leader255, align 8
  %tgid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 51
  %52 = load i32, i32* %tgid, align 4
  br label %if.end262

if.else258:                                       ; preds = %if.end246
  %group_leader259 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 56
  store %struct.task_struct* %call80, %struct.task_struct** %group_leader259, align 8
  br label %if.end262

if.end262:                                        ; preds = %if.else258, %if.then253
  %.sink = phi i32 [ %call249, %if.else258 ], [ %52, %if.then253 ]
  %53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 51
  store i32 %.sink, i32* %53, align 4
  %nr_dirtied = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 128
  store i32 0, i32* %nr_dirtied, align 16
  %nr_dirtied_pause = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 129
  store i32 32, i32* %nr_dirtied_pause, align 4
  %dirty_paused_when = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 130
  store i64 0, i64* %dirty_paused_when, align 8
  %pdeath_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 42
  store i32 0, i32* %pdeath_signal, align 64
  %thread_group = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 61
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %thread_group) #22
  %task_works = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 96
  store %struct.callback_head* null, %struct.callback_head** %task_works, align 32
  %call267 = call fastcc i64 @ktime_get_ns() #22
  %start_time = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 73
  store i64 %call267, i64* %start_time, align 8
  %call268 = call fastcc i64 @ktime_get_boottime_ns() #22
  %start_boottime = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 74
  store i64 %call268, i64* %start_boottime, align 16
  call fastcc void @__raw_write_lock_irq() #22
  %and269 = and i64 %1, 98304
  %tobool270.not = icmp eq i64 %and269, 0
  br i1 %tobool270.not, label %if.else285, label %if.then271

if.then271:                                       ; preds = %if.end262
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 52
  %54 = load %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %real_parent273 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 52
  store %struct.task_struct* %54, %struct.task_struct** %real_parent273, align 8
  %parent_exec_id = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 99
  %55 = load i64, i64* %parent_exec_id, align 8
  %parent_exec_id275 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 99
  store i64 %55, i64* %parent_exec_id275, align 8
  br i1 %tobool.not, label %if.else279, label %if.end292

if.else279:                                       ; preds = %if.then271
  %group_leader281 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 56
  %56 = load %struct.task_struct*, %struct.task_struct** %group_leader281, align 8
  %exit_signal282 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i64 0, i32 41
  %57 = load i32, i32* %exit_signal282, align 4
  br label %if.end292

if.else285:                                       ; preds = %if.end262
  %real_parent287 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 52
  store %struct.task_struct* %3, %struct.task_struct** %real_parent287, align 8
  %self_exec_id = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 100
  %58 = load i64, i64* %self_exec_id, align 16
  %parent_exec_id289 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 99
  store i64 %58, i64* %parent_exec_id289, align 8
  %exit_signal290 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 4
  %59 = load i32, i32* %exit_signal290, align 8
  br label %if.end292

if.end292:                                        ; preds = %if.then271, %if.else279, %if.else285
  %.sink736 = phi i32 [ %57, %if.else279 ], [ %59, %if.else285 ], [ -1, %if.then271 ]
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 41
  store i32 %.sink736, i32* %exit_signal, align 4
  %60 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i723 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %60, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i723) #21
  call fastcc void @rseq_fork(%struct.task_struct* noundef nonnull %call80, i64 noundef %1) #22
  %call296 = call fastcc %struct.pid_namespace* @ns_of_pid(%struct.pid* noundef %pid.addr.0) #22
  %pid_allocated = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %call296, i64 0, i32 2
  %61 = load i32, i32* %pid_allocated, align 8
  %tobool298.not = icmp sgt i32 %61, -1
  br i1 %tobool298.not, label %bad_fork_put_pidfd, label %if.end304, !prof !11

if.end304:                                        ; preds = %if.end292
  %call306 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %3) #22
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %if.end309, label %bad_fork_put_pidfd

if.end309:                                        ; preds = %if.end304
  %tobool310.not = icmp eq %struct.file* %pidfile.0, null
  br i1 %tobool310.not, label %if.end312, label %if.then311

if.then311:                                       ; preds = %if.end309
  call void @fd_install(i32 noundef %pidfd.0, %struct.file* noundef nonnull %pidfile.0) #21
  br label %if.end312

if.end312:                                        ; preds = %if.then311, %if.end309
  call fastcc void @init_task_pid_links(%struct.task_struct* noundef nonnull %call80) #22
  %62 = load i32, i32* %pid250, align 32
  %tobool314.not = icmp eq i32 %62, 0
  br i1 %tobool314.not, label %if.end395, label %if.then322, !prof !11

if.then322:                                       ; preds = %if.end312
  %and323 = and i64 %1, 8192
  %tobool324 = icmp ne i64 %and323, 0
  %tobool325 = icmp ne i32 %trace, 0
  %63 = or i1 %tobool325, %tobool324
  call fastcc void @ptrace_init_task(%struct.task_struct* noundef nonnull %call80, i1 noundef %63) #22
  call fastcc void @init_task_pid(%struct.task_struct* noundef nonnull %call80, i32 noundef 0, %struct.pid* noundef %pid.addr.0) #22
  %call326 = call fastcc i1 @thread_group_leader(%struct.task_struct* noundef nonnull %call80) #22
  br i1 %call326, label %if.then327, label %if.else382

if.then327:                                       ; preds = %if.then322
  call fastcc void @init_task_pid(%struct.task_struct* noundef nonnull %call80, i32 noundef 1, %struct.pid* noundef %pid.addr.0) #22
  %call329 = call fastcc %struct.pid* @task_pgrp(%struct.task_struct* noundef %3) #22
  call fastcc void @init_task_pid(%struct.task_struct* noundef nonnull %call80, i32 noundef 2, %struct.pid* noundef %call329) #22
  %call331 = call fastcc %struct.pid* @task_session(%struct.task_struct* noundef %3) #22
  call fastcc void @init_task_pid(%struct.task_struct* noundef nonnull %call80, i32 noundef 3, %struct.pid* noundef %call331) #22
  %call332 = call fastcc i1 @is_child_reaper(%struct.pid* noundef %pid.addr.0) #22
  br i1 %call332, label %if.then333, label %if.end338

if.then333:                                       ; preds = %if.then327
  %call334 = call fastcc %struct.pid_namespace* @ns_of_pid(%struct.pid* noundef %pid.addr.0) #22
  %child_reaper = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %call334, i64 0, i32 3
  store %struct.task_struct* %call80, %struct.task_struct** %child_reaper, align 8
  %signal335 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 87
  %64 = load %struct.signal_struct*, %struct.signal_struct** %signal335, align 8
  %flags336 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %64, i64 0, i32 12
  %65 = load i32, i32* %flags336, align 4
  %or337 = or i32 %65, 64
  store i32 %or337, i32* %flags336, align 4
  br label %if.end338

if.end338:                                        ; preds = %if.then333, %if.then327
  %signal339 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 87
  %66 = load %struct.signal_struct*, %struct.signal_struct** %signal339, align 8
  %67 = getelementptr inbounds %struct.multiprocess_signals, %struct.multiprocess_signals* %delayed, i64 0, i32 0, i32 0, i64 0
  %68 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %66, i64 0, i32 6, i32 1, i32 0, i64 0
  %69 = load i64, i64* %67, align 8
  store i64 %69, i64* %68, align 8
  %signal343 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 87
  %70 = load %struct.signal_struct*, %struct.signal_struct** %signal343, align 8
  %tty = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %70, i64 0, i32 24
  %71 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8
  %call344 = call fastcc %struct.tty_struct* @tty_kref_get(%struct.tty_struct* noundef %71) #22
  %72 = load %struct.signal_struct*, %struct.signal_struct** %signal339, align 8
  %tty346 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %72, i64 0, i32 24
  store %struct.tty_struct* %71, %struct.tty_struct** %tty346, align 8
  %real_parent347 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 52
  %73 = load %struct.task_struct*, %struct.task_struct** %real_parent347, align 8
  %signal348 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %73, i64 0, i32 87
  %74 = load %struct.signal_struct*, %struct.signal_struct** %signal348, align 8
  %has_child_subreaper = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %74, i64 0, i32 13
  %bf.load = load i8, i8* %has_child_subreaper, align 8
  %75 = and i8 %bf.load, 2
  %tobool349.not = icmp eq i8 %75, 0
  %bf.clear354 = shl i8 %bf.load, 1
  %76 = and i8 %bf.clear354, 2
  %77 = select i1 %tobool349.not, i8 %76, i8 2
  %78 = load %struct.signal_struct*, %struct.signal_struct** %signal339, align 8
  %has_child_subreaper359 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %78, i64 0, i32 13
  %bf.load360 = load i8, i8* %has_child_subreaper359, align 8
  %bf.clear361 = and i8 %bf.load360, -3
  %bf.set = or i8 %bf.clear361, %77
  store i8 %bf.set, i8* %has_child_subreaper359, align 8
  %79 = load %struct.task_struct*, %struct.task_struct** %real_parent347, align 8
  %children364 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %79, i64 0, i32 54
  call fastcc void @list_add_tail(%struct.list_head* noundef %sibling, %struct.list_head* noundef %children364) #22
  %tasks = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 32
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %tasks, %struct.list_head* noundef getelementptr inbounds (%struct.task_struct, %struct.task_struct* @init_task, i64 0, i32 32)) #22
  call void @attach_pid(%struct.task_struct* noundef nonnull %call80, i32 noundef 1) #21
  call void @attach_pid(%struct.task_struct* noundef nonnull %call80, i32 noundef 2) #21
  call void @attach_pid(%struct.task_struct* noundef nonnull %call80, i32 noundef 3) #21
  %call376 = call fastcc i64 @__kern_my_cpu_offset() #22
  %add = add i64 %call376, ptrtoint (i64* @process_counts to i64)
  %80 = inttoptr i64 %add to i64*
  %81 = load i64, i64* %80, align 8
  %add377 = add i64 %81, 1
  store i64 %add377, i64* %80, align 8
  br label %if.end393

if.else382:                                       ; preds = %if.then322
  %signal384 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 87
  %82 = load %struct.signal_struct*, %struct.signal_struct** %signal384, align 8
  %nr_threads = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %82, i64 0, i32 2
  %83 = load i32, i32* %nr_threads, align 8
  %inc = add i32 %83, 1
  store i32 %inc, i32* %nr_threads, align 8
  %84 = load %struct.signal_struct*, %struct.signal_struct** %signal384, align 8
  %live = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %84, i64 0, i32 1
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %live) #21
  %85 = load %struct.signal_struct*, %struct.signal_struct** %signal384, align 8
  %sigcnt = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %85, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %sigcnt) #22
  call void @task_join_group_stop(%struct.task_struct* noundef nonnull %call80) #21
  %group_leader390 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 56
  %86 = load %struct.task_struct*, %struct.task_struct** %group_leader390, align 8
  %thread_group391 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %86, i64 0, i32 61
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %thread_group, %struct.list_head* noundef %thread_group391) #22
  %thread_node = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 62
  %signal392 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 87
  %87 = load %struct.signal_struct*, %struct.signal_struct** %signal392, align 8
  %thread_head = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %87, i64 0, i32 3
  call fastcc void @list_add_tail_rcu(%struct.list_head* noundef %thread_node, %struct.list_head* noundef %thread_head) #22
  br label %if.end393

if.end393:                                        ; preds = %if.else382, %if.end338
  call void @attach_pid(%struct.task_struct* noundef nonnull %call80, i32 noundef 0) #21
  %88 = load i32, i32* @nr_threads, align 4
  %inc394 = add i32 %88, 1
  store i32 %inc394, i32* @nr_threads, align 4
  br label %if.end395

if.end395:                                        ; preds = %if.end393, %if.end312
  %89 = load i64, i64* @total_forks, align 8
  %inc396 = add i64 %89, 1
  store i64 %inc396, i64* @total_forks, align 8
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %node62) #22
  %90 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i724 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %90, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i724) #21
  call fastcc void @__raw_write_unlock_irq() #22
  call void @sched_post_fork(%struct.task_struct* noundef nonnull %call80) #21
  call fastcc void @copy_oom_score_adj(i64 noundef %1, %struct.task_struct* noundef nonnull %call80) #22
  br label %cleanup

bad_fork_put_pidfd:                               ; preds = %if.end292, %if.end304
  %retval1.0 = phi i32 [ -12, %if.end292 ], [ -4, %if.end304 ]
  %91 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i725 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %91, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i725) #21
  call fastcc void @__raw_write_unlock_irq() #22
  br i1 %tobool53.not, label %bad_fork_free_pid, label %if.then406

if.then406:                                       ; preds = %if.end218, %if.end234, %bad_fork_put_pidfd
  %pidfd.1735 = phi i32 [ %pidfd.0, %bad_fork_put_pidfd ], [ %call208, %if.end234 ], [ %call208, %if.end218 ]
  %retval1.1734 = phi i32 [ %retval1.0, %bad_fork_put_pidfd ], [ %50, %if.end234 ], [ -14, %if.end218 ]
  %pidfile.1733 = phi %struct.file* [ %pidfile.0, %bad_fork_put_pidfd ], [ %call213, %if.end234 ], [ %call213, %if.end218 ]
  call void @fput(%struct.file* noundef %pidfile.1733) #21
  call void @put_unused_fd(i32 noundef %pidfd.1735) #21
  br label %bad_fork_free_pid

bad_fork_free_pid:                                ; preds = %bad_fork_put_pidfd, %if.then406, %if.then207, %if.then215
  %retval1.2 = phi i32 [ %call208, %if.then207 ], [ %conv217, %if.then215 ], [ %retval1.1734, %if.then406 ], [ %retval1.0, %bad_fork_put_pidfd ]
  %cmp408.not = icmp eq %struct.pid* %pid.addr.0, @init_struct_pid
  br i1 %cmp408.not, label %bad_fork_cleanup_io, label %if.then410

if.then410:                                       ; preds = %bad_fork_free_pid
  call void @free_pid(%struct.pid* noundef %pid.addr.0) #21
  br label %bad_fork_cleanup_io

bad_fork_cleanup_io:                              ; preds = %if.then200, %if.then410, %bad_fork_free_pid, %if.end188
  %retval1.4 = phi i32 [ %call189, %if.end188 ], [ %conv202, %if.then200 ], [ %retval1.2, %if.then410 ], [ %retval1.2, %bad_fork_free_pid ]
  %92 = load %struct.io_context*, %struct.io_context** %io_context, align 16
  %tobool413.not = icmp eq %struct.io_context* %92, null
  br i1 %tobool413.not, label %bad_fork_cleanup_namespaces, label %if.then414

if.then414:                                       ; preds = %bad_fork_cleanup_io
  call void @exit_io_context(%struct.task_struct* noundef nonnull %call80) #21
  br label %bad_fork_cleanup_namespaces

bad_fork_cleanup_namespaces:                      ; preds = %bad_fork_cleanup_io, %if.then414, %if.end184
  %retval1.5 = phi i32 [ %call185, %if.end184 ], [ %retval1.4, %if.then414 ], [ %retval1.4, %bad_fork_cleanup_io ]
  call void @exit_task_namespaces(%struct.task_struct* noundef nonnull %call80) #21
  br label %bad_fork_cleanup_mm

bad_fork_cleanup_mm:                              ; preds = %if.end180, %bad_fork_cleanup_namespaces
  %retval1.6 = phi i32 [ %call181, %if.end180 ], [ %retval1.5, %bad_fork_cleanup_namespaces ]
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 35
  %93 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %tobool416.not = icmp eq %struct.mm_struct* %93, null
  br i1 %tobool416.not, label %bad_fork_cleanup_signal, label %if.then417

if.then417:                                       ; preds = %bad_fork_cleanup_mm
  call void @mmput(%struct.mm_struct* noundef nonnull %93) #22
  br label %bad_fork_cleanup_signal

bad_fork_cleanup_signal:                          ; preds = %bad_fork_cleanup_mm, %if.then417, %if.end176
  %retval1.7 = phi i32 [ %call177, %if.end176 ], [ %retval1.6, %if.then417 ], [ %retval1.6, %bad_fork_cleanup_mm ]
  br i1 %tobool.not, label %if.then423, label %bad_fork_cleanup_sighand

if.then423:                                       ; preds = %bad_fork_cleanup_signal
  %signal424 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 87
  %94 = load %struct.signal_struct*, %struct.signal_struct** %signal424, align 8
  call fastcc void @free_signal_struct(%struct.signal_struct* noundef %94) #22
  br label %bad_fork_cleanup_sighand

bad_fork_cleanup_sighand:                         ; preds = %bad_fork_cleanup_signal, %if.then423, %if.end172
  %retval1.8 = phi i32 [ %call173, %if.end172 ], [ %retval1.7, %bad_fork_cleanup_signal ], [ %retval1.7, %if.then423 ]
  %sighand426 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 88
  %95 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand426, align 16
  call void @__cleanup_sighand(%struct.sighand_struct* noundef %95) #22
  br label %bad_fork_cleanup_fs

bad_fork_cleanup_fs:                              ; preds = %if.end168, %bad_fork_cleanup_sighand
  %retval1.9 = phi i32 [ %call169, %if.end168 ], [ %retval1.8, %bad_fork_cleanup_sighand ]
  call void @exit_fs(%struct.task_struct* noundef nonnull %call80) #21
  br label %bad_fork_cleanup_files

bad_fork_cleanup_files:                           ; preds = %if.end164, %bad_fork_cleanup_fs
  %retval1.10 = phi i32 [ %call165, %if.end164 ], [ %retval1.9, %bad_fork_cleanup_fs ]
  call void @exit_files(%struct.task_struct* noundef nonnull %call80) #21
  br label %bad_fork_cleanup_count

bad_fork_cleanup_count:                           ; preds = %if.end129, %if.end144, %bad_fork_cleanup_files, %if.end123
  %retval1.16 = phi i32 [ -11, %if.end123 ], [ %call141, %if.end129 ], [ %call161, %if.end144 ], [ %retval1.10, %bad_fork_cleanup_files ]
  call fastcc void @__rcu_read_lock() #21
  %96 = load volatile %struct.cred*, %struct.cred** %real_cred, align 64
  %ucounts438 = getelementptr inbounds %struct.cred, %struct.cred* %96, i64 0, i32 17
  %97 = load %struct.ucounts*, %struct.ucounts** %ucounts438, align 8
  call fastcc void @rcu_read_unlock() #22
  %call440 = call i1 @dec_rlimit_ucounts(%struct.ucounts* noundef %97, i32 noundef 8, i64 noundef 1) #21
  call void @exit_creds(%struct.task_struct* noundef nonnull %call80) #21
  br label %do.body445

do.body445:                                       ; preds = %bad_fork_cleanup_count, %land.lhs.true112, %if.end116
  %retval1.17 = phi i32 [ %call120, %if.end116 ], [ %retval1.16, %bad_fork_cleanup_count ], [ -11, %land.lhs.true112 ]
  %__state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call80, i64 0, i32 1
  store volatile i32 128, i32* %__state, align 16
  call void @put_task_stack(%struct.task_struct* noundef nonnull %call80) #22
  call void @free_task(%struct.task_struct* noundef nonnull %call80) #21
  br label %fork_out

fork_out:                                         ; preds = %if.end78, %if.end70, %do.body445
  %retval1.18 = phi i32 [ -513, %if.end70 ], [ %retval1.17, %do.body445 ], [ -12, %if.end78 ]
  %98 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i726 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %98, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i726) #21
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %node62) #22
  %99 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %rlock.i727 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %99, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i727) #21
  %conv457 = sext i32 %retval1.18 to i64
  %call458 = call fastcc i8* @ERR_PTR(i64 noundef %conv457) #22
  %100 = bitcast i8* %call458 to %struct.task_struct*
  br label %cleanup

cleanup:                                          ; preds = %fork_out, %if.end395, %if.then57, %if.then48, %if.then40, %if.then29, %if.then19, %if.then11, %if.then5, %if.then
  %retval.0 = phi %struct.task_struct* [ %5, %if.then ], [ %6, %if.then5 ], [ %13, %if.then29 ], [ %15, %if.then40 ], [ %18, %if.then48 ], [ %19, %if.then57 ], [ %100, %fork_out ], [ %call80, %if.end395 ], [ %10, %if.then19 ], [ %7, %if.then11 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #23
  ret %struct.task_struct* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR(i8* noundef readnone %ptr) unnamed_addr #14 {
entry:
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  ret i1 %cmp
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid
define internal fastcc void @init_idle_pids(%struct.task_struct* nocapture noundef %idle) unnamed_addr #15 {
entry:
  %arrayidx = getelementptr %struct.task_struct, %struct.task_struct* %idle, i64 0, i32 60, i64 0
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %arrayidx) #22
  call fastcc void @init_task_pid(%struct.task_struct* noundef %idle, i32 noundef 0, %struct.pid* noundef nonnull @init_struct_pid) #22
  %arrayidx.1 = getelementptr %struct.task_struct, %struct.task_struct* %idle, i64 0, i32 60, i64 1
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %arrayidx.1) #22
  call fastcc void @init_task_pid(%struct.task_struct* noundef %idle, i32 noundef 1, %struct.pid* noundef nonnull @init_struct_pid) #22
  %arrayidx.2 = getelementptr %struct.task_struct, %struct.task_struct* %idle, i64 0, i32 60, i64 2
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %arrayidx.2) #22
  call fastcc void @init_task_pid(%struct.task_struct* noundef %idle, i32 noundef 2, %struct.pid* noundef nonnull @init_struct_pid) #22
  %arrayidx.3 = getelementptr %struct.task_struct, %struct.task_struct* %idle, i64 0, i32 60, i64 3
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %arrayidx.3) #22
  call fastcc void @init_task_pid(%struct.task_struct* noundef %idle, i32 noundef 3, %struct.pid* noundef nonnull @init_struct_pid) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_idle(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.mm_struct* @copy_init_mm() local_unnamed_addr #3 {
entry:
  %call = call fastcc %struct.mm_struct* @dup_mm(%struct.mm_struct* noundef nonnull @init_mm) #22
  ret %struct.mm_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.mm_struct* @dup_mm(%struct.mm_struct* noundef %oldmm) unnamed_addr #3 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @mm_cachep, align 8
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #21
  %1 = bitcast i8* %call to %struct.mm_struct*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.mm_struct* %oldmm to i8*
  %call1 = call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %2, i64 noundef 856) #21
  %call2 = call fastcc %struct.mm_struct* @mm_init(%struct.mm_struct* noundef nonnull %1) #22
  %tobool3.not = icmp eq %struct.mm_struct* %call2, null
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @dup_mmap(%struct.mm_struct* noundef nonnull %1, %struct.mm_struct* noundef %oldmm) #22
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %free_pt

if.end9:                                          ; preds = %if.end5
  %call10 = call fastcc i64 @get_mm_rss(%struct.mm_struct* noundef nonnull %1) #22
  %hiwater_rss = getelementptr inbounds i8, i8* %call, i64 160
  %3 = bitcast i8* %hiwater_rss to i64*
  store i64 %call10, i64* %3, align 8
  %total_vm = getelementptr inbounds i8, i8* %call, i64 176
  %4 = bitcast i8* %total_vm to i64*
  %5 = load i64, i64* %4, align 8
  %hiwater_vm = getelementptr inbounds i8, i8* %call, i64 168
  %6 = bitcast i8* %hiwater_vm to i64*
  store i64 %5, i64* %6, align 8
  br label %cleanup

free_pt:                                          ; preds = %if.end5
  %binfmt16 = getelementptr inbounds i8, i8* %call, i64 728
  %7 = bitcast i8* %binfmt16 to %struct.linux_binfmt**
  store %struct.linux_binfmt* null, %struct.linux_binfmt** %7, align 8
  call void @mmput(%struct.mm_struct* noundef nonnull %1) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %free_pt, %entry, %if.end
  %retval.0 = phi %struct.mm_struct* [ null, %if.end ], [ null, %entry ], [ null, %free_pt ], [ %1, %if.end9 ]
  ret %struct.mm_struct* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.task_struct* @create_io_thread(i32 (i8*)* noundef %fn, i8* noundef %arg, i32 noundef %node) local_unnamed_addr #3 {
entry:
  %args = alloca %struct.kernel_clone_args, align 8
  %0 = bitcast %struct.kernel_clone_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %0) #23
  %1 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 4
  %2 = bitcast i32* %1 to i64*, !annotation !19
  store i64 0, i64* %2, align 8, !annotation !19
  %flags1 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 0
  store i64 2155941632, i64* %flags1, align 8
  %pidfd = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 1
  store i32* null, i32** %pidfd, align 8
  %child_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 2
  store i32* null, i32** %child_tid, align 8
  %parent_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 3
  store i32* null, i32** %parent_tid, align 8
  %stack = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 5
  %3 = ptrtoint i32 (i8*)* %fn to i64
  store i64 %3, i64* %stack, align 8
  %stack_size = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 6
  %4 = ptrtoint i8* %arg to i64
  store i64 %4, i64* %stack_size, align 8
  %tls = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 7
  store i64 0, i64* %tls, align 8
  %set_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 8
  store i32* null, i32** %set_tid, align 8
  %set_tid_size = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 9
  store i64 0, i64* %set_tid_size, align 8
  %cgroup = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 10
  store i32 0, i32* %cgroup, align 8
  %io_thread = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 11
  store i32 1, i32* %io_thread, align 4
  %cgrp = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 12
  store %struct.cgroup* null, %struct.cgroup** %cgrp, align 8
  %cset = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 13
  store %struct.css_set* null, %struct.css_set** %cset, align 8
  %call = call fastcc %struct.task_struct* @copy_process(%struct.pid* noundef null, i32 noundef 0, i32 noundef %node, %struct.kernel_clone_args* noundef nonnull %args) #22
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %0) #23
  ret %struct.task_struct* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernel_clone(%struct.kernel_clone_args* nocapture noundef readonly %args) local_unnamed_addr #3 {
entry:
  %vfork = alloca %struct.completion, align 8
  %flags = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8
  %1 = bitcast %struct.completion* %vfork to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #23
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !19
  %and3 = and i64 %0, 1048576
  %tobool4.not = icmp eq i64 %and3, 0
  %2 = and i64 %0, 1052672
  %.not = icmp eq i64 %2, 1052672
  br i1 %.not, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %entry
  %pidfd = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 1
  %3 = load i32*, i32** %pidfd, align 8
  %parent_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 3
  %4 = load i32*, i32** %parent_tid, align 8
  %cmp = icmp eq i32* %3, %4
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true5, %entry
  %and6 = and i64 %0, 8388608
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end23

if.then8:                                         ; preds = %if.end
  %and9 = and i64 %0, 16384
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.end16

if.else:                                          ; preds = %if.then8
  %exit_signal = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 4
  %5 = load i32, i32* %exit_signal, align 8
  %cmp12.not = icmp eq i32 %5, 17
  %. = select i1 %cmp12.not, i32 1, i32 3
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then8
  %trace.0 = phi i32 [ 2, %if.then8 ], [ %., %if.else ]
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %call17 = call fastcc i1 @ptrace_event_enabled(%struct.task_struct* noundef %7, i32 noundef %trace.0) #22
  %spec.select = select i1 %call17, i32 %trace.0, i32 0, !prof !11
  br label %if.end23

if.end23:                                         ; preds = %if.end16, %if.end
  %trace.1 = phi i32 [ 0, %if.end ], [ %spec.select, %if.end16 ]
  %call24 = call fastcc %struct.task_struct* @copy_process(%struct.pid* noundef null, i32 noundef %trace.1, i32 noundef -1, %struct.kernel_clone_args* noundef %args) #22
  %8 = bitcast %struct.task_struct* %call24 to i8*
  %call25 = call fastcc i1 @IS_ERR(i8* noundef %8) #22
  br i1 %call25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end23
  %call27 = call fastcc i64 @PTR_ERR(i8* noundef %8) #22
  %conv28 = trunc i64 %call27 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %9 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %call31 = call %struct.pid* @get_task_pid(%struct.task_struct* noundef %call24, i32 noundef 0) #21
  %call32 = call i32 @pid_vnr(%struct.pid* noundef %call31) #21
  br i1 %tobool4.not, label %if.end51, label %if.then35

if.then35:                                        ; preds = %if.end29
  %parent_tid36 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 3
  %10 = bitcast i32** %parent_tid36 to i8**
  %11 = load i8*, i8** %10, align 8
  %call37 = call fastcc i64 @__range_ok(i8* noundef %11, i64 noundef 4) #22
  %tobool38.not = icmp eq i64 %call37, 0
  br i1 %tobool38.not, label %if.end51, label %if.then39

if.then39:                                        ; preds = %if.then35
  %call40 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %11) #22
  %12 = bitcast i8* %call40 to i32*
  %13 = call i32 asm sideeffect "1:\09sttr\09${1:w}, [$2]\0A2:\0A\09.section .fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09${0:w}, $3\0A\09b\092b\0A\09.previous\0A\09.pushsection\09__ex_table, \22a\22\0A\09.align\09\093\0A\09.long\09\09(1b - .), (3b - .)\0A\09.popsection\0A", "=r,r,r,i,0"(i32 %call32, i32* %12, i32 -14, i32 0) #23, !srcloc !24
  br label %if.end51

if.end51:                                         ; preds = %if.then39, %if.then35, %if.end29
  %and52 = and i64 %0, 16384
  %tobool53.not = icmp eq i64 %and52, 0
  br i1 %tobool53.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end51
  %vfork_done = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call24, i64 0, i32 63
  store %struct.completion* %vfork, %struct.completion** %vfork_done, align 8
  call fastcc void @init_completion(%struct.completion* noundef nonnull %vfork) #22
  call fastcc void @get_task_struct(%struct.task_struct* noundef %call24) #22
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end51
  call void @wake_up_new_task(%struct.task_struct* noundef %call24) #21
  %tobool57.not = icmp eq i32 %trace.1, 0
  br i1 %tobool57.not, label %if.end66, label %if.then65, !prof !8

if.then65:                                        ; preds = %if.end56
  call fastcc void @ptrace_event_pid(i32 noundef %trace.1, %struct.pid* noundef %call31) #22
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end56
  br i1 %tobool53.not, label %if.end74, label %if.then69

if.then69:                                        ; preds = %if.end66
  %call70 = call fastcc i32 @wait_for_vfork_done(%struct.task_struct* noundef %call24, %struct.completion* noundef nonnull %vfork) #22
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.then69
  call fastcc void @ptrace_event_pid(i32 noundef 5, %struct.pid* noundef %call31) #22
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.then72, %if.end66
  call void @put_pid(%struct.pid* noundef %call31) #21
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true5, %if.end74, %if.then26
  %retval.0 = phi i32 [ %conv28, %if.then26 ], [ %call32, %if.end74 ], [ -22, %land.lhs.true5 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #23
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @ptrace_event_enabled(%struct.task_struct* nocapture noundef readonly %task, i32 noundef %event) unnamed_addr #13 {
entry:
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 5
  %0 = load i32, i32* %ptrace, align 8
  %add = add i32 %event, 3
  %shl = shl nuw i32 1, %add
  %and = and i32 %0, %shl
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @PTR_ERR(i8* noundef %ptr) unnamed_addr #14 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @get_task_pid(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(%struct.pid* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__range_ok(i8* noundef %addr, i64 noundef %size) unnamed_addr #3 {
entry:
  %0 = call { i64, i64 } asm sideeffect "\09adds\09$0, $3, $2\0A\09csel\09$1, xzr, $1, hi\0A\09csinv\09$0, $0, xzr, cc\0A\09sbcs\09xzr, $0, $1\0A\09cset\09$0, ls\0A", "=&r,=r,Ir,0,1,~{cc}"(i64 %size, i8* %addr, i64 549755813887) #23, !srcloc !25
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @__uaccess_mask_ptr(i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = ptrtoint i8* %ptr to i64
  %shl.i = shl i64 %0, 8
  %shr.i = ashr exact i64 %shl.i, 8
  %and = and i64 %shr.i, %0
  %1 = inttoptr i64 %and to i8*
  %2 = call i8* asm sideeffect "\09bics\09xzr, $3, $2\0A\09csel\09$0, $1, xzr, eq\0A", "=&r,r,r,r,~{cc}"(i8* %ptr, i64 549755813887, i8* %1) #23, !srcloc !26
  call void asm sideeffect "hint #20", "~{memory}"() #23, !srcloc !27
  ret i8* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #3 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_task_struct(%struct.task_struct* noundef %t) unnamed_addr #3 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %usage) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_new_task(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_event_pid(i32 noundef %event, %struct.pid* noundef %pid) unnamed_addr #3 {
entry:
  call fastcc void @__rcu_read_lock() #21
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 53
  %2 = load volatile %struct.task_struct*, %struct.task_struct** %parent, align 16
  %call5 = call %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef %2) #21
  %tobool.not = icmp eq %struct.pid_namespace* %call5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call6 = call i32 @pid_nr_ns(%struct.pid* noundef %pid, %struct.pid_namespace* noundef nonnull %call5) #21
  %conv = sext i32 %call6 to i64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %message.0 = phi i64 [ %conv, %if.then ], [ 0, %entry ]
  call fastcc void @rcu_read_unlock() #22
  call fastcc void @ptrace_event(i32 noundef %event, i64 noundef %message.0) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @wait_for_vfork_done(%struct.task_struct* noundef %child, %struct.completion* noundef %vfork) unnamed_addr #3 {
entry:
  %call = call i32 @wait_for_completion_killable(%struct.completion* noundef %vfork) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @task_lock(%struct.task_struct* noundef %child) #22
  %vfork_done = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 63
  store %struct.completion* null, %struct.completion** %vfork_done, align 8
  call fastcc void @task_unlock(%struct.task_struct* noundef %child) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @put_task_struct(%struct.task_struct* noundef %child) #22
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(%struct.pid* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kernel_thread(i32 (i8*)* noundef %fn, i8* noundef %arg, i64 noundef %flags) local_unnamed_addr #3 {
entry:
  %args = alloca %struct.kernel_clone_args, align 8
  %0 = bitcast %struct.kernel_clone_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %0) #23
  %1 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 4
  %2 = bitcast i32* %1 to i64*, !annotation !19
  store i64 0, i64* %2, align 8, !annotation !19
  %flags1 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 0
  %conv = trunc i64 %flags to i32
  %or2 = and i64 %flags, 4286578176
  %and3 = or i64 %or2, 8388864
  store i64 %and3, i64* %flags1, align 8
  %pidfd = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 1
  store i32* null, i32** %pidfd, align 8
  %child_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 2
  store i32* null, i32** %child_tid, align 8
  %parent_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 3
  store i32* null, i32** %parent_tid, align 8
  %exit_signal = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 4
  %and7 = and i32 %conv, 255
  store i32 %and7, i32* %exit_signal, align 8
  %stack = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 5
  %3 = ptrtoint i32 (i8*)* %fn to i64
  store i64 %3, i64* %stack, align 8
  %stack_size = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 6
  %4 = ptrtoint i8* %arg to i64
  store i64 %4, i64* %stack_size, align 8
  %tls = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 7
  store i64 0, i64* %tls, align 8
  %set_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 8
  store i32* null, i32** %set_tid, align 8
  %set_tid_size = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 9
  store i64 0, i64* %set_tid_size, align 8
  %cgroup = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 10
  store i32 0, i32* %cgroup, align 8
  %io_thread = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 11
  store i32 0, i32* %io_thread, align 4
  %cgrp = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 12
  store %struct.cgroup* null, %struct.cgroup** %cgrp, align 8
  %cset = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 13
  store %struct.css_set* null, %struct.css_set** %cset, align 8
  %call = call i32 @kernel_clone(%struct.kernel_clone_args* noundef nonnull %args) #22
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %0) #23
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_clone(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #3 {
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
  %call = call fastcc i64 @__se_sys_clone(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_clone(i64 noundef %clone_flags, i64 noundef %newsp, i64 noundef %parent_tidptr, i64 noundef %tls, i64 noundef %child_tidptr) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %parent_tidptr to i32*
  %1 = inttoptr i64 %child_tidptr to i32*
  %call = call fastcc i64 @__do_sys_clone(i64 noundef %clone_flags, i64 noundef %newsp, i32* noundef %0, i64 noundef %tls, i32* noundef %1) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_clone3(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %arrayidx3 = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx3, align 8
  %call = call fastcc i64 @__se_sys_clone3(i64 noundef %0, i64 noundef %1) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_clone3(i64 noundef %uargs, i64 noundef %size) unnamed_addr #3 {
entry:
  %0 = inttoptr i64 %uargs to %struct.clone_args*
  %call = call fastcc i64 @__do_sys_clone3(%struct.clone_args* noundef %0, i64 noundef %size) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @walk_process_tree(%struct.task_struct* nocapture noundef readonly %top, i32 (%struct.task_struct*, i8*)* nocapture noundef readonly %visitor, i8* noundef %data) local_unnamed_addr #3 {
entry:
  call fastcc void @__raw_read_lock() #22
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %top, i64 0, i32 56
  %0 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  br label %down

down:                                             ; preds = %if.then, %entry
  %leader.0 = phi %struct.task_struct* [ %0, %entry ], [ %child.0.le, %if.then ]
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %leader.0, i64 0, i32 87
  %1 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %next = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %1, i64 0, i32 3, i32 0
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %down
  %2 = phi %struct.signal_struct* [ %1, %down ], [ %.pre, %for.inc29 ]
  %.pn68.in = phi %struct.list_head** [ %next, %down ], [ %next36, %for.inc29 ]
  %leader.1 = phi %struct.task_struct* [ %leader.0, %down ], [ %leader.2, %for.inc29 ]
  %.pn68 = load volatile %struct.list_head*, %struct.list_head** %.pn68.in, align 8
  %parent.0.in = getelementptr %struct.list_head, %struct.list_head* %.pn68, i64 -70, i32 1
  %thread_node = getelementptr inbounds %struct.list_head*, %struct.list_head** %parent.0.in, i64 139
  %3 = bitcast %struct.list_head** %thread_node to %struct.list_head*
  %thread_head6 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %2, i64 0, i32 3
  %cmp.not = icmp eq %struct.list_head* %thread_head6, %3
  br i1 %cmp.not, label %for.end42, label %for.body

for.body:                                         ; preds = %for.cond
  %parent.0 = bitcast %struct.list_head** %parent.0.in to %struct.task_struct*
  %children = getelementptr inbounds %struct.list_head*, %struct.list_head** %parent.0.in, i64 119
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body
  %.pn.in.in = phi %struct.list_head** [ %children, %for.body ], [ %next23, %for.inc ]
  %parent.1 = phi %struct.task_struct* [ %parent.0, %for.body ], [ %parent.2, %for.inc ]
  %leader.2 = phi %struct.task_struct* [ %leader.1, %for.body ], [ %leader.3, %for.inc ]
  %.pn.in = bitcast %struct.list_head** %.pn.in.in to i8**
  %.pn = load i8*, i8** %.pn.in, align 8
  %child.0.in = getelementptr i8, i8* %.pn, i64 -968
  %child.0 = bitcast i8* %child.0.in to %struct.task_struct*
  %4 = bitcast i8* %.pn to %struct.list_head*
  %children15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %parent.1, i64 0, i32 54
  %cmp16.not = icmp eq %struct.list_head* %children15, %4
  br i1 %cmp16.not, label %for.inc29, label %for.body17

for.body17:                                       ; preds = %for.cond14
  %call = call i32 %visitor(%struct.task_struct* noundef %child.0, i8* noundef %data) #21
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body17
  %child.0.le = bitcast i8* %child.0.in to %struct.task_struct*
  %cmp18 = icmp slt i32 %call, 0
  br i1 %cmp18, label %out, label %down

for.inc:                                          ; preds = %if.then44, %for.body17
  %child.1 = phi %struct.task_struct* [ %child.0, %for.body17 ], [ %leader.1, %if.then44 ]
  %parent.2 = phi %struct.task_struct* [ %parent.1, %for.body17 ], [ %5, %if.then44 ]
  %leader.3 = phi %struct.task_struct* [ %leader.2, %for.body17 ], [ %6, %if.then44 ]
  %next23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child.1, i64 0, i32 55, i32 0
  br label %for.cond14

for.inc29:                                        ; preds = %for.cond14
  %next36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %parent.1, i64 0, i32 62, i32 0
  %signal5.phi.trans.insert = getelementptr inbounds %struct.task_struct, %struct.task_struct* %leader.2, i64 0, i32 87
  %.pre = load %struct.signal_struct*, %struct.signal_struct** %signal5.phi.trans.insert, align 8
  br label %for.cond

for.end42:                                        ; preds = %for.cond
  %cmp43.not = icmp eq %struct.task_struct* %leader.1, %0
  br i1 %cmp43.not, label %out, label %if.then44

if.then44:                                        ; preds = %for.end42
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %leader.1, i64 0, i32 52
  %5 = load %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %group_leader45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i64 0, i32 56
  %6 = load %struct.task_struct*, %struct.task_struct** %group_leader45, align 8
  br label %for.inc

out:                                              ; preds = %if.then, %for.end42
  call fastcc void @__raw_read_unlock() #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_lock() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !28
  call fastcc void @queued_read_lock() #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_read_unlock() unnamed_addr #3 {
entry:
  call fastcc void @queued_read_unlock() #22
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !29
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @proc_caches_init() local_unnamed_addr #9 section ".init.text" {
entry:
  %call = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef 2080, i32 noundef 0, i32 noundef 794624, void (i8*)* noundef nonnull @sighand_ctor) #21
  store %struct.kmem_cache* %call, %struct.kmem_cache** @sighand_cachep, align 8
  %call1 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef 952, i32 noundef 0, i32 noundef 270336, void (i8*)* noundef null) #21
  store %struct.kmem_cache* %call1, %struct.kmem_cache** @signal_cachep, align 8
  %call2 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 noundef 704, i32 noundef 0, i32 noundef 270336, void (i8*)* noundef null) #21
  store %struct.kmem_cache* %call2, %struct.kmem_cache** @files_cachep, align 8
  %call3 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 noundef 56, i32 noundef 0, i32 noundef 270336, void (i8*)* noundef null) #21
  store %struct.kmem_cache* %call3, %struct.kmem_cache** @fs_cachep, align 8
  %call6 = call %struct.kmem_cache* @kmem_cache_create_usercopy(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 noundef 888, i32 noundef 0, i32 noundef 270336, i32 noundef 328, i32 noundef 368, void (i8*)* noundef null) #21
  store %struct.kmem_cache* %call6, %struct.kmem_cache** @mm_cachep, align 8
  %call7 = call %struct.kmem_cache* @kmem_cache_create(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 176, i32 noundef 8, i32 noundef 262144, void (i8*)* noundef null) #21
  store %struct.kmem_cache* %call7, %struct.kmem_cache** @vm_area_cachep, align 8
  call void @mmap_init() #25
  %call8 = call i32 @nsproxy_cache_init() #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kmem_cache* @kmem_cache_create(i8* noundef, i32 noundef, i32 noundef, i32 noundef, void (i8*)* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @sighand_ctor(i8* noundef %data) #3 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = bitcast i8* %data to i32*
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %signalfd_wqh = getelementptr inbounds i8, i8* %data, i64 8
  %0 = bitcast i8* %signalfd_wqh to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @sighand_ctor.__key) #21
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mmap_init() local_unnamed_addr #16 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @nsproxy_cache_init() local_unnamed_addr #16 section ".init.text"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @unshare_fd(i64 noundef %unshare_flags, i32 noundef %max_fds, %struct.files_struct** nocapture noundef writeonly %new_fdp) local_unnamed_addr #3 {
entry:
  %error = alloca i32, align 4
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %2 = load %struct.files_struct*, %struct.files_struct** %files, align 16
  %3 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #23
  store i32 0, i32* %error, align 4
  %and = and i64 %unshare_flags, 1024
  %tobool = icmp ne i64 %and, 0
  %tobool1 = icmp ne %struct.files_struct* %2, null
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %land.lhs.true2, label %cleanup

land.lhs.true2:                                   ; preds = %entry
  %counter.i = getelementptr inbounds %struct.files_struct, %struct.files_struct* %2, i64 0, i32 0, i32 0
  %4 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %land.lhs.true2
  %call4 = call %struct.files_struct* @dup_fd(%struct.files_struct* noundef nonnull %2, i32 noundef %max_fds, i32* noundef nonnull %error) #21
  store %struct.files_struct* %call4, %struct.files_struct** %new_fdp, align 8
  %tobool5.not = icmp eq %struct.files_struct* %call4, null
  %5 = load i32, i32* %error, align 4
  %spec.select = select i1 %tobool5.not, i32 %5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry, %land.lhs.true2
  %retval.0 = phi i32 [ 0, %land.lhs.true2 ], [ 0, %entry ], [ %spec.select, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #23
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.files_struct* @dup_fd(%struct.files_struct* noundef, i32 noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @ksys_unshare(i64 noundef %unshare_flags) local_unnamed_addr #3 {
entry:
  %new_fs = alloca %struct.fs_struct*, align 8
  %new_fd = alloca %struct.files_struct*, align 8
  %new_nsproxy = alloca %struct.nsproxy*, align 8
  %0 = bitcast %struct.fs_struct** %new_fs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #23
  store %struct.fs_struct* null, %struct.fs_struct** %new_fs, align 8
  %1 = bitcast %struct.files_struct** %new_fd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #23
  store %struct.files_struct* null, %struct.files_struct** %new_fd, align 8
  %2 = bitcast %struct.nsproxy** %new_nsproxy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #23
  store %struct.nsproxy* null, %struct.nsproxy** %new_nsproxy, align 8
  %and = and i64 %unshare_flags, 268435456
  %tobool.not = icmp eq i64 %and, 0
  %or = or i64 %unshare_flags, 66048
  %spec.select = select i1 %tobool.not, i64 %unshare_flags, i64 %or
  %and1 = shl i64 %spec.select, 3
  %3 = and i64 %and1, 2048
  %4 = or i64 %3, %spec.select
  %and6 = shl i64 %4, 5
  %5 = and i64 %and6, 65536
  %and11 = lshr i64 %spec.select, 8
  %6 = and i64 %and11, 512
  %7 = or i64 %4, %6
  %8 = or i64 %7, %5
  %call = call fastcc i32 @check_unshare_flags(i64 noundef %8) #22
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end18, label %bad_unshare_out

if.end18:                                         ; preds = %entry
  %and19 = and i64 %spec.select, 134479872
  %tobool20.not = icmp eq i64 %and19, 0
  %9 = xor i1 %tobool20.not, true
  %call23 = call fastcc i32 @unshare_fs(i64 noundef %8, %struct.fs_struct** noundef nonnull %new_fs) #22
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %bad_unshare_out

if.end26:                                         ; preds = %if.end18
  %call27 = call i32 @unshare_fd(i64 noundef %8, i32 noundef -1, %struct.files_struct** noundef nonnull %new_fd) #22
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %bad_unshare_cleanup_fs

if.end30:                                         ; preds = %if.end26
  %call31 = call fastcc i32 @unshare_userns(i64 noundef %8) #22
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %bad_unshare_cleanup_fd

if.end34:                                         ; preds = %if.end30
  %10 = load %struct.fs_struct*, %struct.fs_struct** %new_fs, align 8
  %call35 = call i32 @unshare_nsproxy_namespaces(i64 noundef %8, %struct.nsproxy** noundef nonnull %new_nsproxy, %struct.cred* noundef null, %struct.fs_struct* noundef %10) #21
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end45, label %bad_unshare_cleanup_fd

if.end45:                                         ; preds = %if.end34
  %tobool46 = icmp ne %struct.fs_struct* %10, null
  %11 = load %struct.files_struct*, %struct.files_struct** %new_fd, align 8
  %tobool47 = icmp ne %struct.files_struct* %11, null
  %or.cond = select i1 %tobool46, i1 true, i1 %tobool47
  %or.cond103 = or i1 %or.cond, %9
  %12 = load %struct.nsproxy*, %struct.nsproxy** %new_nsproxy, align 8
  %tobool53 = icmp ne %struct.nsproxy* %12, null
  %or.cond105 = select i1 %or.cond103, i1 true, i1 %tobool53
  br i1 %or.cond105, label %if.then54, label %if.end92

if.then54:                                        ; preds = %if.end45
  br i1 %tobool20.not, label %if.end58, label %if.then56

if.then56:                                        ; preds = %if.then54
  %13 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.then54
  %and59 = and i64 %spec.select, 134217728
  %tobool60.not = icmp eq i64 %and59, 0
  br i1 %tobool60.not, label %if.end64, label %if.then61

if.then61:                                        ; preds = %if.end58
  %14 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end58
  %tobool65.not = icmp eq %struct.nsproxy* %12, null
  br i1 %tobool65.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.end64
  %15 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %16 = inttoptr i64 %15 to %struct.task_struct*
  call void @switch_task_namespaces(%struct.task_struct* noundef %16, %struct.nsproxy* noundef nonnull %12) #21
  br label %if.end68

if.end68:                                         ; preds = %if.end64, %if.then66
  %17 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %18 = inttoptr i64 %17 to %struct.task_struct*
  call fastcc void @task_lock(%struct.task_struct* noundef %18) #22
  %tobool70.not = icmp eq %struct.fs_struct* %10, null
  br i1 %tobool70.not, label %if.end80, label %if.then71

if.then71:                                        ; preds = %if.end68
  %fs73 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i64 0, i32 83
  %19 = load %struct.fs_struct*, %struct.fs_struct** %fs73, align 8
  %rlock.i = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %19, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #21
  store %struct.fs_struct* %10, %struct.fs_struct** %fs73, align 8
  %users = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %19, i64 0, i32 0
  %20 = load i32, i32* %users, align 8
  %dec = add i32 %20, -1
  store i32 %dec, i32* %users, align 8
  %tobool76.not = icmp eq i32 %dec, 0
  %. = select i1 %tobool76.not, %struct.fs_struct* %19, %struct.fs_struct* null
  store %struct.fs_struct* %., %struct.fs_struct** %new_fs, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #21
  br label %if.end80

if.end80:                                         ; preds = %if.then71, %if.end68
  %tobool81.not = icmp eq %struct.files_struct* %11, null
  br i1 %tobool81.not, label %if.end86, label %if.then82

if.then82:                                        ; preds = %if.end80
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i64 0, i32 84
  %21 = load %struct.files_struct*, %struct.files_struct** %files, align 16
  store %struct.files_struct* %11, %struct.files_struct** %files, align 16
  store %struct.files_struct* %21, %struct.files_struct** %new_fd, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.end80
  call fastcc void @task_unlock(%struct.task_struct* noundef %18) #22
  br label %if.end92

if.end92:                                         ; preds = %if.end86, %if.end45
  %22 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  br label %bad_unshare_cleanup_fd

bad_unshare_cleanup_fd:                           ; preds = %if.end92, %if.end34, %if.end30
  %err.2 = phi i32 [ %call31, %if.end30 ], [ %call35, %if.end34 ], [ 0, %if.end92 ]
  %23 = load %struct.files_struct*, %struct.files_struct** %new_fd, align 8
  %tobool97.not = icmp eq %struct.files_struct* %23, null
  br i1 %tobool97.not, label %bad_unshare_cleanup_fs, label %if.then98

if.then98:                                        ; preds = %bad_unshare_cleanup_fd
  call void @put_files_struct(%struct.files_struct* noundef nonnull %23) #21
  br label %bad_unshare_cleanup_fs

bad_unshare_cleanup_fs:                           ; preds = %bad_unshare_cleanup_fd, %if.then98, %if.end26
  %err.3 = phi i32 [ %call27, %if.end26 ], [ %err.2, %if.then98 ], [ %err.2, %bad_unshare_cleanup_fd ]
  %24 = load %struct.fs_struct*, %struct.fs_struct** %new_fs, align 8
  %tobool100.not = icmp eq %struct.fs_struct* %24, null
  br i1 %tobool100.not, label %bad_unshare_out, label %if.then101

if.then101:                                       ; preds = %bad_unshare_cleanup_fs
  call void @free_fs_struct(%struct.fs_struct* noundef nonnull %24) #21
  br label %bad_unshare_out

bad_unshare_out:                                  ; preds = %bad_unshare_cleanup_fs, %if.then101, %if.end18, %entry
  %err.4 = phi i32 [ %call, %entry ], [ %call23, %if.end18 ], [ %err.3, %if.then101 ], [ %err.3, %bad_unshare_cleanup_fs ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #23
  ret i32 %err.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @check_unshare_flags(i64 noundef %unshare_flags) unnamed_addr #3 {
entry:
  %and = and i64 %unshare_flags, -2114391937
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %and1 = and i64 %unshare_flags, 67840
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call4 = call fastcc i32 @thread_group_empty(%struct.task_struct* noundef %1) #22
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end
  %and9 = and i64 %unshare_flags, 2304
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.end8
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 88
  %4 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %count = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %4, i64 0, i32 1
  %call13 = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %count) #22
  %cmp = icmp ugt i32 %call13, 1
  br i1 %cmp, label %return, label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end8
  %and17 = and i64 %unshare_flags, 256
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %if.end23, label %if.then19

if.then19:                                        ; preds = %if.end16
  %call20 = call i1 @current_is_single_threaded() #21
  br i1 %call20, label %if.end23, label %return

if.end23:                                         ; preds = %if.then19, %if.end16
  br label %return

return:                                           ; preds = %if.then19, %if.then11, %if.then3, %entry, %if.end23
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -22, %entry ], [ -22, %if.then3 ], [ -22, %if.then11 ], [ -22, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @unshare_fs(i64 noundef %unshare_flags, %struct.fs_struct** nocapture noundef writeonly %new_fsp) unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %fs1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 83
  %2 = load %struct.fs_struct*, %struct.fs_struct** %fs1, align 8
  %and = and i64 %unshare_flags, 512
  %tobool = icmp ne i64 %and, 0
  %tobool2 = icmp ne %struct.fs_struct* %2, null
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %users = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %2, i64 0, i32 0
  %3 = load i32, i32* %users, align 8
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call %struct.fs_struct* @copy_fs_struct(%struct.fs_struct* noundef nonnull %2) #21
  store %struct.fs_struct* %call5, %struct.fs_struct** %new_fsp, align 8
  %tobool6.not = icmp eq %struct.fs_struct* %call5, null
  %. = select i1 %tobool6.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @unshare_userns(i64 noundef %unshare_flags) unnamed_addr #14 {
entry:
  %and = and i64 %unshare_flags, 268435456
  %tobool.not = icmp eq i64 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_nsproxy_namespaces(i64 noundef, %struct.nsproxy** noundef, %struct.cred* noundef, %struct.fs_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @switch_task_namespaces(%struct.task_struct* noundef, %struct.nsproxy* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_files_struct(%struct.files_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_fs_struct(%struct.fs_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @__arm64_sys_unshare(%struct.pt_regs* nocapture noundef readonly %regs) local_unnamed_addr #3 {
entry:
  %arrayidx = getelementptr %struct.pt_regs, %struct.pt_regs* %regs, i64 0, i32 0, i32 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %call = call fastcc i64 @__se_sys_unshare(i64 noundef %0) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__se_sys_unshare(i64 noundef %unshare_flags) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @__do_sys_unshare(i64 noundef %unshare_flags) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @unshare_files() local_unnamed_addr #3 {
entry:
  %copy = alloca %struct.files_struct*, align 8
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %2 = bitcast %struct.files_struct** %copy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #23
  store %struct.files_struct* null, %struct.files_struct** %copy, align 8
  %call1 = call i32 @unshare_fd(i64 noundef 1024, i32 noundef -1, %struct.files_struct** noundef nonnull %copy) #22
  %tobool = icmp eq i32 %call1, 0
  %3 = load %struct.files_struct*, %struct.files_struct** %copy, align 8
  %tobool2 = icmp ne %struct.files_struct* %3, null
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 84
  %4 = load %struct.files_struct*, %struct.files_struct** %files, align 16
  call fastcc void @task_lock(%struct.task_struct* noundef %1) #22
  store %struct.files_struct* %3, %struct.files_struct** %files, align 16
  call fastcc void @task_unlock(%struct.task_struct* noundef %1) #22
  call void @put_files_struct(%struct.files_struct* noundef %4) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #23
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @sysctl_max_threads(%struct.ctl_table* nocapture noundef readonly %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) local_unnamed_addr #3 {
entry:
  %t = alloca %struct.ctl_table, align 8
  %threads = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %0 = bitcast %struct.ctl_table* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #23
  %1 = bitcast i32* %threads to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #23
  %2 = load i32, i32* @max_threads, align 4
  store i32 %2, i32* %threads, align 4
  %3 = bitcast i32* %min to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #23
  store i32 1, i32* %min, align 4
  %4 = bitcast i32* %max to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #23
  store i32 1073741823, i32* %max, align 4
  %5 = bitcast %struct.ctl_table* %table to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8* noundef align 8 dereferenceable(64) %5, i64 48, i1 false)
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %t, i64 0, i32 1
  %6 = bitcast i8** %data to i32**
  store i32* %threads, i32** %6, align 8
  %extra1 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %t, i64 0, i32 7
  %7 = bitcast i8** %extra1 to i32**
  store i32* %min, i32** %7, align 8
  %extra2 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %t, i64 0, i32 8
  %8 = bitcast i8** %extra2 to i32**
  store i32* %max, i32** %8, align 8
  %call = call i32 @proc_dointvec_minmax(%struct.ctl_table* noundef nonnull %t, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #21
  %tobool = icmp eq i32 %call, 0
  %tobool1 = icmp ne i32 %write, 0
  %or.cond = and i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %threads, align 4
  store i32 %9, i32* @max_threads, align 4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #23
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #23
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #3 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #22
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #3 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #21
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #23, !srcloc !30
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !8

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #23, !srcloc !31
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @account_kernel_stack(%struct.task_struct* nocapture noundef readonly %tsk, i32 noundef %account) unnamed_addr #3 {
entry:
  %call = call fastcc i8* @task_stack_page(%struct.task_struct* noundef %tsk) #22
  %mul6 = shl i32 %account, 4
  call fastcc void @mod_lruvec_kmem_state(i8* noundef %call, i32 noundef %mul6) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_thread_stack(%struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #3 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  %1 = ptrtoint i8* %0 to i64
  %sub = add i64 %1, 549755813888
  %2 = lshr i64 %sub, 6
  %mul = and i64 %2, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %3 = inttoptr i64 %add to %struct.page*
  call void @__free_pages(%struct.page* noundef %3, i32 noundef 2) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @task_stack_page(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #13 {
entry:
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 2
  %0 = load i8*, i8** %stack, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mod_lruvec_kmem_state(i8* noundef %p, i32 noundef %val) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.page* @virt_to_head_page(i8* noundef %p) #22
  %conv = sext i32 %val to i64
  call void @mod_node_page_state(%struct.pglist_data* noundef nonnull @contig_page_data, i32 noundef 36, i64 noundef %conv) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(%struct.pglist_data* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc %struct.page* @virt_to_head_page(i8* noundef %x) unnamed_addr #8 {
entry:
  %0 = ptrtoint i8* %x to i64
  %sub = add i64 %0, 549755813888
  %1 = lshr i64 %sub, 6
  %mul = and i64 %1, 288230376151711680
  %add = add nsw i64 %mul, -8589934592
  %2 = inttoptr i64 %add to %struct.page*
  %call = call fastcc i64 @_compound_head(%struct.page* noundef %2) #22
  %3 = inttoptr i64 %call to %struct.page*
  ret %struct.page* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @_compound_head(%struct.page* noundef %page) unnamed_addr #8 {
entry:
  %0 = getelementptr inbounds %struct.page, %struct.page* %page, i64 0, i32 1
  %compound_head = bitcast %union.anon.10* %0 to i64*
  %1 = load volatile i64, i64* %compound_head, align 8
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  %sub = add i64 %1, -1
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint %struct.page* %page to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %sub, %if.then ], [ %2, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(%struct.page* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pgd_free(%struct.mm_struct* noundef, %struct.pgd_t* noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @mm_pgtables_bytes(%struct.mm_struct* noundef %mm) unnamed_addr #8 {
entry:
  %counter.i.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 12, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  ret i64 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__io_uring_free(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @free_signal_struct(%struct.signal_struct* noundef %sig) unnamed_addr #3 {
entry:
  %oom_mm = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 53
  %0 = load %struct.mm_struct*, %struct.mm_struct** %oom_mm, align 8
  %tobool.not = icmp eq %struct.mm_struct* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @mmdrop_async(%struct.mm_struct* noundef nonnull %0) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.kmem_cache*, %struct.kmem_cache** @signal_cachep, align 8
  %2 = bitcast %struct.signal_struct* %sig to i8*
  call void @kmem_cache_free(%struct.kmem_cache* noundef %1, i8* noundef %2) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmdrop_async(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %mm_count) #21
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.body, label %if.end, !prof !11

do.body:                                          ; preds = %entry
  %async_put_work = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 51
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 51, i32 0, i32 0
  store i64 68719476704, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %entry4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 51, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry4) #22
  %func = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 51, i32 2
  store void (%struct.work_struct*)* @mmdrop_async_fn, void (%struct.work_struct*)** %func, align 8
  call fastcc void @schedule_work(%struct.work_struct* noundef %async_put_work) #22
  br label %if.end

if.end:                                           ; preds = %do.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @mmdrop_async_fn(%struct.work_struct* noundef %work) #3 {
entry:
  %add.ptr = getelementptr %struct.work_struct, %struct.work_struct* %work, i64 -26, i32 1
  %0 = bitcast %struct.list_head* %add.ptr to %struct.mm_struct*
  call void @__mmdrop(%struct.mm_struct* noundef %0) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @arch_thread_struct_whitelist(i64* nocapture noundef writeonly %offset, i64* nocapture noundef writeonly %size) unnamed_addr #12 {
entry:
  store i64 112, i64* %offset, align 8
  store i64 544, i64* %size, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @totalram_pages() unnamed_addr #8 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.atomic64_t, %struct.atomic64_t* @_totalram_pages, i64 0, i32 0), align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i64 @div64_u64(i64 noundef %dividend) unnamed_addr #14 {
entry:
  %div = lshr i64 %dividend, 17
  ret i64 %div
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoul(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @__seqcount_init(%struct.seqcount* nocapture noundef writeonly %s) unnamed_addr #12 {
entry:
  %sequence = getelementptr inbounds %struct.seqcount, %struct.seqcount* %s, i64 0, i32 0
  store i32 0, i32* %sequence, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_init_lock(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @__init_rwsem(%struct.rw_semaphore* noundef %mmap_lock, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @mmap_init_lock.__key) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @mm_pgtables_bytes_init(%struct.mm_struct* noundef %mm) unnamed_addr #7 {
entry:
  %counter.i.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 12, i32 0
  store volatile i64 0, i64* %counter.i.i, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mm_init_cpumask(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %0 = ptrtoint %struct.mm_struct* %mm to i64
  %add = add i64 %0, 856
  %1 = inttoptr i64 %add to %struct.cpumask*
  call fastcc void @cpumask_clear(%struct.cpumask* noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @mm_init_aio(%struct.mm_struct* nocapture noundef writeonly %mm) unnamed_addr #12 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 45, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %ioctx_table = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 46
  store %struct.kioctx_table* null, %struct.kioctx_table** %ioctx_table, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @init_tlb_flush_pending(%struct.mm_struct* noundef %mm) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 49, i32 0
  store volatile i32 0, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mm_alloc_pgd(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %call = call %struct.pgd_t* @pgd_alloc(%struct.mm_struct* noundef %mm) #21
  %pgd = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 8
  store %struct.pgd_t* %call, %struct.pgd_t** %pgd, align 8
  %tobool.not = icmp eq %struct.pgd_t* %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0, !prof !11
  ret i32 %.
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @init_new_context(%struct.mm_struct* noundef %mm) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  store volatile i64 0, i64* %counter.i, align 8
  %pinned = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 1
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %pinned, i32 noundef 0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(%struct.rw_semaphore* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpumask_clear(%struct.cpumask* noundef %dstp) unnamed_addr #3 {
entry:
  %arraydecay = getelementptr inbounds %struct.cpumask, %struct.cpumask* %dstp, i64 0, i32 0, i64 0
  call fastcc void @bitmap_zero(i64* noundef %arraydecay) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @bitmap_zero(i64* noundef %dst) unnamed_addr #3 {
entry:
  %0 = bitcast i64* %dst to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pgd_t* @pgd_alloc(%struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r, i32 noundef %n) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 %n, i32* %counter.i, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #23, !srcloc !32
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_aio(%struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_mmap(%struct.mm_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #8 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #22
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmdrop(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mm_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 11
  %call.i.i.i.i = call fastcc i32 @__ll_sc_atomic_sub_return(%struct.atomic_t* noundef %mm_count) #21
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void @__mmdrop(%struct.mm_struct* noundef %mm) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del(%struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev1, align 8
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  store volatile %struct.list_head* %next, %struct.list_head** %next4, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queue_work(%struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) unnamed_addr #3 {
entry:
  %call = call i1 @queue_work_on(i32 noundef 256, %struct.workqueue_struct* noundef %wq, %struct.work_struct* noundef %work) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @queue_work_on(i32 noundef, %struct.workqueue_struct* noundef, %struct.work_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.inode* @file_inode(%struct.file* nocapture noundef readonly %f) unnamed_addr #13 {
entry:
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %f, i64 0, i32 2
  %0 = load %struct.inode*, %struct.inode** %f_inode, align 8
  ret %struct.inode* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_mb_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #3 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #3 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_mb_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stlxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #23, !srcloc !33
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #23, !srcloc !34
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #23, !srcloc !35
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #23, !srcloc !36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__xchg_case_mb_64(i64 noundef %x, i8* noundef %ptr) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09stlxr\09${1:w}, $3, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %x, i64* elementtype(i64) %0) #23, !srcloc !37
  %asmresult = extractvalue { i64, i64 } %1, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !38
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !39
  call void @rcu_read_unlock_strict() #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @do_futex(i32* noundef, i32 noundef, i32 noundef, i64* noundef, i32* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @complete_vfork_done(%struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  call fastcc void @task_lock(%struct.task_struct* noundef %tsk) #22
  %vfork_done = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 63
  %0 = load %struct.completion*, %struct.completion** %vfork_done, align 8
  %tobool.not = icmp eq %struct.completion* %0, null
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  store %struct.completion* null, %struct.completion** %vfork_done, align 8
  call void @complete(%struct.completion* noundef nonnull %0) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @task_unlock(%struct.task_struct* noundef %tsk) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_set_tid_address(i32* noundef %tidptr) unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %clear_child_tid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 65
  store i32* %tidptr, i32** %clear_child_tid, align 8
  %call2 = call fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %1) #22
  %conv = sext i32 %call2 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @task_pid_vnr(%struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  %call = call i32 @__task_pid_nr_ns(%struct.task_struct* noundef %tsk, i32 noundef 0, %struct.pid_namespace* noundef null) #21
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(%struct.task_struct* noundef, i32 noundef, %struct.pid_namespace* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @poll_wait(%struct.file* noundef %filp, %struct.wait_queue_head* noundef %wait_address, %struct.poll_table_struct* noundef %p) unnamed_addr #3 {
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
  call void %0(%struct.file* noundef %filp, %struct.wait_queue_head* noundef nonnull %wait_address, %struct.poll_table_struct* noundef nonnull %p) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @thread_group_exited(%struct.pid* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @pid_has_task(%struct.pid* noundef %pid) unnamed_addr #8 {
entry:
  %arrayidx = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 3, i64 0
  %call = call fastcc i32 @hlist_empty(%struct.hlist_head* noundef %arrayidx) #22
  %tobool.not = icmp eq i32 %call, 0
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid_namespace* @proc_pid_ns(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #13 {
entry:
  %call = call fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* noundef %sb) #22
  %pid_ns = getelementptr inbounds %struct.proc_fs_info, %struct.proc_fs_info* %call, i64 0, i32 0
  %0 = load %struct.pid_namespace*, %struct.pid_namespace** %pid_ns, align 8
  ret %struct.pid_namespace* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(%struct.pid* noundef, %struct.pid_namespace* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ll(%struct.seq_file* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(%struct.seq_file* noundef, i8 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @hlist_empty(%struct.hlist_head* noundef %h) unnamed_addr #8 {
entry:
  %first = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load volatile %struct.hlist_node*, %struct.hlist_node** %first, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.proc_fs_info* @proc_sb_info(%struct.super_block* nocapture noundef readonly %sb) unnamed_addr #13 {
entry:
  %s_fs_info = getelementptr inbounds %struct.super_block, %struct.super_block* %sb, i64 0, i32 27
  %0 = bitcast i8** %s_fs_info to %struct.proc_fs_info**
  %1 = load %struct.proc_fs_info*, %struct.proc_fs_info** %0, align 8
  ret %struct.proc_fs_info* %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid_namespace* @task_active_pid_ns(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @sigemptyset(%struct.sigset_t* nocapture noundef writeonly %set) unnamed_addr #12 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  store i64 0, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #12 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #7 {
entry:
  %first1 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %h, i64 0, i32 0
  %0 = load %struct.hlist_node*, %struct.hlist_node** %first1, align 8
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 0
  store volatile %struct.hlist_node* %0, %struct.hlist_node** %next, align 8
  %tobool.not = icmp eq %struct.hlist_node* %0, null
  br i1 %tobool.not, label %do.body22, label %do.body12

do.body12:                                        ; preds = %entry
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %0, i64 0, i32 1
  store volatile %struct.hlist_node** %next, %struct.hlist_node*** %pprev, align 8
  br label %do.body22

do.body22:                                        ; preds = %entry, %do.body12
  store volatile %struct.hlist_node* %n, %struct.hlist_node** %first1, align 8
  %pprev34 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %n, i64 0, i32 1
  store volatile %struct.hlist_node** %first1, %struct.hlist_node*** %pprev34, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @recalc_sigpending() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %p) #22
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.task_struct* @dup_task_struct(%struct.task_struct* noundef %orig, i32 noundef %node) unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %node, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @tsk_fork_get_node(%struct.task_struct* noundef %orig) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %node.addr.0 = phi i32 [ %call, %if.then ], [ %node, %entry ]
  %call1 = call fastcc %struct.task_struct* @alloc_task_struct_node() #22
  %tobool.not = icmp eq %struct.task_struct* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i64* @alloc_thread_stack_node(%struct.task_struct* noundef nonnull %call1, i32 noundef %node.addr.0) #22
  %tobool5.not = icmp eq i64* %call4, null
  br i1 %tobool5.not, label %free_tsk, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call13 = call i32 @arch_dup_task_struct(%struct.task_struct* noundef nonnull %call1, %struct.task_struct* noundef %orig) #22
  %stack14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 2
  %0 = bitcast i8** %stack14 to i64**
  store i64* %call4, i64** %0, align 8
  %stack_refcount = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 136
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %stack_refcount, i32 noundef 1) #22
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end17, label %free_stack

if.end17:                                         ; preds = %if.end7
  call fastcc void @clear_tsk_need_resched(%struct.task_struct* noundef nonnull %call1) #22
  call void @set_task_stack_end_magic(%struct.task_struct* noundef nonnull %call1) #22
  %cpus_ptr = getelementptr inbounds %struct.task_struct, %struct.task_struct* %orig, i64 0, i32 25
  %1 = load %struct.cpumask*, %struct.cpumask** %cpus_ptr, align 8
  %cpus_mask = getelementptr inbounds %struct.task_struct, %struct.task_struct* %orig, i64 0, i32 27
  %cmp22 = icmp eq %struct.cpumask* %1, %cpus_mask
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end17
  %cpus_mask24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 27
  %cpus_ptr25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 25
  store %struct.cpumask* %cpus_mask24, %struct.cpumask** %cpus_ptr25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end17
  %call27 = call i32 @dup_user_cpus_ptr(%struct.task_struct* noundef nonnull %call1, %struct.task_struct* noundef %orig, i32 noundef %node.addr.0) #21
  %2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 125
  %rcu_users = bitcast %union.anon.81* %2 to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %rcu_users, i32 noundef 2) #22
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 3
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %usage, i32 noundef 1) #22
  %splice_pipe = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 126
  store %struct.pipe_inode_info* null, %struct.pipe_inode_info** %splice_pipe, align 8
  %page = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 127, i32 0
  store %struct.page* null, %struct.page** %page, align 32
  %next = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 103, i32 0
  store %struct.wake_q_node* null, %struct.wake_q_node** %next, align 64
  %pf_io_worker = getelementptr inbounds %struct.task_struct, %struct.task_struct* %call1, i64 0, i32 66
  store i8* null, i8** %pf_io_worker, align 64
  call fastcc void @account_kernel_stack(%struct.task_struct* noundef nonnull %call1, i32 noundef 1) #22
  br label %cleanup

free_stack:                                       ; preds = %if.end7
  call fastcc void @free_thread_stack(%struct.task_struct* noundef nonnull %call1) #22
  br label %free_tsk

free_tsk:                                         ; preds = %if.end3, %free_stack
  call fastcc void @free_task_struct(%struct.task_struct* noundef nonnull %call1) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %free_tsk, %if.end26
  %retval.0 = phi %struct.task_struct* [ null, %free_tsk ], [ %call1, %if.end26 ], [ null, %if.end ]
  ret %struct.task_struct* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @siginitsetinv(%struct.sigset_t* nocapture noundef writeonly %set) unnamed_addr #12 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  store i64 -262401, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @rt_mutex_init_task(%struct.task_struct* nocapture noundef writeonly %p) unnamed_addr #12 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 102, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %.compoundliteral1.sroa.0.0..sroa_idx = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 104, i32 0, i32 0
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral1.sroa.0.0..sroa_idx, align 8
  %.compoundliteral1.sroa.2.0..sroa_idx2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 104, i32 1
  store %struct.rb_node* null, %struct.rb_node** %.compoundliteral1.sroa.2.0..sroa_idx2, align 8
  %pi_top_task = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 105
  store %struct.task_struct* null, %struct.task_struct** %pi_top_task, align 8
  %pi_blocked_on = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 106
  store %struct.rt_mutex_waiter* null, %struct.rt_mutex_waiter** %pi_blocked_on, align 32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @is_ucounts_overlimit(%struct.ucounts* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @rlimit() unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i64 @task_rlimit(%struct.task_struct* noundef %1) #22
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_creds(%struct.task_struct* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @init_sigpending(%struct.sigpending* noundef %sig) unnamed_addr #7 {
entry:
  %signal = getelementptr inbounds %struct.sigpending, %struct.sigpending* %sig, i64 0, i32 1
  call fastcc void @sigemptyset(%struct.sigset_t* noundef %signal) #22
  %list = getelementptr inbounds %struct.sigpending, %struct.sigpending* %sig, i64 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @prev_cputime_init(%struct.prev_cputime* nocapture noundef writeonly %prev) unnamed_addr #12 {
entry:
  %stime = getelementptr inbounds %struct.prev_cputime, %struct.prev_cputime* %prev, i64 0, i32 1
  store i64 0, i64* %stime, align 8
  %utime = getelementptr inbounds %struct.prev_cputime, %struct.prev_cputime* %prev, i64 0, i32 0
  store i64 0, i64* %utime, align 8
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.prev_cputime, %struct.prev_cputime* %prev, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @posix_cputimers_init(%struct.posix_cputimers* noundef %pct) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.posix_cputimers* %pct to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 80) #21
  %nextevt = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 0, i32 0
  store i64 -1, i64* %nextevt, align 8
  %nextevt3 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 1, i32 0
  store i64 -1, i64* %nextevt3, align 8
  %nextevt6 = getelementptr %struct.posix_cputimers, %struct.posix_cputimers* %pct, i64 0, i32 0, i64 2, i32 0
  store i64 -1, i64* %nextevt6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_fork(i64 noundef, %struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_files(i64 noundef %clone_flags, %struct.task_struct* nocapture noundef writeonly %tsk) unnamed_addr #3 {
entry:
  %error = alloca i32, align 4
  %0 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #23
  store i32 0, i32* %error, align 4
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %files = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 84
  %3 = load %struct.files_struct*, %struct.files_struct** %files, align 16
  %tobool.not = icmp eq %struct.files_struct* %3, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %clone_flags, 1024
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %count = getelementptr inbounds %struct.files_struct, %struct.files_struct* %3, i64 0, i32 0
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %count) #21
  br label %out

if.end3:                                          ; preds = %if.end
  %call4 = call %struct.files_struct* @dup_fd(%struct.files_struct* noundef nonnull %3, i32 noundef -1, i32* noundef nonnull %error) #21
  %tobool5.not = icmp eq %struct.files_struct* %call4, null
  br i1 %tobool5.not, label %if.end3.out_crit_edge, label %if.end7

if.end3.out_crit_edge:                            ; preds = %if.end3
  %.pre = load i32, i32* %error, align 4
  br label %out

if.end7:                                          ; preds = %if.end3
  %files8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 84
  store %struct.files_struct* %call4, %struct.files_struct** %files8, align 16
  br label %out

out:                                              ; preds = %if.end3.out_crit_edge, %entry, %if.end7, %if.then2
  %4 = phi i32 [ %.pre, %if.end3.out_crit_edge ], [ 0, %entry ], [ 0, %if.end7 ], [ 0, %if.then2 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #23
  ret i32 %4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_fs(i64 noundef %clone_flags, %struct.task_struct* nocapture noundef writeonly %tsk) unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %fs1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 83
  %2 = load %struct.fs_struct*, %struct.fs_struct** %fs1, align 8
  %and = and i64 %clone_flags, 512
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %2, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #21
  %in_exec = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %2, i64 0, i32 4
  %3 = load i32, i32* %in_exec, align 8
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #21
  br label %cleanup

if.end:                                           ; preds = %if.then
  %users = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %2, i64 0, i32 0
  %4 = load i32, i32* %users, align 8
  %inc = add i32 %4, 1
  store i32 %inc, i32* %users, align 8
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #21
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = call %struct.fs_struct* @copy_fs_struct(%struct.fs_struct* noundef %2) #21
  %fs8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 83
  store %struct.fs_struct* %call7, %struct.fs_struct** %fs8, align 8
  %tobool10.not = icmp eq %struct.fs_struct* %call7, null
  %. = select i1 %tobool10.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ -11, %if.then3 ], [ 0, %if.end ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_sighand(i64 noundef %clone_flags, %struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  %and = and i64 %clone_flags, 2048
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %sighand = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 88
  %2 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand, align 16
  %count = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %2, i64 0, i32 1
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.kmem_cache*, %struct.kmem_cache** @sighand_cachep, align 8
  %call1 = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %3, i32 noundef 3264) #21
  %4 = bitcast i8* %call1 to %struct.sighand_struct*
  %sighand5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 88
  store volatile %struct.sighand_struct* %4, %struct.sighand_struct** %sighand5, align 16
  %tobool12.not = icmp eq i8* %call1, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end
  %count15 = getelementptr inbounds i8, i8* %call1, i64 4
  %5 = bitcast i8* %count15 to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %5, i32 noundef 1) #22
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %sighand17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i64 0, i32 88
  %8 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand17, align 16
  %rlock.i = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %8, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #21
  %action = getelementptr inbounds i8, i8* %call1, i64 32
  %9 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand17, align 16
  %arraydecay21 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %9, i64 0, i32 3, i64 0
  %10 = bitcast %struct.k_sigaction* %arraydecay21 to i8*
  %call22 = call i8* @memcpy(i8* noundef %action, i8* noundef %10, i64 noundef 2048) #21
  %11 = load %struct.sighand_struct*, %struct.sighand_struct** %sighand17, align 16
  %rlock.i36 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %11, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i36) #21
  %and26 = and i64 %clone_flags, 4294967296
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %cleanup, label %if.then28

if.then28:                                        ; preds = %if.end14
  call void @flush_signal_handlers(%struct.task_struct* noundef %tsk, i32 noundef 0) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then28, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -12, %if.end ], [ 0, %if.then28 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_signal(i64 noundef %clone_flags, %struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  %and = and i64 %clone_flags, 65536
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @signal_cachep, align 8
  %call = call fastcc i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %0) #22
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %1 = bitcast %struct.signal_struct** %signal to i8**
  store i8* %call, i8** %1, align 8
  %tobool1.not = icmp eq i8* %call, null
  br i1 %tobool1.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %2 = bitcast i8* %call to %struct.signal_struct*
  %nr_threads = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %nr_threads to i32*
  store i32 1, i32* %3, align 8
  %live = getelementptr inbounds i8, i8* %call, i64 4
  %counter.i = bitcast i8* %live to i32*
  store volatile i32 1, i32* %counter.i, align 4
  %sigcnt = bitcast i8* %call to %struct.refcount_struct*
  call fastcc void @refcount_set(%struct.refcount_struct* noundef nonnull %sigcnt, i32 noundef 1) #22
  %thread_node = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 62
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call, i64 16
  %4 = bitcast i8* %.compoundliteral.sroa.0.0..sroa_idx to %struct.list_head**
  store %struct.list_head* %thread_node, %struct.list_head** %4, align 8
  %.compoundliteral.sroa.2.0..sroa_idx49 = getelementptr inbounds i8, i8* %call, i64 24
  %5 = bitcast i8* %.compoundliteral.sroa.2.0..sroa_idx49 to %struct.list_head**
  store %struct.list_head* %thread_node, %struct.list_head** %5, align 8
  %.compoundliteral6.sroa.0.0..sroa_idx = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 62, i32 0
  %6 = bitcast %struct.list_head** %.compoundliteral6.sroa.0.0..sroa_idx to i8**
  store i8* %.compoundliteral.sroa.0.0..sroa_idx, i8** %6, align 8
  %.compoundliteral6.sroa.2.0..sroa_idx48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 62, i32 1
  %7 = bitcast %struct.list_head** %.compoundliteral6.sroa.2.0..sroa_idx48 to i8**
  store i8* %.compoundliteral.sroa.0.0..sroa_idx, i8** %7, align 8
  %wait_chldexit = getelementptr inbounds i8, i8* %call, i64 32
  %8 = bitcast i8* %wait_chldexit to %struct.wait_queue_head*
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @copy_signal.__key) #21
  %curr_target = getelementptr inbounds i8, i8* %call, i64 56
  %9 = bitcast i8* %curr_target to %struct.task_struct**
  store %struct.task_struct* %tsk, %struct.task_struct** %9, align 8
  %shared_pending = getelementptr inbounds i8, i8* %call, i64 64
  %10 = bitcast i8* %shared_pending to %struct.sigpending*
  call fastcc void @init_sigpending(%struct.sigpending* noundef %10) #22
  %multiprocess = getelementptr inbounds i8, i8* %call, i64 88
  %first = bitcast i8* %multiprocess to %struct.hlist_node**
  store %struct.hlist_node* null, %struct.hlist_node** %first, align 8
  %stats_lock = getelementptr inbounds i8, i8* %call, i64 408
  %lock = getelementptr inbounds i8, i8* %call, i64 412
  %11 = bitcast i8* %lock to i32*
  store i32 0, i32* %11, align 4
  %seqcount21 = bitcast i8* %stats_lock to %struct.seqcount*
  call fastcc void @__seqcount_init(%struct.seqcount* noundef %seqcount21) #22
  %prev_cputime = getelementptr inbounds i8, i8* %call, i64 464
  %12 = bitcast i8* %prev_cputime to %struct.prev_cputime*
  call fastcc void @prev_cputime_init(%struct.prev_cputime* noundef %12) #22
  %posix_timers = getelementptr inbounds i8, i8* %call, i64 128
  %13 = bitcast i8* %posix_timers to %struct.list_head*
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %13) #22
  %real_timer = getelementptr inbounds i8, i8* %call, i64 144
  %14 = bitcast i8* %real_timer to %struct.hrtimer*
  call void @hrtimer_init(%struct.hrtimer* noundef %14, i32 noundef 1, i32 noundef 1) #21
  %function = getelementptr inbounds i8, i8* %call, i64 184
  %15 = bitcast i8* %function to i32 (%struct.hrtimer*)**
  store i32 (%struct.hrtimer*)* @it_real_fn, i32 (%struct.hrtimer*)** %15, align 8
  %16 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %17 = inttoptr i64 %16 to %struct.task_struct*
  %group_leader = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i64 0, i32 56
  %18 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  call fastcc void @task_lock(%struct.task_struct* noundef %18) #22
  %rlim = getelementptr inbounds i8, i8* %call, i64 608
  %signal29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i64 0, i32 87
  %19 = load %struct.signal_struct*, %struct.signal_struct** %signal29, align 8
  %arraydecay31 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %19, i64 0, i32 49, i64 0
  %20 = bitcast %struct.rlimit* %arraydecay31 to i8*
  %call32 = call i8* @memcpy(i8* noundef %rlim, i8* noundef %20, i64 noundef 256) #21
  %21 = load %struct.task_struct*, %struct.task_struct** %group_leader, align 8
  call fastcc void @task_unlock(%struct.task_struct* noundef %21) #22
  call fastcc void @posix_cpu_timers_init_group(%struct.signal_struct* noundef nonnull %2) #22
  %22 = load %struct.signal_struct*, %struct.signal_struct** %signal29, align 8
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %22, i64 0, i32 51
  %23 = load i16, i16* %oom_score_adj, align 2
  %oom_score_adj37 = getelementptr inbounds i8, i8* %call, i64 866
  %24 = bitcast i8* %oom_score_adj37 to i16*
  store i16 %23, i16* %24, align 2
  %25 = load %struct.signal_struct*, %struct.signal_struct** %signal29, align 8
  %oom_score_adj_min = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %25, i64 0, i32 52
  %26 = load i16, i16* %oom_score_adj_min, align 4
  %oom_score_adj_min40 = getelementptr inbounds i8, i8* %call, i64 868
  %27 = bitcast i8* %oom_score_adj_min40 to i16*
  store i16 %26, i16* %27, align 4
  %cred_guard_mutex = getelementptr inbounds i8, i8* %call, i64 880
  %28 = bitcast i8* %cred_guard_mutex to %struct.mutex*
  call void @__mutex_init(%struct.mutex* noundef %28, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @copy_signal.__key.18) #21
  %exec_update_lock = getelementptr inbounds i8, i8* %call, i64 912
  %29 = bitcast i8* %exec_update_lock to %struct.rw_semaphore*
  call void @__init_rwsem(%struct.rw_semaphore* noundef %29, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @copy_signal.__key.20) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry ], [ -12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_mm(i64 noundef %clone_flags, %struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  %maj_flt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 76
  store i64 0, i64* %maj_flt, align 32
  %min_flt = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 75
  store i64 0, i64* %min_flt, align 8
  %nivcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 72
  store i64 0, i64* %nivcsw, align 64
  %nvcsw = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 71
  store i64 0, i64* %nvcsw, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 35
  store %struct.mm_struct* null, %struct.mm_struct** %mm1, align 8
  %active_mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 36
  store %struct.mm_struct* null, %struct.mm_struct** %active_mm, align 16
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %mm2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 35
  %2 = load %struct.mm_struct*, %struct.mm_struct** %mm2, align 8
  %tobool.not = icmp eq %struct.mm_struct* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @vmacache_flush(%struct.task_struct* noundef %tsk) #22
  %and = and i64 %clone_flags, 256
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call fastcc void @mmget(%struct.mm_struct* noundef nonnull %2) #22
  br label %if.end11

if.else:                                          ; preds = %if.end
  %3 = load %struct.mm_struct*, %struct.mm_struct** %mm2, align 8
  %call7 = call fastcc %struct.mm_struct* @dup_mm(%struct.mm_struct* noundef %3) #22
  %tobool8.not = icmp eq %struct.mm_struct* %call7, null
  br i1 %tobool8.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.else, %if.then4
  %mm.0 = phi %struct.mm_struct* [ %2, %if.then4 ], [ %call7, %if.else ]
  store %struct.mm_struct* %mm.0, %struct.mm_struct** %mm1, align 8
  store %struct.mm_struct* %mm.0, %struct.mm_struct** %active_mm, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 0, %entry ], [ -12, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_namespaces(i64 noundef, %struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_io(i64 noundef %clone_flags, %struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %io_context = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 112
  %2 = load %struct.io_context*, %struct.io_context** %io_context, align 16
  %tobool.not = icmp eq %struct.io_context* %2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %and = and i64 %clone_flags, 2147483648
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call fastcc void @ioc_task_link(%struct.io_context* noundef nonnull %2) #22
  %io_context3 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 112
  store %struct.io_context* %2, %struct.io_context** %io_context3, align 16
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ioprio = getelementptr inbounds %struct.io_context, %struct.io_context* %2, i64 0, i32 4
  %3 = load i16, i16* %ioprio, align 4
  %call4 = call fastcc i1 @ioprio_valid(i16 noundef %3) #22
  br i1 %call4, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.else
  %call6 = call %struct.io_context* @get_task_io_context(%struct.task_struct* noundef %tsk, i32 noundef 3264, i32 noundef -1) #21
  %tobool7.not = icmp eq %struct.io_context* %call6, null
  br i1 %tobool7.not, label %cleanup, label %if.end12, !prof !11

if.end12:                                         ; preds = %if.then5
  %4 = load i16, i16* %ioprio, align 4
  %ioprio14 = getelementptr inbounds %struct.io_context, %struct.io_context* %call6, i64 0, i32 4
  store i16 %4, i16* %ioprio14, align 4
  call void @put_io_context(%struct.io_context* noundef nonnull %call6) #21
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end12, %if.else, %if.then5, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -12, %if.then5 ], [ 0, %if.else ], [ 0, %if.end12 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_thread(i64 noundef, i64 noundef, i64 noundef, %struct.task_struct* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.pid* @alloc_pid(%struct.pid_namespace* noundef, i32* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.file* @anon_inode_getfile(i8* noundef, %struct.file_operations* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_pid(%struct.pid* noundef %pid) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %count) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @futex_init_task(%struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  %robust_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 116
  store %struct.robust_list_head* null, %struct.robust_list_head** %robust_list, align 8
  %pi_state_list = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 117
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %pi_state_list) #22
  %pi_state_cache = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 118
  store %struct.futex_pi_state* null, %struct.futex_pi_state** %pi_state_cache, align 64
  %futex_state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 120
  store i32 0, i32* %futex_state, align 8
  %futex_exit_mutex = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 119
  call void @__mutex_init(%struct.mutex* noundef %futex_exit_mutex, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @futex_init_task.__key) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @sas_ss_reset(%struct.task_struct* nocapture noundef writeonly %p) unnamed_addr #12 {
entry:
  %sas_ss_sp = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 93
  store i64 0, i64* %sas_ss_sp, align 8
  %sas_ss_size = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 94
  store i64 0, i64* %sas_ss_size, align 16
  %sas_ss_flags = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 95
  store i32 2, i32* %sas_ss_flags, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @user_disable_single_step(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %ti, i32 noundef %flag) unnamed_addr #3 {
entry:
  %0 = zext i32 %flag to i64
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  call fastcc void @clear_bit(i64 noundef %0, i64* noundef %flags) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef readnone %task) unnamed_addr #14 {
entry:
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 0
  ret %struct.thread_info* %thread_info
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @pid_nr(%struct.pid* noundef readonly %pid) unnamed_addr #13 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %nr1 = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 7, i64 0, i32 0
  %0 = load i32, i32* %nr1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nr.0 = phi i32 [ %0, %if.then ], [ 0, %entry ]
  ret i32 %nr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_get_ns() unnamed_addr #3 {
entry:
  %call = call i64 @ktime_get() #21
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_get_boottime_ns() unnamed_addr #3 {
entry:
  %call = call fastcc i64 @ktime_get_boottime() #22
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_lock_irq() unnamed_addr #3 {
entry:
  call fastcc void @arch_local_irq_disable() #22
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !40
  call fastcc void @queued_write_lock() #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rseq_fork(%struct.task_struct* nocapture noundef writeonly %t, i64 noundef %clone_flags) unnamed_addr #3 {
entry:
  %and = and i64 %clone_flags, 256
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %rseq = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 121
  store %struct.rseq* null, %struct.rseq** %rseq, align 16
  %rseq_sig = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 122
  store i32 0, i32* %rseq_sig, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %rseq1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 121
  %2 = load %struct.rseq*, %struct.rseq** %rseq1, align 16
  %rseq2 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 121
  store %struct.rseq* %2, %struct.rseq** %rseq2, align 16
  %rseq_sig4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 122
  %3 = load i32, i32* %rseq_sig4, align 8
  %rseq_sig5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 122
  store i32 %3, i32* %rseq_sig5, align 8
  %rseq_event_mask7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 123
  %4 = load i64, i64* %rseq_event_mask7, align 64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i64 [ %4, %if.else ], [ 0, %if.then ]
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 123
  store i64 %.sink, i64* %5, align 64
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid_namespace* @ns_of_pid(%struct.pid* noundef readonly %pid) unnamed_addr #13 {
entry:
  %tobool.not = icmp eq %struct.pid* %pid, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %level = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 1
  %0 = load i32, i32* %level, align 4
  %idxprom = zext i32 %0 to i64
  %ns1 = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 7, i64 %idxprom, i32 1
  %1 = load %struct.pid_namespace*, %struct.pid_namespace** %ns1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ns.0 = phi %struct.pid_namespace* [ %1, %if.then ], [ null, %entry ]
  ret %struct.pid_namespace* %ns.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %p) unnamed_addr #8 {
entry:
  %call = call fastcc i32 @task_sigpending(%struct.task_struct* noundef %p) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = call fastcc i32 @__fatal_signal_pending(%struct.task_struct* noundef %p) #22
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, %struct.file* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly
define internal fastcc void @init_task_pid_links(%struct.task_struct* nocapture noundef writeonly %task) unnamed_addr #18 {
entry:
  %arrayidx = getelementptr %struct.task_struct, %struct.task_struct* %task, i64 0, i32 60, i64 0
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %arrayidx) #22
  %arrayidx.1 = getelementptr %struct.task_struct, %struct.task_struct* %task, i64 0, i32 60, i64 1
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %arrayidx.1) #22
  %arrayidx.2 = getelementptr %struct.task_struct, %struct.task_struct* %task, i64 0, i32 60, i64 2
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %arrayidx.2) #22
  %arrayidx.3 = getelementptr %struct.task_struct, %struct.task_struct* %task, i64 0, i32 60, i64 3
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %arrayidx.3) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_init_task(%struct.task_struct* noundef %child, i1 noundef %ptrace) unnamed_addr #3 {
entry:
  %ptrace_entry = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 58
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %ptrace_entry) #22
  %ptraced = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 57
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %ptraced) #22
  %jobctl = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 43
  store i64 0, i64* %jobctl, align 8
  %ptrace1 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 5
  store i32 0, i32* %ptrace1, align 8
  %real_parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 52
  %0 = load %struct.task_struct*, %struct.task_struct** %real_parent, align 8
  %parent = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 53
  store %struct.task_struct* %0, %struct.task_struct** %parent, align 16
  br i1 %ptrace, label %land.lhs.true, label %if.else16, !prof !11

land.lhs.true:                                    ; preds = %entry
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %ptrace4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 5
  %3 = load i32, i32* %ptrace4, align 8
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.else16, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 %3, i32* %ptrace1, align 8
  %parent10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 53
  %4 = load %struct.task_struct*, %struct.task_struct** %parent10, align 16
  %ptracer_cred = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 78
  %5 = load %struct.cred*, %struct.cred** %ptracer_cred, align 8
  call void @__ptrace_link(%struct.task_struct* noundef %child, %struct.task_struct* noundef %4, %struct.cred* noundef %5) #21
  %6 = load i32, i32* %ptrace1, align 8
  %and = and i32 %6, 65536
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then
  %call15 = call i1 @task_set_jobctl_pending(%struct.task_struct* noundef %child, i64 noundef 524288) #21
  br label %if.end18

if.else:                                          ; preds = %if.then
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 92, i32 1
  call fastcc void @sigaddset(%struct.sigset_t* noundef %signal) #22
  br label %if.end18

if.else16:                                        ; preds = %land.lhs.true, %entry
  %ptracer_cred17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %child, i64 0, i32 78
  store %struct.cred* null, %struct.cred** %ptracer_cred17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.else, %if.else16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @init_task_pid(%struct.task_struct* nocapture noundef %task, i32 noundef %type, %struct.pid* noundef %pid) unnamed_addr #10 {
entry:
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %thread_pid = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 59
  store %struct.pid* %pid, %struct.pid** %thread_pid, align 64
  br label %if.end

if.else:                                          ; preds = %entry
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %idxprom = zext i32 %type to i64
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 %idxprom
  store %struct.pid* %pid, %struct.pid** %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @thread_group_leader(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #13 {
entry:
  %exit_signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 41
  %0 = load i32, i32* %exit_signal, align 4
  %cmp = icmp sgt i32 %0, -1
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_pgrp(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #13 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 2
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.pid* @task_session(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #13 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %arrayidx = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 21, i64 3
  %1 = load %struct.pid*, %struct.pid** %arrayidx, align 8
  ret %struct.pid* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @is_child_reaper(%struct.pid* nocapture noundef readonly %pid) unnamed_addr #13 {
entry:
  %level = getelementptr inbounds %struct.pid, %struct.pid* %pid, i64 0, i32 1
  %0 = load i32, i32* %level, align 4
  %idxprom = zext i32 %0 to i64
  %nr = getelementptr %struct.pid, %struct.pid* %pid, i64 0, i32 7, i64 %idxprom, i32 0
  %1 = load i32, i32* %nr, align 8
  %cmp = icmp eq i32 %1, 1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.tty_struct* @tty_kref_get(%struct.tty_struct* noundef returned %tty) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.tty_struct* %tty, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %tty, i64 0, i32 1
  call fastcc void @kref_get(%struct.kref* noundef %kref) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.tty_struct* %tty
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @attach_pid(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #0 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #27, !srcloc !41
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #3 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_join_group_stop(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init(%struct.hlist_node* nocapture noundef %n) unnamed_addr #7 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #22
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %n) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_write_unlock_irq() unnamed_addr #3 {
entry:
  call fastcc void @queued_write_unlock() #22
  call fastcc void @arch_local_irq_enable() #22
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_post_fork(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @copy_oom_score_adj(i64 noundef %clone_flags, %struct.task_struct* nocapture noundef readonly %tsk) unnamed_addr #3 {
entry:
  %mm = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 35
  %0 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %tobool.not = icmp ne %struct.mm_struct* %0, null
  %and = and i64 %clone_flags, 82176
  %cmp.not = icmp eq i64 %and, 256
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end2, label %return

if.end2:                                          ; preds = %entry
  call void @mutex_lock(%struct.mutex* noundef nonnull @oom_adj_mutex) #21
  %1 = load %struct.mm_struct*, %struct.mm_struct** %mm, align 8
  %flags = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %1, i64 0, i32 0, i32 43
  call fastcc void @set_bit(i64* noundef %flags) #22
  %2 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %3 = inttoptr i64 %2 to %struct.task_struct*
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %3, i64 0, i32 87
  %4 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %4, i64 0, i32 51
  %5 = load i16, i16* %oom_score_adj, align 2
  %signal4 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 87
  %6 = load %struct.signal_struct*, %struct.signal_struct** %signal4, align 8
  %oom_score_adj5 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %6, i64 0, i32 51
  store i16 %5, i16* %oom_score_adj5, align 2
  %7 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %oom_score_adj_min = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %7, i64 0, i32 52
  %8 = load i16, i16* %oom_score_adj_min, align 4
  %9 = load %struct.signal_struct*, %struct.signal_struct** %signal4, align 8
  %oom_score_adj_min9 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %9, i64 0, i32 52
  store i16 %8, i16* %oom_score_adj_min9, align 4
  call void @mutex_unlock(%struct.mutex* noundef nonnull @oom_adj_mutex) #21
  br label %return

return:                                           ; preds = %entry, %if.end2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pid(%struct.pid* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_io_context(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_task_namespaces(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_fs(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_files(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @dec_rlimit_ucounts(%struct.ucounts* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  call fastcc void @arch_local_irq_disable() #22
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !43
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #3 {
entry:
  %call39 = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0)) #22
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !11

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #23, !srcloc !44
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0, i32 noundef 1) #21
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #21
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count(%struct.static_key* noundef %key) unnamed_addr #8 {
entry:
  %counter.i = getelementptr inbounds %struct.static_key, %struct.static_key* %key, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #3 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #22
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #3 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #23, !srcloc !45
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #22
  call fastcc void @arch_local_irq_enable() #22
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !46
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #23, !srcloc !47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #3 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #23, !srcloc !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #8 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #22
  %call1 = call fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %call) #22
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @test_ti_thread_flag(%struct.thread_info* noundef %ti) unnamed_addr #8 {
entry:
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %ti, i64 0, i32 0
  %0 = load volatile i64, i64* %flags, align 8
  %1 = trunc i64 %0 to i32
  %conv.i = and i32 %1, 1
  ret i32 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tsk_fork_get_node(%struct.task_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias %struct.task_struct* @alloc_task_struct_node() unnamed_addr #3 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** @task_struct_cachep, align 8
  %call.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3264) #21
  %1 = bitcast i8* %call.i to %struct.task_struct*
  ret %struct.task_struct* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64* @alloc_thread_stack_node(%struct.task_struct* nocapture noundef writeonly %tsk, i32 noundef %node) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.page* @alloc_pages_node(i32 noundef %node) #22
  %tobool.not = icmp eq %struct.page* %call, null
  br i1 %tobool.not, label %cleanup, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  %0 = ptrtoint %struct.page* %call to i64
  %sub.i = shl i64 %0, 6
  %add.i = and i64 %sub.i, -4096
  %1 = inttoptr i64 %add.i to i8*
  %stack = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 2
  store i8* %1, i8** %stack, align 8
  %2 = inttoptr i64 %add.i to i64*
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i64* [ %2, %if.then ], [ null, %entry ]
  ret i64* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_tsk_need_resched(%struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  call fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %tsk) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dup_user_cpus_ptr(%struct.task_struct* noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @alloc_pages_node(i32 noundef %nid) unnamed_addr #3 {
entry:
  %cmp = icmp eq i32 %nid, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @numa_mem_id() #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nid.addr.0 = phi i32 [ 0, %if.then ], [ %nid, %entry ]
  %call1 = call fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid.addr.0) #22
  ret %struct.page* %call1
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_mem_id() unnamed_addr #0 {
entry:
  call fastcc void @numa_node_id() #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.page* @__alloc_pages_node(i32 noundef %nid) unnamed_addr #3 {
entry:
  %call = call %struct.page* @__alloc_pages(i32 noundef 4197824, i32 noundef 2, i32 noundef %nid, %struct.nodemask_t* noundef null) #21
  ret %struct.page* %call
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc void @numa_node_id() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__kern_my_cpu_offset() #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.page* @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, %struct.nodemask_t* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_tsk_thread_flag(%struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  %call = call fastcc %struct.thread_info* @task_thread_info(%struct.task_struct* noundef %tsk) #22
  call fastcc void @clear_ti_thread_flag(%struct.thread_info* noundef %call, i32 noundef 1) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @task_rlimit(%struct.task_struct* nocapture noundef readonly %task) unnamed_addr #8 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %task, i64 0, i32 87
  %0 = load %struct.signal_struct*, %struct.signal_struct** %signal, align 8
  %rlim_cur = getelementptr %struct.signal_struct, %struct.signal_struct* %0, i64 0, i32 49, i64 6, i32 0
  %1 = load volatile i64, i64* %rlim_cur, align 8
  ret i64 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.fs_struct* @copy_fs_struct(%struct.fs_struct* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signal_handlers(%struct.task_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kmem_cache_zalloc(%struct.kmem_cache* noundef %k) unnamed_addr #3 {
entry:
  %call = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %k, i32 noundef 3520) #21
  ret i8* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(%struct.hrtimer* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @it_real_fn(%struct.hrtimer* noundef) #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @posix_cpu_timers_init_group(%struct.signal_struct* noundef %sig) unnamed_addr #3 {
entry:
  %posix_cputimers = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 20
  %rlim_cur = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %sig, i64 0, i32 49, i64 0, i32 0
  %0 = load volatile i64, i64* %rlim_cur, align 8
  call void @posix_cputimers_group_init(%struct.posix_cputimers* noundef %posix_cputimers, i64 noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_cputimers_group_init(%struct.posix_cputimers* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vmacache_flush(%struct.task_struct* noundef %tsk) unnamed_addr #3 {
entry:
  %arraydecay = getelementptr inbounds %struct.task_struct, %struct.task_struct* %tsk, i64 0, i32 37, i32 1, i64 0
  %0 = bitcast %struct.vm_area_struct** %arraydecay to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 32) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ioc_task_link(%struct.io_context* noundef %ioc) unnamed_addr #3 {
entry:
  call fastcc void @get_io_context_active(%struct.io_context* noundef %ioc) #22
  %nr_tasks = getelementptr inbounds %struct.io_context, %struct.io_context* %ioc, i64 0, i32 2
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %nr_tasks, i64 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/iocontext.h\22; .popsection; .long 14472b - 14470b; .short 136; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %nr_tasks) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @ioprio_valid(i16 noundef %ioprio) unnamed_addr #14 {
entry:
  %0 = icmp sgt i16 %ioprio, 8191
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.io_context* @get_task_io_context(%struct.task_struct* noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_io_context(%struct.io_context* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @get_io_context_active(%struct.io_context* noundef %ioc) unnamed_addr #3 {
entry:
  %counter.i.i = getelementptr inbounds %struct.io_context, %struct.io_context* %ioc, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %cmp = icmp slt i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end, !prof !11

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/iocontext.h\22; .popsection; .long 14472b - 14470b; .short 126; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !50
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %active_ref = getelementptr inbounds %struct.io_context, %struct.io_context* %ioc, i64 0, i32 1
  %counter.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %active_ref, i64 0, i32 0
  %1 = load volatile i32, i32* %counter.i, align 4
  %cmp16 = icmp slt i32 %1, 1
  br i1 %cmp16, label %if.then30, label %if.end31, !prof !11

if.then30:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/iocontext.h\22; .popsection; .long 14472b - 14470b; .short 127; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #23, !srcloc !51
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end
  %refcount = getelementptr inbounds %struct.io_context, %struct.io_context* %ioc, i64 0, i32 0
  call fastcc void @__ll_sc_atomic64_add(%struct.atomic64_t* noundef %refcount) #21
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %active_ref) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @clear_bit(i64 noundef %nr, i64* noundef %addr) unnamed_addr #3 {
entry:
  %rem.i = and i64 %nr, 63
  %shl.i = shl nuw i64 1, %rem.i
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_andnot(i64 noundef %shl.i, %struct.atomic64_t* noundef %0) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_andnot(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_andnot\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09bic\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #23, !srcloc !52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @ktime_get_boottime() unnamed_addr #3 {
entry:
  %call = call i64 @ktime_get_with_offset(i32 noundef 1) #21
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_write_lock() unnamed_addr #3 {
entry:
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef bitcast (%struct.rwlock_t* @tasklist_lock to i8*), i32 noundef 0, i32 noundef 255) #21
  %cmp.not.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %cmp.not.i.i, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  call void @queued_write_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_write_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @__fatal_signal_pending(%struct.task_struct* nocapture noundef readonly %p) unnamed_addr #13 {
entry:
  %signal = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 92, i32 1
  %call = call fastcc i32 @sigismember(%struct.sigset_t* noundef %signal) #22
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @sigismember(%struct.sigset_t* nocapture noundef readonly %set) unnamed_addr #13 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %1 = trunc i64 %0 to i32
  %2 = lshr i32 %1, 8
  %conv2 = and i32 %2, 1
  ret i32 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ptrace_link(%struct.task_struct* noundef, %struct.task_struct* noundef, %struct.cred* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @task_set_jobctl_pending(%struct.task_struct* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define internal fastcc void @sigaddset(%struct.sigset_t* nocapture noundef %set) unnamed_addr #10 {
entry:
  %arrayidx = getelementptr inbounds %struct.sigset_t, %struct.sigset_t* %set, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8
  %or = or i64 %0, 262144
  store i64 %or, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_get(%struct.kref* noundef %kref) unnamed_addr #3 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcount) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #7 {
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
define internal fastcc void @__list_add_rcu(%struct.list_head* noundef %new, %struct.list_head* noundef %prev, %struct.list_head* noundef %next) unnamed_addr #3 {
entry:
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 0
  store %struct.list_head* %next, %struct.list_head** %next1, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %new, i64 0, i32 1
  store %struct.list_head* %prev, %struct.list_head** %prev2, align 8
  %0 = ptrtoint %struct.list_head* %new to i64
  %next13 = getelementptr inbounds %struct.list_head, %struct.list_head* %prev, i64 0, i32 0
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.list_head** elementtype(%struct.list_head*) %next13, i64 %0) #23, !srcloc !53
  %prev23 = getelementptr inbounds %struct.list_head, %struct.list_head* %next, i64 0, i32 1
  store %struct.list_head* %new, %struct.list_head** %prev23, align 8
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #19

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #3 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #3 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #21
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !11

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !8

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #21
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #23, !srcloc !54
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #13 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #7 {
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
define internal fastcc void @queued_write_unlock() unnamed_addr #3 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.rwlock_t* @tasklist_lock to i8*), i8 0) #23, !srcloc !55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @set_bit(i64* noundef %addr) unnamed_addr #3 {
entry:
  %0 = bitcast i64* %addr to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_or(%struct.atomic64_t* noundef %v) unnamed_addr #3 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_or\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09orr\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Lr,*Q"(i64* elementtype(i64) %counter, i64 134217728, i64* elementtype(i64) %counter) #23, !srcloc !56
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @dup_mmap(%struct.mm_struct* noundef %mm, %struct.mm_struct* noundef %oldmm) unnamed_addr #3 {
entry:
  %uf = alloca %struct.list_head, align 8
  %0 = bitcast %struct.list_head* %uf to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #23
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %uf, i64 0, i32 0
  store %struct.list_head* %uf, %struct.list_head** %next, align 8
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %uf, i64 0, i32 1
  store %struct.list_head* %uf, %struct.list_head** %prev2, align 8
  %call = call fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %oldmm) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup94

if.end:                                           ; preds = %entry
  call fastcc void @mmap_write_lock_nested(%struct.mm_struct* noundef %mm) #22
  call fastcc void @dup_mm_exe_file(%struct.mm_struct* noundef %mm, %struct.mm_struct* noundef %oldmm) #22
  %total_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %oldmm, i64 0, i32 0, i32 19
  %1 = load i64, i64* %total_vm, align 8
  %total_vm3 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 19
  store i64 %1, i64* %total_vm3, align 8
  %data_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %oldmm, i64 0, i32 0, i32 22
  %2 = load i64, i64* %data_vm, align 8
  %data_vm4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 22
  store i64 %2, i64* %data_vm4, align 8
  %exec_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %oldmm, i64 0, i32 0, i32 23
  %3 = load i64, i64* %exec_vm, align 8
  %exec_vm5 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 23
  store i64 %3, i64* %exec_vm5, align 8
  %stack_vm = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %oldmm, i64 0, i32 0, i32 24
  %4 = load i64, i64* %stack_vm, align 8
  %stack_vm6 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 24
  store i64 %4, i64* %stack_vm6, align 8
  %mmap15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %oldmm, i64 0, i32 0, i32 0
  %mpnt.0253 = load %struct.vm_area_struct*, %struct.vm_area_struct** %mmap15, align 8
  %tobool16.not254 = icmp eq %struct.vm_area_struct* %mpnt.0253, null
  br i1 %tobool16.not254, label %out, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %mmap = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 0
  %rb_node = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 1, i32 0
  %map_count = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %mpnt.0259 = phi %struct.vm_area_struct* [ %mpnt.0253, %for.body.lr.ph ], [ %mpnt.0, %for.inc ]
  %rb_parent.0258 = phi %struct.rb_node* [ null, %for.body.lr.ph ], [ %rb_parent.1210, %for.inc ]
  %rb_link.0257 = phi %struct.rb_node** [ %rb_node, %for.body.lr.ph ], [ %rb_link.1209, %for.inc ]
  %pprev.0256 = phi %struct.vm_area_struct** [ %mmap, %for.body.lr.ph ], [ %pprev.1208, %for.inc ]
  %prev.0255 = phi %struct.vm_area_struct* [ null, %for.body.lr.ph ], [ %prev.1207, %for.inc ]
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %mpnt.0259, i64 0, i32 8
  %5 = load i64, i64* %vm_flags, align 8
  %and = and i64 %5, 131072
  %tobool17.not = icmp eq i64 %and, 0
  br i1 %tobool17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %for.body
  %call20 = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef nonnull %mpnt.0259) #22
  %sub = sub i64 0, %call20
  call void @vm_stat_account(%struct.mm_struct* noundef %mm, i64 noundef %5, i64 noundef %sub) #21
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %6 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %7 = inttoptr i64 %6 to %struct.task_struct*
  %call23 = call fastcc i32 @fatal_signal_pending(%struct.task_struct* noundef %7) #22
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %out

if.end26:                                         ; preds = %if.end21
  %8 = load i64, i64* %vm_flags, align 8
  %and28 = and i64 %8, 1048576
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.end36, label %if.then30

if.then30:                                        ; preds = %if.end26
  %call31 = call fastcc i64 @vma_pages(%struct.vm_area_struct* noundef nonnull %mpnt.0259) #22, !range !57
  %call32 = call fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %oldmm, i64 noundef %call31) #22
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end36, label %fail_nomem

if.end36:                                         ; preds = %if.then30, %if.end26
  %charge.2 = phi i64 [ %call31, %if.then30 ], [ 0, %if.end26 ]
  %call37 = call %struct.vm_area_struct* @vm_area_dup(%struct.vm_area_struct* noundef nonnull %mpnt.0259) #22
  %tobool38.not = icmp eq %struct.vm_area_struct* %call37, null
  br i1 %tobool38.not, label %fail_nomem, label %if.end40

if.end40:                                         ; preds = %if.end36
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call37, i64 0, i32 6
  store %struct.mm_struct* %mm, %struct.mm_struct** %vm_mm, align 8
  %vm_flags49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call37, i64 0, i32 8
  %9 = load i64, i64* %vm_flags49, align 8
  %and50 = and i64 %9, 33554432
  %tobool51.not = icmp eq i64 %and50, 0
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end40
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call37, i64 0, i32 11
  store %struct.anon_vma* null, %struct.anon_vma** %anon_vma, align 8
  br label %if.end57

if.else:                                          ; preds = %if.end40
  %call53 = call i32 @anon_vma_fork(%struct.vm_area_struct* noundef nonnull %call37, %struct.vm_area_struct* noundef nonnull %mpnt.0259) #21
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else.if.end57_crit_edge, label %fail_nomem_policy

if.else.if.end57_crit_edge:                       ; preds = %if.else
  %.pre = load i64, i64* %vm_flags49, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else.if.end57_crit_edge, %if.then52
  %10 = phi i64 [ %.pre, %if.else.if.end57_crit_edge ], [ %9, %if.then52 ]
  %and59 = and i64 %10, -532481
  store i64 %and59, i64* %vm_flags49, align 8
  %vm_file = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call37, i64 0, i32 14
  %11 = load %struct.file*, %struct.file** %vm_file, align 8
  %tobool60.not = icmp eq %struct.file* %11, null
  br i1 %tobool60.not, label %if.end68, label %if.then61

if.then61:                                        ; preds = %if.end57
  %f_mapping = getelementptr inbounds %struct.file, %struct.file* %11, i64 0, i32 17
  %12 = load %struct.address_space*, %struct.address_space** %f_mapping, align 8
  call fastcc void @get_file(%struct.file* noundef nonnull %11) #22
  call fastcc void @i_mmap_lock_write(%struct.address_space* noundef %12) #22
  %13 = load i64, i64* %vm_flags49, align 8
  %and64 = and i64 %13, 8
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.then61
  call fastcc void @mapping_allow_writable(%struct.address_space* noundef %12) #22
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then61
  %i_mmap = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i64 0, i32 5
  call void @vma_interval_tree_insert_after(%struct.vm_area_struct* noundef nonnull %call37, %struct.vm_area_struct* noundef nonnull %mpnt.0259, %struct.rb_root_cached* noundef %i_mmap) #21
  call fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %12) #22
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end57
  store %struct.vm_area_struct* %call37, %struct.vm_area_struct** %pprev.0256, align 8
  %vm_next = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call37, i64 0, i32 2
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call37, i64 0, i32 3
  store %struct.vm_area_struct* %prev.0255, %struct.vm_area_struct** %vm_prev, align 8
  call void @__vma_link_rb(%struct.mm_struct* noundef %mm, %struct.vm_area_struct* noundef nonnull %call37, %struct.rb_node** noundef %rb_link.0257, %struct.rb_node* noundef %rb_parent.0258) #21
  %vm_rb = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call37, i64 0, i32 4
  %rb_right = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call37, i64 0, i32 4, i32 1
  %14 = load i32, i32* %map_count, align 8
  %inc = add i32 %14, 1
  store i32 %inc, i32* %map_count, align 8
  %15 = load i64, i64* %vm_flags49, align 8
  %and74 = and i64 %15, 33554432
  %tobool75.not = icmp eq i64 %and74, 0
  br i1 %tobool75.not, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end68
  %call77 = call i32 @copy_page_range(%struct.vm_area_struct* noundef nonnull %call37, %struct.vm_area_struct* noundef nonnull %mpnt.0259) #21
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end68
  %retval1.1 = phi i32 [ 0, %if.end68 ], [ %call77, %if.then76 ]
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %call37, i64 0, i32 12
  %16 = load %struct.vm_operations_struct*, %struct.vm_operations_struct** %vm_ops, align 8
  %tobool79.not = icmp eq %struct.vm_operations_struct* %16, null
  br i1 %tobool79.not, label %if.end85, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end78
  %open = getelementptr inbounds %struct.vm_operations_struct, %struct.vm_operations_struct* %16, i64 0, i32 0
  %17 = load void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)** %open, align 8
  %tobool81.not = icmp eq void (%struct.vm_area_struct*)* %17, null
  br i1 %tobool81.not, label %if.end85, label %if.then82

if.then82:                                        ; preds = %land.lhs.true
  call void %17(%struct.vm_area_struct* noundef nonnull %call37) #21
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %land.lhs.true, %if.end78
  %tobool86.not = icmp eq i32 %retval1.1, 0
  br i1 %tobool86.not, label %for.inc, label %out

for.inc:                                          ; preds = %if.end85, %if.then18
  %rb_parent.1210 = phi %struct.rb_node* [ %rb_parent.0258, %if.then18 ], [ %vm_rb, %if.end85 ]
  %rb_link.1209 = phi %struct.rb_node** [ %rb_link.0257, %if.then18 ], [ %rb_right, %if.end85 ]
  %pprev.1208 = phi %struct.vm_area_struct** [ %pprev.0256, %if.then18 ], [ %vm_next, %if.end85 ]
  %prev.1207 = phi %struct.vm_area_struct* [ %prev.0255, %if.then18 ], [ %call37, %if.end85 ]
  %vm_next92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %mpnt.0259, i64 0, i32 2
  %mpnt.0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vm_next92, align 8
  %tobool16.not = icmp eq %struct.vm_area_struct* %mpnt.0, null
  br i1 %tobool16.not, label %out, label %for.body

out:                                              ; preds = %for.inc, %if.end21, %if.end85, %if.end, %fail_nomem
  %retval1.3 = phi i32 [ -12, %fail_nomem ], [ 0, %if.end ], [ 0, %for.inc ], [ -4, %if.end21 ], [ %retval1.1, %if.end85 ]
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) #22
  call fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %oldmm) #22
  call fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %oldmm) #22
  br label %cleanup94

fail_nomem_policy:                                ; preds = %if.else
  call void @vm_area_free(%struct.vm_area_struct* noundef nonnull %call37) #22
  br label %fail_nomem

fail_nomem:                                       ; preds = %if.then30, %if.end36, %fail_nomem_policy
  %charge.3241 = phi i64 [ %charge.2, %fail_nomem_policy ], [ 0, %if.then30 ], [ %charge.2, %if.end36 ]
  call fastcc void @vm_unacct_memory(i64 noundef %charge.3241) #22
  br label %out

cleanup94:                                        ; preds = %out, %entry
  %retval.0 = phi i32 [ %retval1.3, %out ], [ -4, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #23
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_rss(%struct.mm_struct* noundef %mm) unnamed_addr #8 {
entry:
  %call = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 0) #22
  %call1 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 1) #22
  %add = add i64 %call1, %call
  %call2 = call fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef 3) #22
  %add3 = add i64 %add, %call2
  ret i64 %add3
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @mmap_write_lock_killable(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  %call = call i32 @down_write_killable(%struct.rw_semaphore* noundef %mmap_lock) #21
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_lock_nested(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @down_write(%struct.rw_semaphore* noundef %mmap_lock) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @dup_mm_exe_file(%struct.mm_struct* noundef %mm, %struct.mm_struct* noundef %oldmm) unnamed_addr #3 {
entry:
  %call = call %struct.file* @get_mm_exe_file(%struct.mm_struct* noundef %oldmm) #22
  %exe_file4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 48
  store volatile %struct.file* %call, %struct.file** %exe_file4, align 8
  %tobool.not = icmp eq %struct.file* %call, null
  br i1 %tobool.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call11 = call fastcc i32 @deny_write_access(%struct.file* noundef nonnull %call) #22
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end31, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %.b36 = load i1, i1* @dup_mm_exe_file.__already_done, align 1
  br i1 %.b36, label %if.end31, label %if.then18, !prof !8

if.then18:                                        ; preds = %if.then
  store i1 true, i1* @dup_mm_exe_file.__already_done, align 1
  %call22 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dup_mm_exe_file, i64 0, i64 0)) #25
  br label %if.end31

if.end31:                                         ; preds = %if.then, %if.then18, %land.lhs.true, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_stat_account(%struct.mm_struct* noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64 @vma_pages(%struct.vm_area_struct* nocapture noundef readonly %vma) unnamed_addr #13 {
entry:
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 1
  %0 = load i64, i64* %vm_end, align 8
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %vma, i64 0, i32 0
  %1 = load i64, i64* %vm_start, align 8
  %sub = sub i64 %0, %1
  %shr = lshr i64 %sub, 12
  ret i64 %shr
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @security_vm_enough_memory_mm(%struct.mm_struct* noundef %mm, i64 noundef %pages) unnamed_addr #3 {
entry:
  %call = call i32 @cap_vm_enough_memory(%struct.mm_struct* noundef %mm, i64 noundef %pages) #21
  %call1 = call i32 @__vm_enough_memory(%struct.mm_struct* noundef %mm, i64 noundef %pages, i32 noundef %call) #21
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_vma_fork(%struct.vm_area_struct* noundef, %struct.vm_area_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_mmap_lock_write(%struct.address_space* noundef %mapping) unnamed_addr #3 {
entry:
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 6
  call void @down_write(%struct.rw_semaphore* noundef %i_mmap_rwsem) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mapping_allow_writable(%struct.address_space* noundef %mapping) unnamed_addr #3 {
entry:
  %i_mmap_writable = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 4
  call fastcc void @__ll_sc_atomic_add(%struct.atomic_t* noundef %i_mmap_writable) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_interval_tree_insert_after(%struct.vm_area_struct* noundef, %struct.vm_area_struct* noundef, %struct.rb_root_cached* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @i_mmap_unlock_write(%struct.address_space* noundef %mapping) unnamed_addr #3 {
entry:
  %i_mmap_rwsem = getelementptr inbounds %struct.address_space, %struct.address_space* %mapping, i64 0, i32 6
  call void @up_write(%struct.rw_semaphore* noundef %i_mmap_rwsem) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__vma_link_rb(%struct.mm_struct* noundef, %struct.vm_area_struct* noundef, %struct.rb_node** noundef, %struct.rb_node* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_range(%struct.vm_area_struct* noundef, %struct.vm_area_struct* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @mmap_write_unlock(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  %mmap_lock = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 15
  call void @up_write(%struct.rw_semaphore* noundef %mmap_lock) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @flush_tlb_mm(%struct.mm_struct* noundef %mm) unnamed_addr #3 {
entry:
  call void asm sideeffect "dsb ishst", "~{memory}"() #23, !srcloc !58
  %counter.i = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 42, i32 0, i32 0
  %0 = load volatile i64, i64* %counter.i, align 8
  %shl = shl i64 %0, 48
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %shl) #23, !srcloc !59
  %call2 = call fastcc i1 @arm64_kernel_unmapped_at_el0() #22
  br i1 %call2, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %or3 = or i64 %shl, 281474976710656
  call void asm sideeffect ".arch armv8.5-a\0Atlbi aside1is, $0\0A.if 0 == 1\0A661:\0A\09nop\0A\09\09\09nop\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 59\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09dsb ish\0A\09\09tlbi aside1is, $0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r"(i64 %or3) #23, !srcloc !60
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "dsb ish", "~{memory}"() #23, !srcloc !61
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_unacct_memory(i64 noundef %pages) unnamed_addr #3 {
entry:
  %sub = sub i64 0, %pages
  call fastcc void @vm_acct_memory(i64 noundef %sub) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vm_enough_memory(%struct.mm_struct* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_vm_enough_memory(%struct.mm_struct* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @arm64_kernel_unmapped_at_el0() unnamed_addr #8 {
entry:
  %call.i.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @arm64_const_caps_ready, i64 0, i32 0)) #21
  %cmp.i.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %entry
  %call.i1.i = call fastcc i32 @static_key_count(%struct.static_key* noundef getelementptr inbounds ([61 x %struct.static_key_false], [61 x %struct.static_key_false]* @cpu_hwcap_keys, i64 0, i64 41, i32 0)) #21
  %cmp1.i.i = icmp sgt i32 %call.i1.i, 0
  br label %cpus_have_const_cap.exit

if.else5.i:                                       ; preds = %entry
  %call6.i = call fastcc i1 @cpus_have_cap() #21
  br label %cpus_have_const_cap.exit

cpus_have_const_cap.exit:                         ; preds = %if.then3.i, %if.else5.i
  %retval.0.i = phi i1 [ %cmp1.i.i, %if.then3.i ], [ %call6.i, %if.else5.i ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @cpus_have_cap() unnamed_addr #8 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @cpu_hwcaps, i64 0, i64 0), align 8
  %1 = and i64 %0, 2199023255552
  %tobool = icmp ne i64 %1, 0
  ret i1 %tobool
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @vm_acct_memory(i64 noundef %pages) unnamed_addr #3 {
entry:
  %0 = load i32, i32* @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(%struct.percpu_counter* noundef nonnull @vm_committed_as, i64 noundef %pages, i32 noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(%struct.percpu_counter* noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_mm_counter(%struct.mm_struct* noundef %mm, i32 noundef %member) unnamed_addr #8 {
entry:
  %0 = zext i32 %member to i64
  %counter.i.i = getelementptr %struct.mm_struct, %struct.mm_struct* %mm, i64 0, i32 0, i32 40, i32 0, i64 %0, i32 0
  %1 = load volatile i64, i64* %counter.i.i, align 8
  %2 = icmp sgt i64 %1, 0
  %spec.store.select = select i1 %2, i64 %1, i64 0
  ret i64 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @ptrace_event(i32 noundef %event, i64 noundef %message) unnamed_addr #3 {
entry:
  %0 = call i64 asm "mrs $0, sp_el0", "=r"() #24, !srcloc !13
  %1 = inttoptr i64 %0 to %struct.task_struct*
  %call1 = call fastcc i1 @ptrace_event_enabled(%struct.task_struct* noundef %1, i32 noundef %event) #22
  br i1 %call1, label %if.then, label %if.else, !prof !11

if.then:                                          ; preds = %entry
  %ptrace_message = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 113
  store i64 %message, i64* %ptrace_message, align 8
  %shl = shl i32 %event, 8
  %or = or i32 %shl, 5
  call void @ptrace_notify(i32 noundef %or) #21
  br label %if.end13

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %event, 4
  br i1 %cmp, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.else
  %ptrace = getelementptr inbounds %struct.task_struct, %struct.task_struct* %1, i64 0, i32 5
  %2 = load i32, i32* %ptrace, align 8
  %and = and i32 %2, 65537
  %cmp7 = icmp eq i32 %and, 1
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.then5
  %call11 = call i32 @send_sig(i32 noundef 5, %struct.task_struct* noundef %1, i32 noundef 0) #21
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, %struct.task_struct* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(%struct.completion* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @put_task_struct(%struct.task_struct* noundef %t) unnamed_addr #3 {
entry:
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %t, i64 0, i32 3
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %usage) #22
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__put_task_struct(%struct.task_struct* noundef %t) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_clone(i64 noundef %clone_flags, i64 noundef %newsp, i32* noundef %parent_tidptr, i64 noundef %tls, i32* noundef %child_tidptr) unnamed_addr #3 {
entry:
  %args = alloca %struct.kernel_clone_args, align 8
  %0 = bitcast %struct.kernel_clone_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %0) #23
  %1 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 4
  %2 = bitcast i32* %1 to i64*, !annotation !19
  store i64 0, i64* %2, align 8, !annotation !19
  %flags = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 0
  %conv = trunc i64 %clone_flags to i32
  %and1 = and i64 %clone_flags, 4294967040
  store i64 %and1, i64* %flags, align 8
  %pidfd = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 1
  store i32* %parent_tidptr, i32** %pidfd, align 8
  %child_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 2
  store i32* %child_tidptr, i32** %child_tid, align 8
  %parent_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 3
  store i32* %parent_tidptr, i32** %parent_tid, align 8
  %exit_signal = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 4
  %and5 = and i32 %conv, 255
  store i32 %and5, i32* %exit_signal, align 8
  %stack = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 5
  store i64 %newsp, i64* %stack, align 8
  %stack_size = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 6
  store i64 0, i64* %stack_size, align 8
  %tls6 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 7
  store i64 %tls, i64* %tls6, align 8
  %set_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 8
  store i32* null, i32** %set_tid, align 8
  %set_tid_size = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 9
  store i64 0, i64* %set_tid_size, align 8
  %cgroup = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 10
  store i32 0, i32* %cgroup, align 8
  %io_thread = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 11
  store i32 0, i32* %io_thread, align 4
  %cgrp = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 12
  store %struct.cgroup* null, %struct.cgroup** %cgrp, align 8
  %cset = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %args, i64 0, i32 13
  store %struct.css_set* null, %struct.css_set** %cset, align 8
  %call = call i32 @kernel_clone(%struct.kernel_clone_args* noundef nonnull %args) #22
  %conv7 = sext i32 %call to i64
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %0) #23
  ret i64 %conv7
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_clone3(%struct.clone_args* noundef %uargs, i64 noundef %size) unnamed_addr #3 {
entry:
  %kargs = alloca %struct.kernel_clone_args, align 8
  %set_tid = alloca [32 x i32], align 4
  %0 = bitcast %struct.kernel_clone_args* %kargs to i8*
  call void @llvm.lifetime.start.p0i8(i64 104, i8* nonnull %0) #23
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(104) %0, i8 0, i64 104, i1 false), !annotation !19
  %1 = bitcast [32 x i32]* %set_tid to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #23
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(128) %1, i8 0, i64 128, i1 false), !annotation !19
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %set_tid, i64 0, i64 0
  %set_tid1 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 8
  store i32* %arraydecay, i32** %set_tid1, align 8
  %call = call fastcc i32 @copy_clone_args_from_user(%struct.kernel_clone_args* noundef nonnull %kargs, %struct.clone_args* noundef %uargs, i64 noundef %size) #22
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = sext i32 %call to i64
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i1 @clone3_args_valid(%struct.kernel_clone_args* noundef nonnull %kargs) #22
  br i1 %call2, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @kernel_clone(%struct.kernel_clone_args* noundef nonnull %kargs) #22
  %conv6 = sext i32 %call5 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ %conv6, %if.end4 ], [ -22, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #23
  call void @llvm.lifetime.end.p0i8(i64 104, i8* nonnull %0) #23
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @copy_clone_args_from_user(%struct.kernel_clone_args* nocapture noundef %kargs, %struct.clone_args* noundef %uargs, i64 noundef %usize) unnamed_addr #3 {
entry:
  %args = alloca %struct.clone_args, align 8
  %0 = bitcast %struct.clone_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %0) #23
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) %0, i8 0, i64 88, i1 false), !annotation !19
  %set_tid = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 8
  %1 = load i32*, i32** %set_tid, align 8
  %cmp = icmp ugt i64 %usize, 4096
  br i1 %cmp, label %cleanup, label %if.end, !prof !11

if.end:                                           ; preds = %entry
  %cmp11 = icmp ult i64 %usize, 64
  br i1 %cmp11, label %cleanup, label %if.end21, !prof !11

if.end21:                                         ; preds = %if.end
  %2 = bitcast %struct.clone_args* %uargs to i8*
  %cmp.i = icmp ugt i64 %usize, 88
  %cond.i = select i1 %cmp.i, i64 88, i64 %usize
  %cmp2.i = icmp ult i64 %usize, 88
  %cond6.i = select i1 %cmp2.i, i64 88, i64 %usize
  %sub.i = sub nuw nsw i64 %cond6.i, %cond.i
  br i1 %cmp2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end21
  %add.ptr.i = getelementptr i8, i8* %0, i64 %cond.i
  %call.i = call i8* @memset(i8* noundef %add.ptr.i, i32 noundef 0, i64 noundef %sub.i) #21
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end21
  br i1 %cmp.i, label %if.then9.i, label %if.end19.i

if.then9.i:                                       ; preds = %if.else.i
  %add.ptr10.i = getelementptr i8, i8* %2, i64 %cond.i
  %call11.i = call i32 @check_zeroed_user(i8* noundef %add.ptr10.i, i64 noundef %sub.i) #21
  %cmp12.i = icmp slt i32 %call11.i, 1
  %tobool.not.i = icmp eq i32 %call11.i, 0
  %..i = select i1 %tobool.not.i, i32 -7, i32 %call11.i
  br i1 %cmp12.i, label %cleanup, label %if.end19.i

if.end19.i:                                       ; preds = %if.then9.i, %if.else.i, %if.then.i
  %call2.i.i = call fastcc i64 @_copy_from_user(i8* noundef nonnull %0, i8* noundef %2, i64 noundef %cond.i) #21
  %tobool21.not.i = icmp eq i64 %call2.i.i, 0
  br i1 %tobool21.not.i, label %if.end24, label %cleanup

if.end24:                                         ; preds = %if.end19.i
  %set_tid_size = getelementptr inbounds %struct.clone_args, %struct.clone_args* %args, i64 0, i32 9
  %3 = load i64, i64* %set_tid_size, align 8
  %cmp25 = icmp ugt i64 %3, 32
  br i1 %cmp25, label %cleanup, label %if.end35, !prof !11

if.end35:                                         ; preds = %if.end24
  %set_tid36 = getelementptr inbounds %struct.clone_args, %struct.clone_args* %args, i64 0, i32 8
  %4 = load i64, i64* %set_tid36, align 8
  %tobool37 = icmp ne i64 %4, 0
  %cmp39 = icmp ne i64 %3, 0
  %not.tobool37 = xor i1 %tobool37, true
  %5 = select i1 %not.tobool37, i1 %cmp39, i1 false
  br i1 %5, label %cleanup, label %if.end49, !prof !11

if.end49:                                         ; preds = %if.end35
  %cmp54 = icmp eq i64 %3, 0
  %6 = select i1 %tobool37, i1 %cmp54, i1 false
  br i1 %6, label %cleanup, label %if.end65, !prof !11

if.end65:                                         ; preds = %if.end49
  %exit_signal = getelementptr inbounds %struct.clone_args, %struct.clone_args* %args, i64 0, i32 4
  %7 = load i64, i64* %exit_signal, align 8
  %tobool66.not = icmp ult i64 %7, 256
  br i1 %tobool66.not, label %lor.rhs, label %cleanup, !prof !8

lor.rhs:                                          ; preds = %if.end65
  %call68 = call fastcc i32 @valid_signal(i64 noundef %7) #22
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %cleanup, label %if.end80, !prof !11

if.end80:                                         ; preds = %lor.rhs
  %flags = getelementptr inbounds %struct.clone_args, %struct.clone_args* %args, i64 0, i32 0
  %8 = load i64, i64* %flags, align 8
  %and81 = and i64 %8, 8589934592
  %tobool82.not = icmp ne i64 %and81, 0
  %cgroup119.phi.trans.insert = getelementptr inbounds %struct.clone_args, %struct.clone_args* %args, i64 0, i32 10
  %.pre = load i64, i64* %cgroup119.phi.trans.insert, align 8
  %cmp83 = icmp ugt i64 %.pre, 2147483647
  %or.cond = or i1 %cmp2.i, %cmp83
  %or.cond166 = select i1 %tobool82.not, i1 %or.cond, i1 false
  br i1 %or.cond166, label %cleanup, label %if.end88

if.end88:                                         ; preds = %if.end80
  %pidfd94 = getelementptr inbounds %struct.clone_args, %struct.clone_args* %args, i64 0, i32 1
  %9 = load i64, i64* %pidfd94, align 8
  %10 = inttoptr i64 %9 to i32*
  %child_tid101 = getelementptr inbounds %struct.clone_args, %struct.clone_args* %args, i64 0, i32 2
  %11 = load i64, i64* %child_tid101, align 8
  %12 = inttoptr i64 %11 to i32*
  %parent_tid108 = getelementptr inbounds %struct.clone_args, %struct.clone_args* %args, i64 0, i32 3
  %13 = load i64, i64* %parent_tid108, align 8
  %14 = inttoptr i64 %13 to i32*
  %conv111 = trunc i64 %7 to i32
  %stack112 = getelementptr inbounds %struct.clone_args, %struct.clone_args* %args, i64 0, i32 5
  %15 = load i64, i64* %stack112, align 8
  %stack_size113 = getelementptr inbounds %struct.clone_args, %struct.clone_args* %args, i64 0, i32 6
  %16 = load i64, i64* %stack_size113, align 8
  %tls114 = getelementptr inbounds %struct.clone_args, %struct.clone_args* %args, i64 0, i32 7
  %17 = load i64, i64* %tls114, align 8
  %conv120 = trunc i64 %.pre to i32
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 0
  store i64 %8, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  %.compoundliteral.sroa.2.0..sroa_idx139 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 1
  store i32* %10, i32** %.compoundliteral.sroa.2.0..sroa_idx139, align 8
  %.compoundliteral.sroa.3.0..sroa_idx140 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 2
  store i32* %12, i32** %.compoundliteral.sroa.3.0..sroa_idx140, align 8
  %.compoundliteral.sroa.4.0..sroa_idx141 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 3
  store i32* %14, i32** %.compoundliteral.sroa.4.0..sroa_idx141, align 8
  %.compoundliteral.sroa.5.0..sroa_idx142 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 4
  store i32 %conv111, i32* %.compoundliteral.sroa.5.0..sroa_idx142, align 8
  %.compoundliteral.sroa.6143.0..sroa_idx144 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 5
  store i64 %15, i64* %.compoundliteral.sroa.6143.0..sroa_idx144, align 8
  %.compoundliteral.sroa.7.0..sroa_idx145 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 6
  store i64 %16, i64* %.compoundliteral.sroa.7.0..sroa_idx145, align 8
  %.compoundliteral.sroa.8.0..sroa_idx146 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 7
  store i64 %17, i64* %.compoundliteral.sroa.8.0..sroa_idx146, align 8
  store i32* null, i32** %set_tid, align 8
  %.compoundliteral.sroa.10.0..sroa_idx148 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 9
  store i64 %3, i64* %.compoundliteral.sroa.10.0..sroa_idx148, align 8
  %.compoundliteral.sroa.11.0..sroa_idx149 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 10
  store i32 %conv120, i32* %.compoundliteral.sroa.11.0..sroa_idx149, align 8
  %.compoundliteral.sroa.12.0..sroa_idx150 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 11
  store i32 0, i32* %.compoundliteral.sroa.12.0..sroa_idx150, align 4
  %.compoundliteral.sroa.13.0..sroa_idx151 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 12
  store %struct.cgroup* null, %struct.cgroup** %.compoundliteral.sroa.13.0..sroa_idx151, align 8
  %.compoundliteral.sroa.14.0..sroa_idx152 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 13
  store %struct.css_set* null, %struct.css_set** %.compoundliteral.sroa.14.0..sroa_idx152, align 8
  %tobool122.not = icmp eq i64 %4, 0
  br i1 %tobool122.not, label %if.end135, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %if.end88
  %18 = bitcast i32* %1 to i8*
  %19 = inttoptr i64 %4 to i8*
  %mul = shl nuw nsw i64 %3, 2
  %call2.i = call fastcc i64 @_copy_from_user(i8* noundef %18, i8* noundef nonnull %19, i64 noundef %mul) #21
  %tobool133.not = icmp eq i64 %call2.i, 0
  br i1 %tobool133.not, label %if.end135, label %cleanup

if.end135:                                        ; preds = %land.lhs.true123, %if.end88
  store i32* %1, i32** %set_tid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end19.i, %if.then9.i, %if.end65, %land.lhs.true123, %lor.rhs, %if.end49, %if.end35, %if.end24, %if.end, %entry, %if.end135
  %retval.0 = phi i32 [ 0, %if.end135 ], [ -7, %entry ], [ -22, %if.end ], [ -22, %if.end24 ], [ -22, %if.end35 ], [ -22, %if.end49 ], [ -22, %lor.rhs ], [ -14, %land.lhs.true123 ], [ -22, %if.end65 ], [ -14, %if.end19.i ], [ %..i, %if.then9.i ], [ -22, %if.end80 ]
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %0) #23
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @clone3_args_valid(%struct.kernel_clone_args* nocapture noundef %kargs) unnamed_addr #3 {
entry:
  %flags = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 0
  %0 = load i64, i64* %flags, align 8
  %1 = and i64 %0, -17175674625
  %2 = icmp ne i64 %1, 0
  %and7 = and i64 %0, 4294969344
  %cmp = icmp eq i64 %and7, 4294969344
  %or.cond23 = or i1 %2, %cmp
  br i1 %or.cond23, label %return, label %if.end9

if.end9:                                          ; preds = %entry
  %and11 = and i64 %0, 98304
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %exit_signal = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 4
  %3 = load i32, i32* %exit_signal, align 8
  %tobool13.not = icmp eq i32 %3, 0
  br i1 %tobool13.not, label %if.end15, label %return

if.end15:                                         ; preds = %land.lhs.true, %if.end9
  %call = call fastcc i1 @clone3_stack_valid(%struct.kernel_clone_args* noundef %kargs) #22
  br label %return

return:                                           ; preds = %if.end15, %land.lhs.true, %entry
  %retval.0 = phi i1 [ false, %entry ], [ false, %land.lhs.true ], [ %call, %if.end15 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @valid_signal(i64 noundef %sig) unnamed_addr #14 {
entry:
  %cmp = icmp ult i64 %sig, 65
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @_copy_from_user(i8* noundef %to, i8* noundef %from, i64 noundef %n) unnamed_addr #3 {
entry:
  %call1 = call fastcc i64 @__range_ok(i8* noundef %from, i64 noundef %n) #22
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !11

if.then:                                          ; preds = %entry
  %call5 = call fastcc i8* @__uaccess_mask_ptr(i8* noundef %from) #22
  %call6 = call i64 @__arch_copy_from_user(i8* noundef %to, i8* noundef %call5, i64 noundef %n) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call6, %if.then ], [ %n, %entry ]
  %tobool8.not = icmp eq i64 %res.0, 0
  br i1 %tobool8.not, label %if.end18, label %if.then16, !prof !8

if.then16:                                        ; preds = %if.end
  %sub = sub i64 %n, %res.0
  %add.ptr = getelementptr i8, i8* %to, i64 %sub
  %call17 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %res.0) #21
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  ret i64 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__arch_copy_from_user(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @clone3_stack_valid(%struct.kernel_clone_args* nocapture noundef %kargs) unnamed_addr #3 {
entry:
  %stack = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 5
  %0 = load i64, i64* %stack, align 8
  %cmp = icmp eq i64 %0, 0
  %stack_size = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %kargs, i64 0, i32 6
  %1 = load i64, i64* %stack_size, align 8
  %cmp1.not = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp1.not, label %if.end13, label %return

if.else:                                          ; preds = %entry
  br i1 %cmp1.not, label %return, label %if.end6

if.end6:                                          ; preds = %if.else
  %2 = inttoptr i64 %0 to i8*
  %call = call fastcc i64 @__range_ok(i8* noundef nonnull %2, i64 noundef %1) #22
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %return, label %if.end10

if.end10:                                         ; preds = %if.end6
  %3 = load i64, i64* %stack_size, align 8
  %4 = load i64, i64* %stack, align 8
  %add = add i64 %4, %3
  store i64 %add, i64* %stack, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then, %if.end10
  br label %return

return:                                           ; preds = %if.end6, %if.else, %if.then, %if.end13
  %retval.0 = phi i1 [ true, %if.end13 ], [ false, %if.then ], [ false, %if.else ], [ false, %if.end6 ]
  ret i1 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_lock() unnamed_addr #3 {
entry:
  %call.i.i = call fastcc i32 @__ll_sc_atomic_add_return_acquire() #21
  %and = and i32 %call.i.i, 511
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup, label %if.end, !prof !8

if.end:                                           ; preds = %entry
  call void @queued_read_lock_slowpath(%struct.qrwlock* noundef getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0)) #21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_read_lock_slowpath(%struct.qrwlock* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return_acquire() unnamed_addr #3 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return_acquire\0A\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #23, !srcloc !62
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @queued_read_unlock() unnamed_addr #3 {
entry:
  call fastcc void @__ll_sc_atomic_sub_return_release() #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub_return_release() unnamed_addr #3 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub_return_release\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0), i32 512, i32* elementtype(i32) getelementptr inbounds (%struct.rwlock_t, %struct.rwlock_t* @tasklist_lock, i64 0, i32 0, i32 0, i32 0, i32 0)) #23, !srcloc !63
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @thread_group_empty(%struct.task_struct* noundef %p) unnamed_addr #8 {
entry:
  %thread_group = getelementptr inbounds %struct.task_struct, %struct.task_struct* %p, i64 0, i32 61
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %thread_group) #22
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @current_is_single_threaded() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !64
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #3 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #22
  call void asm sideeffect "", "~{memory}"() #23, !srcloc !65
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__do_sys_unshare(i64 noundef %unshare_flags) unnamed_addr #3 {
entry:
  %call = call i32 @ksys_unshare(i64 noundef %unshare_flags) #22
  %conv = sext i32 %call to i64
  ret i64 %conv
}

attributes #0 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #11 = { mustprogress nofree noinline nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #15 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #16 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #17 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #19 = { nofree nounwind readonly }
attributes #20 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #21 = { nobuiltin nounwind "no-builtins" }
attributes #22 = { nobuiltin "no-builtins" }
attributes #23 = { nounwind }
attributes #24 = { nounwind readnone }
attributes #25 = { cold nobuiltin nounwind "no-builtins" }
attributes #26 = { cold nobuiltin "no-builtins" }
attributes #27 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2156334657}
!10 = !{i64 2156336332}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2156345837}
!13 = !{i64 1346402}
!14 = !{i64 2156347513}
!15 = !{i64 2156349192}
!16 = !{i64 2156353883}
!17 = !{i64 2156355460}
!18 = !{i64 2156357045}
!19 = !{!"auto-init"}
!20 = !{i64 0, i64 65}
!21 = !{i64 2157013158}
!22 = !{i64 2157023013, i64 2157023051, i64 2157023068, i64 2157023102, i64 2157023124, i64 2157023150, i64 2157023168, i64 2157023326, i64 2157023367, i64 2157023389, i64 2157023435}
!23 = !{i64 2157049743, i64 2157049781, i64 2157049798, i64 2157049832, i64 2157049854, i64 2157049880, i64 2157049898, i64 2157050056, i64 2157050097, i64 2157050119, i64 2157050165}
!24 = !{i64 2157065772, i64 2157065810, i64 2157065827, i64 2157065861, i64 2157065883, i64 2157065909, i64 2157065927, i64 2157066085, i64 2157066126, i64 2157066148, i64 2157066194}
!25 = !{i64 3692200, i64 3692283, i64 3692507, i64 3692727, i64 3692750}
!26 = !{i64 3696902, i64 3696926}
!27 = !{i64 2151249686}
!28 = !{i64 2149581337}
!29 = !{i64 2149636291}
!30 = !{i64 2150212309}
!31 = !{i64 2147978763, i64 2147979437, i64 2147979467, i64 2147979499, i64 2147979533, i64 2147979569, i64 2147979594}
!32 = !{i64 2147971590, i64 2147972238, i64 2147972268, i64 2147972300, i64 2147972334, i64 2147972370, i64 2147972395}
!33 = !{i64 2148074087, i64 2148074120, i64 2148074172, i64 2148074231, i64 2148074265, i64 2148074321, i64 2148074350, i64 2148074377}
!34 = !{i64 2148075737, i64 2148075770, i64 2148075821, i64 2148075877, i64 2148075910, i64 2148075965, i64 2148075994, i64 2148076021}
!35 = !{i64 2148001703, i64 2148002217, i64 2148002247, i64 2148002273, i64 2148002305, i64 2148002334}
!36 = !{i64 2147961017, i64 2147961533, i64 2147961563, i64 2147961590, i64 2147961624, i64 2147961654}
!37 = !{i64 2148095895, i64 2148095927, i64 2148095971, i64 2148096018, i64 2148096044}
!38 = !{i64 2149998258}
!39 = !{i64 2149998475}
!40 = !{i64 2149614430}
!41 = !{i64 2149105973, i64 2149106020, i64 2149106026, i64 2149106063, i64 2149106081, i64 2149107008, i64 2149107056, i64 2149107104, i64 2149107167, i64 2149107216, i64 2149106159, i64 2149106184, i64 2149106210, i64 2149106216, i64 2149106253, i64 2149106259, i64 2149106309, i64 2149106355, i64 2149106388}
!42 = !{i64 2149656084}
!43 = !{i64 2149522120}
!44 = !{i64 2149077951, i64 2149077998, i64 2149078004, i64 2149078041, i64 2149078059, i64 2149079400, i64 2149079448, i64 2149079496, i64 2149079559, i64 2149079608, i64 2149078137, i64 2149078162, i64 2149078188, i64 2149078194, i64 2149079066, i64 2149079106, i64 2149079124, i64 2149079156, i64 2149079184, i64 2149079238, i64 2149079258, i64 2149079355, i64 2149078217, i64 2149078231, i64 2149078237, i64 2149078287, i64 2149078333, i64 2149078366}
!45 = !{i64 2148060940, i64 2148060973, i64 2148061026, i64 2148061085, i64 2148061119, i64 2148061174, i64 2148061203, i64 2148061223}
!46 = !{i64 2149546973}
!47 = !{i64 2149332339}
!48 = !{i64 2149068495, i64 2149068542, i64 2149068548, i64 2149068585, i64 2149068603, i64 2149069943, i64 2149069991, i64 2149070039, i64 2149070102, i64 2149070151, i64 2149068681, i64 2149068706, i64 2149068732, i64 2149068738, i64 2149069609, i64 2149069649, i64 2149069667, i64 2149069699, i64 2149069727, i64 2149069781, i64 2149069801, i64 2149069898, i64 2149068761, i64 2149068775, i64 2149068781, i64 2149068831, i64 2149068877, i64 2149068910}
!49 = !{i64 2151929904}
!50 = !{i64 2151926281}
!51 = !{i64 2151928009}
!52 = !{i64 2148040667, i64 2148041188, i64 2148041218, i64 2148041244, i64 2148041276, i64 2148041305}
!53 = !{i64 2150758342}
!54 = !{i64 2147966981, i64 2147967645, i64 2147967675, i64 2147967707, i64 2147967741, i64 2147967776, i64 2147967801}
!55 = !{i64 2149496621}
!56 = !{i64 2148030097, i64 2148030608, i64 2148030638, i64 2148030664, i64 2148030696, i64 2148030725}
!57 = !{i64 0, i64 4503599627370496}
!58 = !{i64 2152586314}
!59 = !{i64 2152587700, i64 2152587425, i64 2152588064, i64 2152588110, i64 2152588116, i64 2152589504, i64 2152588153, i64 2152588171, i64 2152589579, i64 2152589627, i64 2152589675, i64 2152589738, i64 2152589787, i64 2152588249, i64 2152588274, i64 2152588300, i64 2152588306, i64 2152589525, i64 2152588343, i64 2152588349, i64 2152588399, i64 2152588445, i64 2152588478}
!60 = !{i64 2152590546, i64 2152590239, i64 2152590910, i64 2152590956, i64 2152590962, i64 2152592350, i64 2152590999, i64 2152591017, i64 2152592425, i64 2152592473, i64 2152592521, i64 2152592584, i64 2152592633, i64 2152591095, i64 2152591120, i64 2152591146, i64 2152591152, i64 2152592371, i64 2152591189, i64 2152591195, i64 2152591245, i64 2152591291, i64 2152591324}
!61 = !{i64 2152592697}
!62 = !{i64 2147963901, i64 2147964567, i64 2147964597, i64 2147964630, i64 2147964664, i64 2147964699, i64 2147964724}
!63 = !{i64 2147974649, i64 2147975315, i64 2147975345, i64 2147975377, i64 2147975411, i64 2147975447, i64 2147975472}
!64 = !{i64 2149532828}
!65 = !{i64 2149540109}
