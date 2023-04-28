; ModuleID = 'kernel/notifier.c'
source_filename = "kernel/notifier.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.lock_class_key = type {}
%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, %struct.notifier_block* }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.srcu_struct = type { [17 x %struct.srcu_node], [3 x %struct.srcu_node*], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i64, i64, i64, i64, %struct.srcu_data*, i64, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i64], [4 x i64], i64, %struct.srcu_node*, i32, i32 }
%struct.srcu_data = type { [2 x i64], [2 x i64], [32 x i8], %struct.spinlock, %struct.rcu_segcblist, i64, i64, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, %struct.srcu_node*, i64, i32, %struct.srcu_struct*, [48 x i8] }
%struct.rcu_segcblist = type { %struct.callback_head*, [4 x %struct.callback_head**], [4 x i64], i64, [4 x i64], i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.lockdep_map = type {}
%struct.pt_regs = type { %union.anon.2, i64, i32, i32, i64, i64, [2 x i64], i64, i64 }
%union.anon.2 = type { %struct.user_pt_regs }
%struct.user_pt_regs = type { [31 x i64], i64, i64, i64 }
%struct.die_args = type { %struct.pt_regs*, i8*, i64, i32, i32 }

@reboot_notifier_list = dso_local global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.blocking_notifier_head* @reboot_notifier_list to i8*), i64 24) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.blocking_notifier_head* @reboot_notifier_list to i8*), i64 24) to %struct.list_head*) } }, %struct.notifier_block* null }, align 8
@system_state = external dso_local local_unnamed_addr global i32, align 4
@srcu_init_notifier_head.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [11 x i8] c"&nh->mutex\00", align 1
@die_chain = internal global %struct.atomic_notifier_head zeroinitializer, align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"double register detected\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef %nh, %struct.notifier_block* noundef %n) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.atomic_notifier_head, %struct.atomic_notifier_head* %nh, i64 0, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #4
  %head = getelementptr inbounds %struct.atomic_notifier_head, %struct.atomic_notifier_head* %nh, i64 0, i32 1
  call fastcc void @notifier_chain_register(%struct.notifier_block** noundef %head, %struct.notifier_block* noundef %n) #4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !7
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #4
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @notifier_chain_register(%struct.notifier_block** noundef %nl, %struct.notifier_block* noundef %n) unnamed_addr #0 {
entry:
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nl, align 8
  %cmp.not3 = icmp eq %struct.notifier_block* %0, null
  br i1 %cmp.not3, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %priority = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %n, i64 0, i32 2
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end30
  %1 = phi %struct.notifier_block* [ %0, %while.body.lr.ph ], [ %4, %if.end30 ]
  %nl.addr.04 = phi %struct.notifier_block** [ %nl, %while.body.lr.ph ], [ %next, %if.end30 ]
  %cmp1 = icmp eq %struct.notifier_block* %1, %n
  br i1 %cmp1, label %do.end, label %if.end25, !prof !8

do.end:                                           ; preds = %while.body
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #5
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/notifier.c\22; .popsection; .long 14472b - 14470b; .short 27; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !9
  br label %return

if.end25:                                         ; preds = %while.body
  %2 = load i32, i32* %priority, align 8
  %priority26 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %1, i64 0, i32 2
  %3 = load i32, i32* %priority26, align 8
  %cmp27 = icmp sgt i32 %2, %3
  br i1 %cmp27, label %while.end, label %if.end30

if.end30:                                         ; preds = %if.end25
  %next = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %1, i64 0, i32 1
  %4 = load %struct.notifier_block*, %struct.notifier_block** %next, align 8
  %cmp.not = icmp eq %struct.notifier_block* %4, null
  br i1 %cmp.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end30, %if.end25, %entry
  %nl.addr.0.lcssa = phi %struct.notifier_block** [ %nl, %entry ], [ %nl.addr.04, %if.end25 ], [ %next, %if.end30 ]
  %.lcssa = phi %struct.notifier_block* [ null, %entry ], [ %1, %if.end25 ], [ null, %if.end30 ]
  %next31 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %n, i64 0, i32 1
  store %struct.notifier_block* %.lcssa, %struct.notifier_block** %next31, align 8
  %5 = ptrtoint %struct.notifier_block* %n to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.notifier_block** elementtype(%struct.notifier_block*) %nl.addr.0.lcssa, i64 %5) #6, !srcloc !10
  br label %return

return:                                           ; preds = %while.end, %do.end
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head* noundef %nh, %struct.notifier_block* noundef %n) local_unnamed_addr #0 {
entry:
  %rlock.i = getelementptr inbounds %struct.atomic_notifier_head, %struct.atomic_notifier_head* %nh, i64 0, i32 0, i32 0, i32 0
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #4
  %head = getelementptr inbounds %struct.atomic_notifier_head, %struct.atomic_notifier_head* %nh, i64 0, i32 1
  %call5 = call fastcc i32 @notifier_chain_unregister(%struct.notifier_block** noundef %head, %struct.notifier_block* noundef %n) #4
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call2) #5
  call void @synchronize_rcu() #5
  ret i32 %call5
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @notifier_chain_unregister(%struct.notifier_block** noundef %nl, %struct.notifier_block* noundef readonly %n) unnamed_addr #0 {
entry:
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nl, align 8
  %cmp.not30 = icmp eq %struct.notifier_block* %0, null
  br i1 %cmp.not30, label %return, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %cmp135 = icmp eq %struct.notifier_block* %0, %n
  br i1 %cmp135, label %do.body, label %while.cond

while.cond:                                       ; preds = %while.body.preheader, %while.body
  %.pn = phi %struct.notifier_block* [ %1, %while.body ], [ %0, %while.body.preheader ]
  %next2037 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %.pn, i64 0, i32 1
  %1 = load %struct.notifier_block*, %struct.notifier_block** %next2037, align 8
  %cmp.not = icmp eq %struct.notifier_block* %1, null
  br i1 %cmp.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %cmp1 = icmp eq %struct.notifier_block* %1, %n
  br i1 %cmp1, label %do.body.loopexit, label %while.cond

do.body.loopexit:                                 ; preds = %while.body
  %next2037.le = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %.pn, i64 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.loopexit, %while.body.preheader
  %nl.addr.031.lcssa = phi %struct.notifier_block** [ %nl, %while.body.preheader ], [ %next2037.le, %do.body.loopexit ]
  %next = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %n, i64 0, i32 1
  %2 = load %struct.notifier_block*, %struct.notifier_block** %next, align 8
  %3 = ptrtoint %struct.notifier_block* %2 to i64
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(%struct.notifier_block** elementtype(%struct.notifier_block*) %nl.addr.031.lcssa, i64 %3) #6, !srcloc !11
  br label %return

return:                                           ; preds = %while.cond, %entry, %do.body
  %retval.0 = phi i32 [ 0, %do.body ], [ -2, %entry ], [ -2, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef %nh, i64 noundef %val, i8* noundef %v) local_unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_lock() #5
  %head = getelementptr inbounds %struct.atomic_notifier_head, %struct.atomic_notifier_head* %nh, i64 0, i32 1
  %call = call fastcc i32 @notifier_call_chain(%struct.notifier_block** noundef %head, i64 noundef %val, i8* noundef %v, i32 noundef -1, i32* noundef null) #4
  call fastcc void @rcu_read_unlock() #4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @notifier_call_chain(%struct.notifier_block** noundef %nl, i64 noundef %val, i8* noundef %v, i32 noundef %nr_to_call, i32* noundef %nr_calls) unnamed_addr #0 {
entry:
  %0 = load volatile %struct.notifier_block*, %struct.notifier_block** %nl, align 8
  %tobool24 = icmp ne %struct.notifier_block* %0, null
  %tobool225 = icmp ne i32 %nr_to_call, 0
  %1 = and i1 %tobool24, %tobool225
  br i1 %1, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tobool9.not = icmp eq i32* %nr_calls, null
  br label %while.body

while.cond:                                       ; preds = %if.end
  %tobool = icmp ne %struct.notifier_block* %3, null
  %tobool2 = icmp ne i32 %dec, 0
  %2 = select i1 %tobool, i1 %tobool2, i1 false
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %while.body.lr.ph, %while.cond
  %nr_to_call.addr.027 = phi i32 [ %nr_to_call, %while.body.lr.ph ], [ %dec, %while.cond ]
  %nb.026 = phi %struct.notifier_block* [ %0, %while.body.lr.ph ], [ %3, %while.cond ]
  %next = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %nb.026, i64 0, i32 1
  %3 = load volatile %struct.notifier_block*, %struct.notifier_block** %next, align 8
  %notifier_call = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %nb.026, i64 0, i32 0
  %4 = load i32 (%struct.notifier_block*, i64, i8*)*, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call, align 8
  %call = call i32 %4(%struct.notifier_block* noundef nonnull %nb.026, i64 noundef %val, i8* noundef %v) #5
  br i1 %tobool9.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %nr_calls, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %nr_calls, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %and = and i32 %call, 32768
  %tobool10.not = icmp eq i32 %and, 0
  %dec = add i32 %nr_to_call.addr.027, -1
  br i1 %tobool10.not, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond, %if.end, %entry
  %ret.1 = phi i32 [ 0, %entry ], [ %call, %if.end ], [ %call, %while.cond ]
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* noundef %nh, %struct.notifier_block* noundef %n) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @system_state, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %nh, i64 0, i32 1
  call fastcc void @notifier_chain_register(%struct.notifier_block** noundef %head, %struct.notifier_block* noundef %n) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %rwsem = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %nh, i64 0, i32 0
  call void @down_write(%struct.rw_semaphore* noundef %rwsem) #5
  %head2 = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %nh, i64 0, i32 1
  call fastcc void @notifier_chain_register(%struct.notifier_block** noundef %head2, %struct.notifier_block* noundef %n) #4
  call void @up_write(%struct.rw_semaphore* noundef %rwsem) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* noundef %nh, %struct.notifier_block* noundef %n) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @system_state, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %nh, i64 0, i32 1
  %call = call fastcc i32 @notifier_chain_unregister(%struct.notifier_block** noundef %head, %struct.notifier_block* noundef %n) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %rwsem = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %nh, i64 0, i32 0
  call void @down_write(%struct.rw_semaphore* noundef %rwsem) #5
  %head2 = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %nh, i64 0, i32 1
  %call3 = call fastcc i32 @notifier_chain_unregister(%struct.notifier_block** noundef %head2, %struct.notifier_block* noundef %n) #4
  call void @up_write(%struct.rw_semaphore* noundef %rwsem) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blocking_notifier_call_chain_robust(%struct.blocking_notifier_head* noundef %nh, i64 noundef %val_up, i64 noundef %val_down, i8* noundef %v) local_unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %nh, i64 0, i32 1
  %0 = load volatile %struct.notifier_block*, %struct.notifier_block** %head, align 8
  %tobool.not = icmp eq %struct.notifier_block* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rwsem = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %nh, i64 0, i32 0
  call void @down_read(%struct.rw_semaphore* noundef %rwsem) #5
  %call = call fastcc i32 @notifier_call_chain_robust(%struct.notifier_block** noundef %head, i64 noundef %val_up, i64 noundef %val_down, i8* noundef %v) #4
  call void @up_read(%struct.rw_semaphore* noundef %rwsem) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @notifier_call_chain_robust(%struct.notifier_block** noundef %nl, i64 noundef %val_up, i64 noundef %val_down, i8* noundef %v) unnamed_addr #0 {
entry:
  %nr = alloca i32, align 4
  %0 = bitcast i32* %nr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  store i32 0, i32* %nr, align 4
  %call = call fastcc i32 @notifier_call_chain(%struct.notifier_block** noundef %nl, i64 noundef %val_up, i8* noundef %v, i32 noundef -1, i32* noundef nonnull %nr) #4
  %and = and i32 %call, 32768
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %nr, align 4
  %sub = add i32 %1, -1
  %call1 = call fastcc i32 @notifier_call_chain(%struct.notifier_block** noundef %nl, i64 noundef %val_down, i8* noundef %v, i32 noundef %sub, i32* noundef null) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(%struct.rw_semaphore* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* noundef %nh, i64 noundef %val, i8* noundef %v) local_unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %nh, i64 0, i32 1
  %0 = load volatile %struct.notifier_block*, %struct.notifier_block** %head, align 8
  %tobool.not = icmp eq %struct.notifier_block* %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rwsem = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %nh, i64 0, i32 0
  call void @down_read(%struct.rw_semaphore* noundef %rwsem) #5
  %call = call fastcc i32 @notifier_call_chain(%struct.notifier_block** noundef %head, i64 noundef %val, i8* noundef %v, i32 noundef -1, i32* noundef null) #4
  call void @up_read(%struct.rw_semaphore* noundef %rwsem) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @raw_notifier_chain_register(%struct.raw_notifier_head* noundef %nh, %struct.notifier_block* noundef %n) local_unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.raw_notifier_head, %struct.raw_notifier_head* %nh, i64 0, i32 0
  call fastcc void @notifier_chain_register(%struct.notifier_block** noundef %head, %struct.notifier_block* noundef %n) #4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @raw_notifier_chain_unregister(%struct.raw_notifier_head* noundef %nh, %struct.notifier_block* noundef %n) local_unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.raw_notifier_head, %struct.raw_notifier_head* %nh, i64 0, i32 0
  %call = call fastcc i32 @notifier_chain_unregister(%struct.notifier_block** noundef %head, %struct.notifier_block* noundef %n) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @raw_notifier_call_chain_robust(%struct.raw_notifier_head* noundef %nh, i64 noundef %val_up, i64 noundef %val_down, i8* noundef %v) local_unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.raw_notifier_head, %struct.raw_notifier_head* %nh, i64 0, i32 0
  %call = call fastcc i32 @notifier_call_chain_robust(%struct.notifier_block** noundef %head, i64 noundef %val_up, i64 noundef %val_down, i8* noundef %v) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @raw_notifier_call_chain(%struct.raw_notifier_head* noundef %nh, i64 noundef %val, i8* noundef %v) local_unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.raw_notifier_head, %struct.raw_notifier_head* %nh, i64 0, i32 0
  %call = call fastcc i32 @notifier_call_chain(%struct.notifier_block** noundef %head, i64 noundef %val, i8* noundef %v, i32 noundef -1, i32* noundef null) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @srcu_notifier_chain_register(%struct.srcu_notifier_head* noundef %nh, %struct.notifier_block* noundef %n) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @system_state, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %nh, i64 0, i32 2
  call fastcc void @notifier_chain_register(%struct.notifier_block** noundef %head, %struct.notifier_block* noundef %n) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %nh, i64 0, i32 0
  call void @mutex_lock(%struct.mutex* noundef %mutex) #5
  %head2 = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %nh, i64 0, i32 2
  call fastcc void @notifier_chain_register(%struct.notifier_block** noundef %head2, %struct.notifier_block* noundef %n) #4
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(%struct.mutex* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @srcu_notifier_chain_unregister(%struct.srcu_notifier_head* noundef %nh, %struct.notifier_block* noundef %n) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @system_state, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !8

if.then:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %nh, i64 0, i32 2
  %call = call fastcc i32 @notifier_chain_unregister(%struct.notifier_block** noundef %head, %struct.notifier_block* noundef %n) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %nh, i64 0, i32 0
  call void @mutex_lock(%struct.mutex* noundef %mutex) #5
  %head2 = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %nh, i64 0, i32 2
  %call3 = call fastcc i32 @notifier_chain_unregister(%struct.notifier_block** noundef %head2, %struct.notifier_block* noundef %n) #4
  call void @mutex_unlock(%struct.mutex* noundef %mutex) #5
  %srcu = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %nh, i64 0, i32 1
  call void @synchronize_srcu(%struct.srcu_struct* noundef %srcu) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(%struct.srcu_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @srcu_notifier_call_chain(%struct.srcu_notifier_head* noundef %nh, i64 noundef %val, i8* noundef %v) local_unnamed_addr #0 {
entry:
  %srcu = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %nh, i64 0, i32 1
  %call = call fastcc i32 @srcu_read_lock(%struct.srcu_struct* noundef %srcu) #4
  %head = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %nh, i64 0, i32 2
  %call1 = call fastcc i32 @notifier_call_chain(%struct.notifier_block** noundef %head, i64 noundef %val, i8* noundef %v, i32 noundef -1, i32* noundef null) #4
  call fastcc void @srcu_read_unlock(%struct.srcu_struct* noundef %srcu, i32 noundef %call) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @srcu_read_lock(%struct.srcu_struct* noundef %ssp) unnamed_addr #0 {
entry:
  %call = call i32 @__srcu_read_lock(%struct.srcu_struct* noundef %ssp) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @srcu_read_unlock(%struct.srcu_struct* noundef %ssp, i32 noundef %idx) unnamed_addr #0 {
entry:
  %tobool.not = icmp ult i32 %idx, 2
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22include/linux/srcu.h\22; .popsection; .long 14472b - 14470b; .short 188; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #6, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @__srcu_read_unlock(%struct.srcu_struct* noundef %ssp, i32 noundef %idx) #5
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @srcu_init_notifier_head(%struct.srcu_notifier_head* noundef %nh) local_unnamed_addr #0 {
entry:
  %mutex = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %nh, i64 0, i32 0
  call void @__mutex_init(%struct.mutex* noundef %mutex, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @srcu_init_notifier_head.__key) #5
  %srcu = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %nh, i64 0, i32 1
  %call = call i32 @init_srcu_struct(%struct.srcu_struct* noundef %srcu) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body1, label %if.end

do.body1:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/notifier.c\22; .popsection; .long 14472b - 14470b; .short 507; .short 0; .popsection; 14471: brk 0x800", ""() #6, !srcloc !14
  unreachable

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %nh, i64 0, i32 2
  store %struct.notifier_block* null, %struct.notifier_block** %head, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(%struct.mutex* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_srcu_struct(%struct.srcu_struct* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @notify_die(i32 noundef %val, i8* noundef %str, %struct.pt_regs* noundef %regs, i64 noundef %err, i32 noundef %trap, i32 noundef %sig) local_unnamed_addr #0 {
entry:
  %args = alloca %struct.die_args, align 8
  %0 = bitcast %struct.die_args* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #6
  %regs1 = getelementptr inbounds %struct.die_args, %struct.die_args* %args, i64 0, i32 0
  store %struct.pt_regs* %regs, %struct.pt_regs** %regs1, align 8
  %str2 = getelementptr inbounds %struct.die_args, %struct.die_args* %args, i64 0, i32 1
  store i8* %str, i8** %str2, align 8
  %err3 = getelementptr inbounds %struct.die_args, %struct.die_args* %args, i64 0, i32 2
  store i64 %err, i64* %err3, align 8
  %trapnr = getelementptr inbounds %struct.die_args, %struct.die_args* %args, i64 0, i32 3
  store i32 %trap, i32* %trapnr, align 8
  %signr = getelementptr inbounds %struct.die_args, %struct.die_args* %args, i64 0, i32 4
  store i32 %sig, i32* %signr, align 4
  %conv = zext i32 %val to i64
  %call = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* noundef nonnull @die_chain, i64 noundef %conv, i8* noundef nonnull %0) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @register_die_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* noundef nonnull @die_chain, %struct.notifier_block* noundef %nb) #4
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @unregister_die_notifier(%struct.notifier_block* noundef %nb) local_unnamed_addr #0 {
entry:
  %call = call i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head* noundef nonnull @die_chain, %struct.notifier_block* noundef %nb) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #4
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #5
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !12

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #5
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #6, !srcloc !15
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #6, !srcloc !16
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #4
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !8

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #6, !srcloc !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #3 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #6, !srcloc !18
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #4
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #6, !srcloc !20
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #6, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !23
  call void @rcu_read_unlock_strict() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(%struct.srcu_struct* noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(%struct.srcu_struct* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2149398726}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153599003}
!10 = !{i64 2153602464}
!11 = !{i64 2153608764}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149838291}
!14 = !{i64 2153626701}
!15 = !{i64 2149349213, i64 2149349260, i64 2149349266, i64 2149349303, i64 2149349321, i64 2149350632, i64 2149350680, i64 2149350728, i64 2149350791, i64 2149350840, i64 2149349399, i64 2149349424, i64 2149349450, i64 2149349456, i64 2149350298, i64 2149350338, i64 2149350356, i64 2149350388, i64 2149350416, i64 2149350470, i64 2149350490, i64 2149350587, i64 2149349479, i64 2149349493, i64 2149349499, i64 2149349549, i64 2149349595, i64 2149349628}
!16 = !{i64 2149351392, i64 2149351439, i64 2149351445, i64 2149351482, i64 2149351500, i64 2149352443, i64 2149352491, i64 2149352539, i64 2149352602, i64 2149352651, i64 2149351578, i64 2149351603, i64 2149351629, i64 2149351635, i64 2149351672, i64 2149351678, i64 2149351728, i64 2149351774, i64 2149351807}
!17 = !{i64 2149343510, i64 2149343557, i64 2149343563, i64 2149343600, i64 2149343618, i64 2149344959, i64 2149345007, i64 2149345055, i64 2149345118, i64 2149345167, i64 2149343696, i64 2149343721, i64 2149343747, i64 2149343753, i64 2149344625, i64 2149344665, i64 2149344683, i64 2149344715, i64 2149344743, i64 2149344797, i64 2149344817, i64 2149344914, i64 2149343776, i64 2149343790, i64 2149343796, i64 2149343846, i64 2149343892, i64 2149343925}
!18 = !{i64 2147879390, i64 2147879423, i64 2147879476, i64 2147879535, i64 2147879569, i64 2147879624, i64 2147879653, i64 2147879673}
!19 = !{i64 2149424569}
!20 = !{i64 2149367868}
!21 = !{i64 2149355226, i64 2149355273, i64 2149355279, i64 2149355316, i64 2149355334, i64 2149356645, i64 2149356693, i64 2149356741, i64 2149356804, i64 2149356853, i64 2149355412, i64 2149355437, i64 2149355463, i64 2149355469, i64 2149356311, i64 2149356351, i64 2149356369, i64 2149356401, i64 2149356429, i64 2149356483, i64 2149356503, i64 2149356600, i64 2149355492, i64 2149355506, i64 2149355512, i64 2149355562, i64 2149355608, i64 2149355641}
!22 = !{i64 2149595153}
!23 = !{i64 2149595370}
