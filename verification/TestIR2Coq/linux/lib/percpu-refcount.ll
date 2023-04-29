; ModuleID = 'lib/percpu-refcount.c'
source_filename = "lib/percpu-refcount.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [4 x i64] }
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.atomic64_t = type { i64 }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@percpu_ref_switch_lock = internal global %struct.spinlock zeroinitializer, align 4
@percpu_ref_switch_waitq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @percpu_ref_switch_waitq to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.wait_queue_head* @percpu_ref_switch_waitq to i8*), i64 8) to %struct.list_head*) } }, align 8
@percpu_ref_kill_and_confirm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [33 x i8] c"%s called more than once on %ps!\00", align 1
@__func__.percpu_ref_kill_and_confirm = private unnamed_addr constant [28 x i8] c"percpu_ref_kill_and_confirm\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x %struct.kmem_cache*]], align 8
@gic_nonsecure_priorities = external dso_local global %struct.static_key_false, align 4
@percpu_ref_switch_to_atomic_rcu.underflows = internal global %struct.atomic_t zeroinitializer, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [256 x i64], align 8
@percpu_ref_switch_to_atomic_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"percpu ref (%ps) <= 0 (%ld) after switching to atomic\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\013%s: %s(): percpu_ref underflow\00", align 1
@__func__.percpu_ref_switch_to_atomic_rcu = private unnamed_addr constant [32 x i8] c"percpu_ref_switch_to_atomic_rcu\00", align 1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @percpu_ref_init(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef %release, i32 noundef %flags, i32 noundef %gfp) local_unnamed_addr #0 {
entry:
  %call = call i8* @__alloc_percpu_gfp(i64 noundef 8, i64 noundef 8, i32 noundef %gfp) #11
  %0 = ptrtoint i8* %call to i64
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  store i64 %0, i64* %percpu_count_ptr, align 8
  %tobool.not = icmp eq i8* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i8* @kzalloc(i32 noundef %gfp) #12
  %tobool3.not = icmp eq i8* %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %1 = load i64, i64* %percpu_count_ptr, align 8
  %2 = inttoptr i64 %1 to i8*
  call void @free_percpu(i8* noundef %2) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = getelementptr inbounds i8, i8* %call2, i64 24
  %4 = trunc i32 %flags to i8
  %5 = and i8 %4, 1
  %bf.load = load i8, i8* %3, align 8
  %bf.clear = and i8 %bf.load, -4
  %bf.set = or i8 %bf.clear, %5
  %6 = lshr i8 %4, 1
  %bf.shl = and i8 %6, 2
  %bf.set13 = or i8 %bf.set, %bf.shl
  store i8 %bf.set13, i8* %3, align 8
  %and15 = and i32 %flags, 3
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end23, label %if.then17

if.then17:                                        ; preds = %if.end6
  %7 = load i64, i64* %percpu_count_ptr, align 8
  %or = or i64 %7, 1
  store i64 %or, i64* %percpu_count_ptr, align 8
  %bf.set22 = or i8 %bf.set, 2
  store i8 %bf.set22, i8* %3, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.end6, %if.then17
  %start_count.0 = phi i64 [ 0, %if.then17 ], [ -9223372036854775808, %if.end6 ]
  %and24 = and i32 %flags, 2
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else29, label %if.then26

if.then26:                                        ; preds = %if.end23
  %8 = load i64, i64* %percpu_count_ptr, align 8
  %or28 = or i64 %8, 2
  store i64 %or28, i64* %percpu_count_ptr, align 8
  br label %if.end30

if.else29:                                        ; preds = %if.end23
  %inc = or i64 %start_count.0, 1
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then26
  %start_count.1 = phi i64 [ %start_count.0, %if.then26 ], [ %inc, %if.else29 ]
  %counter.i.i = bitcast i8* %call2 to i64*
  store volatile i64 %start_count.1, i64* %counter.i.i, align 8
  %release31 = getelementptr inbounds i8, i8* %call2, i64 8
  %9 = bitcast i8* %release31 to void (%struct.percpu_ref*)**
  store void (%struct.percpu_ref*)* %release, void (%struct.percpu_ref*)** %9, align 8
  %confirm_switch = getelementptr inbounds i8, i8* %call2, i64 16
  %10 = bitcast i8* %confirm_switch to void (%struct.percpu_ref*)**
  store void (%struct.percpu_ref*)* null, void (%struct.percpu_ref*)** %10, align 8
  %ref32 = getelementptr inbounds i8, i8* %call2, i64 48
  %11 = bitcast i8* %ref32 to %struct.percpu_ref**
  store %struct.percpu_ref* %ref, %struct.percpu_ref** %11, align 8
  %data33 = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %12 = bitcast %struct.percpu_ref_data** %data33 to i8**
  store i8* %call2, i8** %12, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end30, %if.then4
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -12, %if.then4 ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i8* @__alloc_percpu_gfp(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc noalias i8* @kzalloc(i32 noundef %flags) unnamed_addr #0 {
entry:
  %and.i.i = and i32 %flags, 17
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %kmalloc.exit, label %if.end.i.i, !prof !8

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %flags, 1
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i64 1, i64 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %entry, %if.end.i.i
  %retval.0.i.i = phi i64 [ 0, %entry ], [ %..i.i, %if.end.i.i ]
  %or = or i32 %flags, 256
  %arrayidx7.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %retval.0.i.i, i64 7
  %0 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8
  %call.i.i = call noalias align 8 i8* @kmem_cache_alloc(%struct.kmem_cache* noundef %0, i32 noundef %or) #11
  ret i8* %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @percpu_ref_exit(%struct.percpu_ref* nocapture noundef %ref) local_unnamed_addr #0 {
entry:
  %data1 = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %0 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data1, align 8
  call fastcc void @__percpu_ref_exit(%struct.percpu_ref* noundef %ref) #12
  %tobool.not = icmp eq %struct.percpu_ref_data* %0, null
  br i1 %tobool.not, label %cleanup, label %do.body2

do.body2:                                         ; preds = %entry
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave() #12
  %1 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data1, align 8
  %counter.i.i = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %counter.i.i, align 8
  %shl = shl i64 %2, 2
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %3 = load i64, i64* %percpu_count_ptr, align 8
  %or = or i64 %3, %shl
  store i64 %or, i64* %percpu_count_ptr, align 8
  store %struct.percpu_ref_data* null, %struct.percpu_ref_data** %data1, align 8
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call3) #11
  %4 = bitcast %struct.percpu_ref_data* %0 to i8*
  call void @kfree(i8* noundef nonnull %4) #11
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_ref_exit(%struct.percpu_ref* nocapture noundef %ref) unnamed_addr #0 {
entry:
  %call = call fastcc i64* @percpu_count_ptr(%struct.percpu_ref* noundef %ref) #12
  %tobool.not = icmp eq i64* %call, null
  br i1 %tobool.not, label %if.end19, label %if.then

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %0 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %tobool1.not = icmp eq %struct.percpu_ref_data* %0, null
  br i1 %tobool1.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %confirm_switch = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %0, i64 0, i32 2
  %1 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %confirm_switch, align 8
  %tobool3.not = icmp eq void (%struct.percpu_ref*)* %1, null
  br i1 %tobool3.not, label %if.end, label %if.then11, !prof !8

if.then11:                                        ; preds = %land.rhs
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/percpu-refcount.c\22; .popsection; .long 14472b - 14470b; .short 113; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !9
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then11, %land.rhs
  %2 = bitcast i64* %call to i8*
  call void @free_percpu(i8* noundef nonnull %2) #11
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  store i64 3, i64* %percpu_count_ptr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__raw_spin_lock_irqsave() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_irq_save() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  call fastcc void @do_raw_spin_lock_flags() #12
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @percpu_ref_switch_to_atomic(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef %confirm_switch) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #12
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %0 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %force_atomic = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %0, i64 0, i32 3
  %bf.load = load i8, i8* %force_atomic, align 8
  %bf.set = or i8 %bf.load, 1
  store i8 %bf.set, i8* %force_atomic, align 8
  call fastcc void @__percpu_ref_switch_mode(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef %confirm_switch) #12
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_ref_switch_mode(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef %confirm_switch) unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %data1 = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %0 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data1, align 8
  %confirm_switch3 = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %0, i64 0, i32 2
  %1 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %confirm_switch3, align 8
  %tobool.not = icmp eq void (%struct.percpu_ref*)* %1, null
  br i1 %tobool.not, label %do.end9, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !11
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call23 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @percpu_ref_switch_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #11
  %3 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %confirm_switch3, align 8
  %tobool5.not24 = icmp eq void (%struct.percpu_ref*)* %3, null
  br i1 %tobool5.not24, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end, %cleanup
  call fastcc void @__raw_spin_unlock_irq() #11
  call void @schedule() #11
  call fastcc void @__raw_spin_lock_irq() #11
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @percpu_ref_switch_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #11
  %4 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %confirm_switch3, align 8
  %tobool5.not = icmp eq void (%struct.percpu_ref*)* %4, null
  br i1 %tobool5.not, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @percpu_ref_switch_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #13
  br label %do.end9

do.end9:                                          ; preds = %entry, %for.end
  %force_atomic = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %0, i64 0, i32 3
  %bf.load = load i8, i8* %force_atomic, align 8
  %5 = and i8 %bf.load, 1
  %bf.cast.not = icmp eq i8 %5, 0
  br i1 %bf.cast.not, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %do.end9
  %call10 = call fastcc i1 @percpu_ref_is_dying(%struct.percpu_ref* noundef %ref) #12
  br i1 %call10, label %if.then11, label %if.else

if.then11:                                        ; preds = %lor.lhs.false, %do.end9
  call fastcc void @__percpu_ref_switch_to_atomic(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef %confirm_switch) #12
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  call fastcc void @__percpu_ref_switch_to_percpu(%struct.percpu_ref* noundef %ref) #12
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @percpu_ref_switch_to_atomic_sync(%struct.percpu_ref* noundef %ref) local_unnamed_addr #0 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  call void @percpu_ref_switch_to_atomic(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef null) #12
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %0 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %confirm_switch = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %0, i64 0, i32 2
  %1 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %confirm_switch, align 8
  %tobool.not = icmp eq void (%struct.percpu_ref*)* %1, null
  br i1 %tobool.not, label %do.end9, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.wait_queue_entry* %__wq_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !11
  call void @init_wait_entry(%struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 0) #11
  %call16 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @percpu_ref_switch_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #11
  %3 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %confirm_switch517 = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %3, i64 0, i32 2
  %4 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %confirm_switch517, align 8
  %tobool6.not18 = icmp eq void (%struct.percpu_ref*)* %4, null
  br i1 %tobool6.not18, label %for.end, label %cleanup

cleanup:                                          ; preds = %if.end, %cleanup
  call void @schedule() #11
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef nonnull @percpu_ref_switch_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry, i32 noundef 2) #11
  %5 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %confirm_switch5 = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %5, i64 0, i32 2
  %6 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %confirm_switch5, align 8
  %tobool6.not = icmp eq void (%struct.percpu_ref*)* %6, null
  br i1 %tobool6.not, label %for.end, label %cleanup

for.end:                                          ; preds = %cleanup, %if.end
  call void @finish_wait(%struct.wait_queue_head* noundef nonnull @percpu_ref_switch_waitq, %struct.wait_queue_entry* noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #13
  br label %do.end9

do.end9:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(%struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(%struct.wait_queue_head* noundef, %struct.wait_queue_entry* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @percpu_ref_switch_to_percpu(%struct.percpu_ref* noundef %ref) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #12
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %0 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %force_atomic = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %0, i64 0, i32 3
  %bf.load = load i8, i8* %force_atomic, align 8
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %force_atomic, align 8
  call fastcc void @__percpu_ref_switch_mode(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef null) #12
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #11
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @percpu_ref_kill_and_confirm(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef %confirm_kill) local_unnamed_addr #0 {
entry:
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #12
  %call5 = call fastcc i1 @percpu_ref_is_dying(%struct.percpu_ref* noundef %ref) #12
  %.b57 = load i1, i1* @percpu_ref_kill_and_confirm.__already_done, align 1
  %lnot9 = xor i1 %.b57, true
  %0 = select i1 %call5, i1 %lnot9, i1 false
  br i1 %0, label %if.then, label %if.end40, !prof !12

if.then:                                          ; preds = %entry
  store i1 true, i1* @percpu_ref_kill_and_confirm.__already_done, align 1
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %1 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %release = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %1, i64 0, i32 1
  %2 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %release, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.percpu_ref_kill_and_confirm, i64 0, i64 0), void (%struct.percpu_ref*)* noundef %2) #11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/percpu-refcount.c\22; .popsection; .long 14472b - 14470b; .short 390; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !13
  br label %if.end40

if.end40:                                         ; preds = %if.then, %entry
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %3 = load i64, i64* %percpu_count_ptr, align 8
  %or = or i64 %3, 2
  store i64 %or, i64* %percpu_count_ptr, align 8
  call fastcc void @__percpu_ref_switch_mode(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef %confirm_kill) #12
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %ref) #12
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i1 @percpu_ref_is_dying(%struct.percpu_ref* nocapture noundef readonly %ref) unnamed_addr #4 {
entry:
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %0 = load i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %0, 2
  %tobool = icmp ne i64 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn_printk(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  call fastcc void @percpu_ref_put_many(%struct.percpu_ref* noundef %ref) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i1 @percpu_ref_is_zero(%struct.percpu_ref* noundef %ref) local_unnamed_addr #0 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #12
  br i1 %call, label %cleanup, label %do.body1

do.body1:                                         ; preds = %entry
  %call3 = call fastcc i64 @__raw_spin_lock_irqsave() #12
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %1 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %tobool.not = icmp eq %struct.percpu_ref_data* %1, null
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.body1
  %counter.i.i = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %1, i64 0, i32 0, i32 0
  %2 = load volatile i64, i64* %counter.i.i, align 8
  br label %if.end10

if.else:                                          ; preds = %do.body1
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %3 = load i64, i64* %percpu_count_ptr, align 8
  %shr = lshr i64 %3, 2
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %count.0 = phi i64 [ %2, %if.then6 ], [ %shr, %if.else ]
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call3) #11
  %cmp11 = icmp eq i64 %count.0, 0
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end10
  %retval.0 = phi i1 [ %cmp11, %if.end10 ], [ false, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** nocapture noundef writeonly %percpu_countp) unnamed_addr #5 {
entry:
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %0 = load volatile i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %0, 3
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %cleanup, !prof !8

if.end:                                           ; preds = %entry
  %1 = inttoptr i64 %0 to i64*
  store i64* %1, i64** %percpu_countp, align 8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret i1 %tobool.not
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @percpu_ref_reinit(%struct.percpu_ref* noundef %ref) local_unnamed_addr #0 {
entry:
  %call = call i1 @percpu_ref_is_zero(%struct.percpu_ref* noundef %ref) #12
  br i1 %call, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/percpu-refcount.c\22; .popsection; .long 14472b - 14470b; .short 441; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @percpu_ref_resurrect(%struct.percpu_ref* noundef %ref) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @percpu_ref_resurrect(%struct.percpu_ref* noundef %ref) local_unnamed_addr #0 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %call2 = call fastcc i64 @__raw_spin_lock_irqsave() #12
  %call5 = call fastcc i1 @percpu_ref_is_dying(%struct.percpu_ref* noundef %ref) #12
  br i1 %call5, label %if.end, label %if.then, !prof !8

if.then:                                          ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/percpu-refcount.c\22; .popsection; .long 14472b - 14470b; .short 468; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call23 = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #12
  br i1 %call23, label %if.then36, label %if.end37, !prof !12

if.then36:                                        ; preds = %if.end
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/percpu-refcount.c\22; .popsection; .long 14472b - 14470b; .short 469; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !16
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %1 = load i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %1, -3
  store i64 %and, i64* %percpu_count_ptr, align 8
  call fastcc void @percpu_ref_get(%struct.percpu_ref* noundef %ref) #12
  call fastcc void @__percpu_ref_switch_mode(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef null) #12
  call fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %call2) #11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_get(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  call fastcc void @percpu_ref_get_many(%struct.percpu_ref* noundef %ref) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define internal fastcc i64* @percpu_count_ptr(%struct.percpu_ref* nocapture noundef readonly %ref) unnamed_addr #4 {
entry:
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %0 = load i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %0, -4
  %1 = inttoptr i64 %and to i64*
  ret i64* %1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_irq_save() unnamed_addr #0 {
entry:
  %call = call fastcc i64 @arch_local_save_flags() #12
  %call1 = call fastcc i32 @arch_irqs_disabled_flags(i64 noundef %call) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @arch_local_irq_disable() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock_flags() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @percpu_ref_switch_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @arch_local_save_flags() unnamed_addr #0 {
entry:
  %0 = call i64 asm sideeffect ".if 1 == 1\0A661:\0A\09mrs\09$0, daif\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09mrs_s, rt, sreg\0A.inst (0xd5200000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09mrs_s $0, (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5))\0A\09.purgem\09mrs_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,~{memory}"() #13, !srcloc !17
  ret i64 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @arch_irqs_disabled_flags(i64 noundef %flags) unnamed_addr #0 {
entry:
  %conv = trunc i64 %flags to i32
  %0 = call i32 asm sideeffect ".if 1 == 1\0A661:\0A\09and\09${0:w}, ${1:w}, #0x00000080\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09eor\09${0:w}, ${1:w}, #0xe0\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=&r,r,~{memory}"(i32 %conv) #13, !srcloc !18
  ret i32 %0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_disable() unnamed_addr #0 {
entry:
  %call39 = call fastcc i32 @static_key_count() #12
  %cmp40 = icmp sgt i32 %call39, 0
  br i1 %cmp40, label %if.then50, label %if.end51, !prof !12

if.then50:                                        ; preds = %entry
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %entry
  %__prio37.0 = phi i64 [ 160, %if.then50 ], [ 96, %entry ]
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifset, #3\09\09// arch_local_irq_disable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %__prio37.0) #13, !srcloc !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define internal fastcc i32 @static_key_count() unnamed_addr #5 {
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
  %call = call fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %conv) #12
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc__cmpxchg_case_acq_32(i64 noundef %old) unnamed_addr #0 {
entry:
  %0 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @percpu_ref_switch_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0), i64 %old, i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.spinlock, %struct.spinlock* @percpu_ref_switch_lock, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)) #13, !srcloc !20
  %asmresult1 = extractvalue { i64, i32 } %0, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irqrestore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #12
  call fastcc void @arch_local_irq_restore(i64 noundef %flags) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) bitcast (%struct.spinlock* @percpu_ref_switch_lock to i8*), i8 0) #13, !srcloc !22
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_restore(i64 noundef %flags) unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daif, $0\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 %flags) #13, !srcloc !23
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_ref_switch_to_atomic(%struct.percpu_ref* noundef %ref, void (%struct.percpu_ref*)* noundef %confirm_switch) unnamed_addr #0 {
entry:
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %0 = load i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq void (%struct.percpu_ref*)* %confirm_switch, null
  br i1 %tobool1.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  call void %confirm_switch(%struct.percpu_ref* noundef %ref) #11
  br label %return

if.end3:                                          ; preds = %entry
  %or = or i64 %0, 1
  store i64 %or, i64* %percpu_count_ptr, align 8
  %tobool5.not = icmp eq void (%struct.percpu_ref*)* %confirm_switch, null
  %.percpu_ref_noop_confirm_switch = select i1 %tobool5.not, void (%struct.percpu_ref*)* @percpu_ref_noop_confirm_switch, void (%struct.percpu_ref*)* %confirm_switch
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %1 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %confirm_switch6 = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %1, i64 0, i32 2
  store void (%struct.percpu_ref*)* %.percpu_ref_noop_confirm_switch, void (%struct.percpu_ref*)** %confirm_switch6, align 8
  call fastcc void @percpu_ref_get(%struct.percpu_ref* noundef %ref) #12
  %2 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %rcu = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %2, i64 0, i32 4
  call void @call_rcu(%struct.callback_head* noundef %rcu, void (%struct.callback_head*)* noundef nonnull @percpu_ref_switch_to_atomic_rcu) #11
  br label %return

return:                                           ; preds = %if.then, %if.then2, %if.end3
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_ref_switch_to_percpu(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %call = call fastcc i64* @percpu_count_ptr(%struct.percpu_ref* noundef %ref) #12
  %tobool.not = icmp eq i64* %call, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !12

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/percpu-refcount.c\22; .popsection; .long 14472b - 14470b; .short 240; .short 0; .popsection; 14471: brk 0x800", ""() #13, !srcloc !24
  unreachable

do.end9:                                          ; preds = %entry
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 0
  %0 = load i64, i64* %percpu_count_ptr, align 8
  %and = and i64 %0, 1
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %do.end9
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %1 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %allow_reinit = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %1, i64 0, i32 3
  %bf.load = load i8, i8* %allow_reinit, align 8
  %2 = and i8 %bf.load, 2
  %bf.cast.not = icmp eq i8 %2, 0
  br i1 %bf.cast.not, label %if.then27, label %if.end38, !prof !12

if.then27:                                        ; preds = %if.end12
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/percpu-refcount.c\22; .popsection; .long 14472b - 14470b; .short 245; .short (1 << 0)|((1 << 1) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !25
  br label %cleanup

if.end38:                                         ; preds = %if.end12
  %count = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %1, i64 0, i32 0
  call fastcc void @__ll_sc_atomic64_add(i64 noundef -9223372036854775808, %struct.atomic64_t* noundef %count) #11
  %call4075 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %3 = load i32, i32* @nr_cpu_ids, align 4
  %cmp76 = icmp ult i32 %call4075, %3
  br i1 %cmp76, label %do.body42.lr.ph, label %do.body47

do.body42.lr.ph:                                  ; preds = %if.end38
  %4 = ptrtoint i64* %call to i64
  br label %do.body42

do.body42:                                        ; preds = %do.body42.lr.ph, %do.body42
  %call4077 = phi i32 [ %call4075, %do.body42.lr.ph ], [ %call40, %do.body42 ]
  %idxprom = sext i32 %call4077 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %add = add i64 %5, %4
  %6 = inttoptr i64 %add to i64*
  store i64 0, i64* %6, align 8
  %call40 = call i32 @cpumask_next(i32 noundef %call4077, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %7 = load i32, i32* @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call40, %7
  br i1 %cmp, label %do.body42, label %do.body47

do.body47:                                        ; preds = %do.body42, %if.end38
  %8 = load i64, i64* %percpu_count_ptr, align 8
  %and50 = and i64 %8, -2
  call void asm sideeffect "stlr $1, $0", "=*Q,r,~{memory}"(i64* elementtype(i64) %percpu_count_ptr, i64 %and50) #13, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.end9, %do.body47
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock_irq() unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock() #12
  call fastcc void @arch_local_irq_enable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @arch_local_irq_enable() unnamed_addr #0 {
entry:
  call void asm sideeffect ".if 1 == 1\0A661:\0A\09msr\09daifclr, #3\09\09// arch_local_irq_enable\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 19\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09\09.irp\09num,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30\0A\09.equ\09.L__reg_num_x\\num, \\num\0A\09.endr\0A\09.equ\09.L__reg_num_xzr, 31\0A\09.macro\09msr_s, sreg, rt\0A.inst (0xd5000000|(\\sreg)|(.L__reg_num_\\rt))\0A\09\09.endm\0A\09msr_s (((3) << 19) | ((0) << 16) | ((4) << 12) | ((6) << 8) | ((0) << 5)), $0\0A\09.purgem\09msr_s\0A\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "r,~{memory}"(i64 224) #13, !srcloc !28
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock_irq() unnamed_addr #0 {
entry:
  call fastcc void @arch_local_irq_disable() #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  call fastcc void @do_raw_spin_lock() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock() unnamed_addr #0 {
entry:
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i32 noundef 0) #11
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !8

if.end.i:                                         ; preds = %entry
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef getelementptr inbounds (%struct.spinlock, %struct.spinlock* @percpu_ref_switch_lock, i64 0, i32 0, i32 0, i32 0), i32 noundef %call11.i.i.i.i) #11
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define internal void @percpu_ref_noop_confirm_switch(%struct.percpu_ref* nocapture noundef %ref) #6 {
entry:
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal void @percpu_ref_switch_to_atomic_rcu(%struct.callback_head* noundef %rcu) #0 {
entry:
  %add.ptr88 = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -2
  %add.ptr = bitcast %struct.callback_head* %add.ptr88 to i8*
  %0 = load i32, i32* @nr_cpu_ids, align 4
  %call291 = call i32 @cpumask_next(i32 noundef -1, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %cmp92 = icmp ult i32 %call291, %0
  br i1 %cmp92, label %do.body3.lr.ph, label %for.end

do.body3.lr.ph:                                   ; preds = %entry
  %ref1 = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 1
  %1 = bitcast %struct.callback_head* %ref1 to %struct.percpu_ref**
  %2 = load %struct.percpu_ref*, %struct.percpu_ref** %1, align 8
  %call = call fastcc i64* @percpu_count_ptr(%struct.percpu_ref* noundef %2) #12
  %3 = ptrtoint i64* %call to i64
  br label %do.body3

do.body3:                                         ; preds = %do.body3.lr.ph, %do.body3
  %call294 = phi i32 [ %call291, %do.body3.lr.ph ], [ %call2, %do.body3 ]
  %count.093 = phi i64 [ 0, %do.body3.lr.ph ], [ %add8, %do.body3 ]
  %idxprom = sext i32 %call294 to i64
  %arrayidx = getelementptr [256 x i64], [256 x i64]* @__per_cpu_offset, i64 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %add = add i64 %4, %3
  %5 = inttoptr i64 %add to i64*
  %6 = load i64, i64* %5, align 8
  %add8 = add i64 %6, %count.093
  %call2 = call i32 @cpumask_next(i32 noundef %call294, %struct.cpumask* noundef nonnull @__cpu_possible_mask) #14
  %cmp = icmp ult i32 %call2, %0
  br i1 %cmp, label %do.body3, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %do.body3
  %phi.bo = xor i64 %add8, -9223372036854775808
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %count.0.lcssa = phi i64 [ -9223372036854775808, %entry ], [ %phi.bo, %for.end.loopexit ]
  %count10 = bitcast %struct.callback_head* %add.ptr88 to %struct.atomic64_t*
  call fastcc void @__ll_sc_atomic64_add(i64 noundef %count.0.lcssa, %struct.atomic64_t* noundef %count10) #11
  %counter.i.i = bitcast %struct.callback_head* %add.ptr88 to i64*
  %7 = load volatile i64, i64* %counter.i.i, align 8
  %cmp13 = icmp slt i64 %7, 1
  %.b89 = load i1, i1* @percpu_ref_switch_to_atomic_rcu.__already_done, align 1
  %lnot16 = xor i1 %.b89, true
  %8 = select i1 %cmp13, i1 %lnot16, i1 false
  br i1 %8, label %if.then, label %if.end48, !prof !12

if.then:                                          ; preds = %for.end
  store i1 true, i1* @percpu_ref_switch_to_atomic_rcu.__already_done, align 1
  %release = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -2, i32 1
  %9 = bitcast void (%struct.callback_head*)** %release to void (%struct.percpu_ref*)**
  %10 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %9, align 8
  %11 = load volatile i64, i64* %counter.i.i, align 8
  call void (i8*, ...) @__warn_printk(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), void (%struct.percpu_ref*)* noundef %10, i64 noundef %11) #11
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/percpu-refcount.c\22; .popsection; .long 14472b - 14470b; .short 198; .short (1 << 0)|((1 << 3) | ((9) << 8)); .popsection; 14471: brk 0x800", ""() #13, !srcloc !30
  br label %if.end48

if.end48:                                         ; preds = %if.then, %for.end
  br i1 %cmp13, label %land.lhs.true, label %if.end67

land.lhs.true:                                    ; preds = %if.end48
  %call.i.i.i = call fastcc i32 @__ll_sc_atomic_add_return() #11
  %cmp59 = icmp slt i32 %call.i.i.i, 4
  br i1 %cmp59, label %do.end64, label %if.end67

do.end64:                                         ; preds = %land.lhs.true
  %call66 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.percpu_ref_switch_to_atomic_rcu, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.percpu_ref_switch_to_atomic_rcu, i64 0, i64 0)) #15
  call void @mem_dump_obj(i8* noundef %add.ptr) #11
  br label %if.end67

if.end67:                                         ; preds = %do.end64, %land.lhs.true, %if.end48
  call fastcc void @percpu_ref_call_confirm_rcu(%struct.callback_head* noundef %rcu) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, %struct.cpumask* noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_dump_obj(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_call_confirm_rcu(%struct.callback_head* nocapture noundef %rcu) unnamed_addr #0 {
entry:
  %ref1 = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 1
  %0 = bitcast %struct.callback_head* %ref1 to %struct.percpu_ref**
  %1 = load %struct.percpu_ref*, %struct.percpu_ref** %0, align 8
  %confirm_switch = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -1
  %2 = bitcast %struct.callback_head* %confirm_switch to void (%struct.percpu_ref*)**
  %3 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %2, align 8
  call void %3(%struct.percpu_ref* noundef %1) #11
  store void (%struct.percpu_ref*)* null, void (%struct.percpu_ref*)** %2, align 8
  call void @__wake_up(%struct.wait_queue_head* noundef nonnull @percpu_ref_switch_waitq, i32 noundef 3, i32 noundef 0, i8* noundef null) #11
  %allow_reinit = getelementptr %struct.callback_head, %struct.callback_head* %rcu, i64 -1, i32 1
  %4 = bitcast void (%struct.callback_head*)** %allow_reinit to i8*
  %bf.load = load i8, i8* %4, align 8
  %5 = and i8 %bf.load, 2
  %bf.cast.not = icmp eq i8 %5, 0
  br i1 %bf.cast.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call fastcc void @__percpu_ref_exit(%struct.percpu_ref* noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call fastcc void @percpu_ref_put(%struct.percpu_ref* noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic64_add(i64 noundef %i, %struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09add\09$0, $0, $3\0A\09stxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b", "=&r,=&r,=*Q,Ir,*Q"(i64* elementtype(i64) %counter, i64 %i, i64* elementtype(i64) %counter) #13, !srcloc !31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i32 @__ll_sc_atomic_add_return() unnamed_addr #0 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stlxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Ir,*Q,~{memory}"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @percpu_ref_switch_to_atomic_rcu.underflows, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @percpu_ref_switch_to_atomic_rcu.underflows, i64 0, i32 0)) #13, !srcloc !32
  %asmresult = extractvalue { i32, i64 } %0, 0
  ret i32 %asmresult
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(%struct.wait_queue_head* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_put_many(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64* null, i64** %percpu_count, align 8, !annotation !11
  call fastcc void @__rcu_read_lock() #11
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #12
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef -1) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  br label %if.end14

if.else:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %4 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %count = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %4, i64 0, i32 0
  %call.i.i.i.i = call fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %count) #11
  %cmp.i.i.i = icmp eq i64 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then12, label %if.end14, !prof !12

if.then12:                                        ; preds = %if.else
  %5 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %release = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %5, i64 0, i32 1
  %6 = load void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)** %release, align 8
  call void %6(%struct.percpu_ref* noundef %ref) #11
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12, %do.body1
  call fastcc void @rcu_read_unlock() #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__percpu_add_case_64(i8* noundef %ptr, i64 noundef %val) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i32, i64 } asm sideeffect "1:\09ldxr\09$1, $2\0Aadd\09$1, $1, $3\0A\09stxr\09${0:w}, $1, $2\0A\09cbnz\09${0:w}, 1b", "=&r,=&r,=*Q,r,*Q"(i64* elementtype(i64) %0, i64 %val, i64* elementtype(i64) %0) #13, !srcloc !35
  ret void
}

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly
define internal fastcc i64 @__kern_my_cpu_offset() unnamed_addr #9 {
entry:
  %0 = call i64 @llvm.read_register.i64(metadata !0)
  %1 = inttoptr i64 %0 to i64*
  %2 = call i64 asm ".if 1 == 1\0A661:\0A\09mrs $0, tpidr_el1\0A662:\0A.pushsection .altinstructions,\22a\22\0A .word 661b - .\0A .word 663f - .\0A .hword 31\0A .byte 662b-661b\0A .byte 664f-663f\0A.popsection\0A.subsection 1\0A663:\0A\09mrs $0, tpidr_el2\0A664:\0A\09.org\09. - (664b-663b) + (662b-661b)\0A\09.org\09. - (662b-661b) + (664b-663b)\0A\09.previous\0A.endif\0A", "=r,*Q"(i64* elementtype(i64) %1) #16, !srcloc !36
  ret i64 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @rcu_read_unlock() unnamed_addr #0 {
entry:
  call fastcc void @__rcu_read_unlock() #12
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_lock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  ret void
}

; Function Attrs: nofree nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc_atomic64_sub_return(%struct.atomic64_t* noundef %v) unnamed_addr #0 {
entry:
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %v, i64 0, i32 0
  %0 = call { i64, i64 } asm sideeffect "// atomic64_sub_return\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$0, $2\0A\09sub\09$0, $0, $3\0A\09stlxr\09${1:w}, $0, $2\0A\09cbnz\09${1:w}, 1b\0A\09dmb ish", "=&r,=&r,=*Q,Jr,*Q,~{memory}"(i64* elementtype(i64) %counter, i64 1, i64* elementtype(i64) %counter) #13, !srcloc !38
  %asmresult = extractvalue { i64, i64 } %0, 0
  ret i64 %asmresult
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__rcu_read_unlock() unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  call void @rcu_read_unlock_strict() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @percpu_ref_get_many(%struct.percpu_ref* noundef %ref) unnamed_addr #0 {
entry:
  %percpu_count = alloca i64*, align 8
  %0 = bitcast i64** %percpu_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64* null, i64** %percpu_count, align 8, !annotation !11
  call fastcc void @__rcu_read_lock() #11
  %call = call fastcc i1 @__ref_is_percpu(%struct.percpu_ref* noundef %ref, i64** noundef nonnull %percpu_count) #12
  br i1 %call, label %do.body1, label %if.else

do.body1:                                         ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  %1 = load i64*, i64** %percpu_count, align 8
  %2 = ptrtoint i64* %1 to i64
  %call7 = call fastcc i64 @__kern_my_cpu_offset() #12
  %add = add i64 %call7, %2
  %3 = inttoptr i64 %add to i8*
  call fastcc void @__percpu_add_case_64(i8* noundef %3, i64 noundef 1) #12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !41
  br label %if.end

if.else:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.percpu_ref, %struct.percpu_ref* %ref, i64 0, i32 1
  %4 = load %struct.percpu_ref_data*, %struct.percpu_ref_data** %data, align 8
  %count = getelementptr inbounds %struct.percpu_ref_data, %struct.percpu_ref_data* %4, i64 0, i32 0
  call fastcc void @__ll_sc_atomic64_add(i64 noundef 1, %struct.atomic64_t* noundef %count) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body1
  call fastcc void @rcu_read_unlock() #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #8 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #9 = { nofree noinline nounwind null_pointer_is_valid readonly "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #10 = { nofree nounwind readonly }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #15 = { cold nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind readonly }

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
!9 = !{i64 2152608339}
!10 = !{i64 2149678479}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2152633933}
!14 = !{i64 2152636362}
!15 = !{i64 2152638612}
!16 = !{i64 2152644382}
!17 = !{i64 2148933027, i64 2148933074, i64 2148933080, i64 2148933117, i64 2148933135, i64 2148934446, i64 2148934494, i64 2148934542, i64 2148934605, i64 2148934654, i64 2148933213, i64 2148933238, i64 2148933264, i64 2148933270, i64 2148934112, i64 2148934152, i64 2148934170, i64 2148934202, i64 2148934230, i64 2148934284, i64 2148934304, i64 2148934401, i64 2148933293, i64 2148933307, i64 2148933313, i64 2148933363, i64 2148933409, i64 2148933442}
!18 = !{i64 2148935206, i64 2148935253, i64 2148935259, i64 2148935296, i64 2148935314, i64 2148936257, i64 2148936305, i64 2148936353, i64 2148936416, i64 2148936465, i64 2148935392, i64 2148935417, i64 2148935443, i64 2148935449, i64 2148935486, i64 2148935492, i64 2148935542, i64 2148935588, i64 2148935621}
!19 = !{i64 2148927324, i64 2148927371, i64 2148927377, i64 2148927414, i64 2148927432, i64 2148928773, i64 2148928821, i64 2148928869, i64 2148928932, i64 2148928981, i64 2148927510, i64 2148927535, i64 2148927561, i64 2148927567, i64 2148928439, i64 2148928479, i64 2148928497, i64 2148928529, i64 2148928557, i64 2148928611, i64 2148928631, i64 2148928728, i64 2148927590, i64 2148927604, i64 2148927610, i64 2148927660, i64 2148927706, i64 2148927739}
!20 = !{i64 2147830939, i64 2147830972, i64 2147831025, i64 2147831084, i64 2147831118, i64 2147831173, i64 2147831202, i64 2147831222}
!21 = !{i64 2149704322}
!22 = !{i64 2149647609}
!23 = !{i64 2148939040, i64 2148939087, i64 2148939093, i64 2148939130, i64 2148939148, i64 2148940459, i64 2148940507, i64 2148940555, i64 2148940618, i64 2148940667, i64 2148939226, i64 2148939251, i64 2148939277, i64 2148939283, i64 2148940125, i64 2148940165, i64 2148940183, i64 2148940215, i64 2148940243, i64 2148940297, i64 2148940317, i64 2148940414, i64 2148939306, i64 2148939320, i64 2148939326, i64 2148939376, i64 2148939422, i64 2148939455}
!24 = !{i64 2152619566}
!25 = !{i64 2152621268}
!26 = !{i64 2152623462}
!27 = !{i64 2149707625}
!28 = !{i64 2148917868, i64 2148917915, i64 2148917921, i64 2148917958, i64 2148917976, i64 2148919316, i64 2148919364, i64 2148919412, i64 2148919475, i64 2148919524, i64 2148918054, i64 2148918079, i64 2148918105, i64 2148918111, i64 2148918982, i64 2148919022, i64 2148919040, i64 2148919072, i64 2148919100, i64 2148919154, i64 2148919174, i64 2148919271, i64 2148918134, i64 2148918148, i64 2148918154, i64 2148918204, i64 2148918250, i64 2148918283}
!29 = !{i64 2149682772}
!30 = !{i64 2152617634}
!31 = !{i64 2147775763, i64 2147776277, i64 2147776307, i64 2147776333, i64 2147776365, i64 2147776394}
!32 = !{i64 2147735929, i64 2147736577, i64 2147736607, i64 2147736639, i64 2147736673, i64 2147736709, i64 2147736734}
!33 = !{i64 2151007007}
!34 = !{i64 2151007819}
!35 = !{i64 2149101550, i64 2149101591, i64 2149101647, i64 2149101699}
!36 = !{i64 2149075604, i64 2149075651, i64 2149075657, i64 2149075694, i64 2149075712, i64 2149076639, i64 2149076687, i64 2149076735, i64 2149076798, i64 2149076847, i64 2149075790, i64 2149075815, i64 2149075841, i64 2149075847, i64 2149075884, i64 2149075890, i64 2149075940, i64 2149075986, i64 2149076019}
!37 = !{i64 2149448991}
!38 = !{i64 2147790344, i64 2147790992, i64 2147791022, i64 2147791053, i64 2147791085, i64 2147791120, i64 2147791145}
!39 = !{i64 2149449208}
!40 = !{i64 2150990215}
!41 = !{i64 2150991027}
