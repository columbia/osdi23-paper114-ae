; ModuleID = 'crypto/sparse_array.c'
source_filename = "crypto/sparse_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparse_array_st = type { i32, i64, i64, i8** }
%struct.trampoline_st = type { void (i64, i8*)* }

@.str = private unnamed_addr constant [22 x i8] c"crypto/sparse_array.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.sparse_array_st* @ossl_sa_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 65) #5
  %0 = bitcast i8* %call to %struct.sparse_array_st*
  ret %struct.sparse_array_st* %0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_sa_free(%struct.sparse_array_st* noundef %sa) local_unnamed_addr #0 {
entry:
  tail call fastcc void @sa_doall(%struct.sparse_array_st* noundef %sa, void (i8**)* noundef nonnull @sa_free_node, void (i64, i8*, i8*)* noundef null, i8* noundef null) #6
  %0 = bitcast %struct.sparse_array_st* %sa to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 118) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sa_doall(%struct.sparse_array_st* nocapture noundef readonly %sa, void (i8**)* noundef readonly %node, void (i64, i8*, i8*)* noundef readonly %leaf, i8* noundef %arg) unnamed_addr #0 {
entry:
  %i = alloca [6 x i32], align 16
  %nodes = alloca [6 x i8*], align 16
  %0 = bitcast [6 x i32]* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7
  %1 = bitcast [6 x i8*]* %nodes to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #7
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %i, i64 0, i64 0
  store i32 0, i32* %arrayidx, align 16, !tbaa !4
  %nodes1 = getelementptr inbounds %struct.sparse_array_st, %struct.sparse_array_st* %sa, i64 0, i32 3
  %2 = bitcast i8*** %nodes1 to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !8
  %arrayidx2 = getelementptr inbounds [6 x i8*], [6 x i8*]* %nodes, i64 0, i64 0
  store i8* %3, i8** %arrayidx2, align 16, !tbaa !12
  %levels = getelementptr inbounds %struct.sparse_array_st, %struct.sparse_array_st* %sa, i64 0, i32 0
  %cmp28.not = icmp eq void (i64, i8*, i8*)* %leaf, null
  %cmp8 = icmp ne void (i8**)* %node, null
  br label %while.body

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %entry
  %4 = phi i32 [ 0, %entry ], [ %.pre, %if.end36.while.body_crit_edge ]
  %idx.069 = phi i64 [ 0, %entry ], [ %idx.174, %if.end36.while.body_crit_edge ]
  %l.068 = phi i32 [ 0, %entry ], [ %l.173, %if.end36.while.body_crit_edge ]
  %idxprom66 = zext i32 %l.068 to i64
  %arrayidx5 = getelementptr inbounds [6 x i8*], [6 x i8*]* %nodes, i64 0, i64 %idxprom66
  %5 = bitcast i8** %arrayidx5 to i8***
  %6 = load i8**, i8*** %5, align 8, !tbaa !12
  %cmp6 = icmp sgt i32 %4, 4095
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %cmp7 = icmp ne i8** %6, null
  %or.cond = and i1 %cmp8, %cmp7
  br i1 %or.cond, label %if.then9, label %if.end36

if.then9:                                         ; preds = %if.then
  tail call void %node(i8** noundef nonnull %6) #5, !callees !13
  br label %if.end36

if.else:                                          ; preds = %while.body
  %arrayidx3 = getelementptr inbounds [6 x i32], [6 x i32]* %i, i64 0, i64 %idxprom66
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %arrayidx3, align 4, !tbaa !4
  %cmp12.not = icmp eq i8** %6, null
  br i1 %cmp12.not, label %if.end36.while.body_crit_edge, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.else
  %idxprom14 = sext i32 %4 to i64
  %arrayidx15 = getelementptr inbounds i8*, i8** %6, i64 %idxprom14
  %7 = load i8*, i8** %arrayidx15, align 8, !tbaa !12
  %cmp16.not = icmp eq i8* %7, null
  br i1 %cmp16.not, label %if.end36.while.body_crit_edge, label %if.then17

if.then17:                                        ; preds = %land.lhs.true13
  %and = and i64 %idx.069, -4096
  %or = or i64 %and, %idxprom14
  %8 = load i32, i32* %levels, align 8, !tbaa !14
  %sub = add nsw i32 %8, -1
  %cmp18 = icmp slt i32 %l.068, %sub
  br i1 %cmp18, label %if.then20, label %if.else27

if.then20:                                        ; preds = %if.then17
  %inc = add nuw nsw i32 %l.068, 1
  %idxprom2167 = zext i32 %inc to i64
  %arrayidx22 = getelementptr inbounds [6 x i32], [6 x i32]* %i, i64 0, i64 %idxprom2167
  store i32 0, i32* %arrayidx22, align 4, !tbaa !4
  %arrayidx26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %nodes, i64 0, i64 %idxprom2167
  store i8* %7, i8** %arrayidx26, align 8, !tbaa !12
  %shl = shl i64 %or, 12
  br label %if.end36.while.body_crit_edge

if.else27:                                        ; preds = %if.then17
  br i1 %cmp28.not, label %if.end36.while.body_crit_edge, label %if.then30

if.then30:                                        ; preds = %if.else27
  tail call void %leaf(i64 noundef %or, i8* noundef nonnull %7, i8* noundef %arg) #5
  br label %if.end36.while.body_crit_edge

if.end36:                                         ; preds = %if.then, %if.then9
  %dec = add nsw i32 %l.068, -1
  %shr = lshr i64 %idx.069, 12
  %cmp = icmp sgt i32 %l.068, 0
  br i1 %cmp, label %if.end36.while.body_crit_edge, label %while.end, !llvm.loop !15

if.end36.while.body_crit_edge:                    ; preds = %if.else, %land.lhs.true13, %if.else27, %if.then30, %if.then20, %if.end36
  %idx.174 = phi i64 [ %shr, %if.end36 ], [ %idx.069, %if.else ], [ %idx.069, %land.lhs.true13 ], [ %or, %if.else27 ], [ %or, %if.then30 ], [ %shl, %if.then20 ]
  %l.173 = phi i32 [ %dec, %if.end36 ], [ %l.068, %if.else ], [ %l.068, %land.lhs.true13 ], [ %l.068, %if.else27 ], [ %l.068, %if.then30 ], [ %inc, %if.then20 ]
  %idxprom66.phi.trans.insert = zext i32 %l.173 to i64
  %arrayidx3.phi.trans.insert = getelementptr inbounds [6 x i32], [6 x i32]* %i, i64 0, i64 %idxprom66.phi.trans.insert
  %.pre = load i32, i32* %arrayidx3.phi.trans.insert, align 4, !tbaa !4
  br label %while.body

while.end:                                        ; preds = %if.end36
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sa_free_node(i8** noundef %p) #0 {
entry:
  %0 = bitcast i8** %p to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 107) #5
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @ossl_sa_free_leaves(%struct.sparse_array_st* noundef %sa) local_unnamed_addr #0 {
entry:
  tail call fastcc void @sa_doall(%struct.sparse_array_st* noundef %sa, void (i8**)* noundef nonnull @sa_free_node, void (i64, i8*, i8*)* noundef nonnull @sa_free_leaf, i8* noundef null) #6
  %0 = bitcast %struct.sparse_array_st* %sa to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 124) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sa_free_leaf(i64 noundef %n, i8* noundef %p, i8* nocapture noundef readnone %arg) #0 {
entry:
  tail call void @CRYPTO_free(i8* noundef %p, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 112) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_sa_doall(%struct.sparse_array_st* noundef readonly %sa, void (i64, i8*)* noundef %leaf) local_unnamed_addr #0 {
entry:
  %tramp = alloca %struct.trampoline_st, align 8
  %0 = bitcast %struct.trampoline_st* %tramp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %func = getelementptr inbounds %struct.trampoline_st, %struct.trampoline_st* %tramp, i64 0, i32 0
  store void (i64, i8*)* %leaf, void (i64, i8*)** %func, align 8, !tbaa !17
  %cmp.not = icmp eq %struct.sparse_array_st* %sa, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @sa_doall(%struct.sparse_array_st* noundef nonnull %sa, void (i8**)* noundef null, void (i64, i8*, i8*)* noundef nonnull @trampoline, i8* noundef nonnull %0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @trampoline(i64 noundef %n, i8* noundef %l, i8* nocapture noundef readonly %arg) #0 {
entry:
  %func = bitcast i8* %arg to void (i64, i8*)**
  %0 = load void (i64, i8*)*, void (i64, i8*)** %func, align 8, !tbaa !17
  tail call void %0(i64 noundef %n, i8* noundef %l) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_sa_doall_arg(%struct.sparse_array_st* noundef readonly %sa, void (i64, i8*, i8*)* noundef %leaf, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.sparse_array_st* %sa, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @sa_doall(%struct.sparse_array_st* noundef nonnull %sa, void (i8**)* noundef null, void (i64, i8*, i8*)* noundef %leaf, i8* noundef %arg) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ossl_sa_num(%struct.sparse_array_st* noundef readonly %sa) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.sparse_array_st* %sa, null
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %nelem = getelementptr inbounds %struct.sparse_array_st, %struct.sparse_array_st* %sa, i64 0, i32 2
  %0 = load i64, i64* %nelem, align 8, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %0, %cond.false ], [ 0, %entry ]
  ret i64 %cond
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i8* @ossl_sa_get(%struct.sparse_array_st* noundef readonly %sa, i64 noundef %n) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.sparse_array_st* %sa, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nelem = getelementptr inbounds %struct.sparse_array_st, %struct.sparse_array_st* %sa, i64 0, i32 2
  %0 = load i64, i64* %nelem, align 8, !tbaa !19
  %cmp1 = icmp eq i64 %0, 0
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %top = getelementptr inbounds %struct.sparse_array_st, %struct.sparse_array_st* %sa, i64 0, i32 1
  %1 = load i64, i64* %top, align 8, !tbaa !20
  %cmp2.not = icmp ult i64 %1, %n
  br i1 %cmp2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  %nodes = getelementptr inbounds %struct.sparse_array_st, %struct.sparse_array_st* %sa, i64 0, i32 3
  %levels = getelementptr inbounds %struct.sparse_array_st, %struct.sparse_array_st* %sa, i64 0, i32 0
  %2 = load i32, i32* %levels, align 8, !tbaa !14
  %p.026 = load i8**, i8*** %nodes, align 8, !tbaa !12
  %cmp428 = icmp ne i8** %p.026, null
  %cmp529 = icmp sgt i32 %2, 1
  %3 = select i1 %cmp428, i1 %cmp529, i1 false
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %if.then3, %for.body
  %level.031.in = phi i32 [ %level.031, %for.body ], [ %2, %if.then3 ]
  %p.030 = phi i8** [ %p.0, %for.body ], [ %p.026, %if.then3 ]
  %level.031 = add nsw i32 %level.031.in, -1
  %mul = mul nsw i32 %level.031, 12
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %n, %sh_prom
  %and = and i64 %shr, 4095
  %arrayidx = getelementptr inbounds i8*, i8** %p.030, i64 %and
  %4 = bitcast i8** %arrayidx to i8***
  %p.0 = load i8**, i8*** %4, align 8, !tbaa !12
  %cmp4 = icmp ne i8** %p.0, null
  %cmp5 = icmp ugt i32 %level.031.in, 2
  %5 = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %5, label %for.body, label %for.end, !llvm.loop !21

for.end:                                          ; preds = %for.body, %if.then3
  %p.0.lcssa = phi i8** [ %p.026, %if.then3 ], [ %p.0, %for.body ]
  %cmp6 = icmp eq i8** %p.0.lcssa, null
  br i1 %cmp6, label %cleanup, label %cond.false

cond.false:                                       ; preds = %for.end
  %and7 = and i64 %n, 4095
  %arrayidx8 = getelementptr inbounds i8*, i8** %p.0.lcssa, i64 %and7
  %6 = load i8*, i8** %arrayidx8, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end, %cond.false, %entry, %lor.lhs.false
  %retval.0 = phi i8* [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end ], [ %6, %cond.false ], [ null, %for.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sa_set(%struct.sparse_array_st* noundef %sa, i64 noundef %posn, i8* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.sparse_array_st* %sa, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp2101 = icmp ult i64 %posn, 4096
  br i1 %cmp2101, label %for.cond5.preheader, label %for.inc

for.cond5.preheader:                              ; preds = %for.inc.3, %for.inc, %for.inc.1, %for.inc.2, %for.cond.preheader
  %level.0.lcssa = phi i32 [ 1, %for.cond.preheader ], [ 2, %for.inc ], [ 3, %for.inc.1 ], [ 4, %for.inc.2 ], [ %spec.select, %for.inc.3 ]
  %levels = getelementptr inbounds %struct.sparse_array_st, %struct.sparse_array_st* %sa, i64 0, i32 0
  %0 = load i32, i32* %levels, align 8, !tbaa !14
  %cmp6104 = icmp slt i32 %0, %level.0.lcssa
  br i1 %cmp6104, label %for.body7.lr.ph, label %for.end15

for.body7.lr.ph:                                  ; preds = %for.cond5.preheader
  %nodes = getelementptr inbounds %struct.sparse_array_st, %struct.sparse_array_st* %sa, i64 0, i32 3
  %1 = bitcast i8*** %nodes to i8**
  br label %for.body7

for.inc:                                          ; preds = %for.cond.preheader
  %cmp2 = icmp ult i64 %posn, 16777216
  br i1 %cmp2, label %for.cond5.preheader, label %for.inc.1, !llvm.loop !22

for.inc.1:                                        ; preds = %for.inc
  %cmp2.1 = icmp ult i64 %posn, 68719476736
  br i1 %cmp2.1, label %for.cond5.preheader, label %for.inc.2, !llvm.loop !22

for.inc.2:                                        ; preds = %for.inc.1
  %cmp2.2 = icmp ult i64 %posn, 281474976710656
  br i1 %cmp2.2, label %for.cond5.preheader, label %for.inc.3, !llvm.loop !22

for.inc.3:                                        ; preds = %for.inc.2
  %cmp2.3 = icmp ult i64 %posn, 1152921504606846976
  %spec.select = select i1 %cmp2.3, i32 5, i32 6
  br label %for.cond5.preheader, !llvm.loop !22

for.body7:                                        ; preds = %for.body7.lr.ph, %if.end10
  %call = tail call fastcc i8** @alloc_node() #6
  %cmp8 = icmp eq i8** %call, null
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %for.body7
  %2 = load i8*, i8** %1, align 8, !tbaa !8
  store i8* %2, i8** %call, align 8, !tbaa !12
  store i8** %call, i8*** %nodes, align 8, !tbaa !8
  %3 = load i32, i32* %levels, align 8, !tbaa !14
  %inc14 = add nsw i32 %3, 1
  store i32 %inc14, i32* %levels, align 8, !tbaa !14
  %cmp6 = icmp slt i32 %inc14, %level.0.lcssa
  br i1 %cmp6, label %for.body7, label %for.end15, !llvm.loop !23

for.end15:                                        ; preds = %if.end10, %for.cond5.preheader
  %.lcssa = phi i32 [ %0, %for.cond5.preheader ], [ %inc14, %if.end10 ]
  %top = getelementptr inbounds %struct.sparse_array_st, %struct.sparse_array_st* %sa, i64 0, i32 1
  %4 = load i64, i64* %top, align 8, !tbaa !20
  %cmp16 = icmp ult i64 %4, %posn
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.end15
  store i64 %posn, i64* %top, align 8, !tbaa !20
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.end15
  %nodes20 = getelementptr inbounds %struct.sparse_array_st, %struct.sparse_array_st* %sa, i64 0, i32 3
  %p.0106 = load i8**, i8*** %nodes20, align 8, !tbaa !12
  %cmp23108 = icmp sgt i32 %.lcssa, 1
  br i1 %cmp23108, label %for.body24.preheader, label %for.end39

for.body24.preheader:                             ; preds = %if.end19
  %5 = zext i32 %.lcssa to i64
  br label %for.body24

for.body24:                                       ; preds = %for.body24.preheader, %if.end35
  %indvars.iv = phi i64 [ %5, %for.body24.preheader ], [ %indvars.iv.next, %if.end35 ]
  %p.0109 = phi i8** [ %p.0106, %for.body24.preheader ], [ %p.0, %if.end35 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %mul = mul i64 %indvars.iv.next, 12
  %sh_prom = and i64 %mul, 4294967292
  %shr25 = lshr i64 %posn, %sh_prom
  %conv = and i64 %shr25, 4095
  %arrayidx26 = getelementptr inbounds i8*, i8** %p.0109, i64 %conv
  %6 = load i8*, i8** %arrayidx26, align 8, !tbaa !12
  %cmp27 = icmp eq i8* %6, null
  br i1 %cmp27, label %land.lhs.true, label %for.body24.if.end35_crit_edge

for.body24.if.end35_crit_edge:                    ; preds = %for.body24
  %7 = bitcast i8* %6 to i8**
  br label %if.end35

land.lhs.true:                                    ; preds = %for.body24
  %call29 = tail call fastcc i8** @alloc_node() #6
  %8 = bitcast i8** %arrayidx26 to i8***
  store i8** %call29, i8*** %8, align 8, !tbaa !12
  %cmp32 = icmp eq i8** %call29, null
  br i1 %cmp32, label %cleanup, label %if.end35

if.end35:                                         ; preds = %for.body24.if.end35_crit_edge, %land.lhs.true
  %p.0 = phi i8** [ %call29, %land.lhs.true ], [ %7, %for.body24.if.end35_crit_edge ]
  %cmp23 = icmp ugt i64 %indvars.iv, 2
  br i1 %cmp23, label %for.body24, label %for.end39, !llvm.loop !24

for.end39:                                        ; preds = %if.end35, %if.end19
  %p.0.lcssa = phi i8** [ %p.0106, %if.end19 ], [ %p.0, %if.end35 ]
  %and40 = and i64 %posn, 4095
  %add.ptr = getelementptr inbounds i8*, i8** %p.0.lcssa, i64 %and40
  %cond = icmp eq i8* %val, null
  %9 = load i8*, i8** %add.ptr, align 8, !tbaa !12
  %cmp44.not = icmp eq i8* %9, null
  br i1 %cond, label %land.lhs.true43, label %land.lhs.true50

land.lhs.true43:                                  ; preds = %for.end39
  br i1 %cmp44.not, label %if.end57, label %if.end57.sink.split

land.lhs.true50:                                  ; preds = %for.end39
  br i1 %cmp44.not, label %if.end57.sink.split, label %if.end57

if.end57.sink.split:                              ; preds = %land.lhs.true50, %land.lhs.true43
  %.sink118 = phi i64 [ -1, %land.lhs.true43 ], [ 1, %land.lhs.true50 ]
  %nelem = getelementptr inbounds %struct.sparse_array_st, %struct.sparse_array_st* %sa, i64 0, i32 2
  %10 = load i64, i64* %nelem, align 8, !tbaa !19
  %inc55 = add i64 %10, %.sink118
  store i64 %inc55, i64* %nelem, align 8, !tbaa !19
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %land.lhs.true43, %land.lhs.true50
  store i8* %val, i8** %add.ptr, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %for.body7, %land.lhs.true, %entry, %if.end57
  %retval.0 = phi i32 [ 1, %if.end57 ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %for.body7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8** @alloc_node() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32768, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 179) #5
  %0 = bitcast i8* %call to i8**
  ret i8** %0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 24}
!9 = !{!"sparse_array_st", !5, i64 0, !10, i64 8, !10, i64 16, !11, i64 24}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{void (i8**)* @sa_free_node}
!14 = !{!9, !5, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !11, i64 0}
!18 = !{!"trampoline_st", !11, i64 0}
!19 = !{!9, !10, i64 16}
!20 = !{!9, !10, i64 8}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
