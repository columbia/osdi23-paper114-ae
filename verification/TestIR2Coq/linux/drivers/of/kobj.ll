; ModuleID = 'drivers/of/kobj.c'
source_filename = "drivers/of/kobj.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, %struct.kernfs_root*, i64 }
%struct.rb_root = type { %struct.rb_node* }
%struct.kernfs_root = type { %struct.kernfs_node*, i32, %struct.idr, i32, i32, %struct.kernfs_syscall_ops*, %struct.list_head, %struct.wait_queue_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kernfs_syscall_ops = type { i32 (%struct.seq_file*, %struct.kernfs_root*)*, i32 (%struct.kernfs_node*, i8*, i16)*, i32 (%struct.kernfs_node*)*, i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)*, i32 (%struct.seq_file*, %struct.kernfs_node*, %struct.kernfs_root*)* }
%struct.seq_file = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, %struct.address_space* ()*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.address_space = type opaque
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot_t, i64, %struct.anon.4, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { %struct.atomic64_t, %struct.refcount_struct, i8*, i64 }
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
%struct.anon.4 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device*, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type opaque
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }

@of_node_ktype = dso_local local_unnamed_addr global %struct.kobj_type { void (%struct.kobject*)* @of_node_release, %struct.sysfs_ops* null, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8
@.str = private unnamed_addr constant [10 x i8] c"security-\00", align 1
@of_kset = external dso_local local_unnamed_addr global %struct.kset*, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"error adding attribute %s to node %pOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s#%i\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\014Duplicate name in %s, renamed to \22%s\22\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i32 @of_node_is_attached(%struct.device_node* noundef readonly %node) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %node, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %state_in_sysfs = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 9, i32 7
  %bf.load = load i8, i8* %state_in_sysfs, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %bf.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @of_node_release(%struct.kobject* nocapture noundef %kobj) #1 {
entry:
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__of_add_property_sysfs(%struct.device_node* noundef %np, %struct.property* noundef %pp) local_unnamed_addr #2 {
entry:
  %name = getelementptr inbounds %struct.property, %struct.property* %pp, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  %call = call i32 @strncmp(i8* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 noundef 9) #5
  %cmp = icmp eq i32 %call, 0
  %1 = load %struct.kset*, %struct.kset** @of_kset, align 8
  %tobool.not = icmp eq %struct.kset* %1, null
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 @of_node_is_attached(%struct.device_node* noundef %np) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %do.end

do.end:                                           ; preds = %lor.lhs.false
  %kobj = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 9
  %2 = load i8*, i8** %name, align 8
  %call4 = call fastcc i8* @safe_name(%struct.kobject* noundef %kobj, i8* noundef %2) #6
  %attr = getelementptr inbounds %struct.property, %struct.property* %pp, i64 0, i32 4
  %name6 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr, i64 0, i32 0, i32 0
  store i8* %call4, i8** %name6, align 8
  %conv = select i1 %cmp, i16 256, i16 292
  %mode = getelementptr inbounds %struct.property, %struct.property* %pp, i64 0, i32 4, i32 0, i32 1
  store i16 %conv, i16* %mode, align 8
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %do.end
  %length = getelementptr inbounds %struct.property, %struct.property* %pp, i64 0, i32 1
  %3 = load i32, i32* %length, align 8
  %phi.cast = sext i32 %3 to i64
  br label %cond.end

cond.end:                                         ; preds = %do.end, %cond.false
  %cond12 = phi i64 [ %phi.cast, %cond.false ], [ 0, %do.end ]
  %size = getelementptr inbounds %struct.property, %struct.property* %pp, i64 0, i32 4, i32 1
  store i64 %cond12, i64* %size, align 8
  %read = getelementptr inbounds %struct.property, %struct.property* %pp, i64 0, i32 4, i32 4
  store i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @of_node_property_read, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %read, align 8
  %call18 = call i32 @sysfs_create_bin_file(%struct.kobject* noundef %kobj, %struct.bin_attribute* noundef %attr) #5
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %do.end32, !prof !7

do.end32:                                         ; preds = %cond.end
  %4 = load i8*, i8** %name, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* noundef %4, %struct.device_node* noundef %np) #5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/kobj.c\22; .popsection; .long 14472b - 14470b; .short 83; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end32, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %call18, %do.end32 ], [ 0, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @safe_name(%struct.kobject* nocapture noundef readonly %kobj, i8* noundef %orig_name) unnamed_addr #2 {
entry:
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 5
  br label %land.rhs

land.rhs:                                         ; preds = %entry, %if.end
  %name.024 = phi i8* [ %orig_name, %entry ], [ %call2, %if.end ]
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %0 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8
  %call = call fastcc %struct.kernfs_node* @sysfs_get_dirent(%struct.kernfs_node* noundef %0, i8* noundef %name.024) #6
  %tobool.not = icmp eq %struct.kernfs_node* %call, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  call fastcc void @sysfs_put(%struct.kernfs_node* noundef nonnull %call) #6
  %cmp1.not = icmp eq i8* %name.024, %orig_name
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @kfree(i8* noundef %name.024) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %inc = add nuw nsw i32 %i.023, 1
  %call2 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 noundef 3264, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef %orig_name, i32 noundef %inc) #5
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %while.end, label %land.rhs

while.end:                                        ; preds = %if.end, %land.rhs
  %name.0.lcssa = phi i8* [ %call2, %if.end ], [ %name.024, %land.rhs ]
  %cmp3 = icmp eq i8* %name.0.lcssa, %orig_name
  br i1 %cmp3, label %if.then4, label %do.end

if.then4:                                         ; preds = %while.end
  %call5 = call noalias i8* @kstrdup(i8* noundef %orig_name, i32 noundef 3264) #5
  br label %if.end8

do.end:                                           ; preds = %while.end
  %call6 = call fastcc i8* @kobject_name(%struct.kobject* noundef %kobj) #6
  %call7 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* noundef %call6, i8* noundef %name.0.lcssa) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then4
  %name.1 = phi i8* [ %call5, %if.then4 ], [ %name.0.lcssa, %do.end ]
  ret i8* %name.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal i64 @of_node_property_read(%struct.file* nocapture noundef readnone %filp, %struct.kobject* nocapture noundef readnone %kobj, %struct.bin_attribute* nocapture noundef readonly %bin_attr, i8* noundef %buf, i64 noundef %offset, i64 noundef %count) #2 {
entry:
  %offset.addr = alloca i64, align 8
  store i64 %offset, i64* %offset.addr, align 8
  %add.ptr = getelementptr %struct.bin_attribute, %struct.bin_attribute* %bin_attr, i64 -1, i32 3
  %value = getelementptr inbounds %struct.address_space* ()*, %struct.address_space* ()** %add.ptr, i64 2
  %0 = bitcast %struct.address_space* ()** %value to i8**
  %1 = load i8*, i8** %0, align 8
  %length = getelementptr inbounds %struct.address_space* ()*, %struct.address_space* ()** %add.ptr, i64 1
  %2 = bitcast %struct.address_space* ()** %length to i32*
  %3 = load i32, i32* %2, align 8
  %conv = sext i32 %3 to i64
  %call = call i64 @memory_read_from_buffer(i8* noundef %buf, i64 noundef %count, i64* noundef nonnull %offset.addr, i8* noundef %1, i64 noundef %conv) #5
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(%struct.kobject* noundef, %struct.bin_attribute* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__of_sysfs_remove_bin_file(%struct.device_node* noundef %np, %struct.property* noundef %prop) local_unnamed_addr #2 {
entry:
  %kobj = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 9
  %attr = getelementptr inbounds %struct.property, %struct.property* %prop, i64 0, i32 4
  call void @sysfs_remove_bin_file(%struct.kobject* noundef %kobj, %struct.bin_attribute* noundef %attr) #5
  %name = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr, i64 0, i32 0, i32 0
  %0 = load i8*, i8** %name, align 8
  call void @kfree(i8* noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(%struct.kobject* noundef, %struct.bin_attribute* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__of_remove_property_sysfs(%struct.device_node* noundef %np, %struct.property* noundef %prop) local_unnamed_addr #2 {
entry:
  %0 = load %struct.kset*, %struct.kset** @of_kset, align 8
  %tobool.not = icmp eq %struct.kset* %0, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @of_node_is_attached(%struct.device_node* noundef %np) #6
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__of_sysfs_remove_bin_file(%struct.device_node* noundef %np, %struct.property* noundef %prop) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__of_update_property_sysfs(%struct.device_node* noundef %np, %struct.property* noundef %newprop, %struct.property* noundef %oldprop) local_unnamed_addr #2 {
entry:
  %0 = load %struct.kset*, %struct.kset** @of_kset, align 8
  %tobool.not = icmp eq %struct.kset* %0, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq %struct.property* %oldprop, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__of_sysfs_remove_bin_file(%struct.device_node* noundef %np, %struct.property* noundef nonnull %oldprop) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call = call i32 @__of_add_property_sysfs(%struct.device_node* noundef %np, %struct.property* noundef %newprop) #6
  br label %return

return:                                           ; preds = %entry, %if.end3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @__of_attach_node_sysfs(%struct.device_node* noundef %np) local_unnamed_addr #2 {
entry:
  %0 = load %struct.kset*, %struct.kset** @of_kset, align 8
  %tobool.not = icmp eq %struct.kset* %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %kobj = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 9
  %kset = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 9, i32 3
  store %struct.kset* %0, %struct.kset** %kset, align 8
  %parent1 = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 6
  %1 = load %struct.device_node*, %struct.device_node** %parent1, align 8
  %tobool2.not = icmp eq %struct.device_node* %1, null
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %kobj4 = getelementptr inbounds %struct.kset, %struct.kset* %0, i64 0, i32 2
  %call = call fastcc i8* @safe_name(%struct.kobject* noundef %kobj4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end11

if.else:                                          ; preds = %if.end
  %kobj6 = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i64 0, i32 9
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 2
  %2 = load i8*, i8** %full_name, align 8
  %call7 = call fastcc i8* @kbasename(i8* noundef %2) #6
  %call8 = call fastcc i8* @safe_name(%struct.kobject* noundef %kobj6, i8* noundef %call7) #6
  %3 = load %struct.device_node*, %struct.device_node** %parent1, align 8
  %kobj10 = getelementptr inbounds %struct.device_node, %struct.device_node* %3, i64 0, i32 9
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then3
  %name.0 = phi i8* [ %call8, %if.else ], [ %call, %if.then3 ]
  %parent.0 = phi %struct.kobject* [ %kobj10, %if.else ], [ null, %if.then3 ]
  %tobool12.not = icmp eq i8* %name.0, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end11
  %call16 = call i32 (%struct.kobject*, %struct.kobject*, i8*, ...) @kobject_add(%struct.kobject* noundef %kobj, %struct.kobject* noundef %parent.0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %name.0) #5
  call void @kfree(i8* noundef nonnull %name.0) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.end14
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 4
  %pp.043 = load %struct.property*, %struct.property** %properties, align 8
  %cmp.not44 = icmp eq %struct.property* %pp.043, null
  br i1 %cmp.not44, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end19, %for.body
  %pp.045 = phi %struct.property* [ %pp.0, %for.body ], [ %pp.043, %if.end19 ]
  %call20 = call i32 @__of_add_property_sysfs(%struct.device_node* noundef %np, %struct.property* noundef nonnull %pp.045) #6
  %next = getelementptr inbounds %struct.property, %struct.property* %pp.045, i64 0, i32 3
  %pp.0 = load %struct.property*, %struct.property** %next, align 8
  %cmp.not = icmp eq %struct.property* %pp.0, null
  br i1 %cmp.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.end19, %if.end14, %if.end11, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -12, %if.end11 ], [ %call16, %if.end14 ], [ 0, %if.end19 ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i8* @kbasename(i8* noundef %path) unnamed_addr #2 {
entry:
  %call = call i8* @strrchr(i8* noundef %path, i32 noundef 47) #5
  %tobool.not = icmp eq i8* %call, null
  %add.ptr = getelementptr i8, i8* %call, i64 1
  %cond = select i1 %tobool.not, i8* %path, i8* %add.ptr
  ret i8* %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(%struct.kobject* noundef, %struct.kobject* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__of_detach_node_sysfs(%struct.device_node* noundef %np) local_unnamed_addr #2 {
entry:
  %call = call fastcc i32 @of_node_is_initialized(%struct.device_node* noundef %np) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22drivers/of/kobj.c\22; .popsection; .long 14472b - 14470b; .short 153; .short 0; .popsection; 14471: brk 0x800", ""() #7, !srcloc !10
  unreachable

do.end9:                                          ; preds = %entry
  %0 = load %struct.kset*, %struct.kset** @of_kset, align 8
  %tobool10.not = icmp eq %struct.kset* %0, null
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %do.end9
  %call13 = call i32 @of_node_is_attached(%struct.device_node* noundef %np) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.then15

if.then15:                                        ; preds = %if.end12
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 4
  %pp.026 = load %struct.property*, %struct.property** %properties, align 8
  %cmp.not27 = icmp eq %struct.property* %pp.026, null
  br i1 %cmp.not27, label %for.end, label %for.body

for.body:                                         ; preds = %if.then15, %for.body
  %pp.028 = phi %struct.property* [ %pp.0, %for.body ], [ %pp.026, %if.then15 ]
  call void @__of_sysfs_remove_bin_file(%struct.device_node* noundef %np, %struct.property* noundef nonnull %pp.028) #6
  %next = getelementptr inbounds %struct.property, %struct.property* %pp.028, i64 0, i32 3
  %pp.0 = load %struct.property*, %struct.property** %next, align 8
  %cmp.not = icmp eq %struct.property* %pp.0, null
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.then15
  %kobj = getelementptr inbounds %struct.device_node, %struct.device_node* %np, i64 0, i32 9
  call void @kobject_del(%struct.kobject* noundef %kobj) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %for.end, %do.end9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @of_node_is_initialized(%struct.device_node* noundef readonly %node) unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.device_node* %node, null
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %state_initialized = getelementptr inbounds %struct.device_node, %struct.device_node* %node, i64 0, i32 9, i32 7
  %bf.load = load i8, i8* %state_initialized, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %bf.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(%struct.kobject* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_node* @sysfs_get_dirent(%struct.kernfs_node* noundef %parent, i8* noundef %name) unnamed_addr #2 {
entry:
  %call = call fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %parent, i8* noundef %name) #6
  ret %struct.kernfs_node* %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @sysfs_put(%struct.kernfs_node* noundef %kn) unnamed_addr #2 {
entry:
  call void @kernfs_put(%struct.kernfs_node* noundef %kn) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kasprintf(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kstrdup(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i8* @kobject_name(%struct.kobject* nocapture noundef readonly %kobj) unnamed_addr #0 {
entry:
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i64 0, i32 0
  %0 = load i8*, i8** %name, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc %struct.kernfs_node* @kernfs_find_and_get(%struct.kernfs_node* noundef %kn, i8* noundef %name) unnamed_addr #2 {
entry:
  %call = call %struct.kernfs_node* @kernfs_find_and_get_ns(%struct.kernfs_node* noundef %kn, i8* noundef %name, i8* noundef null) #5
  ret %struct.kernfs_node* %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local %struct.kernfs_node* @kernfs_find_and_get_ns(%struct.kernfs_node* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(%struct.kernfs_node* noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memory_read_from_buffer(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #4 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { cold nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{!"branch_weights", i32 2000, i32 1}
!8 = !{i64 2150905037}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2150907608}
