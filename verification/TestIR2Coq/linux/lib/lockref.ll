; ModuleID = 'lib/lockref.c'
source_filename = "lib/lockref.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.lockref = type { %union.anon }
%union.anon = type { i64 }
%struct.anon = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lockref_get(%struct.lockref* noundef %lockref) local_unnamed_addr #0 {
entry:
  %lock.sroa.0.i = alloca i32, align 4
  %lock_count = getelementptr inbounds %struct.lockref, %struct.lockref* %lockref, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %lock_count, align 8
  %lock.sroa.0.i.0.sroa_cast111 = bitcast i32* %lock.sroa.0.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast111)
  %coerce.val.ii.i104 = trunc i64 %0 to i32
  store i32 %coerce.val.ii.i104, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i105 = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not106 = icmp eq i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i105, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast111)
  br i1 %tobool.not.i.not106, label %while.body.lr.ph, label %do.end36, !prof !7

while.body.lr.ph:                                 ; preds = %entry
  %1 = bitcast %struct.lockref* %lockref to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %retry.0108 = phi i32 [ 100, %while.body.lr.ph ], [ %dec, %cleanup ]
  %old.sroa.0.0107 = phi i64 [ %0, %while.body.lr.ph ], [ %call14.i, %cleanup ]
  %2 = add i64 %old.sroa.0.0107, 4294967296
  %call14.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %1, i64 noundef %old.sroa.0.0107, i64 noundef %2) #3
  %cmp = icmp eq i64 %call14.i, %old.sroa.0.0107
  br i1 %cmp, label %return, label %if.end, !prof !7

if.end:                                           ; preds = %while.body
  %dec = add nsw i32 %retry.0108, -1
  %tobool27.not = icmp eq i32 %dec, 0
  br i1 %tobool27.not, label %do.end36, label %cleanup

cleanup:                                          ; preds = %if.end
  call fastcc void @cpu_relax() #4
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast111)
  %coerce.val.ii.i = trunc i64 %call14.i to i32
  store i32 %coerce.val.ii.i, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not = icmp eq i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast111)
  br i1 %tobool.not.i.not, label %while.body, label %do.end36, !prof !7

do.end36:                                         ; preds = %cleanup, %if.end, %entry
  %3 = bitcast %struct.lockref* %lockref to %struct.anon*
  %rlock.i = bitcast %struct.lockref* %lockref to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #3
  %count38 = getelementptr inbounds %struct.anon, %struct.anon* %3, i64 0, i32 1
  %4 = load i32, i32* %count38, align 4
  %inc39 = add i32 %4, 1
  store i32 %inc39, i32* %count38, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #3
  br label %return

return:                                           ; preds = %while.body, %do.end36
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @cpu_relax() unnamed_addr #0 {
entry:
  call void asm sideeffect "yield", "~{memory}"() #5, !srcloc !8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lockref_get_not_zero(%struct.lockref* noundef %lockref) local_unnamed_addr #0 {
entry:
  %lock.sroa.0.i = alloca i32, align 4
  %lock_count = getelementptr inbounds %struct.lockref, %struct.lockref* %lockref, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %lock_count, align 8
  %old.sroa.0.0126 = trunc i64 %0 to i32
  %lock.sroa.0.i.0.sroa_cast133 = bitcast i32* %lock.sroa.0.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast133)
  store i32 %old.sroa.0.0126, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i127 = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not128 = icmp eq i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i127, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast133)
  br i1 %tobool.not.i.not128, label %while.body.lr.ph, label %do.end42, !prof !7

while.body.lr.ph:                                 ; preds = %entry
  %1 = bitcast %struct.lockref* %lockref to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %retry.0130 = phi i32 [ 100, %while.body.lr.ph ], [ %dec, %cleanup ]
  %old.sroa.10.0.in.in129 = phi i64 [ %0, %while.body.lr.ph ], [ %call14.i, %cleanup ]
  %old.sroa.10.0.in = lshr i64 %old.sroa.10.0.in.in129, 32
  %old.sroa.10.0 = trunc i64 %old.sroa.10.0.in to i32
  %cmp = icmp slt i32 %old.sroa.10.0, 1
  br i1 %cmp, label %cleanup52, label %if.end

if.end:                                           ; preds = %while.body
  %2 = add i64 %old.sroa.10.0.in.in129, 4294967296
  %call14.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %1, i64 noundef %old.sroa.10.0.in.in129, i64 noundef %2) #3
  %cmp22 = icmp eq i64 %call14.i, %old.sroa.10.0.in.in129
  br i1 %cmp22, label %cleanup52, label %if.end32, !prof !7

if.end32:                                         ; preds = %if.end
  %dec = add nsw i32 %retry.0130, -1
  %tobool33.not = icmp eq i32 %dec, 0
  br i1 %tobool33.not, label %do.end42, label %cleanup

cleanup:                                          ; preds = %if.end32
  call fastcc void @cpu_relax() #4
  %old.sroa.0.0 = trunc i64 %call14.i to i32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast133)
  store i32 %old.sroa.0.0, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not = icmp eq i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast133)
  br i1 %tobool.not.i.not, label %while.body, label %do.end42, !prof !7

do.end42:                                         ; preds = %cleanup, %if.end32, %entry
  %3 = bitcast %struct.lockref* %lockref to %struct.anon*
  %rlock.i = bitcast %struct.lockref* %lockref to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #3
  %count44 = getelementptr inbounds %struct.anon, %struct.anon* %3, i64 0, i32 1
  %4 = load i32, i32* %count44, align 4
  %cmp45 = icmp sgt i32 %4, 0
  br i1 %cmp45, label %if.then47, label %if.end50

if.then47:                                        ; preds = %do.end42
  %inc49 = add nuw i32 %4, 1
  store i32 %inc49, i32* %count44, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %do.end42
  %retval1.0 = phi i32 [ 1, %if.then47 ], [ 0, %do.end42 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #3
  br label %cleanup52

cleanup52:                                        ; preds = %if.end, %while.body, %if.end50
  %retval.4 = phi i32 [ %retval1.0, %if.end50 ], [ 0, %while.body ], [ 1, %if.end ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lockref_put_not_zero(%struct.lockref* noundef %lockref) local_unnamed_addr #0 {
entry:
  %lock.sroa.0.i = alloca i32, align 4
  %lock_count = getelementptr inbounds %struct.lockref, %struct.lockref* %lockref, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %lock_count, align 8
  %old.sroa.0.0127 = trunc i64 %0 to i32
  %lock.sroa.0.i.0.sroa_cast134 = bitcast i32* %lock.sroa.0.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast134)
  store i32 %old.sroa.0.0127, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i128 = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not129 = icmp eq i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i128, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast134)
  br i1 %tobool.not.i.not129, label %while.body.lr.ph, label %do.end43, !prof !7

while.body.lr.ph:                                 ; preds = %entry
  %1 = bitcast %struct.lockref* %lockref to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %retry.0131 = phi i32 [ 100, %while.body.lr.ph ], [ %dec33, %cleanup ]
  %old.sroa.10.0.in.in130 = phi i64 [ %0, %while.body.lr.ph ], [ %call14.i, %cleanup ]
  %old.sroa.10.0.in = lshr i64 %old.sroa.10.0.in.in130, 32
  %old.sroa.10.0 = trunc i64 %old.sroa.10.0.in to i32
  %cmp = icmp slt i32 %old.sroa.10.0, 2
  br i1 %cmp, label %cleanup53, label %if.end

if.end:                                           ; preds = %while.body
  %2 = add i64 %old.sroa.10.0.in.in130, -4294967296
  %call14.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %1, i64 noundef %old.sroa.10.0.in.in130, i64 noundef %2) #3
  %cmp22 = icmp eq i64 %call14.i, %old.sroa.10.0.in.in130
  br i1 %cmp22, label %cleanup53, label %if.end32, !prof !7

if.end32:                                         ; preds = %if.end
  %dec33 = add nsw i32 %retry.0131, -1
  %tobool34.not = icmp eq i32 %dec33, 0
  br i1 %tobool34.not, label %do.end43, label %cleanup

cleanup:                                          ; preds = %if.end32
  call fastcc void @cpu_relax() #4
  %old.sroa.0.0 = trunc i64 %call14.i to i32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast134)
  store i32 %old.sroa.0.0, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not = icmp eq i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast134)
  br i1 %tobool.not.i.not, label %while.body, label %do.end43, !prof !7

do.end43:                                         ; preds = %cleanup, %if.end32, %entry
  %3 = bitcast %struct.lockref* %lockref to %struct.anon*
  %rlock.i = bitcast %struct.lockref* %lockref to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #3
  %count45 = getelementptr inbounds %struct.anon, %struct.anon* %3, i64 0, i32 1
  %4 = load i32, i32* %count45, align 4
  %cmp46 = icmp sgt i32 %4, 1
  br i1 %cmp46, label %if.then48, label %if.end51

if.then48:                                        ; preds = %do.end43
  %dec50 = add nsw i32 %4, -1
  store i32 %dec50, i32* %count45, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %do.end43
  %retval1.0 = phi i32 [ 1, %if.then48 ], [ 0, %do.end43 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #3
  br label %cleanup53

cleanup53:                                        ; preds = %if.end, %while.body, %if.end51
  %retval.4 = phi i32 [ %retval1.0, %if.end51 ], [ 0, %while.body ], [ 1, %if.end ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lockref_get_or_lock(%struct.lockref* noundef %lockref) local_unnamed_addr #0 {
entry:
  %lock.sroa.0.i = alloca i32, align 4
  %lock_count = getelementptr inbounds %struct.lockref, %struct.lockref* %lockref, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %lock_count, align 8
  %old.sroa.0.0120 = trunc i64 %0 to i32
  %lock.sroa.0.i.0.sroa_cast131 = bitcast i32* %lock.sroa.0.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast131)
  store i32 %old.sroa.0.0120, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i121 = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not122 = icmp ne i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i121, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast131)
  %old.sroa.10.0.in123 = lshr i64 %0, 32
  %old.sroa.10.0124 = trunc i64 %old.sroa.10.0.in123 to i32
  %cmp125 = icmp slt i32 %old.sroa.10.0124, 1
  %or.cond126 = select i1 %tobool.not.i.not122, i1 true, i1 %cmp125
  br i1 %or.cond126, label %do.end41, label %if.end.lr.ph, !prof !9

if.end.lr.ph:                                     ; preds = %entry
  %1 = bitcast %struct.lockref* %lockref to i8*
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %cleanup
  %retry.0128 = phi i32 [ 100, %if.end.lr.ph ], [ %dec, %cleanup ]
  %old.sroa.10.0.in.in127 = phi i64 [ %0, %if.end.lr.ph ], [ %call14.i, %cleanup ]
  %2 = add i64 %old.sroa.10.0.in.in127, 4294967296
  %call14.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %1, i64 noundef %old.sroa.10.0.in.in127, i64 noundef %2) #3
  %cmp21 = icmp eq i64 %call14.i, %old.sroa.10.0.in.in127
  br i1 %cmp21, label %return, label %if.end31, !prof !7

if.end31:                                         ; preds = %if.end
  %dec = add nsw i32 %retry.0128, -1
  %tobool32.not = icmp eq i32 %dec, 0
  br i1 %tobool32.not, label %do.end41, label %cleanup

cleanup:                                          ; preds = %if.end31
  call fastcc void @cpu_relax() #4
  %old.sroa.0.0 = trunc i64 %call14.i to i32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast131)
  store i32 %old.sroa.0.0, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not = icmp ne i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast131)
  %old.sroa.10.0.in = lshr i64 %call14.i, 32
  %old.sroa.10.0 = trunc i64 %old.sroa.10.0.in to i32
  %cmp = icmp slt i32 %old.sroa.10.0, 1
  %or.cond = select i1 %tobool.not.i.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end41, label %if.end, !prof !9

do.end41:                                         ; preds = %cleanup, %if.end31, %entry
  %3 = bitcast %struct.lockref* %lockref to %struct.anon*
  %rlock.i = bitcast %struct.lockref* %lockref to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #3
  %count43 = getelementptr inbounds %struct.anon, %struct.anon* %3, i64 0, i32 1
  %4 = load i32, i32* %count43, align 4
  %cmp44 = icmp slt i32 %4, 1
  br i1 %cmp44, label %return, label %if.end47

if.end47:                                         ; preds = %do.end41
  %inc49 = add nuw i32 %4, 1
  store i32 %inc49, i32* %count43, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #3
  br label %return

return:                                           ; preds = %if.end, %do.end41, %if.end47
  %retval.4 = phi i32 [ 1, %if.end47 ], [ 0, %do.end41 ], [ 1, %if.end ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lockref_put_return(%struct.lockref* noundef %lockref) local_unnamed_addr #0 {
entry:
  %lock.sroa.0.i = alloca i32, align 4
  %lock_count = getelementptr inbounds %struct.lockref, %struct.lockref* %lockref, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %lock_count, align 8
  %1 = bitcast %struct.lockref* %lockref to i8*
  %old.sroa.0.0113 = trunc i64 %0 to i32
  %lock.sroa.0.i.0.sroa_cast128 = bitcast i32* %lock.sroa.0.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast128)
  store i32 %old.sroa.0.0113, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i117 = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not118 = icmp eq i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i117, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast128)
  br i1 %tobool.not.i.not118, label %while.body, label %cleanup38, !prof !7

while.body:                                       ; preds = %entry, %cleanup
  %retry.0120 = phi i32 [ %dec33, %cleanup ], [ 100, %entry ]
  %old.sroa.10.0.in.in119 = phi i64 [ %call14.i, %cleanup ], [ %0, %entry ]
  %old.sroa.10.0121.in = lshr i64 %old.sroa.10.0.in.in119, 32
  %old.sroa.10.0121 = trunc i64 %old.sroa.10.0121.in to i32
  %dec = add i32 %old.sroa.10.0121, -1
  %cmp = icmp slt i32 %old.sroa.10.0121, 1
  br i1 %cmp, label %cleanup38, label %if.end

if.end:                                           ; preds = %while.body
  %coerce.val.ii122 = and i64 %old.sroa.10.0.in.in119, 4294967295
  %new.sroa.5.0.insert.ext = zext i32 %dec to i64
  %new.sroa.5.0.insert.shift = shl nuw nsw i64 %new.sroa.5.0.insert.ext, 32
  %new.sroa.0.0.insert.insert = or i64 %new.sroa.5.0.insert.shift, %coerce.val.ii122
  %call14.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %1, i64 noundef %old.sroa.10.0.in.in119, i64 noundef %new.sroa.0.0.insert.insert) #3
  %cmp21 = icmp eq i64 %call14.i, %old.sroa.10.0.in.in119
  br i1 %cmp21, label %cleanup38, label %if.end32, !prof !7

if.end32:                                         ; preds = %if.end
  %dec33 = add nsw i32 %retry.0120, -1
  %tobool34.not = icmp eq i32 %dec33, 0
  br i1 %tobool34.not, label %cleanup38, label %cleanup

cleanup:                                          ; preds = %if.end32
  call fastcc void @cpu_relax() #4
  %old.sroa.0.0 = trunc i64 %call14.i to i32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast128)
  store i32 %old.sroa.0.0, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not = icmp eq i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast128)
  br i1 %tobool.not.i.not, label %while.body, label %cleanup38, !prof !7

cleanup38:                                        ; preds = %while.body, %if.end, %cleanup, %if.end32, %entry
  %2 = phi i32 [ -1, %entry ], [ -1, %if.end32 ], [ -1, %cleanup ], [ %dec, %if.end ], [ -1, %while.body ]
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lockref_put_or_lock(%struct.lockref* noundef %lockref) local_unnamed_addr #0 {
entry:
  %lock.sroa.0.i = alloca i32, align 4
  %lock_count = getelementptr inbounds %struct.lockref, %struct.lockref* %lockref, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %lock_count, align 8
  %old.sroa.0.0121 = trunc i64 %0 to i32
  %lock.sroa.0.i.0.sroa_cast132 = bitcast i32* %lock.sroa.0.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast132)
  store i32 %old.sroa.0.0121, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i122 = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not123 = icmp ne i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i122, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast132)
  %old.sroa.10.0.in124 = lshr i64 %0, 32
  %old.sroa.10.0125 = trunc i64 %old.sroa.10.0.in124 to i32
  %cmp126 = icmp slt i32 %old.sroa.10.0125, 2
  %or.cond127 = select i1 %tobool.not.i.not123, i1 true, i1 %cmp126
  br i1 %or.cond127, label %do.end42, label %if.end.lr.ph, !prof !9

if.end.lr.ph:                                     ; preds = %entry
  %1 = bitcast %struct.lockref* %lockref to i8*
  br label %if.end

if.end:                                           ; preds = %if.end.lr.ph, %cleanup
  %retry.0129 = phi i32 [ 100, %if.end.lr.ph ], [ %dec32, %cleanup ]
  %old.sroa.10.0.in.in128 = phi i64 [ %0, %if.end.lr.ph ], [ %call14.i, %cleanup ]
  %2 = add i64 %old.sroa.10.0.in.in128, -4294967296
  %call14.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %1, i64 noundef %old.sroa.10.0.in.in128, i64 noundef %2) #3
  %cmp21 = icmp eq i64 %call14.i, %old.sroa.10.0.in.in128
  br i1 %cmp21, label %return, label %if.end31, !prof !7

if.end31:                                         ; preds = %if.end
  %dec32 = add nsw i32 %retry.0129, -1
  %tobool33.not = icmp eq i32 %dec32, 0
  br i1 %tobool33.not, label %do.end42, label %cleanup

cleanup:                                          ; preds = %if.end31
  call fastcc void @cpu_relax() #4
  %old.sroa.0.0 = trunc i64 %call14.i to i32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast132)
  store i32 %old.sroa.0.0, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not = icmp ne i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast132)
  %old.sroa.10.0.in = lshr i64 %call14.i, 32
  %old.sroa.10.0 = trunc i64 %old.sroa.10.0.in to i32
  %cmp = icmp slt i32 %old.sroa.10.0, 2
  %or.cond = select i1 %tobool.not.i.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end42, label %if.end, !prof !9

do.end42:                                         ; preds = %cleanup, %if.end31, %entry
  %3 = bitcast %struct.lockref* %lockref to %struct.anon*
  %rlock.i = bitcast %struct.lockref* %lockref to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #3
  %count44 = getelementptr inbounds %struct.anon, %struct.anon* %3, i64 0, i32 1
  %4 = load i32, i32* %count44, align 4
  %cmp45 = icmp slt i32 %4, 2
  br i1 %cmp45, label %return, label %if.end48

if.end48:                                         ; preds = %do.end42
  %dec50 = add nsw i32 %4, -1
  store i32 %dec50, i32* %count44, align 4
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #3
  br label %return

return:                                           ; preds = %if.end, %do.end42, %if.end48
  %retval.4 = phi i32 [ 1, %if.end48 ], [ 0, %do.end42 ], [ 1, %if.end ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local void @lockref_mark_dead(%struct.lockref* noundef %lockref) local_unnamed_addr #0 {
entry:
  %counter.i.i = bitcast %struct.lockref* %lockref to i32*
  %0 = load volatile i32, i32* %counter.i.i, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !10

do.body4:                                         ; preds = %entry
  call void asm sideeffect ".pushsection __bug_table,\22aw\22; .align 2; 14470: .long 14471f - 14470b; .pushsection .rodata.str,\22aMS\22,@progbits,1; 14472: .string \22lib/lockref.c\22; .popsection; .long 14472b - 14470b; .short 189; .short 0; .popsection; 14471: brk 0x800", ""() #5, !srcloc !11
  unreachable

do.end7:                                          ; preds = %entry
  %1 = bitcast %struct.lockref* %lockref to %struct.anon*
  %count = getelementptr inbounds %struct.anon, %struct.anon* %1, i64 0, i32 1
  store i32 -128, i32* %count, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define dso_local i32 @lockref_get_not_dead(%struct.lockref* noundef %lockref) local_unnamed_addr #0 {
entry:
  %lock.sroa.0.i = alloca i32, align 4
  %lock_count = getelementptr inbounds %struct.lockref, %struct.lockref* %lockref, i64 0, i32 0, i32 0
  %0 = load volatile i64, i64* %lock_count, align 8
  %old.sroa.0.0126 = trunc i64 %0 to i32
  %lock.sroa.0.i.0.sroa_cast133 = bitcast i32* %lock.sroa.0.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast133)
  store i32 %old.sroa.0.0126, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i127 = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not128 = icmp eq i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i127, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast133)
  br i1 %tobool.not.i.not128, label %while.body.lr.ph, label %do.end42, !prof !7

while.body.lr.ph:                                 ; preds = %entry
  %1 = bitcast %struct.lockref* %lockref to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %retry.0130 = phi i32 [ 100, %while.body.lr.ph ], [ %dec, %cleanup ]
  %old.sroa.10.0.in.in129 = phi i64 [ %0, %while.body.lr.ph ], [ %call14.i, %cleanup ]
  %cmp = icmp slt i64 %old.sroa.10.0.in.in129, 0
  br i1 %cmp, label %cleanup52, label %if.end

if.end:                                           ; preds = %while.body
  %2 = add nuw i64 %old.sroa.10.0.in.in129, 4294967296
  %call14.i = call fastcc i64 @__cmpxchg_case_64(i8* noundef %1, i64 noundef %old.sroa.10.0.in.in129, i64 noundef %2) #3
  %cmp22 = icmp eq i64 %call14.i, %old.sroa.10.0.in.in129
  br i1 %cmp22, label %cleanup52, label %if.end32, !prof !7

if.end32:                                         ; preds = %if.end
  %dec = add nsw i32 %retry.0130, -1
  %tobool33.not = icmp eq i32 %dec, 0
  br i1 %tobool33.not, label %do.end42, label %cleanup

cleanup:                                          ; preds = %if.end32
  call fastcc void @cpu_relax() #4
  %old.sroa.0.0 = trunc i64 %call14.i to i32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast133)
  store i32 %old.sroa.0.0, i32* %lock.sroa.0.i, align 4
  %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i = load volatile i32, i32* %lock.sroa.0.i, align 4
  %tobool.not.i.not = icmp eq i32 %lock.sroa.0.i.0.lock.sroa.0.i.0.lock.sroa.0.0.lock.sroa.0.0.lock.sroa.0.0..i, 0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %lock.sroa.0.i.0.sroa_cast133)
  br i1 %tobool.not.i.not, label %while.body, label %do.end42, !prof !7

do.end42:                                         ; preds = %cleanup, %if.end32, %entry
  %3 = bitcast %struct.lockref* %lockref to %struct.anon*
  %rlock.i = bitcast %struct.lockref* %lockref to %struct.raw_spinlock*
  call fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %rlock.i) #3
  %count44 = getelementptr inbounds %struct.anon, %struct.anon* %3, i64 0, i32 1
  %4 = load i32, i32* %count44, align 4
  %cmp45 = icmp sgt i32 %4, -1
  br i1 %cmp45, label %if.then47, label %if.end50

if.then47:                                        ; preds = %do.end42
  %inc49 = add nuw i32 %4, 1
  store i32 %inc49, i32* %count44, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %do.end42
  %retval1.0 = phi i32 [ 1, %if.then47 ], [ 0, %do.end42 ]
  call fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %rlock.i) #3
  br label %cleanup52

cleanup52:                                        ; preds = %if.end, %while.body, %if.end50
  %retval.4 = phi i32 [ %retval1.0, %if.end50 ], [ 0, %while.body ], [ 1, %if.end ]
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %call = call fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) #4
  ret i64 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc i64 @__ll_sc__cmpxchg_case_64(i8* noundef %ptr, i64 noundef %old, i64 noundef %new) unnamed_addr #0 {
entry:
  %0 = bitcast i8* %ptr to i64*
  %1 = call { i64, i64 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldxr\09$1, $2\0A\09eor\09$0, $1, $3\0A\09cbnz\09$0, 2f\0A\09stxr\09${0:w}, $4, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Lr,r,*Q"(i64* elementtype(i64) %0, i64 %old, i64 %new, i64* elementtype(i64) %0) #5, !srcloc !12
  %asmresult1 = extractvalue { i64, i64 } %1, 1
  ret i64 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  call fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) #4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_lock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.raw_spinlock* %lock to i8*
  %call11.i.i.i.i = call fastcc i32 @__cmpxchg_case_acq_32(i8* noundef %0, i32 noundef 0) #3
  %cmp.not.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %queued_spin_lock.exit, label %if.end.i, !prof !7

if.end.i:                                         ; preds = %entry
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, %struct.raw_spinlock* %lock, i64 0, i32 0
  call void @queued_spin_lock_slowpath(%struct.qspinlock* noundef %raw_lock, i32 noundef %call11.i.i.i.i) #3
  br label %queued_spin_lock.exit

queued_spin_lock.exit:                            ; preds = %entry, %if.end.i
  ret void
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
  %1 = call { i64, i32 } asm sideeffect "\09prfm\09pstl1strm, $2\0A1:\09ldaxr\09${1:w}, $2\0A\09eor\09${0:w}, ${1:w}, ${3:w}\0A\09cbnz\09${0:w}, 2f\0A\09stxr\09${0:w}, ${4:w}, $2\0A\09cbnz\09${0:w}, 1b\0A\09\0A2:", "=&r,=&r,=*Q,Kr,r,*Q,~{memory}"(i32* elementtype(i32) %0, i64 %old, i32 1, i32* elementtype(i32) %0) #5, !srcloc !14
  %asmresult1 = extractvalue { i64, i32 } %1, 1
  ret i32 %asmresult1
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @__raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  call fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) #4
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid
define internal fastcc void @do_raw_spin_unlock(%struct.raw_spinlock* noundef %lock) unnamed_addr #0 {
entry:
  %locked.i = bitcast %struct.raw_spinlock* %lock to i8*
  call void asm sideeffect "stlrb ${1:w}, $0", "=*Q,r,~{memory}"(i8* elementtype(i8) %locked.i, i8 0) #5, !srcloc !16
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" "warn-stack-size"="2048" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+v8a,-aes,-crypto,-fp-armv8,-neon,-sha2" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

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
!8 = !{i64 1695641}
!9 = !{!"branch_weights", i32 2002, i32 2000}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2149530103}
!12 = !{i64 2147876197, i64 2147876230, i64 2147876281, i64 2147876337, i64 2147876370, i64 2147876424, i64 2147876453, i64 2147876473}
!13 = !{i64 2149361645}
!14 = !{i64 2147881117, i64 2147881150, i64 2147881203, i64 2147881262, i64 2147881296, i64 2147881351, i64 2147881380, i64 2147881400}
!15 = !{i64 2149368926}
!16 = !{i64 2149161156}
