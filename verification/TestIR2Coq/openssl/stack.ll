; ModuleID = 'crypto/stack/stack.c'
source_filename = "crypto/stack/stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_st = type { i32, i8**, i32, i32, i32 (i8*, i8*)* }

@.str = private unnamed_addr constant [21 x i8] c"crypto/stack/stack.c\00", align 1
@__func__.OPENSSL_sk_dup = private unnamed_addr constant [15 x i8] c"OPENSSL_sk_dup\00", align 1
@__func__.OPENSSL_sk_deep_copy = private unnamed_addr constant [21 x i8] c"OPENSSL_sk_deep_copy\00", align 1
@__func__.sk_reserve = private unnamed_addr constant [11 x i8] c"sk_reserve\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 (i8*, i8*)* @OPENSSL_sk_set_cmp_func(%struct.stack_st* nocapture noundef %sk, i32 (i8*, i8*)* noundef %c) local_unnamed_addr #0 {
entry:
  %comp = getelementptr inbounds %struct.stack_st, %struct.stack_st* %sk, i64 0, i32 4
  %0 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %comp, align 8, !tbaa !4
  %cmp.not = icmp eq i32 (i8*, i8*)* %0, %c
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sorted = getelementptr inbounds %struct.stack_st, %struct.stack_st* %sk, i64 0, i32 2
  store i32 0, i32* %sorted, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 (i8*, i8*)* %c, i32 (i8*, i8*)** %comp, align 8, !tbaa !4
  ret i32 (i8*, i8*)* %0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st* @OPENSSL_sk_dup(%struct.stack_st* noundef readonly %sk) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 32, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 48) #7
  %0 = bitcast i8* %call to %struct.stack_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.stack_st* %sk, null
  br i1 %cmp1, label %if.end3.thread, label %lor.lhs.false

if.end3.thread:                                   ; preds = %if.end
  %num = bitcast i8* %call to i32*
  store i32 0, i32* %num, align 8, !tbaa !11
  %sorted = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %sorted to i32*
  store i32 0, i32* %1, align 8, !tbaa !10
  %comp = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %comp to i32 (i8*, i8*)**
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %2, align 8, !tbaa !4
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %3 = bitcast %struct.stack_st* %sk to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %call, i8* noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !12
  %num5 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %sk, i64 0, i32 0
  %4 = load i32, i32* %num5, align 8, !tbaa !11
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3.thread, %lor.lhs.false
  %data = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %data to i8***
  store i8** null, i8*** %5, align 8, !tbaa !15
  %num_alloc = getelementptr inbounds i8, i8* %call, i64 20
  %6 = bitcast i8* %num_alloc to i32*
  store i32 0, i32* %6, align 4, !tbaa !16
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %num_alloc9 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %sk, i64 0, i32 3
  %7 = load i32, i32* %num_alloc9, align 4, !tbaa !16
  %conv = sext i32 %7 to i64
  %mul = shl nsw i64 %conv, 3
  %call10 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 68) #7
  %data11 = getelementptr inbounds i8, i8* %call, i64 8
  %8 = bitcast i8* %data11 to i8**
  store i8* %call10, i8** %8, align 8, !tbaa !15
  %cmp12 = icmp eq i8* %call10, null
  br i1 %cmp12, label %err, label %if.end15

if.end15:                                         ; preds = %if.end8
  %data17 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %sk, i64 0, i32 1
  %9 = bitcast i8*** %data17 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !15
  %11 = load i32, i32* %num5, align 8, !tbaa !11
  %conv19 = sext i32 %11 to i64
  %mul20 = shl nsw i64 %conv19, 3
  %call21 = tail call i8* @memcpy(i8* noundef nonnull %call10, i8* noundef %10, i64 noundef %mul20) #7
  br label %cleanup

err:                                              ; preds = %if.end8, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.OPENSSL_sk_dup, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #7
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end15, %if.then7
  %retval.0 = phi %struct.stack_st* [ null, %err ], [ %0, %if.then7 ], [ %0, %if.end15 ]
  ret %struct.stack_st* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_sk_free(%struct.stack_st* noundef %st) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  %0 = bitcast i8*** %data to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !15
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 414) #7
  %2 = bitcast %struct.stack_st* %st to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 415) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st* @OPENSSL_sk_deep_copy(%struct.stack_st* noundef readonly %sk, i8* (i8*)* nocapture noundef readonly %copy_func, void (i8*)* nocapture noundef readonly %free_func) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 32, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 86) #7
  %0 = bitcast i8* %call to %struct.stack_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.stack_st* %sk, null
  br i1 %cmp1, label %if.end3.thread, label %lor.lhs.false

if.end3.thread:                                   ; preds = %if.end
  %num = bitcast i8* %call to i32*
  store i32 0, i32* %num, align 8, !tbaa !11
  %sorted = getelementptr inbounds i8, i8* %call, i64 16
  %1 = bitcast i8* %sorted to i32*
  store i32 0, i32* %1, align 8, !tbaa !10
  %comp = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %comp to i32 (i8*, i8*)**
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %2, align 8, !tbaa !4
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %3 = bitcast %struct.stack_st* %sk to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %call, i8* noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !12
  %num5 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %sk, i64 0, i32 0
  %4 = load i32, i32* %num5, align 8, !tbaa !11
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3.thread, %lor.lhs.false
  %data = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %data to i8***
  store i8** null, i8*** %5, align 8, !tbaa !15
  %num_alloc = getelementptr inbounds i8, i8* %call, i64 20
  %6 = bitcast i8* %num_alloc to i32*
  store i32 0, i32* %6, align 4, !tbaa !16
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %cmp10 = icmp sgt i32 %4, 4
  %spec.select = select i1 %cmp10, i32 %4, i32 4
  %num_alloc12 = getelementptr inbounds i8, i8* %call, i64 20
  %7 = bitcast i8* %num_alloc12 to i32*
  store i32 %spec.select, i32* %7, align 4, !tbaa !16
  %conv88 = zext i32 %spec.select to i64
  %mul = shl nuw nsw i64 %conv88, 3
  %call14 = tail call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 106) #7
  %data15 = getelementptr inbounds i8, i8* %call, i64 8
  %8 = bitcast i8* %data15 to i8***
  %9 = bitcast i8* %data15 to i8**
  store i8* %call14, i8** %9, align 8, !tbaa !15
  %cmp17 = icmp eq i8* %call14, null
  br i1 %cmp17, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8
  %num21 = bitcast i8* %call to i32*
  %10 = load i32, i32* %num21, align 8, !tbaa !11
  %cmp2291 = icmp sgt i32 %10, 0
  br i1 %cmp2291, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data24 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %sk, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %11 = phi i32 [ %10, %for.body.lr.ph ], [ %18, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %12 = load i8**, i8*** %data24, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i8*, i8** %12, i64 %indvars.iv
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !14
  %cmp25 = icmp eq i8* %13, null
  br i1 %cmp25, label %for.inc, label %if.end28

if.end28:                                         ; preds = %for.body
  %call32 = tail call i8* %copy_func(i8* noundef nonnull %13) #7
  %14 = load i8**, i8*** %8, align 8, !tbaa !15
  %arrayidx35 = getelementptr inbounds i8*, i8** %14, i64 %indvars.iv
  store i8* %call32, i8** %arrayidx35, align 8, !tbaa !14
  %cmp36 = icmp eq i8* %call32, null
  br i1 %cmp36, label %while.cond.preheader, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  %.pre = load i32, i32* %num21, align 8, !tbaa !11
  br label %for.inc

while.cond.preheader:                             ; preds = %if.end28
  %15 = trunc i64 %indvars.iv to i32
  %cmp3995.not = icmp eq i32 %15, 0
  br i1 %cmp3995.not, label %err, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %if.end50
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %if.end50 ], [ %indvars.iv, %while.cond.preheader ]
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, -1
  %16 = load i8**, i8*** %8, align 8, !tbaa !15
  %arrayidx43 = getelementptr inbounds i8*, i8** %16, i64 %indvars.iv.next100
  %17 = load i8*, i8** %arrayidx43, align 8, !tbaa !14
  %cmp44.not = icmp eq i8* %17, null
  br i1 %cmp44.not, label %if.end50, label %if.then46

if.then46:                                        ; preds = %while.body
  tail call void %free_func(i8* noundef nonnull %17) #7
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %while.body
  %cmp39 = icmp sgt i64 %indvars.iv99, 1
  br i1 %cmp39, label %while.body, label %err, !llvm.loop !17

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %for.body
  %18 = phi i32 [ %.pre, %if.end28.for.inc_crit_edge ], [ %11, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %19 = sext i32 %18 to i64
  %cmp22 = icmp slt i64 %indvars.iv.next, %19
  br i1 %cmp22, label %for.body, label %cleanup, !llvm.loop !19

err:                                              ; preds = %if.end50, %while.cond.preheader, %if.end8, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.OPENSSL_sk_deep_copy, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #7
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %for.cond.preheader, %err, %if.then7
  %retval.0 = phi %struct.stack_st* [ null, %err ], [ %0, %if.then7 ], [ %0, %for.cond.preheader ], [ %0, %for.inc ]
  ret %struct.stack_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef null, i32 noundef 0) #8
  ret %struct.stack_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef %c, i32 noundef %n) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 221) #7
  %0 = bitcast i8* %call to %struct.stack_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %comp = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %comp to i32 (i8*, i8*)**
  store i32 (i8*, i8*)* %c, i32 (i8*, i8*)** %1, align 8, !tbaa !4
  %cmp1 = icmp slt i32 %n, 1
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @sk_reserve(%struct.stack_st* noundef nonnull %0, i32 noundef %n, i32 noundef 1) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end3
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef nonnull %0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.then5
  %retval.0 = phi %struct.stack_st* [ null, %if.then5 ], [ null, %entry ], [ %0, %if.end ], [ %0, %if.end3 ]
  ret %struct.stack_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.stack_st* @OPENSSL_sk_new(i32 (i8*, i8*)* noundef %c) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_reserve(i32 (i8*, i8*)* noundef %c, i32 noundef 0) #8
  ret %struct.stack_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_reserve(%struct.stack_st* nocapture noundef %st, i32 noundef %n, i32 noundef %exact) unnamed_addr #1 {
entry:
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  %sub = sub nsw i32 2147483647, %0
  %cmp = icmp slt i32 %sub, %n
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add = add nsw i32 %0, %n
  %1 = icmp sgt i32 %add, 4
  %spec.store.select = select i1 %1, i32 %add, i32 4
  %data = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  %2 = load i8**, i8*** %data, align 8, !tbaa !15
  %cmp5 = icmp eq i8** %2, null
  %3 = bitcast i8** %2 to i8*
  br i1 %cmp5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.end
  %conv = zext i32 %spec.store.select to i64
  %mul = shl nuw nsw i64 %conv, 3
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 192) #7
  %4 = bitcast i8*** %data to i8**
  store i8* %call, i8** %4, align 8, !tbaa !15
  %cmp8 = icmp eq i8* %call, null
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then6
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.sk_reserve, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  %num_alloc12 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 3
  store i32 %spec.store.select, i32* %num_alloc12, align 4, !tbaa !16
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %tobool.not = icmp eq i32 %exact, 0
  %num_alloc15 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 3
  %5 = load i32, i32* %num_alloc15, align 4, !tbaa !16
  br i1 %tobool.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end13
  %cmp16.not = icmp sgt i32 %spec.store.select, %5
  br i1 %cmp16.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.then14
  %call21 = tail call fastcc i32 @compute_growth(i32 noundef %spec.store.select, i32 noundef %5) #8
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %cleanup, label %if.end31

if.else:                                          ; preds = %if.end13
  %cmp27 = icmp eq i32 %spec.store.select, %5
  br i1 %cmp27, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.else, %if.end19
  %num_alloc.0 = phi i32 [ %spec.store.select, %if.else ], [ %call21, %if.end19 ]
  %conv33 = sext i32 %num_alloc.0 to i64
  %mul34 = shl nsw i64 %conv33, 3
  %call35 = tail call i8* @CRYPTO_realloc(i8* noundef nonnull %3, i64 noundef %mul34, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 210) #7
  %cmp36 = icmp eq i8* %call35, null
  br i1 %cmp36, label %cleanup, label %if.end39

if.end39:                                         ; preds = %if.end31
  %6 = bitcast i8*** %data to i8**
  store i8* %call35, i8** %6, align 8, !tbaa !15
  %num_alloc41 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 3
  store i32 %num_alloc.0, i32* %num_alloc41, align 4, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.else, %if.end19, %if.then14, %entry, %if.end39, %if.end11, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 1, %if.end11 ], [ 1, %if.end39 ], [ 0, %entry ], [ 1, %if.then14 ], [ 0, %if.end19 ], [ 1, %if.else ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_sk_reserve(%struct.stack_st* noundef %st, i32 noundef %n) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %n, 0
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = tail call fastcc i32 @sk_reserve(%struct.stack_st* noundef nonnull %st, i32 noundef %n, i32 noundef 1) #8
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %call, %if.end3 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %st, i8* noundef %data, i32 noundef %loc) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  %cmp1 = icmp eq i32 %0, 2147483647
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @sk_reserve(%struct.stack_st* noundef nonnull %st, i32 noundef 1, i32 noundef 0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = load i32, i32* %num, align 8, !tbaa !11
  %cmp5 = icmp sle i32 %1, %loc
  %cmp7 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp7, %cmp5
  %data9 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  %2 = load i8**, i8*** %data9, align 8, !tbaa !15
  br i1 %or.cond, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end3
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  store i8* %data, i8** %arrayidx, align 8, !tbaa !14
  br label %if.end22

if.else:                                          ; preds = %if.end3
  %add = add nuw nsw i32 %loc, 1
  %idxprom1243 = zext i32 %add to i64
  %arrayidx13 = getelementptr inbounds i8*, i8** %2, i64 %idxprom1243
  %3 = bitcast i8** %arrayidx13 to i8*
  %idxprom1544 = zext i32 %loc to i64
  %arrayidx16 = getelementptr inbounds i8*, i8** %2, i64 %idxprom1544
  %4 = bitcast i8** %arrayidx16 to i8*
  %sub = sub nsw i32 %1, %loc
  %conv = sext i32 %sub to i64
  %mul = shl nsw i64 %conv, 3
  %call18 = tail call i8* @memmove(i8* noundef %3, i8* noundef %4, i64 noundef %mul) #7
  %5 = load i8**, i8*** %data9, align 8, !tbaa !15
  %arrayidx21 = getelementptr inbounds i8*, i8** %5, i64 %idxprom1544
  store i8* %data, i8** %arrayidx21, align 8, !tbaa !14
  %.pre = load i32, i32* %num, align 8, !tbaa !11
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then8
  %6 = phi i32 [ %.pre, %if.else ], [ %1, %if.then8 ]
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %num, align 8, !tbaa !11
  %sorted = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 2
  store i32 0, i32* %sorted, align 8, !tbaa !10
  br label %return

return:                                           ; preds = %if.end, %entry, %lor.lhs.false, %if.end22
  %retval.0 = phi i32 [ %inc, %if.end22 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_sk_delete_ptr(%struct.stack_st* nocapture noundef %st, i8* noundef readnone %p) local_unnamed_addr #1 {
entry:
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  %cmp9 = icmp sgt i32 %0, 0
  br i1 %cmp9, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  %1 = load i8**, i8*** %data, align 8, !tbaa !15
  %wide.trip.count = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %indvars.iv
  %2 = load i8*, i8** %arrayidx, align 8, !tbaa !14
  %cmp1 = icmp eq i8* %2, %p
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32
  %call = tail call fastcc i8* @internal_delete(%struct.stack_st* noundef nonnull %st, i32 noundef %3) #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !20

cleanup:                                          ; preds = %for.inc, %entry, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ null, %entry ], [ null, %for.inc ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @internal_delete(%struct.stack_st* nocapture noundef %st, i32 noundef %loc) unnamed_addr #1 {
entry:
  %data = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  %0 = load i8**, i8*** %data, align 8, !tbaa !15
  %idxprom = sext i32 %loc to i64
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !14
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %2 = load i32, i32* %num, align 8, !tbaa !11
  %sub = add nsw i32 %2, -1
  %cmp.not = icmp eq i32 %sub, %loc
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast i8** %arrayidx to i8*
  %add = add nsw i32 %loc, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds i8*, i8** %0, i64 %idxprom5
  %4 = bitcast i8** %arrayidx6 to i8*
  %5 = xor i32 %loc, -1
  %sub9 = add i32 %2, %5
  %conv = sext i32 %sub9 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @memmove(i8* noundef nonnull %3, i8* noundef %4, i64 noundef %mul) #7
  %.pre = load i32, i32* %num, align 8, !tbaa !11
  %.pre21 = add nsw i32 %.pre, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %dec.pre-phi = phi i32 [ %.pre21, %if.then ], [ %sub, %entry ]
  store i32 %dec.pre-phi, i32* %num, align 8, !tbaa !11
  ret i8* %1
}

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_sk_delete(%struct.stack_st* noundef %st, i32 noundef %loc) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  %cmp1 = icmp slt i32 %loc, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  %cmp3.not = icmp sgt i32 %0, %loc
  br i1 %cmp3.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false2
  %call = tail call fastcc i8* @internal_delete(%struct.stack_st* noundef nonnull %st, i32 noundef %loc) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false2, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %lor.lhs.false2 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_sk_find(%struct.stack_st* noundef %st, i8* noundef %data) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @internal_find(%struct.stack_st* noundef %st, i8* noundef %data, i32 noundef 2, i32* noundef null) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @internal_find(%struct.stack_st* noundef %st, i8* noundef %data, i32 noundef %ret_val_options, i32* noundef %pnum) unnamed_addr #1 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !14
  %cmp = icmp eq %struct.stack_st* %st, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %comp = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 4
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %comp, align 8, !tbaa !4
  %cmp2 = icmp eq i32 (i8*, i8*)* %1, null
  br i1 %cmp2, label %for.cond.preheader, label %if.end16

for.cond.preheader:                               ; preds = %if.end
  %cmp5105 = icmp sgt i32 %0, 0
  br i1 %cmp5105, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data6 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  %2 = load i8**, i8*** %data6, align 8, !tbaa !15
  %wide.trip.count = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %indvars.iv
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !14
  %cmp7 = icmp eq i8* %3, %data
  br i1 %cmp7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body
  %4 = trunc i64 %indvars.iv to i32
  %cmp9.not = icmp eq i32* %pnum, null
  br i1 %cmp9.not, label %cleanup, label %if.then10

if.then10:                                        ; preds = %if.then8
  store i32 1, i32* %pnum, align 4, !tbaa !13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !21

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %cmp13.not = icmp eq i32* %pnum, null
  br i1 %cmp13.not, label %cleanup, label %if.then14

if.then14:                                        ; preds = %for.end
  store i32 0, i32* %pnum, align 4, !tbaa !13
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %sorted = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 2
  %5 = load i32, i32* %sorted, align 8, !tbaa !10
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then17, label %if.end26

if.then17:                                        ; preds = %if.end16
  %cmp19 = icmp sgt i32 %0, 1
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.then17
  %data21 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  %6 = bitcast i8*** %data21 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !15
  %conv99 = zext i32 %0 to i64
  tail call void @qsort(i8* noundef %7, i64 noundef %conv99, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull %1) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.then17
  store i32 1, i32* %sorted, align 8, !tbaa !10
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.end16
  %cmp27 = icmp eq i8* %data, null
  br i1 %cmp27, label %cleanup, label %if.end30

if.end30:                                         ; preds = %if.end26
  %cmp31.not = icmp eq i32* %pnum, null
  %or = or i32 %ret_val_options, 2
  %spec.select = select i1 %cmp31.not, i32 %ret_val_options, i32 %or
  %8 = bitcast i8** %data.addr to i8*
  %data35 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  %9 = bitcast i8*** %data35 to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !15
  %11 = load i32, i32* %num, align 8, !tbaa !11
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %comp, align 8, !tbaa !4
  %call = call i8* @ossl_bsearch(i8* noundef nonnull %8, i8* noundef %10, i32 noundef %11, i32 noundef 8, i32 (i8*, i8*)* noundef %12, i32 noundef %spec.select) #7
  br i1 %cmp31.not, label %if.end56, label %if.then40

if.then40:                                        ; preds = %if.end30
  store i32 0, i32* %pnum, align 4, !tbaa !13
  %cond = icmp eq i8* %call, null
  br i1 %cond, label %cleanup, label %if.then43

if.then43:                                        ; preds = %if.then40
  %13 = bitcast i8* %call to i8**
  %14 = load i8**, i8*** %data35, align 8, !tbaa !15
  %15 = load i32, i32* %num, align 8, !tbaa !11
  %idx.ext101 = sext i32 %15 to i64
  %add.ptr102 = getelementptr inbounds i8*, i8** %14, i64 %idx.ext101
  %cmp46103 = icmp ugt i8** %add.ptr102, %13
  br i1 %cmp46103, label %while.body, label %cond.false

while.body:                                       ; preds = %if.then43, %if.end53
  %p.0104 = phi i8** [ %incdec.ptr, %if.end53 ], [ %13, %if.then43 ]
  %16 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %comp, align 8, !tbaa !4
  %17 = bitcast i8** %p.0104 to i8*
  %call49 = call i32 %16(i8* noundef nonnull %8, i8* noundef %17) #7
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.end53, label %if.end56

if.end53:                                         ; preds = %while.body
  %18 = load i32, i32* %pnum, align 4, !tbaa !13
  %inc54 = add nsw i32 %18, 1
  store i32 %inc54, i32* %pnum, align 4, !tbaa !13
  %incdec.ptr = getelementptr inbounds i8*, i8** %p.0104, i64 1
  %19 = load i8**, i8*** %data35, align 8, !tbaa !15
  %20 = load i32, i32* %num, align 8, !tbaa !11
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %19, i64 %idx.ext
  %cmp46 = icmp ult i8** %incdec.ptr, %add.ptr
  br i1 %cmp46, label %while.body, label %if.end56, !llvm.loop !22

if.end56:                                         ; preds = %while.body, %if.end53, %if.end30
  %cmp57 = icmp eq i8* %call, null
  br i1 %cmp57, label %cleanup, label %cond.false

cond.false:                                       ; preds = %if.then43, %if.end56
  %21 = load i8**, i8*** %data35, align 8, !tbaa !15
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8** %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %22 = lshr exact i64 %sub.ptr.sub, 3
  %conv60 = trunc i64 %22 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %cond.false, %if.end56, %if.end26, %for.end, %if.then14, %if.then8, %if.then10, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ -1, %lor.lhs.false ], [ -1, %entry ], [ %4, %if.then10 ], [ %4, %if.then8 ], [ -1, %if.then14 ], [ -1, %for.end ], [ -1, %if.end26 ], [ %conv60, %cond.false ], [ -1, %if.end56 ], [ -1, %if.then40 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_sk_find_ex(%struct.stack_st* noundef %st, i8* noundef %data) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @internal_find(%struct.stack_st* noundef %st, i8* noundef %data, i32 noundef 1, i32* noundef null) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_sk_find_all(%struct.stack_st* noundef %st, i8* noundef %data, i32* noundef %pnum) local_unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @internal_find(%struct.stack_st* noundef %st, i8* noundef %data, i32 noundef 2, i32* noundef %pnum) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_sk_push(%struct.stack_st* noundef %st, i8* noundef %data) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  %call = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef nonnull %st, i8* noundef %data, i32 noundef %0) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @OPENSSL_sk_unshift(%struct.stack_st* noundef %st, i8* noundef %data) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @OPENSSL_sk_insert(%struct.stack_st* noundef %st, i8* noundef %data, i32 noundef 0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_sk_shift(%struct.stack_st* noundef %st) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc i8* @internal_delete(%struct.stack_st* noundef nonnull %st, i32 noundef 0) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_sk_pop(%struct.stack_st* noundef %st) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %sub = add nsw i32 %0, -1
  %call = tail call fastcc i8* @internal_delete(%struct.stack_st* noundef nonnull %st, i32 noundef %sub) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i8* [ %call, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_sk_zero(%struct.stack_st* noundef %st) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  %1 = bitcast i8*** %data to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !15
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef %mul) #7
  store i32 0, i32* %num, align 8, !tbaa !11
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %st, void (i8*)* nocapture noundef readonly %func) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  %cmp116 = icmp sgt i32 %0, 0
  br i1 %cmp116, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %4, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %2 = load i8**, i8*** %data, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %indvars.iv
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !14
  %cmp2.not = icmp eq i8* %3, null
  br i1 %cmp2.not, label %for.inc, label %if.then3

if.then3:                                         ; preds = %for.body
  tail call void %func(i8* noundef nonnull %3) #7
  %.pre = load i32, i32* %num, align 8, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %4 = phi i32 [ %1, %for.body ], [ %.pre, %if.then3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = sext i32 %4 to i64
  %cmp1 = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp1, label %for.body, label %for.end, !llvm.loop !23

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef nonnull %st) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @OPENSSL_sk_num(%struct.stack_st* noundef readonly %st) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %0, %cond.false ], [ -1, %entry ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @OPENSSL_sk_value(%struct.stack_st* noundef readonly %st, i32 noundef %i) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  %cmp1 = icmp slt i32 %i, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  %cmp3.not = icmp sgt i32 %0, %i
  br i1 %cmp3.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false2
  %data = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  %1 = load i8**, i8*** %data, align 8, !tbaa !15
  %idxprom8 = zext i32 %i to i64
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom8
  %2 = load i8*, i8** %arrayidx, align 8, !tbaa !14
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false2, %if.end
  %retval.0 = phi i8* [ %2, %if.end ], [ null, %lor.lhs.false2 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i8* @OPENSSL_sk_set(%struct.stack_st* noundef %st, i32 noundef %i, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  %cmp1 = icmp slt i32 %i, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %0 = load i32, i32* %num, align 8, !tbaa !11
  %cmp3.not = icmp sgt i32 %0, %i
  br i1 %cmp3.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false2
  %data4 = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  %1 = load i8**, i8*** %data4, align 8, !tbaa !15
  %idxprom15 = zext i32 %i to i64
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom15
  store i8* %data, i8** %arrayidx, align 8, !tbaa !14
  %sorted = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 2
  store i32 0, i32* %sorted, align 8, !tbaa !10
  %2 = load i8**, i8*** %data4, align 8, !tbaa !15
  %arrayidx7 = getelementptr inbounds i8*, i8** %2, i64 %idxprom15
  %3 = load i8*, i8** %arrayidx7, align 8, !tbaa !14
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false2, %if.end
  %retval.0 = phi i8* [ %3, %if.end ], [ null, %lor.lhs.false2 ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_sk_sort(%struct.stack_st* noundef %st) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.stack_st* %st, null
  br i1 %cmp.not, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %sorted = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 2
  %0 = load i32, i32* %sorted, align 8, !tbaa !10
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true1, label %if.end8

land.lhs.true1:                                   ; preds = %land.lhs.true
  %comp = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 4
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %comp, align 8, !tbaa !4
  %cmp2.not = icmp eq i32 (i8*, i8*)* %1, null
  br i1 %cmp2.not, label %if.end8, label %if.then

if.then:                                          ; preds = %land.lhs.true1
  %num = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 0
  %2 = load i32, i32* %num, align 8, !tbaa !11
  %cmp3 = icmp sgt i32 %2, 1
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %data = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 1
  %3 = bitcast i8*** %data to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !15
  %conv17 = zext i32 %2 to i64
  tail call void @qsort(i8* noundef %4, i64 noundef %conv17, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  store i32 1, i32* %sorted, align 8, !tbaa !10
  br label %if.end8

if.end8:                                          ; preds = %if.end, %land.lhs.true1, %land.lhs.true, %entry
  ret void
}

declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @OPENSSL_sk_is_sorted(%struct.stack_st* noundef readonly %st) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.stack_st* %st, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %sorted = getelementptr inbounds %struct.stack_st, %struct.stack_st* %st, i64 0, i32 2
  %0 = load i32, i32* %sorted, align 8, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %0, %cond.false ], [ 1, %entry ]
  ret i32 %cond
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc i32 @compute_growth(i32 noundef %target, i32 noundef %current) unnamed_addr #6 {
entry:
  %cmp9 = icmp slt i32 %current, %target
  br i1 %cmp9, label %if.end, label %cleanup

if.end:                                           ; preds = %entry, %cond.end
  %current.addr.010 = phi i32 [ %add, %cond.end ], [ %current, %entry ]
  %cmp2 = icmp slt i32 %current.addr.010, 1431655765
  br i1 %cmp2, label %cond.end, label %cleanup

cond.end:                                         ; preds = %if.end
  %div = sdiv i32 %current.addr.010, 2
  %add = add nsw i32 %div, %current.addr.010
  %cmp = icmp slt i32 %add, %target
  br i1 %cmp, label %if.end, label %cleanup, !llvm.loop !24

cleanup:                                          ; preds = %if.end, %cond.end, %entry
  %current.addr.0.lcssa = phi i32 [ %current, %entry ], [ 2147483647, %if.end ], [ %add, %cond.end ]
  ret i32 %current.addr.0.lcssa
}

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @ossl_bsearch(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 (i8*, i8*)* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 24}
!5 = !{!"stack_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 20, !9, i64 24}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !6, i64 16}
!11 = !{!5, !6, i64 0}
!12 = !{i64 0, i64 4, !13, i64 8, i64 8, !14, i64 16, i64 4, !13, i64 20, i64 4, !13, i64 24, i64 8, !14}
!13 = !{!6, !6, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!5, !9, i64 8}
!16 = !{!5, !6, i64 20}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
