; ModuleID = 'kernel/utsname_sysctl.c'
source_filename = "kernel/utsname_sysctl.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init\22, \22a\22\09\09"
module asm "__initcall__kmod_utsname_sysctl__141_144_utsname_sysctl_init6:\09\09\09"
module asm ".long\09utsname_sysctl_init - .\09"
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
%struct.uts_namespace = type { %struct.new_utsname, %struct.user_namespace*, %struct.ucounts*, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.user_namespace = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ctl_table_header = type { %union.anon.25, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type opaque
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.task_struct = type { %struct.thread_info, i32, i8*, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, i64, %struct.task_struct*, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask*, %struct.cpumask, i8*, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i8*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.cred*, %struct.cred*, %struct.cred*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.23, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, %struct.kmap_ctrl, i32, %struct.task_struct*, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.mm_struct = type opaque
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.vm_area_struct = type opaque
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i64, i64 (%struct.restart_block*)*, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.cred = type opaque
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
%struct.signal_struct = type opaque
%struct.sighand_struct = type opaque
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
%struct.io_context = type opaque
%struct.kernel_siginfo = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.14 }
%struct.anon.14 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.22, i32, [12 x i8] }
%union.anon.22 = type { i64 }
%struct.tlbflush_unmap_batch = type {}
%union.anon.23 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type opaque
%struct.kmap_ctrl = type {}
%struct.thread_struct = type { %struct.cpu_context, %struct.anon.24, i32, i8*, i32, i32, i64, i64, %struct.debug_info, i64 }
%struct.cpu_context = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.24 = type { i64, i64, %struct.user_fpsimd_state }
%struct.user_fpsimd_state = type { [32 x i128], i32, i32, [2 x i32] }
%struct.debug_info = type {}

@uts_kern_table = internal global [6 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds (%struct.uts_namespace, %struct.uts_namespace* @init_uts_ns, i32 0, i32 0, i32 0, i32 0), i32 65, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_do_uts_string, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr (%struct.uts_namespace, %struct.uts_namespace* @init_uts_ns, i32 0, i32 0, i32 0, i64 130), i32 65, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_do_uts_string, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr (%struct.uts_namespace, %struct.uts_namespace* @init_uts_ns, i32 0, i32 0, i32 0, i64 195), i32 65, i16 292, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_do_uts_string, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr (%struct.uts_namespace, %struct.uts_namespace* @init_uts_ns, i32 0, i32 0, i32 0, i64 65), i32 65, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_do_uts_string, %struct.ctl_table_poll* @hostname_poll, i8* null, i8* null }, %struct.ctl_table { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr (%struct.uts_namespace, %struct.uts_namespace* @init_uts_ns, i32 0, i32 0, i32 0, i64 325), i32 65, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_do_uts_string, %struct.ctl_table_poll* @domainname_poll, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 8
@__UNIQUE_ID___addressable_utsname_sysctl_init142 = internal global i8* bitcast (i32 ()* @utsname_sysctl_init to i8*), section ".discard.addressable", align 8
@.str = private unnamed_addr constant [7 x i8] c"ostype\00", align 1
@init_uts_ns = external dso_local global %struct.uts_namespace, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"osrelease\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@hostname_poll = internal global %struct.ctl_table_poll { %struct.atomic_t zeroinitializer, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.ctl_table_poll* @hostname_poll to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.ctl_table_poll* @hostname_poll to i8*), i64 16) to %struct.list_head*) } } }, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"domainname\00", align 1
@domainname_poll = internal global %struct.ctl_table_poll { %struct.atomic_t zeroinitializer, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.ctl_table_poll* @domainname_poll to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.ctl_table_poll* @domainname_poll to i8*), i64 16) to %struct.list_head*) } } }, align 8
@uts_sem = external dso_local global %struct.rw_semaphore, align 8
@uts_root_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([6 x %struct.ctl_table], [6 x %struct.ctl_table]* @uts_kern_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_utsname_sysctl_init142 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @uts_proc_notify(i32 noundef %proc) local_unnamed_addr #0 {
entry:
  %idxprom = zext i32 %proc to i64
  %poll = getelementptr [6 x %struct.ctl_table], [6 x %struct.ctl_table]* @uts_kern_table, i64 0, i64 %idxprom, i32 6
  %0 = load %struct.ctl_table_poll*, %struct.ctl_table_poll** %poll, align 8
  call void @proc_sys_poll_notify(%struct.ctl_table_poll* noundef %0) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_sys_poll_notify(%struct.ctl_table_poll* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @utsname_sysctl_init() #3 section ".init.text" {
entry:
  %call = call %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table* noundef getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @uts_root_table, i64 0, i64 0)) #6
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @proc_do_uts_string(%struct.ctl_table* noundef %table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #0 {
entry:
  %uts_table = alloca %struct.ctl_table, align 8
  %tmp_data = alloca [65 x i8], align 1
  %0 = bitcast %struct.ctl_table* %uts_table to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false), !annotation !7
  %1 = getelementptr inbounds [65 x i8], [65 x i8]* %tmp_data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 65, i8* nonnull %1) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(65) %1, i8 0, i64 65, i1 false), !annotation !7
  %2 = bitcast %struct.ctl_table* %table to i8*
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef %2, i64 noundef 64) #6
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %uts_table, i64 0, i32 1
  store i8* %1, i8** %data, align 8
  call void @down_read(%struct.rw_semaphore* noundef nonnull @uts_sem) #6
  %call2 = call fastcc i8* @get_uts(%struct.ctl_table* noundef %table) #8
  %call3 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef %call2, i64 noundef 65) #6
  call void @up_read(%struct.rw_semaphore* noundef nonnull @uts_sem) #6
  %call4 = call i32 @proc_dostring(%struct.ctl_table* noundef nonnull %uts_table, i32 noundef %write, i8* noundef %buffer, i64* noundef %lenp, i64* noundef %ppos) #6
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @down_write(%struct.rw_semaphore* noundef nonnull @uts_sem) #6
  %call5 = call fastcc i8* @get_uts(%struct.ctl_table* noundef %table) #8
  %call7 = call i8* @memcpy(i8* noundef %call5, i8* noundef nonnull %1, i64 noundef 65) #6
  call void @up_write(%struct.rw_semaphore* noundef nonnull @uts_sem) #6
  %poll = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 6
  %3 = load %struct.ctl_table_poll*, %struct.ctl_table_poll** %poll, align 8
  call void @proc_sys_poll_notify(%struct.ctl_table_poll* noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 65, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret i32 %call4
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i8* @get_uts(%struct.ctl_table* nocapture noundef readonly %table) unnamed_addr #5 {
entry:
  %data = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 1
  %0 = load i8*, i8** %data, align 8
  %1 = call i64 asm "mrs $0, sp_el0", "=r"() #9, !srcloc !8
  %2 = inttoptr i64 %1 to %struct.task_struct*
  %nsproxy = getelementptr inbounds %struct.task_struct, %struct.task_struct* %2, i64 0, i32 86
  %3 = load %struct.nsproxy*, %struct.nsproxy** %nsproxy, align 64
  %uts_ns1 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %3, i64 0, i32 1
  %4 = bitcast %struct.uts_namespace** %uts_ns1 to i8**
  %5 = load i8*, i8** %4, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (%struct.uts_namespace* @init_uts_ns to i64)
  %add.ptr = getelementptr i8, i8* %5, i64 %sub.ptr.sub
  ret i8* %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind readnone }

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
!8 = !{i64 199920}
