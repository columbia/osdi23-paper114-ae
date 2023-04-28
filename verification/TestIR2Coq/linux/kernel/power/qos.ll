; ModuleID = 'kernel/power/qos.c'
source_filename = "kernel/power/qos.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.pm_qos_flags_request = type { %struct.list_head, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }

@pm_qos_lock = internal global %struct.spinlock zeroinitializer, align 4
@freq_constraints_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [23 x i8] c"&(c->notifiers)->rwsem\00", align 1
@freq_constraints_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s() called for active request\0A\00", align 1
@__func__.freq_qos_add_request = private unnamed_addr constant [21 x i8] c"freq_qos_add_request\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s() called for unknown object\0A\00", align 1
@__func__.freq_qos_update_request = private unnamed_addr constant [24 x i8] c"freq_qos_update_request\00", align 1
@__func__.freq_qos_remove_request = private unnamed_addr constant [24 x i8] c"freq_qos_remove_request\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unknown PM QoS type in %s\0A\00", align 1
@__func__.pm_qos_get_value = private unnamed_addr constant [17 x i8] c"pm_qos_get_value\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i32 @pm_qos_read_value(%struct.pm_qos_constraints* noundef %c) local_unnamed_addr #0 {
entry:
  %target_value = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %c, i64 0, i32 1
  %0 = load volatile i32, i32* %target_value, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @pm_qos_update_target(%struct.pm_qos_constraints* noundef %c, %struct.plist_node* noundef %node, i32 noundef %action, i32 noundef %value) local_unnamed_addr #1 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #6
  %call5 = call fastcc i32 @pm_qos_get_value(%struct.pm_qos_constraints* noundef %c) #6
  %cmp6 = icmp eq i32 %value, -1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %default_value = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %c, i64 0, i32 2
  %0 = load i32, i32* %default_value, align 4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %new_value.0 = phi i32 [ %0, %if.then ], [ %value, %entry ]
  switch i32 %action, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb8
    i32 0, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  %list = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %c, i64 0, i32 0
  call void @plist_del(%struct.plist_node* noundef %node, %struct.plist_head* noundef %list) #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %list9 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %c, i64 0, i32 0
  call void @plist_del(%struct.plist_node* noundef %node, %struct.plist_head* noundef %list9) #7
  br label %sw.bb10

sw.bb10:                                          ; preds = %if.end, %sw.bb8
  call fastcc void @plist_node_init(%struct.plist_node* noundef %node, i32 noundef %new_value.0) #6
  %list11 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %c, i64 0, i32 0
  call void @plist_add(%struct.plist_node* noundef %node, %struct.plist_head* noundef %list11) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb10, %sw.bb
  %call12 = call fastcc i32 @pm_qos_get_value(%struct.pm_qos_constraints* noundef %c) #6
  call fastcc void @pm_qos_set_value(%struct.pm_qos_constraints* noundef %c, i32 noundef %call12) #6
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #7
  %cmp13 = icmp eq i32 %call5, %call12
  br i1 %cmp13, label %cleanup, label %if.end16

if.end16:                                         ; preds = %sw.epilog
  %notifiers = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %c, i64 0, i32 5
  %1 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %notifiers, align 8
  %tobool.not = icmp eq %struct.blocking_notifier_head* %1, null
  br i1 %tobool.not, label %cleanup, label %if.then17

if.then17:                                        ; preds = %if.end16
  %conv19 = sext i32 %call12 to i64
  %call20 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef nonnull %1, i64 noundef %conv19, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then17, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %if.then17 ], [ 1, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #6
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !7
  call fastcc void @do_raw_spin_lock_flags() #6
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @pm_qos_get_value(%struct.pm_qos_constraints* noundef %c) unnamed_addr #1 {
entry:
  %list = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %c, i64 0, i32 0
  %call = call fastcc i32 @plist_head_empty(%struct.plist_head* noundef %list) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %no_constraint_value = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %c, i64 0, i32 3
  %0 = load i32, i32* %no_constraint_value, align 8
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %c, i64 0, i32 4
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %do.end [
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  %call2 = call fastcc %struct.plist_node* @plist_first(%struct.plist_head* noundef %list) #6
  %prio = getelementptr inbounds %struct.plist_node, %struct.plist_node* %call2, i64 0, i32 0
  %2 = load i32, i32* %prio, align 8
  br label %return

sw.bb3:                                           ; preds = %if.end
  %call5 = call fastcc %struct.plist_node* @plist_last(%struct.plist_head* noundef %list) #6
  %prio6 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %call5, i64 0, i32 0
  %3 = load i32, i32* %prio6, align 8
  br label %return

do.end:                                           ; preds = %if.end
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.pm_qos_get_value, i64 0, i64 0)) #7
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/power/qos.c\22; .popsection; .long 14472b - 14470b; .short 71; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !8
  br label %return

return:                                           ; preds = %do.end, %sw.bb3, %sw.bb, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -1, %do.end ], [ %3, %sw.bb3 ], [ %2, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(%struct.plist_node* noundef, %struct.plist_head* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @plist_node_init(%struct.plist_node* noundef %node, i32 noundef %prio) unnamed_addr #3 {
entry:
  %prio1 = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 0
  store i32 %prio, i32* %prio1, align 8
  %prio_list = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 1
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %prio_list) #6
  %node_list = getelementptr inbounds %struct.plist_node, %struct.plist_node* %node, i64 0, i32 2
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %node_list) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(%struct.plist_node* noundef, %struct.plist_head* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @pm_qos_set_value(%struct.pm_qos_constraints* noundef %c, i32 noundef %value) unnamed_addr #3 {
entry:
  %target_value = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %c, i64 0, i32 1
  store volatile i32 %value, i32* %target_value, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @pm_qos_update_flags(%struct.pm_qos_flags* noundef %pqf, %struct.pm_qos_flags_request* noundef %req, i32 noundef %action, i32 noundef %val) local_unnamed_addr #1 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #6
  %list = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %pqf, i64 0, i32 0
  %call5 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #6
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %effective_flags = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %pqf, i64 0, i32 1
  %0 = load i32, i32* %effective_flags, align 8
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %0, %cond.false ], [ 0, %entry ]
  switch i32 %action, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
    i32 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %cond.end
  call fastcc void @pm_qos_flags_remove_req(%struct.pm_qos_flags* noundef %pqf, %struct.pm_qos_flags_request* noundef %req) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %cond.end
  call fastcc void @pm_qos_flags_remove_req(%struct.pm_qos_flags* noundef %pqf, %struct.pm_qos_flags_request* noundef %req) #6
  br label %sw.bb7

sw.bb7:                                           ; preds = %cond.end, %sw.bb6
  %flags = getelementptr inbounds %struct.pm_qos_flags_request, %struct.pm_qos_flags_request* %req, i64 0, i32 1
  store i32 %val, i32* %flags, align 8
  %node = getelementptr inbounds %struct.pm_qos_flags_request, %struct.pm_qos_flags_request* %req, i64 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %node) #6
  call fastcc void @list_add_tail(%struct.list_head* noundef %node, %struct.list_head* noundef %list) #6
  %effective_flags10 = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %pqf, i64 0, i32 1
  %1 = load i32, i32* %effective_flags10, align 8
  %or = or i32 %1, %val
  store i32 %or, i32* %effective_flags10, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %sw.bb7, %sw.bb
  %call12 = call fastcc i32 @list_empty(%struct.list_head* noundef %list) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %cond.false15, label %cond.end17

cond.false15:                                     ; preds = %sw.epilog
  %effective_flags16 = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %pqf, i64 0, i32 1
  %2 = load i32, i32* %effective_flags16, align 8
  br label %cond.end17

cond.end17:                                       ; preds = %sw.epilog, %cond.false15
  %cond18 = phi i32 [ %2, %cond.false15 ], [ 0, %sw.epilog ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #7
  %cmp19 = icmp ne i32 %cond, %cond18
  ret i1 %cmp19
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @list_empty(%struct.list_head* noundef %head) unnamed_addr #0 {
entry:
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 0
  %0 = load volatile %struct.list_head*, %struct.list_head** %next, align 8
  %cmp = icmp eq %struct.list_head* %0, %head
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @pm_qos_flags_remove_req(%struct.pm_qos_flags* noundef %pqf, %struct.pm_qos_flags_request* nocapture noundef %req) unnamed_addr #3 {
entry:
  %node = getelementptr inbounds %struct.pm_qos_flags_request, %struct.pm_qos_flags_request* %req, i64 0, i32 0
  call fastcc void @list_del(%struct.list_head* noundef %node) #6
  %list = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %pqf, i64 0, i32 0
  %0 = bitcast %struct.pm_qos_flags* %pqf to %struct.pm_qos_flags_request**
  %req.addr.020 = load %struct.pm_qos_flags_request*, %struct.pm_qos_flags_request** %0, align 8
  %node121 = getelementptr inbounds %struct.pm_qos_flags_request, %struct.pm_qos_flags_request* %req.addr.020, i64 0, i32 0
  %cmp.not22 = icmp eq %struct.list_head* %node121, %list
  br i1 %cmp.not22, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %req.addr.024 = phi %struct.pm_qos_flags_request* [ %req.addr.0, %for.body ], [ %req.addr.020, %entry ]
  %val.023 = phi i32 [ %or, %for.body ], [ 0, %entry ]
  %flags = getelementptr inbounds %struct.pm_qos_flags_request, %struct.pm_qos_flags_request* %req.addr.024, i64 0, i32 1
  %1 = load i32, i32* %flags, align 8
  %or = or i32 %1, %val.023
  %2 = bitcast %struct.pm_qos_flags_request* %req.addr.024 to %struct.pm_qos_flags_request**
  %req.addr.0 = load %struct.pm_qos_flags_request*, %struct.pm_qos_flags_request** %2, align 8
  %node1 = getelementptr inbounds %struct.pm_qos_flags_request, %struct.pm_qos_flags_request* %req.addr.0, i64 0, i32 0
  %cmp.not = icmp eq %struct.list_head* %node1, %list
  br i1 %cmp.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %val.0.lcssa = phi i32 [ 0, %entry ], [ %or, %for.body ]
  %effective_flags = getelementptr inbounds %struct.pm_qos_flags, %struct.pm_qos_flags* %pqf, i64 0, i32 1
  store i32 %val.0.lcssa, i32* %effective_flags, align 8
  ret void
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

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_add_tail(%struct.list_head* noundef %new, %struct.list_head* noundef %head) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %head, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  call fastcc void @__list_add(%struct.list_head* noundef %new, %struct.list_head* noundef %0, %struct.list_head* noundef %head) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @freq_constraints_init(%struct.freq_constraints* noundef %qos) local_unnamed_addr #1 {
entry:
  %list = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 0, i32 0
  call fastcc void @plist_head_init(%struct.plist_head* noundef %list) #6
  %target_value = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 0, i32 1
  store i32 0, i32* %target_value, align 8
  %default_value = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 0, i32 2
  store i32 0, i32* %default_value, align 4
  %no_constraint_value = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 0, i32 3
  store i32 0, i32* %no_constraint_value, align 8
  %type = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 0, i32 4
  store i32 1, i32* %type, align 4
  %min_freq_notifiers = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 1
  %notifiers = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 0, i32 5
  store %struct.blocking_notifier_head* %min_freq_notifiers, %struct.blocking_notifier_head** %notifiers, align 8
  %rwsem = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %min_freq_notifiers, i64 0, i32 0
  call void @__init_rwsem(%struct.rw_semaphore* noundef %rwsem, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @freq_constraints_init.__key) #7
  %0 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %notifiers, align 8
  %head = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %0, i64 0, i32 1
  store %struct.notifier_block* null, %struct.notifier_block** %head, align 8
  %list6 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 2, i32 0
  call fastcc void @plist_head_init(%struct.plist_head* noundef %list6) #6
  %target_value7 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 2, i32 1
  store i32 2147483647, i32* %target_value7, align 8
  %default_value8 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 2, i32 2
  store i32 2147483647, i32* %default_value8, align 4
  %no_constraint_value9 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 2, i32 3
  store i32 2147483647, i32* %no_constraint_value9, align 8
  %type10 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 2, i32 4
  store i32 2, i32* %type10, align 4
  %max_freq_notifiers = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 3
  %notifiers11 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 2, i32 5
  store %struct.blocking_notifier_head* %max_freq_notifiers, %struct.blocking_notifier_head** %notifiers11, align 8
  %rwsem15 = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %max_freq_notifiers, i64 0, i32 0
  call void @__init_rwsem(%struct.rw_semaphore* noundef %rwsem15, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @freq_constraints_init.__key.1) #7
  %1 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %notifiers11, align 8
  %head19 = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %1, i64 0, i32 1
  store %struct.notifier_block* null, %struct.notifier_block** %head19, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @plist_head_init(%struct.plist_head* noundef %head) unnamed_addr #3 {
entry:
  %node_list = getelementptr inbounds %struct.plist_head, %struct.plist_head* %head, i64 0, i32 0
  call fastcc void @INIT_LIST_HEAD(%struct.list_head* noundef %node_list) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(%struct.rw_semaphore* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @freq_qos_read_value(%struct.freq_constraints* noundef %qos, i32 noundef %type) local_unnamed_addr #1 {
entry:
  switch i32 %type, label %if.then [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %0 = bitcast %struct.freq_constraints* %qos to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #6
  br i1 %call, label %sw.epilog, label %cond.false

cond.false:                                       ; preds = %sw.bb
  %min_freq = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 0
  %call1 = call i32 @pm_qos_read_value(%struct.pm_qos_constraints* noundef %min_freq) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %1 = bitcast %struct.freq_constraints* %qos to i8*
  %call3 = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %1) #6
  br i1 %call3, label %sw.epilog, label %cond.false5

cond.false5:                                      ; preds = %sw.bb2
  %max_freq = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 2
  %call6 = call i32 @pm_qos_read_value(%struct.pm_qos_constraints* noundef %max_freq) #6
  br label %sw.epilog

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/power/qos.c\22; .popsection; .long 14472b - 14470b; .short 478; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !9
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false5, %sw.bb2, %cond.false, %sw.bb, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %call1, %cond.false ], [ 0, %sw.bb ], [ %call6, %cond.false5 ], [ 2147483647, %sw.bb2 ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal fastcc i1 @IS_ERR_OR_NULL(i8* noundef readnone %ptr) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i8* %ptr, null
  %cmp = icmp ugt i8* %ptr, inttoptr (i64 -4096 to i8*)
  %spec.select = or i1 %tobool.not, %cmp
  ret i1 %spec.select
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @freq_qos_apply(%struct.freq_qos_request* noundef %req, i32 noundef %action, i32 noundef %value) local_unnamed_addr #1 {
entry:
  %type = getelementptr inbounds %struct.freq_qos_request, %struct.freq_qos_request* %req, i64 0, i32 0
  %0 = load i32, i32* %type, align 8
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %qos = getelementptr inbounds %struct.freq_qos_request, %struct.freq_qos_request* %req, i64 0, i32 2
  %1 = load %struct.freq_constraints*, %struct.freq_constraints** %qos, align 8
  %min_freq = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %1, i64 0, i32 0
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %qos2 = getelementptr inbounds %struct.freq_qos_request, %struct.freq_qos_request* %req, i64 0, i32 2
  %2 = load %struct.freq_constraints*, %struct.freq_constraints** %qos2, align 8
  %max_freq = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %2, i64 0, i32 2
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %sw.bb1
  %max_freq.sink = phi %struct.pm_qos_constraints* [ %max_freq, %sw.bb1 ], [ %min_freq, %sw.bb ]
  %pnode3 = getelementptr inbounds %struct.freq_qos_request, %struct.freq_qos_request* %req, i64 0, i32 1
  %call4 = call i32 @pm_qos_update_target(%struct.pm_qos_constraints* noundef %max_freq.sink, %struct.plist_node* noundef %pnode3, i32 noundef %action, i32 noundef %value) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  %ret.0 = phi i32 [ -22, %entry ], [ %call4, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @freq_qos_add_request(%struct.freq_constraints* noundef %qos, %struct.freq_qos_request* noundef %req, i32 noundef %type, i32 noundef %value) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.freq_constraints* %qos to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #6
  %tobool = icmp eq %struct.freq_qos_request* %req, null
  %1 = or i1 %tobool, %call
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @freq_qos_request_active(%struct.freq_qos_request* noundef nonnull %req) #6
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end27, label %do.end, !prof !10

do.end:                                           ; preds = %if.end
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.freq_qos_add_request, i64 0, i64 0)) #7
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/power/qos.c\22; .popsection; .long 14472b - 14470b; .short 538; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !11
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %qos28 = getelementptr inbounds %struct.freq_qos_request, %struct.freq_qos_request* %req, i64 0, i32 2
  store %struct.freq_constraints* %qos, %struct.freq_constraints** %qos28, align 8
  %type29 = getelementptr inbounds %struct.freq_qos_request, %struct.freq_qos_request* %req, i64 0, i32 0
  store i32 %type, i32* %type29, align 8
  %call30 = call i32 @freq_qos_apply(%struct.freq_qos_request* noundef nonnull %req, i32 noundef 0, i32 noundef %value) #6
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %if.then32, label %cleanup

if.then32:                                        ; preds = %if.end27
  store %struct.freq_constraints* null, %struct.freq_constraints** %qos28, align 8
  store i32 0, i32* %type29, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end27, %if.then32, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -22, %do.end ], [ %call30, %if.then32 ], [ %call30, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i32 @freq_qos_request_active(%struct.freq_qos_request* nocapture noundef readonly %req) unnamed_addr #5 {
entry:
  %qos = getelementptr inbounds %struct.freq_qos_request, %struct.freq_qos_request* %req, i64 0, i32 2
  %0 = bitcast %struct.freq_constraints** %qos to i8**
  %1 = load i8*, i8** %0, align 8
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %1) #6
  %lnot = xor i1 %call, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @freq_qos_update_request(%struct.freq_qos_request* noundef %req, i32 noundef %new_value) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.freq_qos_request* %req, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @freq_qos_request_active(%struct.freq_qos_request* noundef nonnull %req) #6
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %if.end27, !prof !12

do.end:                                           ; preds = %if.end
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.freq_qos_update_request, i64 0, i64 0)) #7
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/power/qos.c\22; .popsection; .long 14472b - 14470b; .short 570; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !13
  br label %return

if.end27:                                         ; preds = %if.end
  %prio = getelementptr inbounds %struct.freq_qos_request, %struct.freq_qos_request* %req, i64 0, i32 1, i32 0
  %0 = load i32, i32* %prio, align 8
  %cmp = icmp eq i32 %0, %new_value
  br i1 %cmp, label %return, label %if.end30

if.end30:                                         ; preds = %if.end27
  %call31 = call i32 @freq_qos_apply(%struct.freq_qos_request* noundef nonnull %req, i32 noundef 1, i32 noundef %new_value) #6
  br label %return

return:                                           ; preds = %do.end, %if.end27, %entry, %if.end30
  %retval.0 = phi i32 [ %call31, %if.end30 ], [ -22, %entry ], [ -22, %do.end ], [ 0, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @freq_qos_remove_request(%struct.freq_qos_request* noundef %req) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.freq_qos_request* %req, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @freq_qos_request_active(%struct.freq_qos_request* noundef nonnull %req) #6
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %if.end27, !prof !12

do.end:                                           ; preds = %if.end
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.freq_qos_remove_request, i64 0, i64 0)) #7
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/power/qos.c\22; .popsection; .long 14472b - 14470b; .short 598; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !14
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %call28 = call i32 @freq_qos_apply(%struct.freq_qos_request* noundef nonnull %req, i32 noundef 2, i32 noundef -1) #6
  %qos = getelementptr inbounds %struct.freq_qos_request, %struct.freq_qos_request* %req, i64 0, i32 2
  store %struct.freq_constraints* null, %struct.freq_constraints** %qos, align 8
  %type = getelementptr inbounds %struct.freq_qos_request, %struct.freq_qos_request* %req, i64 0, i32 0
  store i32 0, i32* %type, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry, %if.end27
  %retval.0 = phi i32 [ %call28, %if.end27 ], [ -22, %entry ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @freq_qos_add_notifier(%struct.freq_constraints* noundef %qos, i32 noundef %type, %struct.notifier_block* noundef %notifier) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.freq_constraints* %qos to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #6
  %tobool = icmp eq %struct.notifier_block* %notifier, null
  %1 = or i1 %tobool, %call
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %type, label %if.then8 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  %notifiers = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 0, i32 5
  %2 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %notifiers, align 8
  %call1 = call i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* noundef %2, %struct.notifier_block* noundef nonnull %notifier) #7
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %notifiers3 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 2, i32 5
  %3 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %notifiers3, align 8
  %call4 = call i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* noundef %3, %struct.notifier_block* noundef nonnull %notifier) #7
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/power/qos.c\22; .popsection; .long 14472b - 14470b; .short 634; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb2, %if.then8, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -22, %if.then8 ], [ %call4, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @freq_qos_remove_notifier(%struct.freq_constraints* noundef %qos, i32 noundef %type, %struct.notifier_block* noundef %notifier) local_unnamed_addr #1 {
entry:
  %0 = bitcast %struct.freq_constraints* %qos to i8*
  %call = call fastcc i1 @IS_ERR_OR_NULL(i8* noundef %0) #6
  %tobool = icmp eq %struct.notifier_block* %notifier, null
  %1 = or i1 %tobool, %call
  br i1 %1, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %type, label %if.then8 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  %notifiers = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 0, i32 5
  %2 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %notifiers, align 8
  %call1 = call i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* noundef %2, %struct.notifier_block* noundef nonnull %notifier) #7
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %notifiers3 = getelementptr inbounds %struct.freq_constraints, %struct.freq_constraints* %qos, i64 0, i32 2, i32 5
  %3 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %notifiers3, align 8
  %call4 = call i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* noundef %3, %struct.notifier_block* noundef nonnull %notifier) #7
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/power/qos.c\22; .popsection; .long 14472b - 14470b; .short 667; .short (1 << 0)|(((9) << 8)); .popsection; 14471: brk 0x800", ""() #8, !srcloc !16
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb2, %if.then8, %entry
  %retval.0 = phi i32 [ -22, %entry ], [ -22, %if.then8 ], [ %call4, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* noundef, %struct.notifier_block* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #1 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #6
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #1 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #7
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !10

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pm_qos_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #7
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #1 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #8, !srcloc !17
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #1 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #8, !srcloc !18
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #1 {
entry:
  %call39 = call fastcc i32 @static_key_count() #6
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !12

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #8, !srcloc !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i32 noundef %old) unnamed_addr #1 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #1 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pm_qos_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @pm_qos_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #8, !srcloc !20
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @plist_head_empty(%struct.plist_head* noundef %head) unnamed_addr #0 {
entry:
  %node_list = getelementptr inbounds %struct.plist_head, %struct.plist_head* %head, i64 0, i32 0
  %call = call fastcc i32 @list_empty(%struct.list_head* noundef %node_list) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.plist_node* @plist_first(%struct.plist_head* nocapture noundef readonly %head) unnamed_addr #5 {
entry:
  %0 = bitcast %struct.plist_head* %head to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -24
  %2 = bitcast i8* %add.ptr to %struct.plist_node*
  ret %struct.plist_node* %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc %struct.plist_node* @plist_last(%struct.plist_head* nocapture noundef readonly %head) unnamed_addr #5 {
entry:
  %prev = getelementptr inbounds %struct.plist_head, %struct.plist_head* %head, i64 0, i32 0, i32 1
  %0 = bitcast %struct.list_head** %prev to i8**
  %1 = load i8*, i8** %0, align 8
  %add.ptr = getelementptr i8, i8* %1, i64 -24
  %2 = bitcast i8* %add.ptr to %struct.plist_node*
  ret %struct.plist_node* %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call fastcc void @do_raw_spin_unlock() #6
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #6
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #1 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @pm_qos_lock to i8*), i8 0) #8, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #1 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #8, !srcloc !23
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @list_del(%struct.list_head* nocapture noundef %entry1) unnamed_addr #3 {
entry:
  call fastcc void @__list_del_entry(%struct.list_head* noundef %entry1) #6
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  store %struct.list_head* inttoptr (i64 -2401263026318606080 to %struct.list_head*), %struct.list_head** %next, align 8
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  store %struct.list_head* inttoptr (i64 -2401263026318606046 to %struct.list_head*), %struct.list_head** %prev, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind null_pointer_is_valid
define internal fastcc void @__list_del_entry(%struct.list_head* nocapture noundef readonly %entry1) unnamed_addr #3 {
entry:
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 1
  %0 = load %struct.list_head*, %struct.list_head** %prev, align 8
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry1, i64 0, i32 0
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8
  call fastcc void @__list_del(%struct.list_head* noundef %0, %struct.list_head* noundef %1) #6
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

attributes #0 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nofree noinline norecurse nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149410330}
!8 = !{i64 2155055234}
!9 = !{i64 2155065308}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2155067246}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2155069331}
!14 = !{i64 2155071410}
!15 = !{i64 2155077211}
!16 = !{i64 2155078903}
!17 = !{i64 2149360817, i64 2149360864, i64 2149360870, i64 2149360907, i64 2149360925, i64 2149362236, i64 2149362284, i64 2149362332, i64 2149362395, i64 2149362444, i64 2149361003, i64 2149361028, i64 2149361054, i64 2149361060, i64 2149361902, i64 2149361942, i64 2149361960, i64 2149361992, i64 2149362020, i64 2149362074, i64 2149362094, i64 2149362191, i64 2149361083, i64 2149361097, i64 2149361103, i64 2149361153, i64 2149361199, i64 2149361232}
!18 = !{i64 2149362996, i64 2149363043, i64 2149363049, i64 2149363086, i64 2149363104, i64 2149364047, i64 2149364095, i64 2149364143, i64 2149364206, i64 2149364255, i64 2149363182, i64 2149363207, i64 2149363233, i64 2149363239, i64 2149363276, i64 2149363282, i64 2149363332, i64 2149363378, i64 2149363411}
!19 = !{i64 2149355114, i64 2149355161, i64 2149355167, i64 2149355204, i64 2149355222, i64 2149356563, i64 2149356611, i64 2149356659, i64 2149356722, i64 2149356771, i64 2149355300, i64 2149355325, i64 2149355351, i64 2149355357, i64 2149356229, i64 2149356269, i64 2149356287, i64 2149356319, i64 2149356347, i64 2149356401, i64 2149356421, i64 2149356518, i64 2149355380, i64 2149355394, i64 2149355400, i64 2149355450, i64 2149355496, i64 2149355529}
!20 = !{i64 2147852337, i64 2147852370, i64 2147852423, i64 2147852482, i64 2147852516, i64 2147852571, i64 2147852600, i64 2147852620}
!21 = !{i64 2149436173}
!22 = !{i64 2149379472}
!23 = !{i64 2149366830, i64 2149366877, i64 2149366883, i64 2149366920, i64 2149366938, i64 2149368249, i64 2149368297, i64 2149368345, i64 2149368408, i64 2149368457, i64 2149367016, i64 2149367041, i64 2149367067, i64 2149367073, i64 2149367915, i64 2149367955, i64 2149367973, i64 2149368005, i64 2149368033, i64 2149368087, i64 2149368107, i64 2149368204, i64 2149367096, i64 2149367110, i64 2149367116, i64 2149367166, i64 2149367212, i64 2149367245}
