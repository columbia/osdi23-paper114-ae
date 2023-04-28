; ModuleID = 'kernel/rcu/update.c'
source_filename = "kernel/rcu/update.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

module asm ".section\09\22.initcall1.init\22, \22a\22\09\09"
module asm "__initcall__kmod_update__372_240_rcu_set_runtime_mode1:\09\09\09"
module asm ".long\09rcu_set_runtime_mode - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.callback_head = type { %struct.callback_head*, {}* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rcu_synchronize = type { %struct.callback_head, %struct.completion }

@__param_str_rcu_expedited = internal constant [23 x i8] c"rcupdate.rcu_expedited\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@rcu_expedited = external dso_local global i32, align 4
@__param_rcu_expedited = internal constant %struct.kernel_param { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__param_str_rcu_expedited, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @rcu_expedited to i8*) } }, section "__param", align 8
@__UNIQUE_ID_rcu_expeditedtype367 = internal constant [34 x i8] c"update.parmtype=rcu_expedited:int\00", section ".modinfo", align 1
@__param_str_rcu_normal = internal constant [20 x i8] c"rcupdate.rcu_normal\00", align 1
@rcu_normal = external dso_local global i32, align 4
@__param_rcu_normal = internal constant %struct.kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__param_str_rcu_normal, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @rcu_normal to i8*) } }, section "__param", align 8
@__UNIQUE_ID_rcu_normaltype368 = internal constant [31 x i8] c"update.parmtype=rcu_normal:int\00", section ".modinfo", align 1
@__param_str_rcu_normal_after_boot = internal constant [31 x i8] c"rcupdate.rcu_normal_after_boot\00", align 1
@rcu_normal_after_boot = internal global i32 0, align 4
@__param_rcu_normal_after_boot = internal constant %struct.kernel_param { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__param_str_rcu_normal_after_boot, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @rcu_normal_after_boot to i8*) } }, section "__param", align 8
@__UNIQUE_ID_rcu_normal_after_boottype369 = internal constant [42 x i8] c"update.parmtype=rcu_normal_after_boot:int\00", section ".modinfo", align 1
@rcu_scheduler_active = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@rcu_expedited_nesting = internal global %struct.atomic_t { i32 1 }, align 4
@rcu_boot_ended = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@__UNIQUE_ID___addressable_rcu_set_runtime_mode373 = internal global i8* bitcast (i32 ()* @rcu_set_runtime_mode to i8*), section ".discard.addressable", align 8
@__param_str_rcu_cpu_stall_ftrace_dump = internal constant [35 x i8] c"rcupdate.rcu_cpu_stall_ftrace_dump\00", align 1
@rcu_cpu_stall_ftrace_dump = dso_local global i32 0, section ".data..read_mostly", align 4
@__param_rcu_cpu_stall_ftrace_dump = internal constant %struct.kernel_param { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__param_str_rcu_cpu_stall_ftrace_dump, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @rcu_cpu_stall_ftrace_dump to i8*) } }, section "__param", align 8
@__UNIQUE_ID_rcu_cpu_stall_ftrace_dumptype375 = internal constant [46 x i8] c"update.parmtype=rcu_cpu_stall_ftrace_dump:int\00", section ".modinfo", align 1
@__param_str_rcu_cpu_stall_suppress = internal constant [32 x i8] c"rcupdate.rcu_cpu_stall_suppress\00", align 1
@rcu_cpu_stall_suppress = dso_local global i32 0, section ".data..read_mostly", align 4
@__param_rcu_cpu_stall_suppress = internal constant %struct.kernel_param { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__param_str_rcu_cpu_stall_suppress, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @rcu_cpu_stall_suppress to i8*) } }, section "__param", align 8
@__UNIQUE_ID_rcu_cpu_stall_suppresstype376 = internal constant [43 x i8] c"update.parmtype=rcu_cpu_stall_suppress:int\00", section ".modinfo", align 1
@rcu_cpu_stall_timeout = dso_local global i32 21, section ".data..read_mostly", align 4
@__param_str_rcu_cpu_stall_timeout = internal constant [31 x i8] c"rcupdate.rcu_cpu_stall_timeout\00", align 1
@__param_rcu_cpu_stall_timeout = internal constant %struct.kernel_param { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__param_str_rcu_cpu_stall_timeout, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @rcu_cpu_stall_timeout to i8*) } }, section "__param", align 8
@__UNIQUE_ID_rcu_cpu_stall_timeouttype377 = internal constant [42 x i8] c"update.parmtype=rcu_cpu_stall_timeout:int\00", section ".modinfo", align 1
@__param_str_rcu_cpu_stall_suppress_at_boot = internal constant [40 x i8] c"rcupdate.rcu_cpu_stall_suppress_at_boot\00", align 1
@rcu_cpu_stall_suppress_at_boot = dso_local global i32 0, section ".data..read_mostly", align 4
@__param_rcu_cpu_stall_suppress_at_boot = internal constant %struct.kernel_param { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__param_str_rcu_cpu_stall_suppress_at_boot, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @rcu_cpu_stall_suppress_at_boot to i8*) } }, section "__param", align 8
@__UNIQUE_ID_rcu_cpu_stall_suppress_at_boottype378 = internal constant [51 x i8] c"update.parmtype=rcu_cpu_stall_suppress_at_boot:int\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [44 x i8] c"\016\09No expedited grace period (rcu_normal).\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"\016\09No expedited grace period (rcu_normal_after_boot).\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\016\09All grace periods are expedited (rcu_expedited).\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"\016\09RCU CPU stall warnings suppressed (rcu_cpu_stall_suppress).\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"\016\09RCU CPU stall warnings timeout set to %d (rcu_cpu_stall_timeout).\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@llvm.compiler.used = appending global [15 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_rcu_set_runtime_mode373 to i8*), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_rcu_cpu_stall_ftrace_dumptype375, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_rcu_cpu_stall_suppress_at_boottype378, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_rcu_cpu_stall_suppresstype376, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_rcu_cpu_stall_timeouttype377, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_rcu_expeditedtype367, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_rcu_normal_after_boottype369, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_rcu_normaltype368, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_rcu_cpu_stall_ftrace_dump to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_cpu_stall_suppress to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_cpu_stall_suppress_at_boot to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_cpu_stall_timeout to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_expedited to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_normal to i8*), i8* bitcast (%struct.kernel_param* @__param_rcu_normal_after_boot to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i1 @rcu_gp_is_normal() local_unnamed_addr #0 {
entry:
  %0 = load volatile i32, i32* @rcu_normal, align 4
  %tobool = icmp ne i32 %0, 0
  %1 = load i32, i32* @rcu_scheduler_active, align 4
  %cmp = icmp ne i32 %1, 1
  %2 = select i1 %tobool, i1 %cmp, i1 false
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn
define dso_local i1 @rcu_gp_is_expedited() local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* @rcu_expedited, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @rcu_expedited_nesting, i64 0, i32 0), align 4
  %tobool1 = icmp ne i32 %1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_expedite_gp() local_unnamed_addr #1 {
entry:
  call fastcc void @__ll_sc_atomic_add() #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_unexpedite_gp() local_unnamed_addr #1 {
entry:
  call fastcc void @__ll_sc_atomic_sub() #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @rcu_end_inkernel_boot() local_unnamed_addr #1 {
entry:
  call void @rcu_unexpedite_gp() #8
  %0 = load i32, i32* @rcu_normal_after_boot, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %do.body2

do.body2:                                         ; preds = %entry
  store volatile i32 1, i32* @rcu_normal, align 4
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry
  store i1 true, i1* @rcu_boot_ended, align 1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn
define dso_local i1 @rcu_inkernel_boot_has_ended() local_unnamed_addr #2 {
entry:
  %.b1 = load i1, i1* @rcu_boot_ended, align 1
  ret i1 %.b1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @rcu_test_sync_prims() local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define internal i32 @rcu_set_runtime_mode() #4 section ".init.text" {
entry:
  store i32 2, i32* @rcu_scheduler_active, align 4
  call void @kfree_rcu_scheduler_running() #7
  ret i32 0
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @wakeme_after_rcu(%struct.callback_head* noundef %head) #1 {
entry:
  %completion = getelementptr inbounds %struct.callback_head, %struct.callback_head* %head, i64 1
  %0 = bitcast %struct.callback_head* %completion to %struct.completion*
  call void @complete(%struct.completion* noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(%struct.completion* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @__wait_rcu_gp(i1 noundef %checktiny, i32 noundef %n, void (%struct.callback_head*, void (%struct.callback_head*)*)** nocapture noundef readonly %crcu_array, %struct.rcu_synchronize* noundef %rs_array) local_unnamed_addr #1 {
entry:
  %cmp106 = icmp sgt i32 %n, 0
  br i1 %cmp106, label %for.body.preheader, label %for.end64

for.body.preheader:                               ; preds = %entry
  %wide.trip.count120 = zext i32 %n to i64
  br label %for.body

for.cond30.preheader:                             ; preds = %for.inc27
  br i1 %cmp106, label %for.body32.preheader, label %for.end64

for.body32.preheader:                             ; preds = %for.cond30.preheader
  %wide.trip.count129 = zext i32 %n to i64
  br label %for.body32

for.body:                                         ; preds = %for.body.preheader, %for.inc27
  %indvars.iv117 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next118, %for.inc27 ]
  br i1 %checktiny, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %crcu_array, i64 %indvars.iv117
  %0 = load void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %arrayidx, align 8
  %cmp1 = icmp eq void (%struct.callback_head*, void (%struct.callback_head*)*)* %0, @call_rcu
  br i1 %cmp1, label %for.inc27, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %cmp6103.not = icmp eq i64 %indvars.iv117, 0
  br i1 %cmp6103.not, label %for.end, label %for.body7.lr.ph

for.body7.lr.ph:                                  ; preds = %if.end
  %arrayidx11 = getelementptr void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %crcu_array, i64 %indvars.iv117
  %1 = load void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %arrayidx11, align 8
  br label %for.body7

for.body7:                                        ; preds = %for.body7.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx9 = getelementptr void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %crcu_array, i64 %indvars.iv
  %2 = load void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %arrayidx9, align 8
  %cmp12 = icmp eq void (%struct.callback_head*, void (%struct.callback_head*)*)* %2, %1
  br i1 %cmp12, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv117
  br i1 %exitcond.not, label %for.end, label %for.body7

for.end:                                          ; preds = %for.inc, %for.body7, %if.end
  %j.0.lcssa = phi i64 [ 0, %if.end ], [ %indvars.iv, %for.body7 ], [ %indvars.iv117, %for.inc ]
  %3 = and i64 %j.0.lcssa, 4294967295
  %cmp15 = icmp eq i64 %3, %indvars.iv117
  br i1 %cmp15, label %if.then16, label %for.inc27

if.then16:                                        ; preds = %for.end
  %head = getelementptr %struct.rcu_synchronize, %struct.rcu_synchronize* %rs_array, i64 %indvars.iv117, i32 0
  %completion = getelementptr %struct.rcu_synchronize, %struct.rcu_synchronize* %rs_array, i64 %indvars.iv117, i32 1
  call fastcc void @init_completion(%struct.completion* noundef %completion) #8
  %arrayidx22 = getelementptr void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %crcu_array, i64 %indvars.iv117
  %4 = load void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %arrayidx22, align 8
  call void %4(%struct.callback_head* noundef %head, void (%struct.callback_head*)* noundef nonnull @wakeme_after_rcu) #7
  br label %for.inc27

for.inc27:                                        ; preds = %for.end, %if.then16, %land.lhs.true
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %for.cond30.preheader, label %for.body

for.body32:                                       ; preds = %for.body32.preheader, %for.inc62
  %indvars.iv126 = phi i64 [ 0, %for.body32.preheader ], [ %indvars.iv.next127, %for.inc62 ]
  br i1 %checktiny, label %land.lhs.true34, label %if.end39

land.lhs.true34:                                  ; preds = %for.body32
  %arrayidx36 = getelementptr void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %crcu_array, i64 %indvars.iv126
  %5 = load void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %arrayidx36, align 8
  %cmp37 = icmp eq void (%struct.callback_head*, void (%struct.callback_head*)*)* %5, @call_rcu
  br i1 %cmp37, label %for.inc62, label %if.end39

if.end39:                                         ; preds = %land.lhs.true34, %for.body32
  %cmp41109.not = icmp eq i64 %indvars.iv126, 0
  br i1 %cmp41109.not, label %for.end52, label %for.body42.lr.ph

for.body42.lr.ph:                                 ; preds = %if.end39
  %arrayidx46 = getelementptr void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %crcu_array, i64 %indvars.iv126
  %6 = load void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %arrayidx46, align 8
  br label %for.body42

for.body42:                                       ; preds = %for.body42.lr.ph, %for.inc50
  %indvars.iv122 = phi i64 [ 0, %for.body42.lr.ph ], [ %indvars.iv.next123, %for.inc50 ]
  %arrayidx44 = getelementptr void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %crcu_array, i64 %indvars.iv122
  %7 = load void (%struct.callback_head*, void (%struct.callback_head*)*)*, void (%struct.callback_head*, void (%struct.callback_head*)*)** %arrayidx44, align 8
  %cmp47 = icmp eq void (%struct.callback_head*, void (%struct.callback_head*)*)* %7, %6
  br i1 %cmp47, label %for.end52, label %for.inc50

for.inc50:                                        ; preds = %for.body42
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  %exitcond125.not = icmp eq i64 %indvars.iv.next123, %indvars.iv126
  br i1 %exitcond125.not, label %for.end52, label %for.body42

for.end52:                                        ; preds = %for.inc50, %for.body42, %if.end39
  %j.1.lcssa = phi i64 [ 0, %if.end39 ], [ %indvars.iv122, %for.body42 ], [ %indvars.iv126, %for.inc50 ]
  %8 = and i64 %j.1.lcssa, 4294967295
  %cmp53 = icmp eq i64 %8, %indvars.iv126
  br i1 %cmp53, label %if.then54, label %for.inc62

if.then54:                                        ; preds = %for.end52
  %completion57 = getelementptr %struct.rcu_synchronize, %struct.rcu_synchronize* %rs_array, i64 %indvars.iv126, i32 1
  call void @wait_for_completion(%struct.completion* noundef %completion57) #7
  br label %for.inc62

for.inc62:                                        ; preds = %for.end52, %if.then54, %land.lhs.true34
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %for.end64, label %for.body32

for.end64:                                        ; preds = %for.inc62, %entry, %for.cond30.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(%struct.callback_head* noundef, void (%struct.callback_head*)* noundef) #5

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @init_completion(%struct.completion* noundef %x) unnamed_addr #1 {
entry:
  %done = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 0
  store i32 0, i32* %done, align 8
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %x, i64 0, i32 1
  call void @__init_swait_queue_head(%struct.swait_queue_head* noundef %wait, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.lock_class_key* noundef nonnull @init_completion.__key) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(%struct.completion* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @do_trace_rcu_torture_read(i8* nocapture noundef %rcutorturename, %struct.callback_head* nocapture noundef %rhp, i64 noundef %secs, i64 noundef %c_old, i64 noundef %c) local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn
define dso_local void @rcu_early_boot_tests() local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize
define dso_local void @rcupdate_announce_bootup_oddness() local_unnamed_addr #4 section ".init.text" {
entry:
  %0 = load i32, i32* @rcu_normal, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.end15.sink.split

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @rcu_normal_after_boot, align 4
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.else7, label %if.end15.sink.split

if.else7:                                         ; preds = %if.else
  %2 = load i32, i32* @rcu_expedited, align 4
  %tobool8.not = icmp eq i32 %2, 0
  br i1 %tobool8.not, label %if.end15, label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.else7, %if.else, %entry
  %.sink = phi i8* [ getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %entry ], [ getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), %if.else7 ]
  %call6 = call i32 (i8*, ...) @_printk(i8* noundef %.sink) #9
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else7
  %3 = load i32, i32* @rcu_cpu_stall_suppress, align 4
  %tobool16.not = icmp eq i32 %3, 0
  br i1 %tobool16.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end15
  %call21 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %if.end15
  %4 = load i32, i32* @rcu_cpu_stall_timeout, align 4
  %cmp.not = icmp eq i32 %4, 21
  br i1 %cmp.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end22
  %call27 = call i32 (i8*, ...) @_printk(i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 noundef %4) #9
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.end22
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_add() unnamed_addr #1 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_add\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09add\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Ir,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @rcu_expedited_nesting, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @rcu_expedited_nesting, i64 0, i32 0)) #10, !srcloc !7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__ll_sc_atomic_sub() unnamed_addr #1 {
entry:
  %0 = call { i32, i64 } asm sideeffect "// atomic_sub\0A\09prfm\09pstl1strm, $2\0A1:\09ldxr\09${0:w}, $2\0A\09sub\09${0:w}, ${0:w}, ${3:w}\0A\09stxr\09${1:w}, ${0:w}, $2\0A\09cbnz\09${1:w}, 1b\0A", "=&r,=&r,=*Q,Jr,*Q"(i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @rcu_expedited_nesting, i64 0, i32 0), i32 1, i32* elementtype(i32) getelementptr inbounds (%struct.atomic_t, %struct.atomic_t* @rcu_expedited_nesting, i64 0, i32 0)) #10, !srcloc !8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_rcu_scheduler_running() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head* noundef, i8* noundef, %struct.lock_class_key* noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone willreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #4 = { cold noinline nounwind null_pointer_is_valid optsize "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #5 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #6 = { cold null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { cold nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"frame-pointer", i32 1}
!6 = !{!"clang version 14.0.0"}
!7 = !{i64 2147737709, i64 2147738225, i64 2147738255, i64 2147738282, i64 2147738316, i64 2147738346}
!8 = !{i64 2147747430, i64 2147747946, i64 2147747976, i64 2147748003, i64 2147748037, i64 2147748067}
