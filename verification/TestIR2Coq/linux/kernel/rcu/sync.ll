; ModuleID = 'kernel/rcu/sync.c'
source_filename = "kernel/rcu/sync.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@rcu_sync_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [14 x i8] c"&rsp->gp_wait\00", align 1
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_sync_init(%struct.rcu_sync* noundef %rsp) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.rcu_sync* %rsp to i8*
  %call = call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 48) #6
  %gp_wait = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 2
  call void @__init_waitqueue_head(%struct.wait_queue_head* noundef %gp_wait, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @rcu_sync_init.__key) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn
define dso_local void @rcu_sync_enter_start(%struct.rcu_sync* nocapture noundef %rsp) local_unnamed_addr #2 {
entry:
  %gp_count = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 1
  %0 = load i32, i32* %gp_count, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* %gp_count, align 4
  %gp_state = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 0
  store i32 2, i32* %gp_state, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_sync_enter(%struct.rcu_sync* noundef %rsp) local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %gp_wait = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 2
  %rlock.i = getelementptr inbounds %struct.wait_queue_head, %struct.wait_queue_head* %gp_wait, i64 0, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #6
  %gp_state1 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 0
  %0 = load i32, i32* %gp_state1, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.body3, label %do.end41

do.body3:                                         ; preds = %entry
  store volatile i32 1, i32* %gp_state1, align 8
  %gp_count = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 1
  %1 = load i32, i32* %gp_count, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then30, label %if.then16, !prof !7

if.then16:                                        ; preds = %do.body3
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/sync.c\22; .popsection; .long 14472b - 14470b; .short 129; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !8
  %.pre = load i32, i32* %gp_count, align 4
  %phi.bo = add i32 %.pre, 1
  br label %if.then30

if.then30:                                        ; preds = %if.then16, %do.body3
  %2 = phi i32 [ %phi.bo, %if.then16 ], [ 1, %do.body3 ]
  store i32 %2, i32* %gp_count, align 4
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #6
  call void @synchronize_rcu() #6
  %cb_head = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 3
  call void @rcu_sync_func(%struct.callback_head* noundef %cb_head) #8
  br label %cleanup62

do.end41:                                         ; preds = %entry
  %gp_count25.c = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 1
  %3 = load i32, i32* %gp_count25.c, align 4
  %inc.c = add i32 %3, 1
  store i32 %inc.c, i32* %gp_count25.c, align 4
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #6
  %4 = load volatile i32, i32* %gp_state1, align 8
  %cmp44 = icmp sgt i32 %4, 1
  br i1 %cmp44, label %cleanup62, label %if.end47

if.end47:                                         ; preds = %do.end41
  %5 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false), !annotation !9
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call85 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %gp_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #6
  %6 = load volatile i32, i32* %gp_state1, align 8
  %cmp5486 = icmp sgt i32 %6, 1
  br i1 %cmp5486, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end47, %cleanup
  call void @schedule() #6
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef %gp_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #6
  %7 = load volatile i32, i32* %gp_state1, align 8
  %cmp54 = icmp sgt i32 %7, 1
  br i1 %cmp54, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end47
  call void @finish_wait(%struct.wait_queue_head* noundef %gp_wait, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #7
  br label %cleanup62

cleanup62:                                        ; preds = %for.end, %do.end41, %if.then30
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @rcu_sync_func(%struct.callback_head* noundef %rhp) #0 {
entry:
  %add.ptr118 = getelementptr %struct.callback_head, %struct.callback_head* %rhp, i64 -2
  %0 = bitcast %struct.callback_head* %add.ptr118 to %struct.rcu_sync*
  %gp_state = bitcast %struct.callback_head* %add.ptr118 to i32*
  %1 = load volatile i32, i32* %gp_state, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/sync.c\22; .popsection; .long 14472b - 14470b; .short 78; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load volatile i32, i32* %gp_state, align 8
  %cmp25 = icmp eq i32 %2, 2
  br i1 %cmp25, label %if.then39, label %if.end40, !prof !10

if.then39:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/sync.c\22; .popsection; .long 14472b - 14470b; .short 79; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !12
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end
  %gp_wait = getelementptr %struct.callback_head, %struct.callback_head* %rhp, i64 -2, i32 1
  %rlock.i = bitcast void (%struct.callback_head*)** %gp_wait to %struct.raw_spinlock*
  %call54 = call fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %rlock.i) #8
  %gp_count = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %0, i64 0, i32 1
  %3 = load i32, i32* %gp_count, align 4
  %tobool59.not = icmp eq i32 %3, 0
  br i1 %tobool59.not, label %if.else, label %do.body65

do.body65:                                        ; preds = %if.end40
  %4 = bitcast void (%struct.callback_head*)** %gp_wait to %struct.wait_queue_head*
  store volatile i32 2, i32* %gp_state, align 8
  call void @__wake_up_locked(%struct.wait_queue_head* noundef %4, i32 noundef 3, i32 noundef 1) #6
  br label %if.end98

if.else:                                          ; preds = %if.end40
  %5 = load i32, i32* %gp_state, align 8
  %cmp73 = icmp eq i32 %5, 4
  br i1 %cmp73, label %do.body80, label %do.body91

do.body80:                                        ; preds = %if.else
  store volatile i32 3, i32* %gp_state, align 8
  call fastcc void @rcu_sync_call(%struct.rcu_sync* noundef %0) #8
  br label %if.end98

do.body91:                                        ; preds = %if.else
  store volatile i32 0, i32* %gp_state, align 8
  br label %if.end98

if.end98:                                         ; preds = %do.body80, %do.body91, %do.body65
  call fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %rlock.i, i64 noundef %call54) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_sync_exit(%struct.rcu_sync* noundef %rsp) local_unnamed_addr #0 {
entry:
  %gp_state = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 0
  %0 = load volatile i32, i32* %gp_state, align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !10

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/sync.c\22; .popsection; .long 14472b - 14470b; .short 170; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %gp_count = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 1
  %1 = load volatile i32, i32* %gp_count, align 4
  %cmp20 = icmp eq i32 %1, 0
  br i1 %cmp20, label %if.then34, label %if.end35, !prof !10

if.then34:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/sync.c\22; .popsection; .long 14472b - 14470b; .short 171; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !14
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end
  %rlock.i = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 2, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #6
  %2 = load i32, i32* %gp_count, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %gp_count, align 4
  %tobool45.not = icmp eq i32 %dec, 0
  br i1 %tobool45.not, label %if.then46, label %if.end77

if.then46:                                        ; preds = %if.end35
  %3 = load i32, i32* %gp_state, align 8
  switch i32 %3, label %if.end77 [
    i32 2, label %do.body55
    i32 3, label %do.body69
  ]

do.body55:                                        ; preds = %if.then46
  store volatile i32 3, i32* %gp_state, align 8
  call fastcc void @rcu_sync_call(%struct.rcu_sync* noundef %rsp) #8
  br label %if.end77

do.body69:                                        ; preds = %if.then46
  store volatile i32 4, i32* %gp_state, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then46, %do.body55, %do.body69, %if.end35
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_sync_call(%struct.rcu_sync* noundef %rsp) unnamed_addr #0 {
entry:
  %cb_head = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 3
  call void @call_rcu(%struct.callback_head* noundef %cb_head, void (%struct.callback_head*)* noundef nonnull @rcu_sync_func) #6
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_sync_dtor(%struct.rcu_sync* noundef %rsp) local_unnamed_addr #0 {
entry:
  %gp_count = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 1
  %0 = load volatile i32, i32* %gp_count, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !7

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/sync.c\22; .popsection; .long 14472b - 14470b; .short 193; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %gp_state21 = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 0
  %1 = load volatile i32, i32* %gp_state21, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then35, label %if.end36, !prof !10

if.then35:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/sync.c\22; .popsection; .long 14472b - 14470b; .short 194; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !16
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end
  %rlock.i = getelementptr inbounds %struct.rcu_sync, %struct.rcu_sync* %rsp, i64 0, i32 2, i32 0, i32 0, i32 0
  call fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %rlock.i) #6
  %2 = load i32, i32* %gp_state21, align 8
  %cmp46 = icmp eq i32 %2, 4
  br i1 %cmp46, label %if.end59.thread, label %if.end59

if.end59.thread:                                  ; preds = %if.end36
  store volatile i32 3, i32* %gp_state21, align 8
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #6
  br label %if.then65

if.end59:                                         ; preds = %if.end36
  call fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %rlock.i) #6
  %cmp63.not = icmp eq i32 %2, 0
  br i1 %cmp63.not, label %if.end92, label %if.then65

if.then65:                                        ; preds = %if.end59.thread, %if.end59
  call void @rcu_barrier() #6
  %3 = load i32, i32* %gp_state21, align 8
  %cmp68.not = icmp eq i32 %3, 0
  br i1 %cmp68.not, label %if.end92, label %if.then82, !prof !7

if.then82:                                        ; preds = %if.then65
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22kernel/rcu/sync.c\22; .popsection; .long 14472b - 14470b; .short 204; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #7, !srcloc !17
  br label %if.end92

if.end92:                                         ; preds = %if.then65, %if.then82, %if.end59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #8
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !10

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #7, !srcloc !19
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #6
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #6
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.static_key_false, %struct.static_key_false* @gic_nonsecure_priorities, i64 0, i32 0, i32 0, i32 0), align 4
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queued_spin_lock_slowpath(%struct.qspinlock* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %ptr, i32 noundef %old) unnamed_addr #0 {
entry:
  %conv = zext i32 %old to i64
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %conv) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i8* noundef %ptr, i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i32*
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #7, !srcloc !20
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call fastcc void @arch_local_irq_enable() #8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #7, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #7, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  call fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) #8
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #8
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #6
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #6
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #7, !srcloc !25
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #7, !srcloc !26
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(%struct.raw_spinlock* noundef %lock, i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #8
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #7, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

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
!8 = !{i64 2150481595}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2150462504}
!12 = !{i64 2150471808}
!13 = !{i64 2150494558}
!14 = !{i64 2150499798}
!15 = !{i64 2150508827}
!16 = !{i64 2150514075}
!17 = !{i64 2150517661}
!18 = !{i64 2149394449}
!19 = !{i64 2148950280, i64 2148950327, i64 2148950333, i64 2148950370, i64 2148950388, i64 2148951729, i64 2148951777, i64 2148951825, i64 2148951888, i64 2148951937, i64 2148950466, i64 2148950491, i64 2148950517, i64 2148950523, i64 2148951395, i64 2148951435, i64 2148951453, i64 2148951485, i64 2148951513, i64 2148951567, i64 2148951587, i64 2148951684, i64 2148950546, i64 2148950560, i64 2148950566, i64 2148950616, i64 2148950662, i64 2148950695}
!20 = !{i64 2147897942, i64 2147897975, i64 2147898028, i64 2147898087, i64 2147898121, i64 2147898176, i64 2147898205, i64 2147898225}
!21 = !{i64 2149419302}
!22 = !{i64 2149204668}
!23 = !{i64 2148940824, i64 2148940871, i64 2148940877, i64 2148940914, i64 2148940932, i64 2148942272, i64 2148942320, i64 2148942368, i64 2148942431, i64 2148942480, i64 2148941010, i64 2148941035, i64 2148941061, i64 2148941067, i64 2148941938, i64 2148941978, i64 2148941996, i64 2148942028, i64 2148942056, i64 2148942110, i64 2148942130, i64 2148942227, i64 2148941090, i64 2148941104, i64 2148941110, i64 2148941160, i64 2148941206, i64 2148941239}
!24 = !{i64 2149390156}
!25 = !{i64 2148955983, i64 2148956030, i64 2148956036, i64 2148956073, i64 2148956091, i64 2148957402, i64 2148957450, i64 2148957498, i64 2148957561, i64 2148957610, i64 2148956169, i64 2148956194, i64 2148956220, i64 2148956226, i64 2148957068, i64 2148957108, i64 2148957126, i64 2148957158, i64 2148957186, i64 2148957240, i64 2148957260, i64 2148957357, i64 2148956249, i64 2148956263, i64 2148956269, i64 2148956319, i64 2148956365, i64 2148956398}
!26 = !{i64 2148958162, i64 2148958209, i64 2148958215, i64 2148958252, i64 2148958270, i64 2148959213, i64 2148959261, i64 2148959309, i64 2148959372, i64 2148959421, i64 2148958348, i64 2148958373, i64 2148958399, i64 2148958405, i64 2148958442, i64 2148958448, i64 2148958498, i64 2148958544, i64 2148958577}
!27 = !{i64 2149415999}
!28 = !{i64 2148961996, i64 2148962043, i64 2148962049, i64 2148962086, i64 2148962104, i64 2148967476, i64 2148967524, i64 2148967572, i64 2148967635, i64 2148967684, i64 2148962182, i64 2148962207, i64 2148962233, i64 2148962239, i64 2148967142, i64 2148967182, i64 2148967200, i64 2148967232, i64 2148967260, i64 2148967314, i64 2148967334, i64 2148967431, i64 2148962262, i64 2148962276, i64 2148962282, i64 2148962332, i64 2148962378, i64 2148962411}
