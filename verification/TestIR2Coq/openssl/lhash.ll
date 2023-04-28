; ModuleID = 'crypto/lhash/lhash.c'
source_filename = "crypto/lhash/lhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lhash_st = type { %struct.lhash_node_st**, i32 (i8*, i8*)*, i64 (i8*)*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.lhash_node_st = type { i8*, %struct.lhash_node_st*, i64 }

@.str = private unnamed_addr constant [21 x i8] c"crypto/lhash/lhash.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef %h, i32 (i8*, i8*)* noundef %c) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 176, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 51) #8
  %0 = bitcast i8* %call to %struct.lhash_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef 128, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 59) #8
  %1 = bitcast i8* %call to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !4
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32 (i8*, i8*)* %c, null
  %cond = select i1 %cmp5, i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)* %c
  %comp = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %comp to i32 (i8*, i8*)**
  store i32 (i8*, i8*)* %cond, i32 (i8*, i8*)** %2, align 8, !tbaa !11
  %cmp6 = icmp eq i64 (i8*)* %h, null
  %cond10 = select i1 %cmp6, i64 (i8*)* @OPENSSL_LH_strhash, i64 (i8*)* %h
  %hash = getelementptr inbounds i8, i8* %call, i64 16
  %3 = bitcast i8* %hash to i64 (i8*)**
  store i64 (i8*)* %cond10, i64 (i8*)** %3, align 8, !tbaa !12
  %num_nodes = getelementptr inbounds i8, i8* %call, i64 24
  %4 = bitcast i8* %num_nodes to i32*
  store i32 8, i32* %4, align 8, !tbaa !13
  %num_alloc_nodes = getelementptr inbounds i8, i8* %call, i64 28
  %5 = bitcast i8* %num_alloc_nodes to i32*
  store i32 16, i32* %5, align 4, !tbaa !14
  %pmax = getelementptr inbounds i8, i8* %call, i64 36
  %6 = bitcast i8* %pmax to i32*
  store i32 8, i32* %6, align 4, !tbaa !15
  %up_load = getelementptr inbounds i8, i8* %call, i64 40
  %7 = bitcast i8* %up_load to <2 x i64>*
  store <2 x i64> <i64 512, i64 256>, <2 x i64>* %7, align 8, !tbaa !16
  br label %cleanup

err:                                              ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 71) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 72) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end4
  %retval.0 = phi %struct.lhash_st* [ null, %err ], [ %0, %if.end4 ], [ null, %entry ]
  ret %struct.lhash_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i64 @OPENSSL_LH_strhash(i8* noundef readonly %c) #4 {
entry:
  %cmp = icmp eq i8* %c, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %c, align 1, !tbaa !17
  %cmp1 = icmp eq i8 %0, 0
  br i1 %cmp1, label %cleanup, label %while.body

while.body:                                       ; preds = %lor.lhs.false, %while.body
  %c.addr.037 = phi i8* [ %incdec.ptr, %while.body ], [ %c, %lor.lhs.false ]
  %n.036 = phi i64 [ %add, %while.body ], [ 256, %lor.lhs.false ]
  %ret.035 = phi i64 [ %xor9, %while.body ], [ 0, %lor.lhs.false ]
  %1 = phi i8 [ %.pr, %while.body ], [ %0, %lor.lhs.false ]
  %conv3 = sext i8 %1 to i64
  %or = or i64 %n.036, %conv3
  %add = add nuw nsw i64 %n.036, 256
  %shr = lshr i64 %conv3, 2
  %xor = xor i64 %shr, %conv3
  %conv4 = trunc i64 %xor to i32
  %and = and i32 %conv4, 15
  %sh_prom = zext i32 %and to i64
  %shl = shl i64 %ret.035, %sh_prom
  %sub = sub nuw nsw i32 32, %and
  %sh_prom5 = zext i32 %sub to i64
  %shr6 = lshr i64 %ret.035, %sh_prom5
  %or7 = or i64 %shr6, %shl
  %and8 = and i64 %or7, 4294967295
  %mul = mul i64 %or, %or
  %xor9 = xor i64 %and8, %mul
  %incdec.ptr = getelementptr inbounds i8, i8* %c.addr.037, i64 1
  %.pr = load i8, i8* %incdec.ptr, align 1, !tbaa !17
  %tobool.not = icmp eq i8 %.pr, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !18

while.end:                                        ; preds = %while.body
  %shr10 = lshr i64 %xor9, 16
  %xor11 = xor i64 %shr10, %xor9
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %while.end
  %retval.0 = phi i64 [ %xor11, %while.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i64 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_LH_free(%struct.lhash_st* noundef %lh) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.lhash_st* %lh, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  tail call void @OPENSSL_LH_flush(%struct.lhash_st* noundef nonnull %lh) #9
  %0 = bitcast %struct.lhash_st* %lh to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 82) #8
  %2 = bitcast %struct.lhash_st* %lh to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 83) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_LH_flush(%struct.lhash_st* noundef readonly %lh) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.lhash_st* %lh, null
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 3
  %0 = load i32, i32* %num_nodes, align 8, !tbaa !13
  %cmp121.not = icmp eq i32 %0, 0
  br i1 %cmp121.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %b = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %while.end
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %6, %while.end ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %while.end ]
  %2 = load %struct.lhash_node_st**, %struct.lhash_node_st*** %b, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.lhash_node_st*, %struct.lhash_node_st** %2, i64 %indvars.iv
  %3 = load %struct.lhash_node_st*, %struct.lhash_node_st** %arrayidx, align 8, !tbaa !20
  %cmp2.not19 = icmp eq %struct.lhash_node_st* %3, null
  br i1 %cmp2.not19, label %while.end, label %while.body

while.body:                                       ; preds = %for.body, %while.body
  %n.020 = phi %struct.lhash_node_st* [ %4, %while.body ], [ %3, %for.body ]
  %next = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %n.020, i64 0, i32 1
  %4 = load %struct.lhash_node_st*, %struct.lhash_node_st** %next, align 8, !tbaa !21
  %5 = bitcast %struct.lhash_node_st* %n.020 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 98) #8
  %cmp2.not = icmp eq %struct.lhash_node_st* %4, null
  br i1 %cmp2.not, label %while.end.loopexit, label %while.body, !llvm.loop !23

while.end.loopexit:                               ; preds = %while.body
  %.pre = load %struct.lhash_node_st**, %struct.lhash_node_st*** %b, align 8, !tbaa !4
  %.pre24 = load i32, i32* %num_nodes, align 8, !tbaa !13
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %for.body
  %6 = phi i32 [ %.pre24, %while.end.loopexit ], [ %1, %for.body ]
  %7 = phi %struct.lhash_node_st** [ %.pre, %while.end.loopexit ], [ %2, %for.body ]
  %arrayidx5 = getelementptr inbounds %struct.lhash_node_st*, %struct.lhash_node_st** %7, i64 %indvars.iv
  store %struct.lhash_node_st* null, %struct.lhash_node_st** %arrayidx5, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = zext i32 %6 to i64
  %cmp1 = icmp ult i64 %indvars.iv.next, %8
  br i1 %cmp1, label %for.body, label %cleanup, !llvm.loop !24

cleanup:                                          ; preds = %while.end, %for.cond.preheader, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_LH_insert(%struct.lhash_st* nocapture noundef %lh, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %hash = alloca i64, align 8
  %0 = bitcast i64* %hash to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %error = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 23
  store i32 0, i32* %error, align 8, !tbaa !25
  %up_load = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 7
  %1 = load i64, i64* %up_load, align 8, !tbaa !26
  %num_items = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 9
  %2 = load i64, i64* %num_items, align 8, !tbaa !27
  %mul = shl i64 %2, 8
  %num_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 3
  %3 = load i32, i32* %num_nodes, align 8, !tbaa !13
  %conv = zext i32 %3 to i64
  %div = udiv i64 %mul, %conv
  %cmp.not = icmp ugt i64 %1, %div
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @expand(%struct.lhash_st* noundef nonnull %lh) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call fastcc %struct.lhash_node_st** @getrn(%struct.lhash_st* noundef nonnull %lh, i8* noundef %data, i64* noundef nonnull %hash) #9
  %4 = load %struct.lhash_node_st*, %struct.lhash_node_st** %call2, align 8, !tbaa !20
  %cmp3 = icmp eq %struct.lhash_node_st* %4, null
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %call6 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 118) #8
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then5
  %5 = load i32, i32* %error, align 8, !tbaa !25
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %error, align 8, !tbaa !25
  br label %cleanup

if.end11:                                         ; preds = %if.then5
  %data12 = bitcast i8* %call6 to i8**
  store i8* %data, i8** %data12, align 8, !tbaa !28
  %next = getelementptr inbounds i8, i8* %call6, i64 8
  %6 = bitcast i8* %next to %struct.lhash_node_st**
  store %struct.lhash_node_st* null, %struct.lhash_node_st** %6, align 8, !tbaa !21
  %7 = load i64, i64* %hash, align 8, !tbaa !16
  %hash13 = getelementptr inbounds i8, i8* %call6, i64 16
  %8 = bitcast i8* %hash13 to i64*
  store i64 %7, i64* %8, align 8, !tbaa !29
  %9 = bitcast %struct.lhash_node_st** %call2 to i8**
  store i8* %call6, i8** %9, align 8, !tbaa !20
  %num_insert = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 16
  %10 = load i64, i64* %num_insert, align 8, !tbaa !30
  %inc14 = add i64 %10, 1
  store i64 %inc14, i64* %num_insert, align 8, !tbaa !30
  %11 = load i64, i64* %num_items, align 8, !tbaa !27
  %inc16 = add i64 %11, 1
  store i64 %inc16, i64* %num_items, align 8, !tbaa !27
  br label %cleanup

if.else:                                          ; preds = %if.end
  %data17 = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %4, i64 0, i32 0
  %12 = load i8*, i8** %data17, align 8, !tbaa !28
  store i8* %data, i8** %data17, align 8, !tbaa !28
  %num_replace = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 17
  %13 = load i64, i64* %num_replace, align 8, !tbaa !31
  %inc19 = add i64 %13, 1
  store i64 %inc19, i64* %num_replace, align 8, !tbaa !31
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else, %land.lhs.true, %if.then9
  %retval.0 = phi i8* [ null, %if.then9 ], [ null, %land.lhs.true ], [ null, %if.end11 ], [ %12, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @expand(%struct.lhash_st* nocapture noundef %lh) unnamed_addr #0 {
entry:
  %num_alloc_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 4
  %0 = load i32, i32* %num_alloc_nodes, align 4, !tbaa !14
  %p1 = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 5
  %1 = load i32, i32* %p1, align 8, !tbaa !32
  %pmax2 = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 6
  %2 = load i32, i32* %pmax2, align 4, !tbaa !15
  %add = add i32 %1, 1
  %cmp.not = icmp ult i32 %add, %2
  br i1 %cmp.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %mul = shl i32 %0, 1
  %3 = bitcast %struct.lhash_st* %lh to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !4
  %conv = zext i32 %mul to i64
  %mul3 = shl nuw nsw i64 %conv, 3
  %call = tail call i8* @CRYPTO_realloc(i8* noundef %4, i64 noundef %mul3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 234) #8
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %error = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 23
  %5 = load i32, i32* %error, align 8, !tbaa !25
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %error, align 8, !tbaa !25
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = bitcast i8* %call to %struct.lhash_node_st**
  store i8* %call, i8** %3, align 8, !tbaa !4
  %idx.ext = zext i32 %0 to i64
  %add.ptr = getelementptr inbounds %struct.lhash_node_st*, %struct.lhash_node_st** %6, i64 %idx.ext
  %7 = bitcast %struct.lhash_node_st** %add.ptr to i8*
  %mul9 = shl nuw nsw i64 %idx.ext, 3
  %call10 = tail call i8* @memset(i8* noundef nonnull %7, i32 noundef 0, i64 noundef %mul9) #8
  store i32 %0, i32* %pmax2, align 4, !tbaa !15
  store i32 %mul, i32* %num_alloc_nodes, align 4, !tbaa !14
  %num_expand_reallocs = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 11
  %8 = load i64, i64* %num_expand_reallocs, align 8, !tbaa !33
  %inc13 = add i64 %8, 1
  store i64 %inc13, i64* %num_expand_reallocs, align 8, !tbaa !33
  br label %if.end17

if.end17:                                         ; preds = %entry, %if.end
  %storemerge = phi i32 [ 0, %if.end ], [ %add, %entry ]
  store i32 %storemerge, i32* %p1, align 8, !tbaa !32
  %num_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 3
  %9 = load i32, i32* %num_nodes, align 8, !tbaa !13
  %inc18 = add i32 %9, 1
  store i32 %inc18, i32* %num_nodes, align 8, !tbaa !13
  %num_expands = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 10
  %10 = load i64, i64* %num_expands, align 8, !tbaa !34
  %inc19 = add i64 %10, 1
  store i64 %inc19, i64* %num_expands, align 8, !tbaa !34
  %b20 = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 0
  %11 = load %struct.lhash_node_st**, %struct.lhash_node_st*** %b20, align 8, !tbaa !4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.lhash_node_st*, %struct.lhash_node_st** %11, i64 %idxprom
  %add22 = add i32 %2, %1
  %idxprom23 = zext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds %struct.lhash_node_st*, %struct.lhash_node_st** %11, i64 %idxprom23
  store %struct.lhash_node_st* null, %struct.lhash_node_st** %arrayidx24, align 8, !tbaa !20
  %np.089 = load %struct.lhash_node_st*, %struct.lhash_node_st** %arrayidx, align 8, !tbaa !20
  %cmp25.not90 = icmp eq %struct.lhash_node_st* %np.089, null
  br i1 %cmp25.not90, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end17
  %conv28 = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end36
  %np.092 = phi %struct.lhash_node_st* [ %np.089, %for.body.lr.ph ], [ %np.0, %if.end36 ]
  %n1.091 = phi %struct.lhash_node_st** [ %arrayidx, %for.body.lr.ph ], [ %n1.1, %if.end36 ]
  %hash27 = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %np.092, i64 0, i32 2
  %12 = load i64, i64* %hash27, align 8, !tbaa !29
  %rem = urem i64 %12, %conv28
  %cmp30.not = icmp eq i64 %rem, %idxprom
  %next35 = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %np.092, i64 0, i32 1
  br i1 %cmp30.not, label %if.end36, label %if.then32

if.then32:                                        ; preds = %for.body
  %13 = load %struct.lhash_node_st*, %struct.lhash_node_st** %next35, align 8, !tbaa !21
  store %struct.lhash_node_st* %13, %struct.lhash_node_st** %n1.091, align 8, !tbaa !20
  %14 = load %struct.lhash_node_st*, %struct.lhash_node_st** %arrayidx24, align 8, !tbaa !20
  store %struct.lhash_node_st* %14, %struct.lhash_node_st** %next35, align 8, !tbaa !21
  store %struct.lhash_node_st* %np.092, %struct.lhash_node_st** %arrayidx24, align 8, !tbaa !20
  br label %if.end36

if.end36:                                         ; preds = %for.body, %if.then32
  %n1.1 = phi %struct.lhash_node_st** [ %n1.091, %if.then32 ], [ %next35, %for.body ]
  %np.0 = load %struct.lhash_node_st*, %struct.lhash_node_st** %n1.1, align 8, !tbaa !20
  %cmp25.not = icmp eq %struct.lhash_node_st* %np.0, null
  br i1 %cmp25.not, label %cleanup, label %for.body, !llvm.loop !35

cleanup:                                          ; preds = %if.end36, %if.end17, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 1, %if.end17 ], [ 1, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.lhash_node_st** @getrn(%struct.lhash_st* nocapture noundef %lh, i8* noundef %data, i64* nocapture noundef writeonly %rhash) unnamed_addr #0 {
entry:
  %hash1 = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 2
  %0 = load i64 (i8*)*, i64 (i8*)** %hash1, align 8, !tbaa !12
  %call = tail call i64 %0(i8* noundef %data) #8
  %num_hash_calls = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 14
  %1 = atomicrmw add i64* %num_hash_calls, i64 1 monotonic, align 8
  store i64 %call, i64* %rhash, align 8, !tbaa !16
  %pmax = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 6
  %2 = load i32, i32* %pmax, align 4, !tbaa !15
  %conv = zext i32 %2 to i64
  %rem = urem i64 %call, %conv
  %p = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 5
  %3 = load i32, i32* %p, align 8, !tbaa !32
  %conv2 = zext i32 %3 to i64
  %cmp = icmp ult i64 %rem, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %num_alloc_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 4
  %4 = load i32, i32* %num_alloc_nodes, align 4, !tbaa !14
  %conv4 = zext i32 %4 to i64
  %rem5 = urem i64 %call, %conv4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nn.0 = phi i64 [ %rem5, %if.then ], [ %rem, %entry ]
  %comp = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 1
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %comp, align 8, !tbaa !11
  %b = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 0
  %6 = load %struct.lhash_node_st**, %struct.lhash_node_st*** %b, align 8, !tbaa !4
  %sext = shl nuw i64 %nn.0, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.lhash_node_st*, %struct.lhash_node_st** %6, i64 %idxprom
  %num_comp_calls = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 15
  %n1.050 = load %struct.lhash_node_st*, %struct.lhash_node_st** %arrayidx, align 8, !tbaa !20
  %cmp7.not51 = icmp eq %struct.lhash_node_st* %n1.050, null
  br i1 %cmp7.not51, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %num_hash_comps = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %n1.053 = phi %struct.lhash_node_st* [ %n1.050, %for.body.lr.ph ], [ %n1.0, %for.inc ]
  %n1.0.in52 = phi %struct.lhash_node_st** [ %arrayidx, %for.body.lr.ph ], [ %ret.1, %for.inc ]
  %7 = atomicrmw add i64* %num_hash_comps, i64 1 monotonic, align 8
  %hash11 = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %n1.053, i64 0, i32 2
  %8 = load i64, i64* %hash11, align 8, !tbaa !29
  %cmp12.not = icmp eq i64 %8, %call
  br i1 %cmp12.not, label %if.end15, label %for.inc

if.end15:                                         ; preds = %for.body
  %9 = atomicrmw add i64* %num_comp_calls, i64 1 monotonic, align 8
  %data18 = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %n1.053, i64 0, i32 0
  %10 = load i8*, i8** %data18, align 8, !tbaa !28
  %call19 = tail call i32 %5(i8* noundef %10, i8* noundef %data) #8
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body
  %ret.1 = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %n1.053, i64 0, i32 1
  %n1.0 = load %struct.lhash_node_st*, %struct.lhash_node_st** %ret.1, align 8, !tbaa !20
  %cmp7.not = icmp eq %struct.lhash_node_st* %n1.0, null
  br i1 %cmp7.not, label %for.end, label %for.body, !llvm.loop !36

for.end:                                          ; preds = %for.inc, %if.end15, %if.end
  %n1.0.in.lcssa = phi %struct.lhash_node_st** [ %arrayidx, %if.end ], [ %n1.0.in52, %if.end15 ], [ %ret.1, %for.inc ]
  ret %struct.lhash_node_st** %n1.0.in.lcssa
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_LH_delete(%struct.lhash_st* nocapture noundef %lh, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %hash = alloca i64, align 8
  %0 = bitcast i64* %hash to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %error = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 23
  store i32 0, i32* %error, align 8, !tbaa !25
  %call = call fastcc %struct.lhash_node_st** @getrn(%struct.lhash_st* noundef %lh, i8* noundef %data, i64* noundef nonnull %hash) #9
  %1 = load %struct.lhash_node_st*, %struct.lhash_node_st** %call, align 8, !tbaa !20
  %cmp = icmp eq %struct.lhash_node_st* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %num_no_delete = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 19
  %2 = load i64, i64* %num_no_delete, align 8, !tbaa !37
  %inc = add i64 %2, 1
  store i64 %inc, i64* %num_no_delete, align 8, !tbaa !37
  br label %cleanup

if.else:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %1, i64 0, i32 1
  %3 = load %struct.lhash_node_st*, %struct.lhash_node_st** %next, align 8, !tbaa !21
  store %struct.lhash_node_st* %3, %struct.lhash_node_st** %call, align 8, !tbaa !20
  %data1 = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %1, i64 0, i32 0
  %4 = load i8*, i8** %data1, align 8, !tbaa !28
  %5 = bitcast %struct.lhash_node_st* %1 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 153) #8
  %num_delete = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 18
  %6 = load i64, i64* %num_delete, align 8, !tbaa !38
  %inc2 = add i64 %6, 1
  store i64 %inc2, i64* %num_delete, align 8, !tbaa !38
  %num_items = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 9
  %7 = load i64, i64* %num_items, align 8, !tbaa !27
  %dec = add i64 %7, -1
  store i64 %dec, i64* %num_items, align 8, !tbaa !27
  %num_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 3
  %8 = load i32, i32* %num_nodes, align 8, !tbaa !13
  %cmp3 = icmp ugt i32 %8, 16
  br i1 %cmp3, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %down_load = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 8
  %9 = load i64, i64* %down_load, align 8, !tbaa !39
  %mul = shl i64 %dec, 8
  %conv = zext i32 %8 to i64
  %div = udiv i64 %mul, %conv
  %cmp6.not = icmp ult i64 %9, %div
  br i1 %cmp6.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  tail call fastcc void @contract(%struct.lhash_st* noundef nonnull %lh) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true, %if.then8, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %4, %if.then8 ], [ %4, %land.lhs.true ], [ %4, %if.else ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @contract(%struct.lhash_st* nocapture noundef %lh) unnamed_addr #0 {
entry:
  %b = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 0
  %0 = load %struct.lhash_node_st**, %struct.lhash_node_st*** %b, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 5
  %1 = load i32, i32* %p, align 8, !tbaa !32
  %pmax = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 6
  %2 = load i32, i32* %pmax, align 4, !tbaa !15
  %add = add i32 %1, -1
  %sub = add i32 %add, %2
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.lhash_node_st*, %struct.lhash_node_st** %0, i64 %idxprom
  %3 = load %struct.lhash_node_st*, %struct.lhash_node_st** %arrayidx, align 8, !tbaa !20
  store %struct.lhash_node_st* null, %struct.lhash_node_st** %arrayidx, align 8, !tbaa !20
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.lhash_st* %lh to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !4
  %mul = shl i32 %2, 3
  %conv12 = zext i32 %mul to i64
  %call = tail call i8* @CRYPTO_realloc(i8* noundef %5, i64 noundef %conv12, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 277) #8
  %cmp13 = icmp eq i8* %call, null
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then
  %error = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 23
  %6 = load i32, i32* %error, align 8, !tbaa !25
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %error, align 8, !tbaa !25
  br label %cleanup

if.end:                                           ; preds = %if.then
  %num_contract_reallocs = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 13
  %7 = load i64, i64* %num_contract_reallocs, align 8, !tbaa !40
  %inc16 = add i64 %7, 1
  store i64 %inc16, i64* %num_contract_reallocs, align 8, !tbaa !40
  %num_alloc_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 4
  %8 = load i32, i32* %num_alloc_nodes, align 4, !tbaa !14
  %div = lshr i32 %8, 1
  store i32 %div, i32* %num_alloc_nodes, align 4, !tbaa !14
  %9 = load i32, i32* %pmax, align 4, !tbaa !15
  %div18 = lshr i32 %9, 1
  store i32 %div18, i32* %pmax, align 4, !tbaa !15
  %sub20 = add nsw i32 %div18, -1
  store i32 %sub20, i32* %p, align 8, !tbaa !32
  store i8* %call, i8** %4, align 8, !tbaa !4
  %10 = bitcast i8* %call to %struct.lhash_node_st**
  br label %if.end24

if.else:                                          ; preds = %entry
  store i32 %add, i32* %p, align 8, !tbaa !32
  %.pre = load %struct.lhash_node_st**, %struct.lhash_node_st*** %b, align 8, !tbaa !4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end
  %11 = phi i32 [ %add, %if.else ], [ %sub20, %if.end ]
  %12 = phi %struct.lhash_node_st** [ %.pre, %if.else ], [ %10, %if.end ]
  %num_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 3
  %13 = load i32, i32* %num_nodes, align 8, !tbaa !13
  %dec25 = add i32 %13, -1
  store i32 %dec25, i32* %num_nodes, align 8, !tbaa !13
  %num_contracts = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 12
  %14 = load i64, i64* %num_contracts, align 8, !tbaa !41
  %inc26 = add i64 %14, 1
  store i64 %inc26, i64* %num_contracts, align 8, !tbaa !41
  %idxprom29 = sext i32 %11 to i64
  %arrayidx30 = getelementptr inbounds %struct.lhash_node_st*, %struct.lhash_node_st** %12, i64 %idxprom29
  %15 = load %struct.lhash_node_st*, %struct.lhash_node_st** %arrayidx30, align 8, !tbaa !20
  %cmp31 = icmp eq %struct.lhash_node_st* %15, null
  br i1 %cmp31, label %if.then33, label %while.cond

if.then33:                                        ; preds = %if.end24
  store %struct.lhash_node_st* %3, %struct.lhash_node_st** %arrayidx30, align 8, !tbaa !20
  br label %cleanup

while.cond:                                       ; preds = %if.end24, %while.cond
  %n1.0 = phi %struct.lhash_node_st* [ %16, %while.cond ], [ %15, %if.end24 ]
  %next = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %n1.0, i64 0, i32 1
  %16 = load %struct.lhash_node_st*, %struct.lhash_node_st** %next, align 8, !tbaa !21
  %cmp39.not = icmp eq %struct.lhash_node_st* %16, null
  br i1 %cmp39.not, label %while.end, label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %while.cond
  %next.le = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %n1.0, i64 0, i32 1
  store %struct.lhash_node_st* %3, %struct.lhash_node_st** %next.le, align 8, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %while.end, %if.then15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_LH_retrieve(%struct.lhash_st* nocapture noundef %lh, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %hash = alloca i64, align 8
  %0 = bitcast i64* %hash to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %error = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 23
  store atomic i32 0, i32* %error monotonic, align 8
  %call = call fastcc %struct.lhash_node_st** @getrn(%struct.lhash_st* noundef %lh, i8* noundef %data, i64* noundef nonnull %hash) #9
  %1 = load %struct.lhash_node_st*, %struct.lhash_node_st** %call, align 8, !tbaa !20
  %cmp = icmp eq %struct.lhash_node_st* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %num_retrieve_miss = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 21
  br label %cleanup

if.else:                                          ; preds = %entry
  %data2 = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %1, i64 0, i32 0
  %2 = load i8*, i8** %data2, align 8, !tbaa !28
  %num_retrieve = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 20
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %num_retrieve.sink = phi i64* [ %num_retrieve, %if.else ], [ %num_retrieve_miss, %if.then ]
  %retval.0 = phi i8* [ %2, %if.else ], [ null, %if.then ]
  %3 = atomicrmw add i64* %num_retrieve.sink, i64 1 monotonic, align 8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_LH_doall(%struct.lhash_st* noundef %lh, void (i8*)* nocapture noundef readonly %func) local_unnamed_addr #0 {
entry:
  tail call fastcc void @doall_util_fn(%struct.lhash_st* noundef %lh, i32 noundef 0, void (i8*)* noundef %func, void (i8*, i8*)* noundef null, i8* noundef null) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @doall_util_fn(%struct.lhash_st* noundef readonly %lh, i32 noundef %use_arg, void (i8*)* nocapture noundef readonly %func, void (i8*, i8*)* nocapture noundef readonly %func_arg, i8* noundef %arg) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.lhash_st* %lh, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %num_nodes = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 3
  %0 = load i32, i32* %num_nodes, align 8, !tbaa !13
  %i.021 = add i32 %0, -1
  %cmp122 = icmp sgt i32 %i.021, -1
  br i1 %cmp122, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %b = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 0
  %tobool.not = icmp eq i32 %use_arg, 0
  br label %for.body

for.cond.loopexit:                                ; preds = %if.end5, %for.body
  %i.0 = add i32 %i.023, -1
  %cmp1 = icmp sgt i32 %i.0, -1
  br i1 %cmp1, label %for.body, label %cleanup, !llvm.loop !43

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.loopexit
  %i.023 = phi i32 [ %i.021, %for.body.lr.ph ], [ %i.0, %for.cond.loopexit ]
  %1 = load %struct.lhash_node_st**, %struct.lhash_node_st*** %b, align 8, !tbaa !4
  %idxprom18 = zext i32 %i.023 to i64
  %arrayidx = getelementptr inbounds %struct.lhash_node_st*, %struct.lhash_node_st** %1, i64 %idxprom18
  %2 = load %struct.lhash_node_st*, %struct.lhash_node_st** %arrayidx, align 8, !tbaa !20
  %cmp2.not19 = icmp eq %struct.lhash_node_st* %2, null
  br i1 %cmp2.not19, label %for.cond.loopexit, label %while.body

while.body:                                       ; preds = %for.body, %if.end5
  %a.020 = phi %struct.lhash_node_st* [ %3, %if.end5 ], [ %2, %for.body ]
  %next = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %a.020, i64 0, i32 1
  %3 = load %struct.lhash_node_st*, %struct.lhash_node_st** %next, align 8, !tbaa !21
  %data4 = getelementptr inbounds %struct.lhash_node_st, %struct.lhash_node_st* %a.020, i64 0, i32 0
  %4 = load i8*, i8** %data4, align 8, !tbaa !28
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %while.body
  tail call void %func_arg(i8* noundef %4, i8* noundef %arg) #8
  br label %if.end5

if.else:                                          ; preds = %while.body
  tail call void %func(i8* noundef %4) #8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %cmp2.not = icmp eq %struct.lhash_node_st* %3, null
  br i1 %cmp2.not, label %for.cond.loopexit, label %while.body, !llvm.loop !44

cleanup:                                          ; preds = %for.cond.loopexit, %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @OPENSSL_LH_doall_arg(%struct.lhash_st* noundef %lh, void (i8*, i8*)* nocapture noundef readonly %func, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  tail call fastcc void @doall_util_fn(%struct.lhash_st* noundef %lh, i32 noundef 1, void (i8*)* noundef null, void (i8*, i8*)* noundef %func, i8* noundef %arg) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_lh_strcasehash(i8* noundef readonly %c) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %c, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, i8* %c, align 1, !tbaa !17
  %cmp1 = icmp eq i8 %0, 0
  br i1 %cmp1, label %cleanup, label %for.body

for.body:                                         ; preds = %lor.lhs.false, %for.body
  %c.addr.041 = phi i8* [ %incdec.ptr, %for.body ], [ %c, %lor.lhs.false ]
  %n.040 = phi i64 [ %add, %for.body ], [ 256, %lor.lhs.false ]
  %ret.039 = phi i64 [ %xor13, %for.body ], [ 0, %lor.lhs.false ]
  %1 = phi i8 [ %.pr, %for.body ], [ %0, %lor.lhs.false ]
  %conv3 = sext i8 %1 to i32
  %call = tail call i32 @ossl_tolower(i32 noundef %conv3) #8
  %conv7 = sext i32 %call to i64
  %or = or i64 %n.040, %conv7
  %2 = lshr i32 %call, 2
  %conv8 = xor i32 %2, %call
  %and = and i32 %conv8, 15
  %sh_prom = zext i32 %and to i64
  %shl = shl i64 %ret.039, %sh_prom
  %sub = sub nuw nsw i32 32, %and
  %sh_prom9 = zext i32 %sub to i64
  %shr10 = lshr i64 %ret.039, %sh_prom9
  %or11 = or i64 %shr10, %shl
  %and12 = and i64 %or11, 4294967295
  %mul = mul i64 %or, %or
  %xor13 = xor i64 %and12, %mul
  %incdec.ptr = getelementptr inbounds i8, i8* %c.addr.041, i64 1
  %add = add nuw nsw i64 %n.040, 256
  %.pr = load i8, i8* %incdec.ptr, align 1, !tbaa !17
  %cmp4.not = icmp eq i8 %.pr, 0
  br i1 %cmp4.not, label %for.end, label %for.body, !llvm.loop !45

for.end:                                          ; preds = %for.body
  %shr14 = lshr i64 %xor13, 16
  %xor15 = xor i64 %shr14, %xor13
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %for.end
  %retval.0 = phi i64 [ %xor15, %for.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i64 %retval.0
}

declare i32 @ossl_tolower(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @OPENSSL_LH_num_items(%struct.lhash_st* noundef readonly %lh) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.lhash_st* %lh, null
  br i1 %tobool.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %num_items = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 9
  %0 = load i64, i64* %num_items, align 8, !tbaa !27
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %0, %cond.true ], [ 0, %entry ]
  ret i64 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @OPENSSL_LH_get_down_load(%struct.lhash_st* nocapture noundef readonly %lh) local_unnamed_addr #5 {
entry:
  %down_load = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 8
  %0 = load i64, i64* %down_load, align 8, !tbaa !39
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @OPENSSL_LH_set_down_load(%struct.lhash_st* nocapture noundef writeonly %lh, i64 noundef %down_load) local_unnamed_addr #6 {
entry:
  %down_load1 = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 8
  store i64 %down_load, i64* %down_load1, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @OPENSSL_LH_error(%struct.lhash_st* nocapture noundef readonly %lh) local_unnamed_addr #5 {
entry:
  %error = getelementptr inbounds %struct.lhash_st, %struct.lhash_st* %lh, i64 0, i32 23
  %0 = load i32, i32* %error, align 8, !tbaa !25
  ret i32 %0
}

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"lhash_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !9, i64 168}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 8}
!12 = !{!5, !6, i64 16}
!13 = !{!5, !9, i64 24}
!14 = !{!5, !9, i64 28}
!15 = !{!5, !9, i64 36}
!16 = !{!10, !10, i64 0}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!6, !6, i64 0}
!21 = !{!22, !6, i64 8}
!22 = !{!"lhash_node_st", !6, i64 0, !6, i64 8, !10, i64 16}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = !{!5, !9, i64 168}
!26 = !{!5, !10, i64 40}
!27 = !{!5, !10, i64 56}
!28 = !{!22, !6, i64 0}
!29 = !{!22, !10, i64 16}
!30 = !{!5, !10, i64 112}
!31 = !{!5, !10, i64 120}
!32 = !{!5, !9, i64 32}
!33 = !{!5, !10, i64 72}
!34 = !{!5, !10, i64 64}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = !{!5, !10, i64 136}
!38 = !{!5, !10, i64 128}
!39 = !{!5, !10, i64 48}
!40 = !{!5, !10, i64 88}
!41 = !{!5, !10, i64 80}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
