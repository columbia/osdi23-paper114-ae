; ModuleID = 'lib/kobject.c'
source_filename = "lib/kobject.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, {}*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute = type { i8*, i16 }
%struct.address_space = type opaque
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.3, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot_t = type { i64 }
%struct.anon.3 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.4, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.4 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.kobj_attribute = type { %struct.attribute, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)*, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* }

@.str = private unnamed_addr constant [25 x i8] c"invalid kobject pointer!\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"must have a ktype to be initialized properly!\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"\013kobject (%p): tried to init an initialized object, something is seriously wrong.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\013kobject (%p): %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [90 x i8] c"\013kobject '%s' (%p): tried to add an uninitialized object, something is seriously wrong.\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"DEVPATH_OLD=%s\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"\014kobject: '%s' (%p): is not initialized, yet kobject_get() is being called.\0A\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"\014kobject: '%s' (%p): is not initialized, yet kobject_put() is being called.\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"\014%s: kobject_add error: %d\0A\00", align 1
@__func__.kobject_create_and_add = private unnamed_addr constant [23 x i8] c"kobject_create_and_add\00", align 1
@kobj_sysfs_ops = dso_local constant %struct.sysfs_ops { i64 (%struct.kobject*, %struct.attribute*, i8*)* @kobj_attr_show, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @kobj_attr_store }, align 8
@kobj_ns_type_lock = internal global %struct.spinlock zeroinitializer, align 4
@kobj_ns_ops_tbl.0 = internal unnamed_addr global %struct.kobj_ns_type_operations* null, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"\013kobject: can not set name properly!\0A\00", align 1
@dynamic_kobj_ktype = internal global { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* } { void (%struct.kobject*)* @dynamic_kobj_release, %struct.sysfs_ops* @kobj_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@.str.12 = private unnamed_addr constant [60 x i8] c"kobject: (%p): attempted to be registered with empty name!\0A\00", align 1
@.str.13 = private unnamed_addr constant [105 x i8] c"\013%s failed for %s with -EEXIST, don't try to register things with the same name in the same directory.\0A\00", align 1
@__func__.kobject_add_internal = private unnamed_addr constant [21 x i8] c"kobject_add_internal\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"\013%s failed for %s (error: %d parent: %s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"'none'\00", align 1
@kset_ktype = internal global { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* } { void (%struct.kobject*)* @kset_release, %struct.sysfs_ops* @kobj_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* @kset_get_ownership }, align 8

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kobject_namespace(%struct.kobject* noundef %kobj) local_unnamed_addr #0 {
entry:
  %call = call %struct.kobj_ns_type_operations* @kobj_ns_ops(%struct.kobject* noundef %kobj) #10
  %tobool.not = icmp eq %struct.kobj_ns_type_operations* %call, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %call, i64 0, i32 0
  %0 = load i32, i32* %type, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 4
  %1 = load %struct.kobj_type*, %struct.kobj_type** %ktype, align 8
  %namespace = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %1, i64 0, i32 5
  %namespace1 = bitcast {}** %namespace to i8* (%struct.kobject*)**
  %2 = load i8* (%struct.kobject*)*, i8* (%struct.kobject*)** %namespace1, align 8
  %call2 = call i8* %2(%struct.kobject* noundef %kobj) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i8* [ %call2, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kobj_ns_type_operations* @kobj_ns_ops(%struct.kobject* nocapture noundef readonly %kobj) local_unnamed_addr #0 {
entry:
  %parent = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 2
  %0 = load %struct.kobject*, %struct.kobject** %parent, align 8
  %call = call %struct.kobj_ns_type_operations* @kobj_child_ns_ops(%struct.kobject* noundef %0) #10
  ret %struct.kobj_ns_type_operations* %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kobject_get_ownership(%struct.kobject* noundef %kobj, %struct.kuid_t* noundef %uid, %struct.kgid_t* noundef %gid) local_unnamed_addr #0 {
entry:
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %uid, i64 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 4
  %.compoundliteral1.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %gid, i64 0, i32 0
  store i32 0, i32* %.compoundliteral1.sroa.0.0..sroa_idx, align 4
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 4
  %0 = load %struct.kobj_type*, %struct.kobj_type** %ktype, align 8
  %get_ownership = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %0, i64 0, i32 6
  %1 = load void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)** %get_ownership, align 8
  %tobool.not = icmp eq void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void %1(%struct.kobject* noundef %kobj, %struct.kuid_t* noundef %uid, %struct.kgid_t* noundef %gid) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kobject_get_path(%struct.kobject* noundef %kobj, i32 noundef %gfp_mask) local_unnamed_addr #0 {
entry:
  %call = call fastcc i32 @get_kobj_path_length(%struct.kobject* noundef %kobj) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv = sext i32 %call to i64
  %call1 = call fastcc i8* @kzalloc(i64 noundef %conv, i32 noundef %gfp_mask) #10
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  call fastcc void @fill_kobj_path(%struct.kobject* noundef %kobj, i8* noundef nonnull %call1, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i8* [ %call1, %if.end3 ], [ null, %entry ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @get_kobj_path_length(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end, %entry
  %length.0 = phi i64 [ 1, %entry ], [ %add3, %if.end ]
  %parent.0 = phi %struct.kobject* [ %kobj, %entry ], [ %0, %if.end ]
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %parent.0) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %do.body
  %call2 = call i64 @strlen(i8* noundef nonnull %call) #11
  %sext = shl i64 %length.0, 32
  %conv = ashr exact i64 %sext, 32
  %add = add nsw i64 %conv, 1
  %add3 = add i64 %add, %call2
  %parent5 = getelementptr inbounds %struct.kobject, %struct.kobject* %parent.0, i64 0, i32 2
  %0 = load %struct.kobject*, %struct.kobject** %parent5, align 8
  %tobool.not = icmp eq %struct.kobject* %0, null
  br i1 %tobool.not, label %do.end, label %do.body

do.end:                                           ; preds = %if.end
  %conv4 = trunc i64 %add3 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.body, %do.end
  %retval.0 = phi i32 [ %conv4, %do.end ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kzalloc(i64 noundef %size, i32 noundef %flags) unnamed_addr #0 {
entry:
  %or = or i32 %flags, 256
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %size, i32 noundef %or) #11
  ret i8* %call10.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @fill_kobj_path(%struct.kobject* noundef readonly %kobj, i8* noundef %path, i32 noundef %length) unnamed_addr #0 {
entry:
  %tobool.not19 = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not19, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %dec = add i32 %length, -1
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %length.addr.021 = phi i32 [ %dec5, %for.body ], [ %dec, %for.body.preheader ]
  %parent.020 = phi %struct.kobject* [ %0, %for.body ], [ %kobj, %for.body.preheader ]
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef nonnull %parent.020) #10
  %call1 = call i64 @strlen(i8* noundef %call) #11
  %conv = trunc i64 %call1 to i32
  %sub = sub i32 %length.addr.021, %conv
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr i8, i8* %path, i64 %idx.ext
  %call2 = call fastcc i8* @kobject_name(%struct.kobject* noundef nonnull %parent.020) #10
  %sext = shl i64 %call1, 32
  %conv3 = ashr exact i64 %sext, 32
  %call4 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %call2, i64 noundef %conv3) #11
  %dec5 = add i32 %sub, -1
  %idx.ext6 = sext i32 %dec5 to i64
  %add.ptr7 = getelementptr i8, i8* %path, i64 %idx.ext6
  store i8 47, i8* %add.ptr7, align 1
  %parent8 = getelementptr inbounds %struct.kobject, %struct.kobject* %parent.020, i64 0, i32 2
  %0 = load %struct.kobject*, %struct.kobject** %parent8, align 8
  %tobool.not = icmp eq %struct.kobject* %0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kobject_set_name_vargs(%struct.kobject* nocapture noundef %kobj, i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef readonly %vargs) local_unnamed_addr #0 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  %tobool = icmp eq i8* %0, null
  %tobool1 = icmp ne i8* %fmt, null
  %or.cond = or i1 %tobool1, %tobool
  br i1 %or.cond, label %if.end, label %cleanup16

if.end:                                           ; preds = %entry
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #12
  %2 = bitcast %"struct.std::__va_list"* %vargs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef align 8 dereferenceable(32) %2, i64 32, i1 false)
  %call = call i8* @kvasprintf_const(i32 noundef 3264, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #12
  %tobool2.not = icmp eq i8* %call, null
  br i1 %tobool2.not, label %cleanup16, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = call i8* @strchr(i8* noundef nonnull %call, i32 noundef 47) #11
  %tobool6.not = icmp eq i8* %call5, null
  br i1 %tobool6.not, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end4
  %call8 = call noalias i8* @kstrdup(i8* noundef nonnull %call, i32 noundef 3264) #11
  call void @kfree_const(i8* noundef nonnull %call) #11
  %tobool9.not = icmp eq i8* %call8, null
  br i1 %tobool9.not, label %cleanup16, label %cleanup

cleanup:                                          ; preds = %if.then7
  %call12 = call i8* @strreplace(i8* noundef nonnull %call8, i8 noundef 47, i8 noundef 33) #11
  br label %if.end13

if.end13:                                         ; preds = %cleanup, %if.end4
  %s.1 = phi i8* [ %call8, %cleanup ], [ %call, %if.end4 ]
  %3 = load i8*, i8** %name, align 8
  call void @kfree_const(i8* noundef %3) #11
  store i8* %s.1, i8** %name, align 8
  br label %cleanup16

cleanup16:                                        ; preds = %if.then7, %if.end, %entry, %if.end13
  %retval.1 = phi i32 [ 0, %if.end13 ], [ 0, %entry ], [ -12, %if.end ], [ -12, %if.then7 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kvasprintf_const(i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kstrdup(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strreplace(i8* noundef, i8 noundef, i8 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kobject_set_name(%struct.kobject* nocapture noundef %kobj, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %vargs = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %vargs to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call i32 @kobject_set_name_vargs(%struct.kobject* noundef %kobj, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #12
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kobject_init(%struct.kobject* noundef %kobj, %struct.kobj_type* noundef %ktype) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %do.end10, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.kobj_type* %ktype, null
  br i1 %tobool1.not, label %do.end10, label %if.end3

if.end3:                                          ; preds = %if.end
  %state_initialized = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_initialized, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool4.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end3
  %call = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), %struct.kobject* noundef nonnull %kobj) #13
  call void @dump_stack() #13
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end3
  call fastcc void @kobject_init_internal(%struct.kobject* noundef nonnull %kobj) #10
  %ktype7 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 4
  store %struct.kobj_type* %ktype, %struct.kobj_type** %ktype7, align 8
  br label %cleanup

do.end10:                                         ; preds = %if.end, %entry
  %err_str.0 = phi i8* [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %entry ], [ getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %if.end ]
  %call12 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct.kobject* noundef %kobj, i8* noundef nonnull %err_str.0) #13
  call void @dump_stack() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @kobject_init_internal(%struct.kobject* noundef %kobj) unnamed_addr #7 {
entry:
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 6
  call fastcc void @kref_init(%struct.kref* noundef %kref) #10
  %entry1 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #10
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_in_sysfs, align 4
  %bf.clear9 = and i8 %bf.load, -16
  %bf.set10 = or i8 %bf.clear9, 1
  store i8 %bf.set10, i8* %state_in_sysfs, align 4
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kobject_add(%struct.kobject* noundef %kobj, %struct.kobject* noundef %parent, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %state_initialized = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_initialized, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool2.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef nonnull %kobj) #10
  %call4 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call, %struct.kobject* noundef nonnull %kobj) #13
  call void @dump_stack() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call7 = call fastcc i32 @kobject_add_varg(%struct.kobject* noundef nonnull %kobj, %struct.kobject* noundef %parent, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #12
  call void @llvm.va_end(i8* nonnull %0)
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5, %do.end
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -22, %do.end ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #8 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kobject_add_varg(%struct.kobject* noundef %kobj, %struct.kobject* noundef %parent, i8* noundef %fmt, %"struct.std::__va_list"* nocapture noundef readonly %vargs) unnamed_addr #0 {
entry:
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #12
  %1 = bitcast %"struct.std::__va_list"* %vargs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef align 8 dereferenceable(32) %1, i64 32, i1 false)
  %call = call i32 @kobject_set_name_vargs(%struct.kobject* noundef %kobj, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call2 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0)) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent3 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 2
  store %struct.kobject* %parent, %struct.kobject** %parent3, align 8
  %call4 = call fastcc i32 @kobject_add_internal(%struct.kobject* noundef %kobj) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kobject_init_and_add(%struct.kobject* noundef %kobj, %struct.kobj_type* noundef %ktype, %struct.kobject* noundef %parent, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca %"struct.std::__va_list", align 8
  %byval-temp = alloca %"struct.std::__va_list", align 8
  %0 = bitcast %"struct.std::__va_list"* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !annotation !7
  call void @kobject_init(%struct.kobject* noundef %kobj, %struct.kobj_type* noundef %ktype) #10
  call void @llvm.va_start(i8* nonnull %0)
  %1 = bitcast %"struct.std::__va_list"* %byval-temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %call = call fastcc i32 @kobject_add_varg(%struct.kobject* noundef %kobj, %struct.kobject* noundef %parent, i8* noundef %fmt, %"struct.std::__va_list"* noundef nonnull %byval-temp) #10
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #12
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kobject_rename(%struct.kobject* noundef %kobj, i8* noundef %new_name) local_unnamed_addr #0 {
entry:
  %envp = alloca [2 x i8*], align 8
  %0 = bitcast [2 x i8*]* %envp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj) #10
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 2
  %1 = load %struct.kobject*, %struct.kobject** %parent, align 8
  %tobool1.not = icmp eq %struct.kobject* %1, null
  br i1 %tobool1.not, label %cleanup.sink.split, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call i8* @kobject_get_path(%struct.kobject* noundef nonnull %kobj, i32 noundef 3264) #10
  %tobool5.not = icmp eq i8* %call4, null
  br i1 %tobool5.not, label %out, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = call i64 @strlen(i8* noundef nonnull %call4) #11
  %add = add i64 %call8, 15
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %add, i32 noundef 3264) #11
  %tobool10.not = icmp eq i8* %call10.i, null
  br i1 %tobool10.not, label %out, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %call10.i, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %call4) #11
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %envp, i64 0, i64 0
  store i8* %call10.i, i8** %arrayidx, align 8
  %arrayidx14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %envp, i64 0, i64 1
  store i8* null, i8** %arrayidx14, align 8
  %call15 = call i8* @kstrdup_const(i8* noundef %new_name, i32 noundef 3264) #11
  %tobool16.not = icmp eq i8* %call15, null
  br i1 %tobool16.not, label %out, label %if.end18

if.end18:                                         ; preds = %if.end12
  %call19 = call i8* @kobject_namespace(%struct.kobject* noundef nonnull %kobj) #10
  %call20 = call i32 @sysfs_rename_dir_ns(%struct.kobject* noundef nonnull %kobj, i8* noundef %new_name, i8* noundef %call19) #11
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %out

if.end23:                                         ; preds = %if.end18
  %name24 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %2 = load i8*, i8** %name24, align 8
  store i8* %call15, i8** %name24, align 8
  %call26 = call i32 @kobject_uevent_env(%struct.kobject* noundef nonnull %kobj, i32 noundef 3, i8** noundef nonnull %arrayidx) #11
  br label %out

out:                                              ; preds = %if.end12, %if.end7, %if.end3, %if.end18, %if.end23
  %error.0 = phi i32 [ %call20, %if.end18 ], [ 0, %if.end23 ], [ -12, %if.end3 ], [ -12, %if.end7 ], [ -12, %if.end12 ]
  %dup_name.0 = phi i8* [ %call15, %if.end18 ], [ %2, %if.end23 ], [ null, %if.end3 ], [ null, %if.end7 ], [ null, %if.end12 ]
  %devpath_string.0 = phi i8* [ %call10.i, %if.end18 ], [ %call10.i, %if.end23 ], [ null, %if.end3 ], [ null, %if.end7 ], [ %call10.i, %if.end12 ]
  call void @kfree_const(i8* noundef %dup_name.0) #11
  call void @kfree(i8* noundef %devpath_string.0) #11
  call void @kfree(i8* noundef %call4) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %out
  %retval.0.ph = phi i32 [ %error.0, %out ], [ -22, %if.end ]
  call void @kobject_put(%struct.kobject* noundef nonnull %kobj) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kobject* @kobject_get(%struct.kobject* noundef returned %kobj) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %if.end21, label %if.then

if.then:                                          ; preds = %entry
  %state_initialized = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_initialized, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool1.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool1.not, label %do.end, label %if.end20

do.end:                                           ; preds = %if.then
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef nonnull %kobj) #10
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call, %struct.kobject* noundef nonnull %kobj) #11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/kobject.c\22; .popsection; .long 14472b - 14470b; .short 658; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !8
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then
  %kref = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 6
  call fastcc void @kref_get(%struct.kref* noundef %kref) #10
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %entry
  ret %struct.kobject* %kobj
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kobject_put(%struct.kobject* noundef %kobj) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %if.end22, label %if.then

if.then:                                          ; preds = %entry
  %state_initialized = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_initialized, align 4
  %bf.clear = and i8 %bf.load, 1
  %tobool1.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool1.not, label %do.end, label %if.end20

do.end:                                           ; preds = %if.then
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef nonnull %kobj) #10
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call, %struct.kobject* noundef nonnull %kobj) #11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/kobject.c\22; .popsection; .long 14472b - 14470b; .short 752; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !9
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.then
  %kref = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 6
  call fastcc void @kref_put(%struct.kref* noundef %kref) #10
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @kstrdup_const(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_rename_dir_ns(%struct.kobject* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(%struct.kobject* noundef, i32 noundef, i8** noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kobject_move(%struct.kobject* noundef %kobj, %struct.kobject* noundef %new_parent) local_unnamed_addr #0 {
entry:
  %envp = alloca [2 x i8*], align 8
  %0 = bitcast [2 x i8*]* %envp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !annotation !7
  %call = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj) #10
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call %struct.kobject* @kobject_get(%struct.kobject* noundef %new_parent) #10
  %tobool2.not = icmp eq %struct.kobject* %new_parent, null
  br i1 %tobool2.not, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %kset = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 3
  %1 = load %struct.kset*, %struct.kset** %kset, align 8
  %tobool4.not = icmp eq %struct.kset* %1, null
  br i1 %tobool4.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.then3
  %kobj7 = getelementptr inbounds %struct.kset, %struct.kset* %1, i64 0, i32 2
  %call8 = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj7) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.then5, %if.end
  %new_parent.addr.0 = phi %struct.kobject* [ %new_parent, %if.end ], [ %kobj7, %if.then5 ], [ null, %if.then3 ]
  %call11 = call i8* @kobject_get_path(%struct.kobject* noundef nonnull %kobj, i32 noundef 3264) #10
  %tobool12.not = icmp eq i8* %call11, null
  br i1 %tobool12.not, label %out, label %if.end14

if.end14:                                         ; preds = %if.end10
  %call15 = call i64 @strlen(i8* noundef nonnull %call11) #11
  %add = add i64 %call15, 15
  %call10.i = call noalias align 128 i8* @__kmalloc(i64 noundef %add, i32 noundef 3264) #11
  %tobool17.not = icmp eq i8* %call10.i, null
  br i1 %tobool17.not, label %out, label %if.end19

if.end19:                                         ; preds = %if.end14
  %call20 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %call10.i, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull %call11) #11
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %envp, i64 0, i64 0
  store i8* %call10.i, i8** %arrayidx, align 8
  %arrayidx21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %envp, i64 0, i64 1
  store i8* null, i8** %arrayidx21, align 8
  %call22 = call i8* @kobject_namespace(%struct.kobject* noundef nonnull %kobj) #10
  %call23 = call i32 @sysfs_move_dir_ns(%struct.kobject* noundef nonnull %kobj, %struct.kobject* noundef %new_parent.addr.0, i8* noundef %call22) #11
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %out

if.end26:                                         ; preds = %if.end19
  %parent = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 2
  %2 = load %struct.kobject*, %struct.kobject** %parent, align 8
  store %struct.kobject* %new_parent.addr.0, %struct.kobject** %parent, align 8
  call void @kobject_put(%struct.kobject* noundef %2) #10
  %call28 = call i32 @kobject_uevent_env(%struct.kobject* noundef nonnull %kobj, i32 noundef 3, i8** noundef nonnull %arrayidx) #11
  br label %out

out:                                              ; preds = %if.end14, %if.end10, %if.end19, %if.end26
  %new_parent.addr.1 = phi %struct.kobject* [ %new_parent.addr.0, %if.end19 ], [ null, %if.end26 ], [ %new_parent.addr.0, %if.end10 ], [ %new_parent.addr.0, %if.end14 ]
  %error.0 = phi i32 [ %call23, %if.end19 ], [ 0, %if.end26 ], [ -12, %if.end10 ], [ -12, %if.end14 ]
  %devpath_string.0 = phi i8* [ %call10.i, %if.end19 ], [ %call10.i, %if.end26 ], [ null, %if.end10 ], [ null, %if.end14 ]
  call void @kobject_put(%struct.kobject* noundef %new_parent.addr.1) #10
  call void @kobject_put(%struct.kobject* noundef nonnull %kobj) #10
  call void @kfree(i8* noundef %devpath_string.0) #11
  call void @kfree(i8* noundef %call11) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %out
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_move_dir_ns(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kobject_del(%struct.kobject* noundef %kobj) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %parent1 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 2
  %0 = load %struct.kobject*, %struct.kobject** %parent1, align 8
  call fastcc void @__kobject_del(%struct.kobject* noundef nonnull %kobj) #10
  call void @kobject_put(%struct.kobject* noundef %0) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__kobject_del(%struct.kobject* noundef %kobj) unnamed_addr #0 {
entry:
  %sd1 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd1, align 8
  %call = call fastcc %struct.kobj_type* @get_ktype(%struct.kobject* noundef %kobj) #10
  %tobool.not = icmp eq %struct.kobj_type* %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %default_groups = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %call, i64 0, i32 3
  %1 = load %struct.attribute_group**, %struct.attribute_group*** %default_groups, align 8
  call void @sysfs_remove_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %state_add_uevent_sent = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_add_uevent_sent, align 4
  %2 = and i8 %bf.load, 12
  %3 = icmp eq i8 %2, 4
  br i1 %3, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 1) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  call void @sysfs_remove_dir(%struct.kobject* noundef %kobj) #11
  call fastcc void @sysfs_put(%struct.kernfs_node* noundef %0) #10
  %bf.load11 = load i8, i8* %state_add_uevent_sent, align 4
  %bf.clear12 = and i8 %bf.load11, -3
  store i8 %bf.clear12, i8* %state_add_uevent_sent, align 4
  call fastcc void @kobj_kset_leave(%struct.kobject* noundef %kobj) #10
  %parent = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 2
  store %struct.kobject* null, %struct.kobject** %parent, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_get(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_inc(%struct.refcount_struct* noundef %refcount) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kobject* @kobject_get_unless_zero(%struct.kobject* noundef %kobj) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 6
  %call = call fastcc i32 @kref_get_unless_zero(%struct.kref* noundef %kref) #10
  %tobool1.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool1.not, %struct.kobject* null, %struct.kobject* %kobj
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.kobject* [ %spec.select, %if.end ], [ null, %entry ]
  ret %struct.kobject* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kref_get_unless_zero(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %refcount) #10
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kref_put(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  %call = call fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %refcount) #10
  br i1 %call, label %if.then, label %return

if.then:                                          ; preds = %entry
  call fastcc void @kobject_release(%struct.kref* noundef %kref) #10
  br label %return

return:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kobject_release(%struct.kref* noundef %kref) unnamed_addr #0 {
entry:
  %add.ptr3 = getelementptr %struct.kref, %struct.kref* %kref, i64 -14
  %0 = bitcast %struct.kref* %add.ptr3 to %struct.kobject*
  call fastcc void @kobject_cleanup(%struct.kobject* noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kobject* @kobject_create() local_unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 64, i32 noundef 3264) #10
  %0 = bitcast i8* %call to %struct.kobject*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @kobject_init(%struct.kobject* noundef nonnull %0, %struct.kobj_type* noundef bitcast ({ void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }* @dynamic_kobj_ktype to %struct.kobj_type*)) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.kobject* [ %0, %if.end ], [ null, %entry ]
  ret %struct.kobject* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kobject* @kobject_create_and_add(i8* noundef %name, %struct.kobject* noundef %parent) local_unnamed_addr #0 {
entry:
  %call = call %struct.kobject* @kobject_create() #10
  %tobool.not = icmp eq %struct.kobject* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 (%struct.kobject*, %struct.kobject*, i8*, ...) @kobject_add(%struct.kobject* noundef nonnull %call, %struct.kobject* noundef %parent, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef %name) #10
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %do.end

do.end:                                           ; preds = %if.end
  %call5 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.kobject_create_and_add, i64 0, i64 0), i32 noundef %call2) #13
  call void @kobject_put(%struct.kobject* noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %entry
  %retval.0 = phi %struct.kobject* [ null, %entry ], [ null, %do.end ], [ %call, %if.end ]
  ret %struct.kobject* %retval.0
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define dso_local void @kset_init(%struct.kset* noundef %k) local_unnamed_addr #7 {
entry:
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %k, i64 0, i32 2
  call fastcc void @kobject_init_internal(%struct.kobject* noundef %kobj) #10
  %list = getelementptr inbounds %struct.kset, %struct.kset* %k, i64 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %list) #10
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.kset, %struct.kset* %k, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store i32 0, i32* %.compoundliteral.sroa.0.0..sroa_idx, align 8
  ret void
}

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
define internal i64 @kobj_attr_show(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef %buf) #0 {
entry:
  %show = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1
  %0 = bitcast %struct.attribute* %show to i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)**
  %1 = load i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)*, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.kobject*, %struct.kobj_attribute*, i8*)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.attribute* %attr to %struct.kobj_attribute*
  %call = call i64 %1(%struct.kobject* noundef %kobj, %struct.kobj_attribute* noundef %2, i8* noundef %buf) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %call, %if.then ], [ -5, %entry ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @kobj_attr_store(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef %buf, i64 noundef %count) #0 {
entry:
  %store = getelementptr inbounds %struct.attribute, %struct.attribute* %attr, i64 1, i32 1
  %0 = bitcast i16* %store to i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)**
  %1 = load i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)*, i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)** %0, align 8
  %tobool.not = icmp eq i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.attribute* %attr to %struct.kobj_attribute*
  %call = call i64 %1(%struct.kobject* noundef %kobj, %struct.kobj_attribute* noundef %2, i8* noundef %buf, i64 noundef %count) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i64 [ %call, %if.then ], [ -5, %entry ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kset_register(%struct.kset* noundef %k) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kset* %k, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @kset_init(%struct.kset* noundef nonnull %k) #10
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %k, i64 0, i32 2
  %call = call fastcc i32 @kobject_add_internal(%struct.kobject* noundef %kobj) #10
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %call5 = call i32 @kobject_uevent(%struct.kobject* noundef %kobj, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @kobject_add_internal(%struct.kobject* noundef %kobj) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kobject* %kobj, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  %tobool1.not = icmp eq i8* %0, null
  br i1 %tobool1.not, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i8, i8* %0, align 1
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end, %lor.lhs.false
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0), %struct.kobject* noundef nonnull %kobj) #11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/kobject.c\22; .popsection; .long 14472b - 14470b; .short 236; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !10
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false
  %parent24 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 2
  %2 = load %struct.kobject*, %struct.kobject** %parent24, align 8
  %call = call %struct.kobject* @kobject_get(%struct.kobject* noundef %2) #10
  %kset = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 3
  %3 = load %struct.kset*, %struct.kset** %kset, align 8
  %tobool25.not = icmp eq %struct.kset* %3, null
  br i1 %tobool25.not, label %if.end34, label %if.then26

if.then26:                                        ; preds = %if.end23
  %tobool27.not = icmp eq %struct.kobject* %2, null
  br i1 %tobool27.not, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.then26
  %kobj30 = getelementptr inbounds %struct.kset, %struct.kset* %3, i64 0, i32 2
  %call31 = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj30) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then26
  %parent.0 = phi %struct.kobject* [ %2, %if.then26 ], [ %kobj30, %if.then28 ]
  call fastcc void @kobj_kset_join(%struct.kobject* noundef nonnull %kobj) #10
  store %struct.kobject* %parent.0, %struct.kobject** %parent24, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.end23
  %parent.1 = phi %struct.kobject* [ %parent.0, %if.end32 ], [ %2, %if.end23 ]
  %call36 = call fastcc i32 @create_dir(%struct.kobject* noundef nonnull %kobj) #10
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.else57, label %if.then38

if.then38:                                        ; preds = %if.end34
  call fastcc void @kobj_kset_leave(%struct.kobject* noundef nonnull %kobj) #10
  call void @kobject_put(%struct.kobject* noundef %parent.1) #10
  store %struct.kobject* null, %struct.kobject** %parent24, align 8
  %cmp = icmp eq i32 %call36, -17
  %call46 = call fastcc i8* @kobject_name(%struct.kobject* noundef nonnull %kobj) #10
  br i1 %cmp, label %do.end44, label %do.end50

do.end44:                                         ; preds = %if.then38
  %call47 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.kobject_add_internal, i64 0, i64 0), i8* noundef %call46) #13
  br label %cleanup

do.end50:                                         ; preds = %if.then38
  %tobool53.not = icmp eq %struct.kobject* %parent.1, null
  br i1 %tobool53.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %do.end50
  %call54 = call fastcc i8* @kobject_name(%struct.kobject* noundef nonnull %parent.1) #10
  br label %cond.end

cond.end:                                         ; preds = %do.end50, %cond.true
  %cond = phi i8* [ %call54, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), %do.end50 ]
  %call55 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.kobject_add_internal, i64 0, i64 0), i8* noundef %call46, i32 noundef %call36, i8* noundef %cond) #13
  br label %cleanup

if.else57:                                        ; preds = %if.end34
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_in_sysfs, align 4
  %bf.set = or i8 %bf.load, 2
  store i8 %bf.set, i8* %state_in_sysfs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else57, %cond.end, %do.end44, %entry, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -2, %entry ], [ -17, %do.end44 ], [ %call36, %cond.end ], [ 0, %if.else57 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(%struct.kobject* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kset_unregister(%struct.kset* noundef %k) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kset* %k, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %k, i64 0, i32 2
  call void @kobject_del(%struct.kobject* noundef %kobj) #10
  call void @kobject_put(%struct.kobject* noundef %kobj) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kobject* @kset_find_obj(%struct.kset* noundef %kset, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.kset, %struct.kset* %kset, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %list = getelementptr inbounds %struct.kset, %struct.kset* %kset, i64 0, i32 0
  %0 = bitcast %struct.kset* %kset to i8**
  %.pn29 = load i8*, i8** %0, align 8
  %1 = bitcast i8* %.pn29 to %struct.list_head*
  %cmp.not32 = icmp eq %struct.list_head* %list, %1
  br i1 %cmp.not32, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %.pn33 = phi i8* [ %.pn, %for.inc ], [ %.pn29, %entry ]
  %k.0.in34 = getelementptr i8, i8* %.pn33, i64 -8
  %k.035 = bitcast i8* %k.0.in34 to %struct.kobject*
  %call = call fastcc i8* @kobject_name(%struct.kobject* noundef %k.035) #10
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call4 = call i32 @strcmp(i8* noundef nonnull %call, i8* noundef %name) #11
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %k.035.le = bitcast i8* %k.0.in34 to %struct.kobject*
  %call6 = call %struct.kobject* @kobject_get_unless_zero(%struct.kobject* noundef %k.035.le) #10
  br label %for.end

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %2 = bitcast i8* %.pn33 to i8**
  %.pn = load i8*, i8** %2, align 8
  %3 = bitcast i8* %.pn to %struct.list_head*
  %cmp.not = icmp eq %struct.list_head* %list, %3
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry, %if.then
  %ret.0 = phi %struct.kobject* [ %call6, %if.then ], [ null, %entry ], [ null, %for.inc ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #11
  ret %struct.kobject* %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kset* @kset_create_and_add(i8* noundef %name, %struct.kset_uevent_ops* noundef %uevent_ops, %struct.kobject* noundef %parent_kobj) local_unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kset* @kset_create(i8* noundef %name, %struct.kset_uevent_ops* noundef %uevent_ops, %struct.kobject* noundef %parent_kobj) #10
  %tobool.not = icmp eq %struct.kset* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kset_register(%struct.kset* noundef nonnull %call) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %0 = bitcast %struct.kset* %call to i8*
  call void @kfree(i8* noundef nonnull %0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi %struct.kset* [ null, %if.then3 ], [ null, %entry ], [ %call, %if.end ]
  ret %struct.kset* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kset* @kset_create(i8* noundef %name, %struct.kset_uevent_ops* noundef %uevent_ops, %struct.kobject* noundef %parent_kobj) unnamed_addr #0 {
entry:
  %call = call fastcc i8* @kzalloc(i64 noundef 96, i32 noundef 3264) #10
  %0 = bitcast i8* %call to %struct.kset*
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %kobj to %struct.kobject*
  %call2 = call i32 (%struct.kobject*, i8*, ...) @kobject_set_name(%struct.kobject* noundef %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef %name) #10
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @kfree(i8* noundef nonnull %call) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %uevent_ops6 = getelementptr inbounds i8, i8* %call, i64 88
  %2 = bitcast i8* %uevent_ops6 to %struct.kset_uevent_ops**
  store %struct.kset_uevent_ops* %uevent_ops, %struct.kset_uevent_ops** %2, align 8
  %parent = getelementptr inbounds i8, i8* %call, i64 48
  %3 = bitcast i8* %parent to %struct.kobject**
  store %struct.kobject* %parent_kobj, %struct.kobject** %3, align 8
  %ktype = getelementptr inbounds i8, i8* %call, i64 64
  %4 = bitcast i8* %ktype to %struct.kobj_type**
  store %struct.kobj_type* bitcast ({ void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }* @kset_ktype to %struct.kobj_type*), %struct.kobj_type** %4, align 8
  %kset10 = getelementptr inbounds i8, i8* %call, i64 56
  %5 = bitcast i8* %kset10 to %struct.kset**
  store %struct.kset* null, %struct.kset** %5, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5, %if.then4
  %retval.0 = phi %struct.kset* [ null, %if.then4 ], [ %0, %if.end5 ], [ null, %entry ]
  ret %struct.kset* %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kobj_ns_type_register(%struct.kobj_ns_type_operations* noundef %ops) local_unnamed_addr #0 {
entry:
  %type1 = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %ops, i64 0, i32 0
  %0 = load i32, i32* %type1, align 8
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %if.end4, label %out

if.end4:                                          ; preds = %entry
  %1 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** @kobj_ns_ops_tbl.0, align 8
  %tobool.not = icmp eq %struct.kobj_ns_type_operations* %1, null
  br i1 %tobool.not, label %if.end6, label %out

if.end6:                                          ; preds = %if.end4
  store %struct.kobj_ns_type_operations* %ops, %struct.kobj_ns_type_operations** @kobj_ns_ops_tbl.0, align 8
  br label %out

out:                                              ; preds = %if.end4, %entry, %if.end6
  %error.0 = phi i32 [ -22, %entry ], [ -16, %if.end4 ], [ 0, %if.end6 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  ret i32 %error.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @kobj_ns_type_registered(i32 noundef %type) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  %0 = icmp eq i32 %type, 1
  %1 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** @kobj_ns_ops_tbl.0, align 8
  %cmp2 = icmp ne %struct.kobj_ns_type_operations* %1, null
  %narrow = select i1 %0, i1 %cmp2, i1 false
  %registered.0 = zext i1 %narrow to i32
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  ret i32 %registered.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local %struct.kobj_ns_type_operations* @kobj_child_ns_ops(%struct.kobject* noundef %parent) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kobject* %parent, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %parent, i64 0, i32 4
  %0 = load %struct.kobj_type*, %struct.kobj_type** %ktype, align 8
  %tobool1.not = icmp eq %struct.kobj_type* %0, null
  br i1 %tobool1.not, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %child_ns_type = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %0, i64 0, i32 4
  %1 = load %struct.kobj_ns_type_operations* (%struct.kobject*)*, %struct.kobj_ns_type_operations* (%struct.kobject*)** %child_ns_type, align 8
  %tobool4.not = icmp eq %struct.kobj_ns_type_operations* (%struct.kobject*)* %1, null
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %call = call %struct.kobj_ns_type_operations* %1(%struct.kobject* noundef nonnull %parent) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %ops.0 = phi %struct.kobj_ns_type_operations* [ %call, %if.then ], [ null, %land.lhs.true2 ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct.kobj_ns_type_operations* %ops.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @kobj_ns_current_may_mount(i32 noundef %type) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  %0 = icmp eq i32 %type, 1
  br i1 %0, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %entry
  %1 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** @kobj_ns_ops_tbl.0, align 8
  %tobool.not = icmp eq %struct.kobj_ns_type_operations* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %current_may_mount = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %1, i64 0, i32 1
  %2 = load i1 ()*, i1 ()** %current_may_mount, align 8
  %call = call i1 %2() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %entry
  %may_mount.0.off0 = phi i1 [ %call, %if.then ], [ true, %land.lhs.true2 ], [ true, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  ret i1 %may_mount.0.off0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kobj_ns_grab_current(i32 noundef %type) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  %0 = icmp eq i32 %type, 1
  br i1 %0, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %entry
  %1 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** @kobj_ns_ops_tbl.0, align 8
  %tobool.not = icmp eq %struct.kobj_ns_type_operations* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %grab_current_ns = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %1, i64 0, i32 2
  %2 = load i8* ()*, i8* ()** %grab_current_ns, align 8
  %call = call i8* %2() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %entry
  %ns.0 = phi i8* [ %call, %if.then ], [ null, %land.lhs.true2 ], [ null, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  ret i8* %ns.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kobj_ns_netlink(i32 noundef %type, %struct.sock* noundef %sk) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  %0 = icmp eq i32 %type, 1
  br i1 %0, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %entry
  %1 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** @kobj_ns_ops_tbl.0, align 8
  %tobool.not = icmp eq %struct.kobj_ns_type_operations* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %netlink_ns = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %1, i64 0, i32 3
  %2 = load i8* (%struct.sock*)*, i8* (%struct.sock*)** %netlink_ns, align 8
  %call = call i8* %2(%struct.sock* noundef %sk) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %entry
  %ns.0 = phi i8* [ %call, %if.then ], [ null, %land.lhs.true2 ], [ null, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  ret i8* %ns.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i8* @kobj_ns_initial(i32 noundef %type) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  %0 = icmp eq i32 %type, 1
  br i1 %0, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %entry
  %1 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** @kobj_ns_ops_tbl.0, align 8
  %tobool.not = icmp eq %struct.kobj_ns_type_operations* %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %initial_ns = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %1, i64 0, i32 4
  %2 = load i8* ()*, i8* ()** %initial_ns, align 8
  %call = call i8* %2() #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %entry
  %ns.0 = phi i8* [ %call, %if.then ], [ null, %land.lhs.true2 ], [ null, %entry ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  ret i8* %ns.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @kobj_ns_drop(i32 noundef %type, i8* noundef %ns) local_unnamed_addr #0 {
entry:
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  %0 = icmp eq i32 %type, 1
  br i1 %0, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %entry
  %1 = load %struct.kobj_ns_type_operations*, %struct.kobj_ns_type_operations** @kobj_ns_ops_tbl.0, align 8
  %tobool.not = icmp eq %struct.kobj_ns_type_operations* %1, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true2
  %drop_ns = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %1, i64 0, i32 5
  %2 = load void (i8*)*, void (i8*)** %drop_ns, align 8
  %tobool6.not = icmp eq void (i8*)* %2, null
  br i1 %tobool6.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true3
  call void %2(i8* noundef %ns) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true2, %entry
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @kobj_ns_type_lock, i64 0, i32 0, i32 0)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @kref_init(%struct.kref* noundef %kref) unnamed_addr #7 {
entry:
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %kref, i64 0, i32 0
  call fastcc void @refcount_set(%struct.refcount_struct* noundef %refcount) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @refcount_set(%struct.refcount_struct* noundef %r) unnamed_addr #7 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  store volatile i32 1, i32* %counter.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @__kmalloc(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.kobj_type* @get_ktype(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #8 {
entry:
  %ktype = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 4
  %0 = load %struct.kobj_type*, %struct.kobj_type** %ktype, align 8
  ret %struct.kobj_type* %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(%struct.kobject* noundef, %struct.attribute_group** noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_dir(%struct.kobject* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sysfs_put(%struct.kernfs_node* noundef %kn) unnamed_addr #0 {
entry:
  call void @kernfs_put(%struct.kernfs_node* noundef %kn) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kobj_kset_leave(%struct.kobject* noundef %kobj) unnamed_addr #0 {
entry:
  %kset = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 3
  %0 = load %struct.kset*, %struct.kset** %kset, align 8
  %tobool.not = icmp eq %struct.kset* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %rlock.i = getelementptr inbounds %struct.kset, %struct.kset* %0, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %entry2 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 1
  call fastcc void @list_del_init(%struct.list_head* noundef %entry2) #10
  %1 = load %struct.kset*, %struct.kset** %kset, align 8
  %rlock.i10 = getelementptr inbounds %struct.kset, %struct.kset* %1, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i10) #11
  %2 = load %struct.kset*, %struct.kset** %kset, align 8
  call fastcc void @kset_put(%struct.kset* noundef %2) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(%struct.kernfs_node* noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del_init(%struct.list_head* noundef %entry1) unnamed_addr #7 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #10
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %entry1) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kset_put(%struct.kset* noundef %k) unnamed_addr #0 {
entry:
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %k, i64 0, i32 2
  call void @kobject_put(%struct.kobject* noundef %kobj) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #10
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
define internal fastcc void @refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_inc(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  call fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__refcount_add(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_add_relaxed(%struct.atomic_t* noundef %refs) #11
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %if.end18.sink.split, label %if.else, !prof !11

if.else:                                          ; preds = %entry
  %add = add i32 %call.i.i, 1
  %0 = or i32 %add, %call.i.i
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end18, label %if.end18.sink.split, !prof !12

if.end18.sink.split:                              ; preds = %if.else, %entry
  %.sink = phi i32 [ 2, %entry ], [ 1, %if.else ]
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef %.sink) #11
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
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_add_relaxed\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09add\09${1:w}, ${0:w}, ${4:w}\0A\09stxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !13
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) #10
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_inc_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) #10
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_add_not_zero(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) #10
  %tobool.old.not = icmp eq i32 %call, 0
  br i1 %tobool.old.not, label %if.end4, label %do.cond.preheader

do.cond.preheader:                                ; preds = %entry
  %0 = bitcast %struct.refcount_struct* %r to i8*
  br label %do.cond

do.cond:                                          ; preds = %do.cond.preheader, %atomic_try_cmpxchg_relaxed.exit
  %old.0 = phi i32 [ %call11.i.i.i, %atomic_try_cmpxchg_relaxed.exit ], [ %call, %do.cond.preheader ]
  %add = add i32 %old.0, 1
  %call11.i.i.i = call fastcc i32 @__cmpxchg_case_32(i8* noundef %0, i32 noundef %old.0, i32 noundef %add) #11
  %cmp.not.i.i = icmp eq i32 %old.0, %call11.i.i.i
  br i1 %cmp.not.i.i, label %if.end4, label %atomic_try_cmpxchg_relaxed.exit, !prof !12

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond
  %tobool = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool, label %if.end4, label %do.cond

if.end4:                                          ; preds = %do.cond, %atomic_try_cmpxchg_relaxed.exit, %entry
  %old.2 = phi i32 [ 0, %entry ], [ %old.0, %do.cond ], [ 0, %atomic_try_cmpxchg_relaxed.exit ]
  %add5 = add i32 %old.2, 1
  %1 = or i32 %add5, %old.2
  %.not = icmp sgt i32 %1, -1
  br i1 %.not, label %if.end11, label %if.then10, !prof !12

if.then10:                                        ; preds = %if.end4
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 0) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end4
  %tobool12 = icmp ne i32 %old.2, 0
  ret i1 %tobool12
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @refcount_read(%struct.refcount_struct* noundef %r) unnamed_addr #9 {
entry:
  %counter.i = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0, i32 0
  %0 = load volatile i32, i32* %counter.i, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_32(i8* noundef %ptr, i32 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %conv, i32 noundef %new) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_32(i8* noundef %ptr, i64 noundef %old, i32 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q"(i32* elementtype(i32) %0, i64 %old, i32 %new, i32* elementtype(i32) %0) #12, !srcloc !14
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) #10
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_dec_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %call = call fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) #10
  ret i1 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i1 @__refcount_sub_and_test(%struct.refcount_struct* noundef %r) unnamed_addr #0 {
entry:
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %r, i64 0, i32 0
  %call.i.i = call fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %refs) #11
  %cmp = icmp eq i32 %call.i.i, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  call void asm sideeffect "dmb ishld", "~{memory}"() #12, !srcloc !15
  br label %cleanup

if.end2:                                          ; preds = %entry
  %.not = icmp sgt i32 %call.i.i, 0
  br i1 %.not, label %cleanup, label %if.then7, !prof !12

if.then7:                                         ; preds = %if.end2
  call void @refcount_warn_saturate(%struct.refcount_struct* noundef %r, i32 noundef 3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then7, %if.then1
  ret i1 %cmp
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_fetch_sub_release(%struct.atomic_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %v, i64 0, i32 0
  %0 = call { i32, i32, i64 } asm sideeffect "// atomic_fetch_sub_release\0A\09prfm\09pstl1strm, $3\0A1:\09ldxr\09${0:w}, $3\0A\09sub\09${1:w}, ${0:w}, ${4:w}\0A\09stlxr\09${2:w}, ${1:w}, $3\0A\09cbnz\09${2:w}, 1b\0A\09", "=&r,=&r,=&r,=*Q,Jr,*Q,~{memory}"(i32* elementtype(i32) %counter, i32 1, i32* elementtype(i32) %counter) #12, !srcloc !16
  %asmresult = extractvalue { i32, i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kobject_cleanup(%struct.kobject* noundef %kobj) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kobj_type* @get_ktype(%struct.kobject* noundef %kobj) #10
  %name2 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name2, align 8
  %tobool.not = icmp eq %struct.kobj_type* %call, null
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 7
  %bf.load = load i8, i8* %state_in_sysfs, align 4
  %1 = and i8 %bf.load, 2
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %entry
  %parent1 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 2
  %2 = load %struct.kobject*, %struct.kobject** %parent1, align 8
  call fastcc void @__kobject_del(%struct.kobject* noundef %kobj) #10
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.then6
  %parent.0 = phi %struct.kobject* [ %2, %if.then6 ], [ null, %entry ]
  br i1 %tobool.not, label %if.end16, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end8
  %release11 = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %call, i64 0, i32 0
  %3 = load void (%struct.kobject*)*, void (%struct.kobject*)** %release11, align 8
  %tobool12.not = icmp eq void (%struct.kobject*)* %3, null
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %land.lhs.true10
  call void %3(%struct.kobject* noundef %kobj) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true10, %if.end8
  %tobool17.not = icmp eq i8* %0, null
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @kfree_const(i8* noundef nonnull %0) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  call void @kobject_put(%struct.kobject* noundef %parent.0) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @dynamic_kobj_release(%struct.kobject* noundef %kobj) #0 {
entry:
  %0 = bitcast %struct.kobject* %kobj to i8*
  call void @kfree(i8* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kobj_kset_join(%struct.kobject* noundef %kobj) unnamed_addr #0 {
entry:
  %kset = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 3
  %0 = load %struct.kset*, %struct.kset** %kset, align 8
  %tobool.not = icmp eq %struct.kset* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  call fastcc void @kset_get(%struct.kset* noundef nonnull %0) #10
  %1 = load %struct.kset*, %struct.kset** %kset, align 8
  %rlock.i = getelementptr inbounds %struct.kset, %struct.kset* %1, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #11
  %entry3 = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 1
  %2 = load %struct.kset*, %struct.kset** %kset, align 8
  %list = getelementptr inbounds %struct.kset, %struct.kset* %2, i64 0, i32 0
  call fastcc void @list_add_tail(%struct.list_head* noundef %entry3, %struct.list_head* noundef %list) #10
  %3 = load %struct.kset*, %struct.kset** %kset, align 8
  %rlock.i12 = getelementptr inbounds %struct.kset, %struct.kset* %3, i64 0, i32 1, i32 0, i32 0
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i12) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @create_dir(%struct.kobject* noundef %kobj) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kobj_type* @get_ktype(%struct.kobject* noundef %kobj) #10
  %call1 = call i8* @kobject_namespace(%struct.kobject* noundef %kobj) #10
  %call2 = call i32 @sysfs_create_dir_ns(%struct.kobject* noundef %kobj, i8* noundef %call1) #11
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @populate_dir(%struct.kobject* noundef %kobj) #10
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @sysfs_remove_dir(%struct.kobject* noundef %kobj) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq %struct.kobj_type* %call, null
  br i1 %tobool7.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end6
  %default_groups = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %call, i64 0, i32 3
  %0 = load %struct.attribute_group**, %struct.attribute_group*** %default_groups, align 8
  %call9 = call i32 @sysfs_create_groups(%struct.kobject* noundef %kobj, %struct.attribute_group** noundef %0) #11
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then8
  call void @sysfs_remove_dir(%struct.kobject* noundef %kobj) #11
  br label %cleanup

if.end13:                                         ; preds = %if.then8, %if.end6
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  %1 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  call fastcc void @sysfs_get(%struct.kernfs_node* noundef %1) #10
  %call15 = call %struct.kobj_ns_type_operations* @kobj_child_ns_ops(%struct.kobject* noundef %kobj) #10
  %tobool16.not = icmp eq %struct.kobj_ns_type_operations* %call15, null
  br i1 %tobool16.not, label %cleanup, label %do.body

do.body:                                          ; preds = %if.end13
  %type = getelementptr inbounds %struct.kobj_ns_type_operations, %struct.kobj_ns_type_operations* %call15, i64 0, i32 0
  %2 = load i32, i32* %type, align 8
  switch i32 %2, label %do.body40 [
    i32 0, label %do.body21
    i32 1, label %do.body49
  ], !prof !17

do.body21:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/kobject.c\22; .popsection; .long 14472b - 14470b; .short 119; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !18
  unreachable

do.body40:                                        ; preds = %do.body
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/kobject.c\22; .popsection; .long 14472b - 14470b; .short 120; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !19
  unreachable

do.body49:                                        ; preds = %do.body
  %call51 = call i32 @kobj_ns_type_registered(i32 noundef 1) #10
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body63, label %do.end71, !prof !11

do.body63:                                        ; preds = %do.body49
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/kobject.c\22; .popsection; .long 14472b - 14470b; .short 121; .short 0; .popsection; 14471: brk 0x800", ""() #12, !srcloc !20
  unreachable

do.end71:                                         ; preds = %do.body49
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  call fastcc void @sysfs_enable_ns(%struct.kernfs_node* noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end71, %entry, %if.then11, %if.then5
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %call9, %if.then11 ], [ %call2, %entry ], [ 0, %do.end71 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kset_get(%struct.kset* noundef %k) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.kset* %k, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %kobj = getelementptr inbounds %struct.kset, %struct.kset* %k, i64 0, i32 2
  %call = call %struct.kobject* @kobject_get(%struct.kobject* noundef %kobj) #10
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #7 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #10
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_dir_ns(%struct.kobject* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @populate_dir(%struct.kobject* noundef %kobj) unnamed_addr #0 {
entry:
  %call = call fastcc %struct.kobj_type* @get_ktype(%struct.kobject* noundef %kobj) #10
  %tobool.not = icmp eq %struct.kobj_type* %call, null
  br i1 %tobool.not, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %default_attrs = getelementptr inbounds %struct.kobj_type, %struct.kobj_type* %call, i64 0, i32 2
  %0 = load %struct.attribute**, %struct.attribute*** %default_attrs, align 8
  %tobool1.not = icmp eq %struct.attribute** %0, null
  br i1 %tobool1.not, label %if.end6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %land.lhs.true
  %1 = load %struct.attribute*, %struct.attribute** %0, align 8
  %cmp.not16 = icmp eq %struct.attribute* %1, null
  br i1 %cmp.not16, label %if.end6, label %for.body

for.cond:                                         ; preds = %for.body
  %2 = load %struct.attribute**, %struct.attribute*** %default_attrs, align 8
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr %struct.attribute*, %struct.attribute** %2, i64 %idxprom
  %3 = load %struct.attribute*, %struct.attribute** %arrayidx, align 8
  %cmp.not = icmp eq %struct.attribute* %3, null
  br i1 %cmp.not, label %if.end6, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %4 = phi %struct.attribute* [ %3, %for.cond ], [ %1, %for.cond.preheader ]
  %i.017 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %call3 = call fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef nonnull %4) #10
  %tobool4.not = icmp eq i32 %call3, 0
  %inc = add i32 %i.017, 1
  br i1 %tobool4.not, label %for.cond, label %if.end6

if.end6:                                          ; preds = %for.body, %for.cond, %for.cond.preheader, %land.lhs.true, %entry
  %error.1 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ 0, %for.cond.preheader ], [ %call3, %for.body ], [ 0, %for.cond ]
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(%struct.kobject* noundef, %struct.attribute_group** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sysfs_get(%struct.kernfs_node* noundef %kn) unnamed_addr #0 {
entry:
  call void @kernfs_get(%struct.kernfs_node* noundef %kn) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sysfs_enable_ns(%struct.kernfs_node* noundef %kn) unnamed_addr #0 {
entry:
  call fastcc void @kernfs_enable_ns(%struct.kernfs_node* noundef %kn) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @sysfs_create_file(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr) unnamed_addr #0 {
entry:
  %call = call i32 @sysfs_create_file_ns(%struct.kobject* noundef %kobj, %struct.attribute* noundef %attr, i8* noundef null) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(%struct.kobject* noundef, %struct.attribute* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(%struct.kernfs_node* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @kernfs_enable_ns(%struct.kernfs_node* noundef %kn) unnamed_addr #0 {
entry:
  %call = call fastcc i32 @kernfs_type(%struct.kernfs_node* noundef %kn) #10
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/kernfs.h\22; .popsection; .long 14472b - 14470b; .short 335; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rb_node = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 7, i32 0, i32 1, i32 0
  %0 = load volatile %struct.rb_node*, %struct.rb_node** %rb_node, align 8
  %cmp16.not = icmp eq %struct.rb_node* %0, null
  br i1 %cmp16.not, label %if.end33, label %if.then32, !prof !12

if.then32:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/kernfs.h\22; .popsection; .long 14472b - 14470b; .short 336; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #12, !srcloc !22
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 10
  %1 = load i16, i16* %flags, align 8
  %2 = or i16 %1, 32
  store i16 %2, i16* %flags, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @kernfs_type(%struct.kernfs_node* nocapture noundef readonly %kn) unnamed_addr #8 {
entry:
  %flags = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %kn, i64 0, i32 10
  %0 = load i16, i16* %flags, align 8
  %1 = and i16 %0, 15
  %and = zext i16 %1 to i32
  ret i32 %and
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #10
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #11
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #12, !srcloc !24
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #10
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !25
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #12, !srcloc !26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kset_release(%struct.kobject* noundef %kobj) #0 {
entry:
  %add.ptr = getelementptr %struct.kobject, %struct.kobject* %kobj, i64 -1, i32 4
  %0 = bitcast %struct.kobj_type** %add.ptr to i8*
  call void @kfree(i8* noundef %0) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @kset_get_ownership(%struct.kobject* nocapture noundef readonly %kobj, %struct.kuid_t* noundef %uid, %struct.kgid_t* noundef %gid) #0 {
entry:
  %parent = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 2
  %0 = load %struct.kobject*, %struct.kobject** %parent, align 8
  %tobool.not = icmp eq %struct.kobject* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @kobject_get_ownership(%struct.kobject* noundef nonnull %0, %struct.kuid_t* noundef %uid, %struct.kgid_t* noundef %gid) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nounwind }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }

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
!8 = !{i64 2150822994}
!9 = !{i64 2150831372}
!10 = !{i64 2150812580}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2147795086, i64 2147795750, i64 2147795780, i64 2147795812, i64 2147795846, i64 2147795881, i64 2147795906}
!14 = !{i64 2147878446, i64 2147878479, i64 2147878531, i64 2147878590, i64 2147878624, i64 2147878679, i64 2147878708, i64 2147878728}
!15 = !{i64 2150266186}
!16 = !{i64 2147806868, i64 2147807542, i64 2147807572, i64 2147807604, i64 2147807638, i64 2147807674, i64 2147807699}
!17 = !{!"branch_weights", i32 2000, i32 2001, i32 4000000}
!18 = !{i64 2150806963}
!19 = !{i64 2150808326}
!20 = !{i64 2150809707}
!21 = !{i64 2150663340}
!22 = !{i64 2150669283}
!23 = !{i64 2149520268}
!24 = !{i64 2147884984, i64 2147885017, i64 2147885070, i64 2147885129, i64 2147885163, i64 2147885218, i64 2147885247, i64 2147885267}
!25 = !{i64 2149527549}
!26 = !{i64 2149474409}
