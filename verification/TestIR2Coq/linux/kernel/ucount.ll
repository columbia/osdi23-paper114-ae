; ModuleID = 'kernel/ucount.c'
source_filename = "kernel/ucount.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init\22, \22a\22\09\09"
module asm "__initcall__kmod_ucount__163_368_user_namespace_sysctl_init4:\09\09\09"
module asm ".long\09user_namespace_sysctl_init - .\09"
module asm ".previous\09\09\09\09\09"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, i8, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [12 x i64] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { %struct.anon, [48 x i8] }
%struct.anon = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32, %struct.refcount_struct }
%struct.atomic64_t = type { i64 }
%struct.proc_ns_operations = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.0, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.atomic_t }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.rb_root = type { %struct.rb_node* }
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, %struct.atomic_t, [12 x %struct.atomic64_t] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.kmem_cache = type opaque

@init_user_ns = external dso_local global %struct.user_namespace, align 8
@init_ucounts = dso_local global %struct.ucounts { %struct.hlist_node zeroinitializer, %struct.user_namespace* @init_user_ns, %struct.kuid_t zeroinitializer, %struct.atomic_t { i32 1 }, [12 x %struct.atomic64_t] zeroinitializer }, align 8
@set_root = internal global %struct.ctl_table_root { %struct.ctl_table_set zeroinitializer, %struct.ctl_table_set* (%struct.ctl_table_root*)* @set_lookup, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)* null, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* @set_permissions }, align 8
@user_table = internal global [13 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* null, i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i64* @ue_zero to i8*), i8* bitcast (i64* @ue_int_max to i8*) }, %struct.ctl_table { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* null, i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i64* @ue_zero to i8*), i8* bitcast (i64* @ue_int_max to i8*) }, %struct.ctl_table { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* null, i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i64* @ue_zero to i8*), i8* bitcast (i64* @ue_int_max to i8*) }, %struct.ctl_table { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* null, i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i64* @ue_zero to i8*), i8* bitcast (i64* @ue_int_max to i8*) }, %struct.ctl_table { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i8* null, i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i64* @ue_zero to i8*), i8* bitcast (i64* @ue_int_max to i8*) }, %struct.ctl_table { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i8* null, i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i64* @ue_zero to i8*), i8* bitcast (i64* @ue_int_max to i8*) }, %struct.ctl_table { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* null, i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i64* @ue_zero to i8*), i8* bitcast (i64* @ue_int_max to i8*) }, %struct.ctl_table { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* null, i32 8, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_doulongvec_minmax, %struct.ctl_table_poll* null, i8* bitcast (i64* @ue_zero to i8*), i8* bitcast (i64* @ue_int_max to i8*) }, %struct.ctl_table zeroinitializer, %struct.ctl_table zeroinitializer, %struct.ctl_table zeroinitializer, %struct.ctl_table zeroinitializer, %struct.ctl_table zeroinitializer], align 8
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@ucounts_hashtable = internal global [1024 x %struct.hlist_head] zeroinitializer, align 8
@ucounts_lock = internal global %struct.spinlock zeroinitializer, align 4
@__UNIQUE_ID___addressable_user_namespace_sysctl_init164 = internal global i8* bitcast (i32 ()* @user_namespace_sysctl_init to i8*), section ".discard.addressable", align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"max_user_namespaces\00", align 1
@ue_zero = internal global i64 0, align 8
@ue_int_max = internal global i64 2147483647, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"max_pid_namespaces\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"max_uts_namespaces\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"max_ipc_namespaces\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"max_net_namespaces\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"max_mnt_namespaces\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"max_cgroup_namespaces\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"max_time_namespaces\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@user_namespace_sysctl_init.user_header = internal unnamed_addr global %struct.ctl_table_header* null, align 8
@user_namespace_sysctl_init.empty = internal global [1 x %struct.ctl_table] zeroinitializer, align 8
@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_user_namespace_sysctl_init164 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @setup_userns_sysctls(%struct.user_namespace* noundef %ns) local_unnamed_addr #0 {
entry:
  %set = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 11
  call void @setup_sysctl_set(%struct.ctl_table_set* noundef %set, %struct.ctl_table_root* noundef nonnull @set_root, i32 (%struct.ctl_table_set*)* noundef nonnull @set_is_seen) #10
  %call = call i8* @kmemdup(i8* noundef bitcast ([13 x %struct.ctl_table]* @user_table to i8*), i64 noundef 832, i32 noundef 3264) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  %sysctls5.phi.trans.insert = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 12
  %.pre = load %struct.ctl_table_header*, %struct.ctl_table_header** %sysctls5.phi.trans.insert, align 8
  br label %if.end

for.body.preheader:                               ; preds = %entry
  %0 = bitcast i8* %call to %struct.ctl_table*
  %arrayidx = getelementptr %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 14, i64 0
  %data = getelementptr i8, i8* %call, i64 8
  %1 = bitcast i8* %data to i64**
  store i64* %arrayidx, i64** %1, align 8
  %arrayidx.1 = getelementptr %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 14, i64 1
  %data.1 = getelementptr i8, i8* %call, i64 72
  %2 = bitcast i8* %data.1 to i64**
  store i64* %arrayidx.1, i64** %2, align 8
  %arrayidx.2 = getelementptr %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 14, i64 2
  %data.2 = getelementptr i8, i8* %call, i64 136
  %3 = bitcast i8* %data.2 to i64**
  store i64* %arrayidx.2, i64** %3, align 8
  %arrayidx.3 = getelementptr %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 14, i64 3
  %data.3 = getelementptr i8, i8* %call, i64 200
  %4 = bitcast i8* %data.3 to i64**
  store i64* %arrayidx.3, i64** %4, align 8
  %arrayidx.4 = getelementptr %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 14, i64 4
  %data.4 = getelementptr i8, i8* %call, i64 264
  %5 = bitcast i8* %data.4 to i64**
  store i64* %arrayidx.4, i64** %5, align 8
  %arrayidx.5 = getelementptr %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 14, i64 5
  %data.5 = getelementptr i8, i8* %call, i64 328
  %6 = bitcast i8* %data.5 to i64**
  store i64* %arrayidx.5, i64** %6, align 8
  %arrayidx.6 = getelementptr %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 14, i64 6
  %data.6 = getelementptr i8, i8* %call, i64 392
  %7 = bitcast i8* %data.6 to i64**
  store i64* %arrayidx.6, i64** %7, align 8
  %arrayidx.7 = getelementptr %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 14, i64 7
  %data.7 = getelementptr i8, i8* %call, i64 456
  %8 = bitcast i8* %data.7 to i64**
  store i64* %arrayidx.7, i64** %8, align 8
  %arrayidx.8 = getelementptr %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 14, i64 8
  %data.8 = getelementptr i8, i8* %call, i64 520
  %9 = bitcast i8* %data.8 to i64**
  store i64* %arrayidx.8, i64** %9, align 8
  %arrayidx.9 = getelementptr %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 14, i64 9
  %data.9 = getelementptr i8, i8* %call, i64 584
  %10 = bitcast i8* %data.9 to i64**
  store i64* %arrayidx.9, i64** %10, align 8
  %arrayidx.10 = getelementptr %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 14, i64 10
  %data.10 = getelementptr i8, i8* %call, i64 648
  %11 = bitcast i8* %data.10 to i64**
  store i64* %arrayidx.10, i64** %11, align 8
  %arrayidx.11 = getelementptr %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 14, i64 11
  %data.11 = getelementptr i8, i8* %call, i64 712
  %12 = bitcast i8* %data.11 to i64**
  store i64* %arrayidx.11, i64** %12, align 8
  %call4 = call %struct.ctl_table_header* @__register_sysctl_table(%struct.ctl_table_set* noundef %set, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.ctl_table* noundef nonnull %0) #10
  %sysctls = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 12
  store %struct.ctl_table_header* %call4, %struct.ctl_table_header** %sysctls, align 8
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %for.body.preheader
  %13 = phi %struct.ctl_table_header* [ %.pre, %entry.if.end_crit_edge ], [ %call4, %for.body.preheader ]
  %tobool6.not = icmp eq %struct.ctl_table_header* %13, null
  br i1 %tobool6.not, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end
  call void @kfree(i8* noundef %call) #10
  call void @retire_sysctl_set(%struct.ctl_table_set* noundef %set) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then7
  %14 = xor i1 %tobool6.not, true
  ret i1 %14
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_sysctl_set(%struct.ctl_table_set* noundef, %struct.ctl_table_root* noundef, i32 (%struct.ctl_table_set*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal i32 @set_is_seen(%struct.ctl_table_set* noundef readnone %set) #3 {
entry:
  %cmp = icmp eq %struct.ctl_table_set* %set, getelementptr inbounds (%struct.user_namespace, %struct.user_namespace* @init_user_ns, i64 0, i32 11)
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kmemdup(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.ctl_table_header* @__register_sysctl_table(%struct.ctl_table_set* noundef, i8* noundef, %struct.ctl_table* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @retire_sysctl_set(%struct.ctl_table_set* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @retire_userns_sysctls(%struct.user_namespace* noundef %ns) local_unnamed_addr #0 {
entry:
  %sysctls = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 12
  %0 = load %struct.ctl_table_header*, %struct.ctl_table_header** %sysctls, align 8
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %0, i64 0, i32 2
  %1 = bitcast %struct.ctl_table** %ctl_table_arg to i8**
  %2 = load i8*, i8** %1, align 8
  call void @unregister_sysctl_table(%struct.ctl_table_header* noundef %0) #10
  %set = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %ns, i64 0, i32 11
  call void @retire_sysctl_set(%struct.ctl_table_set* noundef %set) #10
  call void @kfree(i8* noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(%struct.ctl_table_header* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.ucounts* @get_ucounts(%struct.ucounts* noundef %ucounts) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ucounts* %ucounts, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.ucounts, %struct.ucounts* %ucounts, i64 0, i32 3
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return(%struct.atomic_t* noundef %count) #10
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @put_ucounts(%struct.ucounts* noundef nonnull %ucounts) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %ucounts.addr.0 = phi %struct.ucounts* [ null, %if.then ], [ %ucounts, %land.lhs.true ], [ null, %entry ]
  ret %struct.ucounts* %ucounts.addr.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @put_ucounts(%struct.ucounts* noundef %ucounts) local_unnamed_addr #0 {
entry:
  %flags = alloca i64, align 8
  %0 = bitcast i64* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12
  store i64 0, i64* %flags, align 8, !annotation !7
  %count = getelementptr inbounds %struct.ucounts, %struct.ucounts* %ucounts, i64 0, i32 3
  %call = call i32 @_atomic_dec_and_lock_irqsave(%struct.atomic_t* noundef %count, %struct.spinlock* noundef nonnull @ucounts_lock, i64* noundef nonnull %flags) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %node = getelementptr inbounds %struct.ucounts, %struct.ucounts* %ucounts, i64 0, i32 0
  call fastcc void @hlist_del_init(%struct.hlist_node* noundef %node) #11
  %1 = load i64, i64* %flags, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %1) #10
  %2 = bitcast %struct.ucounts* %ucounts to i8*
  call void @kfree(i8* noundef %2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.ucounts* @alloc_ucounts(%struct.user_namespace* noundef %ns, i64 %uid.coerce) local_unnamed_addr #0 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii2) #11
  %conv = zext i32 %call to i64
  %0 = ptrtoint %struct.user_namespace* %ns to i64
  %add = add i64 %conv, %0
  %mul.i = mul i64 %add, 7046029254386353131
  %shr.i = lshr i64 %mul.i, 54
  %add.ptr = getelementptr [1024 x %struct.hlist_head], [1024 x %struct.hlist_head]* @ucounts_hashtable, i64 0, i64 %shr.i
  call fastcc void @__raw_spin_lock_irq() #10
  %call6 = call fastcc %struct.ucounts* @find_ucounts(%struct.user_namespace* noundef %ns, i64 %coerce.val.ii2, %struct.hlist_head* noundef %add.ptr) #11
  %tobool.not = icmp eq %struct.ucounts* %call6, null
  br i1 %tobool.not, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  call fastcc void @__raw_spin_unlock_irq() #10
  %call7 = call fastcc i8* @kzalloc() #11
  %1 = bitcast i8* %call7 to %struct.ucounts*
  %tobool8.not = icmp eq i8* %call7, null
  br i1 %tobool8.not, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %ns10 = getelementptr inbounds i8, i8* %call7, i64 16
  %2 = bitcast i8* %ns10 to %struct.user_namespace**
  store %struct.user_namespace* %ns, %struct.user_namespace** %2, align 8
  %uid.sroa.0.0..sroa_idx = getelementptr inbounds i8, i8* %call7, i64 24
  %3 = bitcast i8* %uid.sroa.0.0..sroa_idx to i32*
  store i32 %coerce.val.ii, i32* %3, align 8
  %count = getelementptr inbounds i8, i8* %call7, i64 28
  %counter.i = bitcast i8* %count to i32*
  store volatile i32 1, i32* %counter.i, align 4
  call fastcc void @__raw_spin_lock_irq() #10
  %call14 = call fastcc %struct.ucounts* @find_ucounts(%struct.user_namespace* noundef %ns, i64 %coerce.val.ii2, %struct.hlist_head* noundef %add.ptr) #11
  %tobool15.not = icmp eq %struct.ucounts* %call14, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call7) #10
  br label %if.end18

if.else:                                          ; preds = %if.end
  %node = bitcast i8* %call7 to %struct.hlist_node*
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef nonnull %node, %struct.hlist_head* noundef %add.ptr) #11
  call fastcc void @__raw_spin_unlock_irq() #10
  br label %cleanup

if.end18:                                         ; preds = %if.then16, %entry
  %ucounts.0 = phi %struct.ucounts* [ %call6, %entry ], [ %call14, %if.then16 ]
  %count19 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %ucounts.0, i64 0, i32 3
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return(%struct.atomic_t* noundef %count19) #10
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call fastcc void @__raw_spin_unlock_irq() #10
  br i1 %cmp.i.i, label %if.then23, label %cleanup

if.then23:                                        ; preds = %if.end18
  call void @put_ucounts(%struct.ucounts* noundef nonnull %ucounts.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then, %if.then23, %if.else
  %retval.0 = phi %struct.ucounts* [ null, %if.then23 ], [ %1, %if.else ], [ null, %if.then ], [ %ucounts.0, %if.end18 ]
  ret %struct.ucounts* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i32 @__kuid_val(i64 %uid.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii = trunc i64 %uid.coerce to i32
  ret i32 %coerce.val.ii
}

; Function Attrs: nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly
define internal fastcc %struct.ucounts* @find_ucounts(%struct.user_namespace* noundef readnone %ns, i64 %uid.coerce, %struct.hlist_head* nocapture noundef readonly %hashent) unnamed_addr #4 {
entry:
  %0 = bitcast %struct.hlist_head* %hashent to %struct.ucounts**
  %ucounts.035 = load %struct.ucounts*, %struct.ucounts** %0, align 8
  %tobool2.not36 = icmp eq %struct.ucounts* %ucounts.035, null
  br i1 %tobool2.not36, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %coerce.val.ii7 = and i64 %uid.coerce, 4294967295
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %ucounts.037 = phi %struct.ucounts* [ %ucounts.035, %for.body.lr.ph ], [ %ucounts.0, %for.inc ]
  %coerce.dive4 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %ucounts.037, i64 0, i32 2, i32 0
  %1 = load i32, i32* %coerce.dive4, align 8
  %coerce.val.ii5 = zext i32 %1 to i64
  %call = call fastcc i1 @uid_eq(i64 %coerce.val.ii5, i64 %coerce.val.ii7) #11
  br i1 %call, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ns8 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %ucounts.037, i64 0, i32 1
  %2 = load %struct.user_namespace*, %struct.user_namespace** %ns8, align 8
  %cmp = icmp eq %struct.user_namespace* %2, %ns
  br i1 %cmp, label %cleanup, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %3 = bitcast %struct.ucounts* %ucounts.037 to %struct.ucounts**
  %ucounts.0 = load %struct.ucounts*, %struct.ucounts** %3, align 8
  %tobool2.not = icmp eq %struct.ucounts* %ucounts.0, null
  br i1 %tobool2.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %land.lhs.true, %for.inc, %entry
  %ucounts.0.lcssa = phi %struct.ucounts* [ null, %entry ], [ null, %for.inc ], [ %ucounts.037, %land.lhs.true ]
  ret %struct.ucounts* %ucounts.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc() unnamed_addr #0 {
entry:
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** getelementptr inbounds ([3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 0, i64 7), align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef 3520) #10
  ret i8* %call.i.i
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_head(%struct.hlist_node* noundef %n, %struct.hlist_head* noundef %h) unnamed_addr #5 {
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
declare dso_local i32 @_atomic_dec_and_lock_irqsave(%struct.atomic_t* noundef, %struct.spinlock* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @hlist_del_init(%struct.hlist_node* nocapture noundef %n) unnamed_addr #5 {
entry:
  %call = call fastcc i32 @hlist_unhashed(%struct.hlist_node* noundef %n) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__hlist_del(%struct.hlist_node* noundef %n) #11
  call fastcc void @INIT_HLIST_NODE(%struct.hlist_node* noundef %n) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.ucounts* @inc_ucount(%struct.user_namespace* noundef %ns, i64 %uid.coerce, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %coerce.val.ii2 = and i64 %uid.coerce, 4294967295
  %call = call %struct.ucounts* @alloc_ucounts(%struct.user_namespace* noundef %ns, i64 %coerce.val.ii2) #11
  %tobool.not40 = icmp eq %struct.ucounts* %call, null
  br i1 %tobool.not40, label %cleanup18, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %idxprom = zext i32 %type to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %iter.041 = phi %struct.ucounts* [ %call, %for.body.lr.ph ], [ %2, %for.inc ]
  %ns3 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %iter.041, i64 0, i32 1
  %0 = load %struct.user_namespace*, %struct.user_namespace** %ns3, align 8
  %arrayidx = getelementptr %struct.user_namespace, %struct.user_namespace* %0, i64 0, i32 14, i64 %idxprom
  %1 = load volatile i64, i64* %arrayidx, align 8
  %arrayidx5 = getelementptr %struct.ucounts, %struct.ucounts* %iter.041, i64 0, i32 4, i64 %idxprom
  %conv = trunc i64 %1 to i32
  %call6 = call fastcc i1 @atomic_long_inc_below(%struct.atomic64_t* noundef %arrayidx5, i32 noundef %conv) #11
  br i1 %call6, label %for.inc, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.body
  %cmp.not42 = icmp eq %struct.ucounts* %call, %iter.041
  br i1 %cmp.not42, label %for.end17, label %for.body10

for.inc:                                          ; preds = %for.body
  %ucounts7 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %0, i64 0, i32 13
  %2 = load %struct.ucounts*, %struct.ucounts** %ucounts7, align 8
  %tobool.not = icmp eq %struct.ucounts* %2, null
  br i1 %tobool.not, label %cleanup18, label %for.body

for.body10:                                       ; preds = %for.cond8.preheader, %for.body10
  %iter.143 = phi %struct.ucounts* [ %4, %for.body10 ], [ %call, %for.cond8.preheader ]
  %arrayidx13 = getelementptr %struct.ucounts, %struct.ucounts* %iter.143, i64 0, i32 4, i64 %idxprom
  call fastcc void @__ll_sc_atomic64_sub(%struct.atomic64_t* noundef %arrayidx13) #10
  %ns15 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %iter.143, i64 0, i32 1
  %3 = load %struct.user_namespace*, %struct.user_namespace** %ns15, align 8
  %ucounts16 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %3, i64 0, i32 13
  %4 = load %struct.ucounts*, %struct.ucounts** %ucounts16, align 8
  %cmp.not = icmp eq %struct.ucounts* %4, %iter.041
  br i1 %cmp.not, label %for.end17, label %for.body10

for.end17:                                        ; preds = %for.body10, %for.cond8.preheader
  call void @put_ucounts(%struct.ucounts* noundef nonnull %call) #11
  br label %cleanup18

cleanup18:                                        ; preds = %for.inc, %entry, %for.end17
  %retval.0 = phi %struct.ucounts* [ null, %for.end17 ], [ null, %entry ], [ %call, %for.inc ]
  ret %struct.ucounts* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @atomic_long_inc_below(%struct.atomic64_t* noundef %v, i32 noundef %u) unnamed_addr #0 {
entry:
  %counter.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  %conv = sext i32 %u to i64
  %1 = bitcast %struct.atomic64_t* %v to i8*
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %c.0 = phi i64 [ %0, %entry ], [ %call14.i.i.i, %if.end ]
  %cmp.not = icmp slt i64 %c.0, %conv
  br i1 %cmp.not, label %if.end, label %cleanup, !prof !8

if.end:                                           ; preds = %for.cond
  %add = add nsw i64 %c.0, 1
  %call14.i.i.i = call fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %1, i64 noundef %c.0, i64 noundef %add) #10
  %cmp5 = icmp eq i64 %call14.i.i.i, %c.0
  br i1 %cmp5, label %cleanup, label %for.cond, !prof !8

cleanup:                                          ; preds = %if.end, %for.cond
  ret i1 %cmp.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dec_ucount(%struct.ucounts* noundef %ucounts, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %tobool.not23 = icmp eq %struct.ucounts* %ucounts, null
  br i1 %tobool.not23, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %idxprom = zext i32 %type to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %iter.024 = phi %struct.ucounts* [ %ucounts, %for.body.lr.ph ], [ %1, %if.end ]
  %arrayidx = getelementptr %struct.ucounts, %struct.ucounts* %iter.024, i64 0, i32 4, i64 %idxprom
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_dec_if_positive(%struct.atomic64_t* noundef %arrayidx) #10
  %cmp = icmp slt i64 %call.i.i.i, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ucount.c\22; .popsection; .long 14472b - 14470b; .short 253; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %ns = getelementptr inbounds %struct.ucounts, %struct.ucounts* %iter.024, i64 0, i32 1
  %0 = load %struct.user_namespace*, %struct.user_namespace** %ns, align 8
  %ucounts15 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %0, i64 0, i32 13
  %1 = load %struct.ucounts*, %struct.ucounts** %ucounts15, align 8
  %tobool.not = icmp eq %struct.ucounts* %1, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end, %entry
  call void @put_ucounts(%struct.ucounts* noundef %ucounts) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @inc_rlimit_ucounts(%struct.ucounts* noundef %ucounts, i32 noundef %type, i64 noundef %v) local_unnamed_addr #0 {
entry:
  %tobool.not21 = icmp eq %struct.ucounts* %ucounts, null
  br i1 %tobool.not21, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %idxprom = zext i32 %type to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %iter.023 = phi %struct.ucounts* [ %ucounts, %for.body.lr.ph ], [ %3, %for.body ]
  %ret.022 = phi i64 [ 0, %for.body.lr.ph ], [ %ret.1, %for.body ]
  %ns = getelementptr inbounds %struct.ucounts, %struct.ucounts* %iter.023, i64 0, i32 1
  %0 = load %struct.user_namespace*, %struct.user_namespace** %ns, align 8
  %arrayidx = getelementptr %struct.user_namespace, %struct.user_namespace* %0, i64 0, i32 14, i64 %idxprom
  %1 = load volatile i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr %struct.ucounts, %struct.ucounts* %iter.023, i64 0, i32 4, i64 %idxprom
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %v, %struct.atomic64_t* noundef %arrayidx2) #10
  %cmp = icmp slt i64 %call.i.i.i, 0
  %cmp3 = icmp sgt i64 %call.i.i.i, %1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  %cmp4 = icmp eq %struct.ucounts* %iter.023, %ucounts
  %spec.select = select i1 %cmp4, i64 %call.i.i.i, i64 %ret.022
  %ret.1 = select i1 %or.cond, i64 9223372036854775807, i64 %spec.select
  %2 = load %struct.user_namespace*, %struct.user_namespace** %ns, align 8
  %ucounts8 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %2, i64 0, i32 13
  %3 = load %struct.ucounts*, %struct.ucounts** %ucounts8, align 8
  %tobool.not = icmp eq %struct.ucounts* %3, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %ret.0.lcssa = phi i64 [ 0, %entry ], [ %ret.1, %for.body ]
  ret i64 %ret.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @dec_rlimit_ucounts(%struct.ucounts* noundef %ucounts, i32 noundef %type, i64 noundef %v) local_unnamed_addr #0 {
entry:
  %tobool.not32 = icmp eq %struct.ucounts* %ucounts, null
  br i1 %tobool.not32, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %sub = sub i64 0, %v
  %idxprom = zext i32 %type to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %iter.034 = phi %struct.ucounts* [ %ucounts, %for.body.lr.ph ], [ %1, %if.end ]
  %new.033 = phi i64 [ -1, %for.body.lr.ph ], [ %spec.select, %if.end ]
  %arrayidx = getelementptr %struct.ucounts, %struct.ucounts* %iter.034, i64 0, i32 4, i64 %idxprom
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %sub, %struct.atomic64_t* noundef %arrayidx) #10
  %cmp = icmp slt i64 %call.i.i.i, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ucount.c\22; .popsection; .long 14472b - 14470b; .short 280; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %cmp15 = icmp eq %struct.ucounts* %iter.034, %ucounts
  %spec.select = select i1 %cmp15, i64 %call.i.i.i, i64 %new.033
  %ns = getelementptr inbounds %struct.ucounts, %struct.ucounts* %iter.034, i64 0, i32 1
  %0 = load %struct.user_namespace*, %struct.user_namespace** %ns, align 8
  %ucounts19 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %0, i64 0, i32 13
  %1 = load %struct.ucounts*, %struct.ucounts** %ucounts19, align 8
  %tobool.not = icmp eq %struct.ucounts* %1, null
  br i1 %tobool.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %if.end
  %phi.cmp = icmp eq i64 %spec.select, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %new.0.lcssa = phi i1 [ false, %entry ], [ %phi.cmp, %for.end.loopexit ]
  ret i1 %new.0.lcssa
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @dec_rlimit_put_ucounts(%struct.ucounts* noundef %ucounts, i32 noundef %type) local_unnamed_addr #0 {
entry:
  call fastcc void @do_dec_rlimit_put_ucounts(%struct.ucounts* noundef %ucounts, %struct.ucounts* noundef null, i32 noundef %type) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_dec_rlimit_put_ucounts(%struct.ucounts* noundef %ucounts, %struct.ucounts* noundef readnone %last, i32 noundef %type) unnamed_addr #0 {
entry:
  %cmp.not32 = icmp eq %struct.ucounts* %ucounts, %last
  br i1 %cmp.not32, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %idxprom = zext i32 %type to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end19
  %iter.033 = phi %struct.ucounts* [ %ucounts, %for.body.lr.ph ], [ %4, %if.end19 ]
  %arrayidx = getelementptr %struct.ucounts, %struct.ucounts* %iter.033, i64 0, i32 4, i64 %idxprom
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef -1, %struct.atomic64_t* noundef %arrayidx) #10
  %cmp1 = icmp slt i64 %call.i.i.i, 0
  br i1 %cmp1, label %if.end.thread, label %if.end, !prof !9

if.end.thread:                                    ; preds = %for.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ucount.c\22; .popsection; .long 14472b - 14470b; .short 293; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !12
  %ns29 = getelementptr inbounds %struct.ucounts, %struct.ucounts* %iter.033, i64 0, i32 1
  %0 = load %struct.user_namespace*, %struct.user_namespace** %ns29, align 8
  %ucounts1530 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %0, i64 0, i32 13
  %1 = load %struct.ucounts*, %struct.ucounts** %ucounts1530, align 8
  br label %if.end19

if.end:                                           ; preds = %for.body
  %ns = getelementptr inbounds %struct.ucounts, %struct.ucounts* %iter.033, i64 0, i32 1
  %2 = load %struct.user_namespace*, %struct.user_namespace** %ns, align 8
  %ucounts15 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %2, i64 0, i32 13
  %3 = load %struct.ucounts*, %struct.ucounts** %ucounts15, align 8
  %cmp16 = icmp eq i64 %call.i.i.i, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  call void @put_ucounts(%struct.ucounts* noundef %iter.033) #11
  br label %if.end19

if.end19:                                         ; preds = %if.end.thread, %if.then18, %if.end
  %4 = phi %struct.ucounts* [ %1, %if.end.thread ], [ %3, %if.then18 ], [ %3, %if.end ]
  %cmp.not = icmp eq %struct.ucounts* %4, %last
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end19, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i64 @inc_rlimit_get_ucounts(%struct.ucounts* noundef %ucounts, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %tobool.not77 = icmp eq %struct.ucounts* %ucounts, null
  br i1 %tobool.not77, label %cleanup39, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %idxprom = zext i32 %type to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %iter.079 = phi %struct.ucounts* [ %ucounts, %for.body.lr.ph ], [ %3, %for.inc ]
  %ret.078 = phi i64 [ 0, %for.body.lr.ph ], [ %spec.select, %for.inc ]
  %ns = getelementptr inbounds %struct.ucounts, %struct.ucounts* %iter.079, i64 0, i32 1
  %0 = load %struct.user_namespace*, %struct.user_namespace** %ns, align 8
  %arrayidx = getelementptr %struct.user_namespace, %struct.user_namespace* %0, i64 0, i32 14, i64 %idxprom
  %1 = load volatile i64, i64* %arrayidx, align 8
  %arrayidx2 = getelementptr %struct.ucounts, %struct.ucounts* %iter.079, i64 0, i32 4, i64 %idxprom
  %call.i.i.i = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef 1, %struct.atomic64_t* noundef %arrayidx2) #10
  %cmp = icmp slt i64 %call.i.i.i, 0
  %cmp3 = icmp sgt i64 %call.i.i.i, %1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %unwind, label %if.end

if.end:                                           ; preds = %for.body
  %cmp4 = icmp eq %struct.ucounts* %iter.079, %ucounts
  %spec.select = select i1 %cmp4, i64 %call.i.i.i, i64 %ret.078
  %cmp7.not = icmp eq i64 %call.i.i.i, 1
  br i1 %cmp7.not, label %if.end9, label %for.inc

if.end9:                                          ; preds = %if.end
  %call10 = call %struct.ucounts* @get_ucounts(%struct.ucounts* noundef nonnull %iter.079) #11
  %tobool11.not = icmp eq %struct.ucounts* %call10, null
  br i1 %tobool11.not, label %dec_unwind, label %for.inc

for.inc:                                          ; preds = %if.end, %if.end9
  %2 = load %struct.user_namespace*, %struct.user_namespace** %ns, align 8
  %ucounts16 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %2, i64 0, i32 13
  %3 = load %struct.ucounts*, %struct.ucounts** %ucounts16, align 8
  %tobool.not = icmp eq %struct.ucounts* %3, null
  br i1 %tobool.not, label %cleanup39, label %for.body

dec_unwind:                                       ; preds = %if.end9
  %call.i.i.i64 = call fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef -1, %struct.atomic64_t* noundef %arrayidx2) #10
  %cmp21 = icmp slt i64 %call.i.i.i64, 0
  br i1 %cmp21, label %if.then29, label %unwind, !prof !9

if.then29:                                        ; preds = %dec_unwind
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ucount.c\22; .popsection; .long 14472b - 14470b; .short 330; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !13
  br label %unwind

unwind:                                           ; preds = %for.body, %dec_unwind, %if.then29
  call fastcc void @do_dec_rlimit_put_ucounts(%struct.ucounts* noundef nonnull %ucounts, %struct.ucounts* noundef nonnull %iter.079, i32 noundef %type) #11
  br label %cleanup39

cleanup39:                                        ; preds = %for.inc, %entry, %unwind
  %retval.0 = phi i64 [ 0, %unwind ], [ 0, %entry ], [ %spec.select, %for.inc ]
  ret i64 %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local i1 @is_ucounts_overlimit(%struct.ucounts* noundef %ucounts, i32 noundef %type, i64 noundef %max) local_unnamed_addr #5 {
entry:
  %call = call fastcc i64 @get_ucounts_value(%struct.ucounts* noundef %ucounts, i32 noundef %type) #11
  %cmp = icmp ugt i64 %call, %max
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %tobool.not15 = icmp eq %struct.ucounts* %ucounts, null
  br i1 %tobool.not15, label %cleanup, label %do.end.lr.ph

do.end.lr.ph:                                     ; preds = %for.cond.preheader
  %idxprom = zext i32 %type to i64
  br label %do.end

do.end:                                           ; preds = %do.end.lr.ph, %for.inc
  %iter.016 = phi %struct.ucounts* [ %ucounts, %do.end.lr.ph ], [ %3, %for.inc ]
  %ns = getelementptr inbounds %struct.ucounts, %struct.ucounts* %iter.016, i64 0, i32 1
  %0 = load %struct.user_namespace*, %struct.user_namespace** %ns, align 8
  %arrayidx = getelementptr %struct.user_namespace, %struct.user_namespace* %0, i64 0, i32 14, i64 %idxprom
  %1 = load volatile i64, i64* %arrayidx, align 8
  %call1 = call fastcc i64 @get_ucounts_value(%struct.ucounts* noundef nonnull %iter.016, i32 noundef %type) #11
  %cmp2 = icmp ugt i64 %call1, %1
  br i1 %cmp2, label %cleanup, label %for.inc

for.inc:                                          ; preds = %do.end
  %2 = load %struct.user_namespace*, %struct.user_namespace** %ns, align 8
  %ucounts6 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %2, i64 0, i32 13
  %3 = load %struct.ucounts*, %struct.ucounts** %ucounts6, align 8
  %tobool.not = icmp eq %struct.ucounts* %3, null
  br i1 %tobool.not, label %cleanup, label %do.end

cleanup:                                          ; preds = %do.end, %for.inc, %for.cond.preheader, %entry
  %retval.0 = phi i1 [ true, %entry ], [ false, %for.cond.preheader ], [ %cmp2, %for.inc ], [ %cmp2, %do.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i64 @get_ucounts_value(%struct.ucounts* noundef %ucounts, i32 noundef %type) unnamed_addr #6 {
entry:
  %idxprom = zext i32 %type to i64
  %counter.i.i = getelementptr %struct.ucounts, %struct.ucounts* %ucounts, i64 0, i32 4, i64 %idxprom, i32 0
  %0 = load volatile i64, i64* %counter.i.i, align 8
  ret i64 %0
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @user_namespace_sysctl_init() #7 section ".init.text" {
entry:
  %call = call %struct.ctl_table_header* @register_sysctl(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.ctl_table* noundef getelementptr inbounds ([1 x %struct.ctl_table], [1 x %struct.ctl_table]* @user_namespace_sysctl_init.empty, i64 0, i64 0)) #10
  store %struct.ctl_table_header* %call, %struct.ctl_table_header** @user_namespace_sysctl_init.user_header, align 8
  %tobool.not = icmp eq %struct.ctl_table_header* %call, null
  br i1 %tobool.not, label %do.body4, label %do.body8, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ucount.c\22; .popsection; .long 14472b - 14470b; .short 361; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !14
  unreachable

do.body8:                                         ; preds = %entry
  %call9 = call i1 @setup_userns_sysctls(%struct.user_namespace* noundef nonnull @init_user_ns) #11
  br i1 %call9, label %do.end25, label %do.body20, !prof !8

do.body20:                                        ; preds = %do.body8
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/ucount.c\22; .popsection; .long 14472b - 14470b; .short 362; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !15
  unreachable

do.end25:                                         ; preds = %do.body8
  call fastcc void @hlist_add_ucounts() #11
  %call26 = call i64 @inc_rlimit_ucounts(%struct.ucounts* noundef nonnull @init_ucounts, i32 noundef 8, i64 noundef 1) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal %struct.ctl_table_set* @set_lookup(%struct.ctl_table_root* nocapture noundef readnone %root) #3 {
entry:
  ret %struct.ctl_table_set* getelementptr inbounds (%struct.user_namespace, %struct.user_namespace* @init_user_ns, i64 0, i32 11)
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i32 @set_permissions(%struct.ctl_table_header* nocapture noundef readonly %head, %struct.ctl_table* nocapture noundef readonly %table) #0 {
entry:
  %set = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %head, i64 0, i32 4
  %0 = bitcast %struct.ctl_table_set** %set to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -312
  %2 = bitcast i8* %add.ptr to %struct.user_namespace*
  %call = call i1 @ns_capable(%struct.user_namespace* noundef %2, i32 noundef 24) #10
  %mode1 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %table, i64 0, i32 3
  %3 = load i16, i16* %mode1, align 4
  %4 = lshr i16 %3, 6
  %5 = and i16 %4, 7
  %6 = and i16 %3, 4
  %mode.0.in = select i1 %call, i16 %5, i16 %6
  %narrow = mul nuw nsw i16 %mode.0.in, 73
  %or6 = zext i16 %narrow to i32
  ret i32 %or6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i1 @ns_capable(%struct.user_namespace* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(%struct.ctl_table* noundef, i32 noundef, i8* noundef, i64* noundef, i64* noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !16
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  call fastcc void @do_raw_spin_lock() #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #11
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !9

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #12, !srcloc !18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #10
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @ucounts_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #10
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #6 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @ucounts_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @ucounts_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #12, !srcloc !19
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @uid_eq(i64 %left.coerce, i64 %right.coerce) unnamed_addr #3 {
entry:
  %coerce.val.ii4 = and i64 %left.coerce, 4294967295
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii4) #11
  %coerce.val.ii6 = and i64 %right.coerce, 4294967295
  %call7 = call fastcc i32 @__kuid_val(i64 %coerce.val.ii6) #11
  %cmp = icmp eq i32 %call, %call7
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #11
  call fastcc void @arch_local_irq_enable() #11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @ucounts_lock to i8*), i8 0) #12, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #12, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @hlist_unhashed(%struct.hlist_node* nocapture noundef readonly %h) unnamed_addr #8 {
entry:
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  %0 = load %struct.hlist_node**, %struct.hlist_node*** %pprev, align 8
  %tobool.not = icmp eq %struct.hlist_node** %0, null
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__hlist_del(%struct.hlist_node* nocapture noundef readonly %n) unnamed_addr #5 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly
define internal fastcc void @INIT_HLIST_NODE(%struct.hlist_node* nocapture noundef writeonly %h) unnamed_addr #9 {
entry:
  %next = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 0
  store %struct.hlist_node* null, %struct.hlist_node** %next, align 8
  %pprev = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %h, i64 0, i32 1
  store %struct.hlist_node** null, %struct.hlist_node*** %pprev, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #11
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #11
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #12, !srcloc !24
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #11
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_mb_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stlxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09dmb ish\0A2:", "=&r,=&r,=*Q,Lr,r,*Q,~{memory}"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #12, !srcloc !25
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_sub(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Jr,*Q"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #12, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_dec_if_positive(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_dec_if_positive\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09subs\09$0, $0, #1\0A\09b.lt\092f\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb\09ish\0A2:", "=&r,=&r,=*Q,*Q,~{cc},~{memory}"(i64* elementtype(i64) %counter, i64* elementtype(i64) %counter) #12, !srcloc !27
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_add_return(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #12, !srcloc !28
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.ctl_table_header* @register_sysctl(i8* noundef, %struct.ctl_table* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @hlist_add_ucounts() unnamed_addr #0 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.ucounts, %struct.ucounts* @init_ucounts, i64 0, i32 2, i32 0), align 8
  %coerce.val.ii = zext i32 %0 to i64
  %call = call fastcc i32 @__kuid_val(i64 %coerce.val.ii) #11
  %conv = zext i32 %call to i64
  %1 = load %struct.user_namespace*, %struct.user_namespace** getelementptr inbounds (%struct.ucounts, %struct.ucounts* @init_ucounts, i64 0, i32 1), align 8
  %2 = ptrtoint %struct.user_namespace* %1 to i64
  %add = add i64 %2, %conv
  %mul.i = mul i64 %add, 7046029254386353131
  %shr.i = lshr i64 %mul.i, 54
  %add.ptr = getelementptr [1024 x %struct.hlist_head], [1024 x %struct.hlist_head]* @ucounts_hashtable, i64 0, i64 %shr.i
  call fastcc void @__raw_spin_lock_irq() #10
  call fastcc void @hlist_add_head(%struct.hlist_node* noundef getelementptr inbounds (%struct.ucounts, %struct.ucounts* @init_ucounts, i64 0, i32 0), %struct.hlist_head* noundef %add.ptr) #11
  call fastcc void @__raw_spin_unlock_irq() #10
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn writeonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2151194545}
!11 = !{i64 2151203234}
!12 = !{i64 2151204885}
!13 = !{i64 2151209505}
!14 = !{i64 2151213995}
!15 = !{i64 2151215388}
!16 = !{i64 2147795150, i64 2147795798, i64 2147795828, i64 2147795860, i64 2147795894, i64 2147795930, i64 2147795955}
!17 = !{i64 2149506408}
!18 = !{i64 2149199223, i64 2149199270, i64 2149199276, i64 2149199313, i64 2149199331, i64 2149200672, i64 2149200720, i64 2149200768, i64 2149200831, i64 2149200880, i64 2149199409, i64 2149199434, i64 2149199460, i64 2149199466, i64 2149200338, i64 2149200378, i64 2149200396, i64 2149200428, i64 2149200456, i64 2149200510, i64 2149200530, i64 2149200627, i64 2149199489, i64 2149199503, i64 2149199509, i64 2149199559, i64 2149199605, i64 2149199638}
!19 = !{i64 2147894221, i64 2147894254, i64 2147894307, i64 2147894366, i64 2147894400, i64 2147894455, i64 2147894484, i64 2147894504}
!20 = !{i64 2149531261}
!21 = !{i64 2149471257}
!22 = !{i64 2149189767, i64 2149189814, i64 2149189820, i64 2149189857, i64 2149189875, i64 2149191215, i64 2149191263, i64 2149191311, i64 2149191374, i64 2149191423, i64 2149189953, i64 2149189978, i64 2149190004, i64 2149190010, i64 2149190881, i64 2149190921, i64 2149190939, i64 2149190971, i64 2149190999, i64 2149191053, i64 2149191073, i64 2149191170, i64 2149190033, i64 2149190047, i64 2149190053, i64 2149190103, i64 2149190149, i64 2149190182}
!23 = !{i64 2149527958}
!24 = !{i64 2149215000, i64 2149215047, i64 2149215053, i64 2149215090, i64 2149215108, i64 2149216419, i64 2149216467, i64 2149216515, i64 2149216578, i64 2149216627, i64 2149215186, i64 2149215211, i64 2149215237, i64 2149215243, i64 2149216085, i64 2149216125, i64 2149216143, i64 2149216175, i64 2149216203, i64 2149216257, i64 2149216277, i64 2149216374, i64 2149215266, i64 2149215280, i64 2149215286, i64 2149215336, i64 2149215382, i64 2149215415}
!25 = !{i64 2147909018, i64 2147909051, i64 2147909102, i64 2147909158, i64 2147909191, i64 2147909246, i64 2147909275, i64 2147909302}
!26 = !{i64 2147848717, i64 2147849231, i64 2147849261, i64 2147849287, i64 2147849319, i64 2147849348}
!27 = !{i64 306311, i64 2147878936, i64 2147878960, i64 2147878979, i64 2147879000, i64 2147879013, i64 2147879036, i64 2147879054, i64 2147879067}
!28 = !{i64 2147835832, i64 2147840541, i64 2147840571, i64 2147840602, i64 2147840634, i64 2147840669, i64 2147840694}
