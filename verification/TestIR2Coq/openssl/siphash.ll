; ModuleID = 'crypto/siphash/siphash.c'
source_filename = "crypto/siphash/siphash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siphash_st = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, [8 x i8] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i64 @SipHash_ctx_size() local_unnamed_addr #0 {
entry:
  ret i64 64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @SipHash_hash_size(%struct.siphash_st* nocapture noundef readonly %ctx) local_unnamed_addr #1 {
entry:
  %hash_size = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 6
  %0 = load i32, i32* %hash_size, align 4, !tbaa !4
  %conv = zext i32 %0 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @SipHash_set_hash_size(%struct.siphash_st* nocapture noundef %ctx, i64 noundef %hash_size) local_unnamed_addr #2 {
entry:
  %call = tail call fastcc i64 @siphash_adjust_hash_size(i64 noundef %hash_size) #7
  switch i64 %call, label %return [
    i64 16, label %if.end
    i64 8, label %if.end
  ]

if.end:                                           ; preds = %entry, %entry
  %hash_size2 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 6
  %0 = load i32, i32* %hash_size2, align 4, !tbaa !4
  %conv = zext i32 %0 to i64
  %call3 = tail call fastcc i64 @siphash_adjust_hash_size(i64 noundef %conv) #7
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, i32* %hash_size2, align 4, !tbaa !4
  %conv7 = and i64 %call3, 4294967295
  %cmp8.not = icmp eq i64 %conv7, %call
  br i1 %cmp8.not, label %return, label %if.then10

if.then10:                                        ; preds = %if.end
  %v1 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 2
  %1 = load i64, i64* %v1, align 8, !tbaa !10
  %xor = xor i64 %1, 238
  store i64 %xor, i64* %v1, align 8, !tbaa !10
  %conv11 = trunc i64 %call to i32
  store i32 %conv11, i32* %hash_size2, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %if.end, %if.then10, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then10 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @siphash_adjust_hash_size(i64 noundef %hash_size) unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %hash_size, 0
  %spec.store.select = select i1 %cmp, i64 16, i64 %hash_size
  ret i64 %spec.store.select
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @SipHash_Init(%struct.siphash_st* nocapture noundef %ctx, i8* nocapture noundef readonly %k, i32 noundef %crounds, i32 noundef %drounds) local_unnamed_addr #2 {
entry:
  %0 = load i8, i8* %k, align 1, !tbaa !11
  %conv = zext i8 %0 to i64
  %arrayidx1 = getelementptr inbounds i8, i8* %k, i64 1
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !11
  %conv2 = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv2, 8
  %or = or i64 %shl, %conv
  %arrayidx3 = getelementptr inbounds i8, i8* %k, i64 2
  %2 = load i8, i8* %arrayidx3, align 1, !tbaa !11
  %conv4 = zext i8 %2 to i64
  %shl5 = shl nuw nsw i64 %conv4, 16
  %or6 = or i64 %or, %shl5
  %arrayidx7 = getelementptr inbounds i8, i8* %k, i64 3
  %3 = load i8, i8* %arrayidx7, align 1, !tbaa !11
  %conv8 = zext i8 %3 to i64
  %shl9 = shl nuw nsw i64 %conv8, 24
  %or10 = or i64 %or6, %shl9
  %arrayidx11 = getelementptr inbounds i8, i8* %k, i64 4
  %4 = load i8, i8* %arrayidx11, align 1, !tbaa !11
  %conv12 = zext i8 %4 to i64
  %shl13 = shl nuw nsw i64 %conv12, 32
  %or14 = or i64 %or10, %shl13
  %arrayidx15 = getelementptr inbounds i8, i8* %k, i64 5
  %5 = load i8, i8* %arrayidx15, align 1, !tbaa !11
  %conv16 = zext i8 %5 to i64
  %shl17 = shl nuw nsw i64 %conv16, 40
  %or18 = or i64 %or14, %shl17
  %arrayidx19 = getelementptr inbounds i8, i8* %k, i64 6
  %6 = load i8, i8* %arrayidx19, align 1, !tbaa !11
  %conv20 = zext i8 %6 to i64
  %shl21 = shl nuw nsw i64 %conv20, 48
  %or22 = or i64 %or18, %shl21
  %arrayidx23 = getelementptr inbounds i8, i8* %k, i64 7
  %7 = load i8, i8* %arrayidx23, align 1, !tbaa !11
  %conv24 = zext i8 %7 to i64
  %shl25 = shl nuw i64 %conv24, 56
  %or26 = or i64 %or22, %shl25
  %add.ptr = getelementptr inbounds i8, i8* %k, i64 8
  %8 = load i8, i8* %add.ptr, align 1, !tbaa !11
  %conv28 = zext i8 %8 to i64
  %arrayidx30 = getelementptr inbounds i8, i8* %k, i64 9
  %9 = load i8, i8* %arrayidx30, align 1, !tbaa !11
  %conv31 = zext i8 %9 to i64
  %shl32 = shl nuw nsw i64 %conv31, 8
  %or33 = or i64 %shl32, %conv28
  %arrayidx35 = getelementptr inbounds i8, i8* %k, i64 10
  %10 = load i8, i8* %arrayidx35, align 1, !tbaa !11
  %conv36 = zext i8 %10 to i64
  %shl37 = shl nuw nsw i64 %conv36, 16
  %or38 = or i64 %or33, %shl37
  %arrayidx40 = getelementptr inbounds i8, i8* %k, i64 11
  %11 = load i8, i8* %arrayidx40, align 1, !tbaa !11
  %conv41 = zext i8 %11 to i64
  %shl42 = shl nuw nsw i64 %conv41, 24
  %or43 = or i64 %or38, %shl42
  %arrayidx45 = getelementptr inbounds i8, i8* %k, i64 12
  %12 = load i8, i8* %arrayidx45, align 1, !tbaa !11
  %conv46 = zext i8 %12 to i64
  %shl47 = shl nuw nsw i64 %conv46, 32
  %or48 = or i64 %or43, %shl47
  %arrayidx50 = getelementptr inbounds i8, i8* %k, i64 13
  %13 = load i8, i8* %arrayidx50, align 1, !tbaa !11
  %conv51 = zext i8 %13 to i64
  %shl52 = shl nuw nsw i64 %conv51, 40
  %or53 = or i64 %or48, %shl52
  %arrayidx55 = getelementptr inbounds i8, i8* %k, i64 14
  %14 = load i8, i8* %arrayidx55, align 1, !tbaa !11
  %conv56 = zext i8 %14 to i64
  %shl57 = shl nuw nsw i64 %conv56, 48
  %or58 = or i64 %or53, %shl57
  %arrayidx60 = getelementptr inbounds i8, i8* %k, i64 15
  %15 = load i8, i8* %arrayidx60, align 1, !tbaa !11
  %conv61 = zext i8 %15 to i64
  %shl62 = shl nuw i64 %conv61, 56
  %or63 = or i64 %or58, %shl62
  %hash_size = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 6
  %16 = load i32, i32* %hash_size, align 4, !tbaa !4
  %conv64 = zext i32 %16 to i64
  %call = tail call fastcc i64 @siphash_adjust_hash_size(i64 noundef %conv64) #7
  %conv65 = trunc i64 %call to i32
  store i32 %conv65, i32* %hash_size, align 4, !tbaa !4
  %cmp = icmp eq i32 %drounds, 0
  %spec.store.select = select i1 %cmp, i32 4, i32 %drounds
  %cmp68 = icmp eq i32 %crounds, 0
  %spec.store.select84 = select i1 %cmp68, i32 2, i32 %crounds
  %crounds72 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 7
  store i32 %spec.store.select84, i32* %crounds72, align 8, !tbaa !12
  %drounds73 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 8
  store i32 %spec.store.select, i32* %drounds73, align 4, !tbaa !13
  %len = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 5
  store i32 0, i32* %len, align 8, !tbaa !14
  %total_inlen = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 0
  store i64 0, i64* %total_inlen, align 8, !tbaa !15
  %xor = xor i64 %or26, 8317987319222330741
  %v0 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 1
  store i64 %xor, i64* %v0, align 8, !tbaa !16
  %xor74 = xor i64 %or63, 7237128888997146477
  %v1 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 2
  store i64 %xor74, i64* %v1, align 8, !tbaa !10
  %xor75 = xor i64 %or26, 7816392313619706465
  %v2 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 3
  store i64 %xor75, i64* %v2, align 8, !tbaa !17
  %xor76 = xor i64 %or63, 8387220255154660723
  %v3 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 4
  store i64 %xor76, i64* %v3, align 8, !tbaa !18
  %cmp78 = icmp eq i32 %conv65, 16
  br i1 %cmp78, label %if.then80, label %if.end83

if.then80:                                        ; preds = %entry
  %xor82 = xor i64 %or63, 7237128888997146499
  store i64 %xor82, i64* %v1, align 8, !tbaa !10
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %entry
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define void @SipHash_Update(%struct.siphash_st* noundef %ctx, i8* noundef %in, i64 noundef %inlen) local_unnamed_addr #3 {
entry:
  %v01 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 1
  %0 = load i64, i64* %v01, align 8, !tbaa !16
  %v12 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 2
  %1 = load i64, i64* %v12, align 8, !tbaa !10
  %v23 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 3
  %2 = load i64, i64* %v23, align 8, !tbaa !17
  %v34 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 4
  %3 = load i64, i64* %v34, align 8, !tbaa !18
  %total_inlen = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 0
  %4 = load i64, i64* %total_inlen, align 8, !tbaa !15
  %add = add i64 %4, %inlen
  store i64 %add, i64* %total_inlen, align 8, !tbaa !15
  %len = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 5
  %5 = load i32, i32* %len, align 8, !tbaa !14
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end83, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub i32 8, %5
  %conv = zext i32 %sub to i64
  %cmp = icmp ugt i64 %conv, %inlen
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 %idxprom
  br i1 %cmp, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %if.then
  %call = tail call i8* @memcpy(i8* noundef nonnull %arrayidx, i8* noundef %in, i64 noundef %inlen) #8
  %6 = load i32, i32* %len, align 8, !tbaa !14
  %7 = trunc i64 %inlen to i32
  %conv12 = add i32 %6, %7
  store i32 %conv12, i32* %len, align 8, !tbaa !14
  br label %cleanup174

if.end:                                           ; preds = %if.then
  %call17 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx, i8* noundef %in, i64 noundef %conv) #8
  %sub18 = sub i64 %inlen, %conv
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %conv
  %arrayidx20 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 0
  %8 = load i8, i8* %arrayidx20, align 8, !tbaa !11
  %conv21 = zext i8 %8 to i64
  %arrayidx23 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 1
  %9 = load i8, i8* %arrayidx23, align 1, !tbaa !11
  %conv24 = zext i8 %9 to i64
  %shl = shl nuw nsw i64 %conv24, 8
  %or = or i64 %shl, %conv21
  %arrayidx26 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 2
  %10 = load i8, i8* %arrayidx26, align 2, !tbaa !11
  %conv27 = zext i8 %10 to i64
  %shl28 = shl nuw nsw i64 %conv27, 16
  %or29 = or i64 %or, %shl28
  %arrayidx31 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 3
  %11 = load i8, i8* %arrayidx31, align 1, !tbaa !11
  %conv32 = zext i8 %11 to i64
  %shl33 = shl nuw nsw i64 %conv32, 24
  %or34 = or i64 %or29, %shl33
  %arrayidx36 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 4
  %12 = load i8, i8* %arrayidx36, align 4, !tbaa !11
  %conv37 = zext i8 %12 to i64
  %shl38 = shl nuw nsw i64 %conv37, 32
  %or39 = or i64 %or34, %shl38
  %arrayidx41 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 5
  %13 = load i8, i8* %arrayidx41, align 1, !tbaa !11
  %conv42 = zext i8 %13 to i64
  %shl43 = shl nuw nsw i64 %conv42, 40
  %or44 = or i64 %or39, %shl43
  %arrayidx46 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 6
  %14 = load i8, i8* %arrayidx46, align 2, !tbaa !11
  %conv47 = zext i8 %14 to i64
  %shl48 = shl nuw nsw i64 %conv47, 48
  %or49 = or i64 %or44, %shl48
  %arrayidx51 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 7
  %15 = load i8, i8* %arrayidx51, align 1, !tbaa !11
  %conv52 = zext i8 %15 to i64
  %shl53 = shl nuw i64 %conv52, 56
  %or54 = or i64 %or49, %shl53
  %xor = xor i64 %or54, %3
  %crounds = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 7
  %16 = load i32, i32* %crounds, align 8, !tbaa !12
  %cmp55318.not = icmp eq i32 %16, 0
  br i1 %cmp55318.not, label %cleanup, label %do.body

do.body:                                          ; preds = %if.end, %do.body
  %v3.0323 = phi i64 [ %xor73, %do.body ], [ %xor, %if.end ]
  %v2.0322 = phi i64 [ %or81, %do.body ], [ %2, %if.end ]
  %v1.0321 = phi i64 [ %xor78, %do.body ], [ %1, %if.end ]
  %v0.0320 = phi i64 [ %add69, %do.body ], [ %0, %if.end ]
  %i.0319 = phi i32 [ %inc, %do.body ], [ 0, %if.end ]
  %add57 = add i64 %v1.0321, %v0.0320
  %or59 = tail call i64 @llvm.fshl.i64(i64 %v1.0321, i64 %v1.0321, i64 13)
  %xor60 = xor i64 %or59, %add57
  %or63 = tail call i64 @llvm.fshl.i64(i64 %add57, i64 %add57, i64 32)
  %add64 = add i64 %v3.0323, %v2.0322
  %or67 = tail call i64 @llvm.fshl.i64(i64 %v3.0323, i64 %v3.0323, i64 16)
  %xor68 = xor i64 %or67, %add64
  %add69 = add i64 %xor68, %or63
  %or72 = tail call i64 @llvm.fshl.i64(i64 %xor68, i64 %xor68, i64 21)
  %xor73 = xor i64 %or72, %add69
  %add74 = add i64 %add64, %xor60
  %or77 = tail call i64 @llvm.fshl.i64(i64 %xor60, i64 %xor60, i64 17)
  %xor78 = xor i64 %add74, %or77
  %or81 = tail call i64 @llvm.fshl.i64(i64 %add74, i64 %add74, i64 32)
  %inc = add nuw i32 %i.0319, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %cleanup, label %do.body, !llvm.loop !19

cleanup:                                          ; preds = %do.body, %if.end
  %v0.0.lcssa = phi i64 [ %0, %if.end ], [ %add69, %do.body ]
  %v1.0.lcssa = phi i64 [ %1, %if.end ], [ %xor78, %do.body ]
  %v2.0.lcssa = phi i64 [ %2, %if.end ], [ %or81, %do.body ]
  %v3.0.lcssa = phi i64 [ %xor, %if.end ], [ %xor73, %do.body ]
  %xor82 = xor i64 %v0.0.lcssa, %or54
  br label %if.end83

if.end83:                                         ; preds = %cleanup, %entry
  %inlen.addr.1 = phi i64 [ %sub18, %cleanup ], [ %inlen, %entry ]
  %v0.2 = phi i64 [ %xor82, %cleanup ], [ %0, %entry ]
  %v1.2 = phi i64 [ %v1.0.lcssa, %cleanup ], [ %1, %entry ]
  %v2.2 = phi i64 [ %v2.0.lcssa, %cleanup ], [ %2, %entry ]
  %v3.2 = phi i64 [ %v3.0.lcssa, %cleanup ], [ %3, %entry ]
  %in.addr.1 = phi i8* [ %add.ptr, %cleanup ], [ %in, %entry ]
  %17 = trunc i64 %inlen.addr.1 to i32
  %conv84 = and i32 %17, 7
  %add.ptr85 = getelementptr inbounds i8, i8* %in.addr.1, i64 %inlen.addr.1
  %18 = zext i32 %conv84 to i64
  %idx.neg = sub nsw i64 0, %18
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr85, i64 %idx.neg
  %cmp88.not337 = icmp eq i8* %in.addr.1, %add.ptr86
  br i1 %cmp88.not337, label %for.end162, label %for.body90.lr.ph

for.body90.lr.ph:                                 ; preds = %if.end83
  %crounds123 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 7
  %19 = load i32, i32* %crounds123, align 8, !tbaa !12
  %cmp124327.not = icmp eq i32 %19, 0
  br label %for.body90

for.body90:                                       ; preds = %for.body90.lr.ph, %for.end158
  %in.addr.2342 = phi i8* [ %in.addr.1, %for.body90.lr.ph ], [ %add.ptr161, %for.end158 ]
  %v3.3341 = phi i64 [ %v3.2, %for.body90.lr.ph ], [ %v3.4.lcssa, %for.end158 ]
  %v2.3340 = phi i64 [ %v2.2, %for.body90.lr.ph ], [ %v2.4.lcssa, %for.end158 ]
  %v1.3339 = phi i64 [ %v1.2, %for.body90.lr.ph ], [ %v1.4.lcssa, %for.end158 ]
  %v0.3338 = phi i64 [ %v0.2, %for.body90.lr.ph ], [ %xor159, %for.end158 ]
  %20 = load i8, i8* %in.addr.2342, align 1, !tbaa !11
  %conv92 = zext i8 %20 to i64
  %arrayidx93 = getelementptr inbounds i8, i8* %in.addr.2342, i64 1
  %21 = load i8, i8* %arrayidx93, align 1, !tbaa !11
  %conv94 = zext i8 %21 to i64
  %shl95 = shl nuw nsw i64 %conv94, 8
  %or96 = or i64 %shl95, %conv92
  %arrayidx97 = getelementptr inbounds i8, i8* %in.addr.2342, i64 2
  %22 = load i8, i8* %arrayidx97, align 1, !tbaa !11
  %conv98 = zext i8 %22 to i64
  %shl99 = shl nuw nsw i64 %conv98, 16
  %or100 = or i64 %or96, %shl99
  %arrayidx101 = getelementptr inbounds i8, i8* %in.addr.2342, i64 3
  %23 = load i8, i8* %arrayidx101, align 1, !tbaa !11
  %conv102 = zext i8 %23 to i64
  %shl103 = shl nuw nsw i64 %conv102, 24
  %or104 = or i64 %or100, %shl103
  %arrayidx105 = getelementptr inbounds i8, i8* %in.addr.2342, i64 4
  %24 = load i8, i8* %arrayidx105, align 1, !tbaa !11
  %conv106 = zext i8 %24 to i64
  %shl107 = shl nuw nsw i64 %conv106, 32
  %or108 = or i64 %or104, %shl107
  %arrayidx109 = getelementptr inbounds i8, i8* %in.addr.2342, i64 5
  %25 = load i8, i8* %arrayidx109, align 1, !tbaa !11
  %conv110 = zext i8 %25 to i64
  %shl111 = shl nuw nsw i64 %conv110, 40
  %or112 = or i64 %or108, %shl111
  %arrayidx113 = getelementptr inbounds i8, i8* %in.addr.2342, i64 6
  %26 = load i8, i8* %arrayidx113, align 1, !tbaa !11
  %conv114 = zext i8 %26 to i64
  %shl115 = shl nuw nsw i64 %conv114, 48
  %or116 = or i64 %or112, %shl115
  %arrayidx117 = getelementptr inbounds i8, i8* %in.addr.2342, i64 7
  %27 = load i8, i8* %arrayidx117, align 1, !tbaa !11
  %conv118 = zext i8 %27 to i64
  %shl119 = shl nuw i64 %conv118, 56
  %or120 = or i64 %or116, %shl119
  %xor121 = xor i64 %or120, %v3.3341
  br i1 %cmp124327.not, label %for.end158, label %do.body127

do.body127:                                       ; preds = %for.body90, %do.body127
  %v3.4332 = phi i64 [ %xor145, %do.body127 ], [ %xor121, %for.body90 ]
  %v2.4331 = phi i64 [ %or153, %do.body127 ], [ %v2.3340, %for.body90 ]
  %v1.4330 = phi i64 [ %xor150, %do.body127 ], [ %v1.3339, %for.body90 ]
  %v0.4329 = phi i64 [ %add141, %do.body127 ], [ %v0.3338, %for.body90 ]
  %i.1328 = phi i32 [ %inc157, %do.body127 ], [ 0, %for.body90 ]
  %add128 = add i64 %v1.4330, %v0.4329
  %or131 = tail call i64 @llvm.fshl.i64(i64 %v1.4330, i64 %v1.4330, i64 13)
  %xor132 = xor i64 %or131, %add128
  %or135 = tail call i64 @llvm.fshl.i64(i64 %add128, i64 %add128, i64 32)
  %add136 = add i64 %v3.4332, %v2.4331
  %or139 = tail call i64 @llvm.fshl.i64(i64 %v3.4332, i64 %v3.4332, i64 16)
  %xor140 = xor i64 %or139, %add136
  %add141 = add i64 %xor140, %or135
  %or144 = tail call i64 @llvm.fshl.i64(i64 %xor140, i64 %xor140, i64 21)
  %xor145 = xor i64 %or144, %add141
  %add146 = add i64 %add136, %xor132
  %or149 = tail call i64 @llvm.fshl.i64(i64 %xor132, i64 %xor132, i64 17)
  %xor150 = xor i64 %add146, %or149
  %or153 = tail call i64 @llvm.fshl.i64(i64 %add146, i64 %add146, i64 32)
  %inc157 = add nuw i32 %i.1328, 1
  %exitcond347.not = icmp eq i32 %inc157, %19
  br i1 %exitcond347.not, label %for.end158, label %do.body127, !llvm.loop !21

for.end158:                                       ; preds = %do.body127, %for.body90
  %v0.4.lcssa = phi i64 [ %v0.3338, %for.body90 ], [ %add141, %do.body127 ]
  %v1.4.lcssa = phi i64 [ %v1.3339, %for.body90 ], [ %xor150, %do.body127 ]
  %v2.4.lcssa = phi i64 [ %v2.3340, %for.body90 ], [ %or153, %do.body127 ]
  %v3.4.lcssa = phi i64 [ %xor121, %for.body90 ], [ %xor145, %do.body127 ]
  %xor159 = xor i64 %v0.4.lcssa, %or120
  %add.ptr161 = getelementptr inbounds i8, i8* %in.addr.2342, i64 8
  %cmp88.not = icmp eq i8* %add.ptr161, %add.ptr86
  br i1 %cmp88.not, label %for.end162, label %for.body90, !llvm.loop !22

for.end162:                                       ; preds = %for.end158, %if.end83
  %v0.3.lcssa = phi i64 [ %v0.2, %if.end83 ], [ %xor159, %for.end158 ]
  %v1.3.lcssa = phi i64 [ %v1.2, %if.end83 ], [ %v1.4.lcssa, %for.end158 ]
  %v2.3.lcssa = phi i64 [ %v2.2, %if.end83 ], [ %v2.4.lcssa, %for.end158 ]
  %v3.3.lcssa = phi i64 [ %v3.2, %if.end83 ], [ %v3.4.lcssa, %for.end158 ]
  %tobool163.not = icmp eq i32 %conv84, 0
  br i1 %tobool163.not, label %if.end168, label %if.then164

if.then164:                                       ; preds = %for.end162
  %arraydecay = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 0
  %call167 = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef %add.ptr86, i64 noundef %18) #8
  br label %if.end168

if.end168:                                        ; preds = %if.then164, %for.end162
  store i32 %conv84, i32* %len, align 8, !tbaa !14
  store i64 %v0.3.lcssa, i64* %v01, align 8, !tbaa !16
  store i64 %v1.3.lcssa, i64* %v12, align 8, !tbaa !10
  store i64 %v2.3.lcssa, i64* %v23, align 8, !tbaa !17
  store i64 %v3.3.lcssa, i64* %v34, align 8, !tbaa !18
  br label %cleanup174

cleanup174:                                       ; preds = %cleanup.thread, %if.end168
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nosync nounwind uwtable
define i32 @SipHash_Final(%struct.siphash_st* nocapture noundef readonly %ctx, i8* nocapture noundef writeonly %out, i64 noundef %outlen) local_unnamed_addr #5 {
entry:
  %total_inlen = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 0
  %0 = load i64, i64* %total_inlen, align 8, !tbaa !15
  %shl = shl i64 %0, 56
  %v01 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 1
  %1 = load i64, i64* %v01, align 8, !tbaa !16
  %v12 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 2
  %2 = load i64, i64* %v12, align 8, !tbaa !10
  %v23 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 3
  %3 = load i64, i64* %v23, align 8, !tbaa !17
  %v34 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 4
  %4 = load i64, i64* %v34, align 8, !tbaa !18
  %hash_size = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 6
  %5 = load i32, i32* %hash_size, align 4, !tbaa !4
  %conv = zext i32 %5 to i64
  %cmp.not = icmp eq i64 %conv, %outlen
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 5
  %6 = load i32, i32* %len, align 8, !tbaa !14
  switch i32 %6, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb8
    i32 5, label %sw.bb14
    i32 4, label %sw.bb20
    i32 3, label %sw.bb26
    i32 2, label %sw.bb32
    i32 1, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 6
  %7 = load i8, i8* %arrayidx, align 2, !tbaa !11
  %conv6 = zext i8 %7 to i64
  %shl7 = shl nuw nsw i64 %conv6, 48
  %or = or i64 %shl7, %shl
  br label %sw.bb8

sw.bb8:                                           ; preds = %if.end, %sw.bb
  %b.0 = phi i64 [ %shl, %if.end ], [ %or, %sw.bb ]
  %arrayidx10 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 5
  %8 = load i8, i8* %arrayidx10, align 1, !tbaa !11
  %conv11 = zext i8 %8 to i64
  %shl12 = shl nuw nsw i64 %conv11, 40
  %or13 = or i64 %shl12, %b.0
  br label %sw.bb14

sw.bb14:                                          ; preds = %if.end, %sw.bb8
  %b.1 = phi i64 [ %shl, %if.end ], [ %or13, %sw.bb8 ]
  %arrayidx16 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 4
  %9 = load i8, i8* %arrayidx16, align 4, !tbaa !11
  %conv17 = zext i8 %9 to i64
  %shl18 = shl nuw nsw i64 %conv17, 32
  %or19 = or i64 %shl18, %b.1
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.end, %sw.bb14
  %b.2 = phi i64 [ %shl, %if.end ], [ %or19, %sw.bb14 ]
  %arrayidx22 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 3
  %10 = load i8, i8* %arrayidx22, align 1, !tbaa !11
  %conv23 = zext i8 %10 to i64
  %shl24 = shl nuw nsw i64 %conv23, 24
  %or25 = or i64 %shl24, %b.2
  br label %sw.bb26

sw.bb26:                                          ; preds = %if.end, %sw.bb20
  %b.3 = phi i64 [ %shl, %if.end ], [ %or25, %sw.bb20 ]
  %arrayidx28 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 2
  %11 = load i8, i8* %arrayidx28, align 2, !tbaa !11
  %conv29 = zext i8 %11 to i64
  %shl30 = shl nuw nsw i64 %conv29, 16
  %or31 = or i64 %shl30, %b.3
  br label %sw.bb32

sw.bb32:                                          ; preds = %if.end, %sw.bb26
  %b.4 = phi i64 [ %shl, %if.end ], [ %or31, %sw.bb26 ]
  %arrayidx34 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 1
  %12 = load i8, i8* %arrayidx34, align 1, !tbaa !11
  %conv35 = zext i8 %12 to i64
  %shl36 = shl nuw nsw i64 %conv35, 8
  %or37 = or i64 %shl36, %b.4
  br label %sw.bb38

sw.bb38:                                          ; preds = %if.end, %sw.bb32
  %b.5 = phi i64 [ %shl, %if.end ], [ %or37, %sw.bb32 ]
  %arrayidx40 = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 9, i64 0
  %13 = load i8, i8* %arrayidx40, align 8, !tbaa !11
  %conv41 = zext i8 %13 to i64
  %or42 = or i64 %b.5, %conv41
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb38
  %b.6 = phi i64 [ %shl, %if.end ], [ %or42, %sw.bb38 ]
  %xor = xor i64 %b.6, %4
  %crounds = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 7
  %14 = load i32, i32* %crounds, align 8, !tbaa !12
  %cmp43424.not = icmp eq i32 %14, 0
  br i1 %cmp43424.not, label %for.end, label %do.body

do.body:                                          ; preds = %sw.epilog, %do.body
  %v3.0429 = phi i64 [ %xor60, %do.body ], [ %xor, %sw.epilog ]
  %v2.0428 = phi i64 [ %or68, %do.body ], [ %3, %sw.epilog ]
  %v1.0427 = phi i64 [ %xor65, %do.body ], [ %2, %sw.epilog ]
  %v0.0426 = phi i64 [ %add56, %do.body ], [ %1, %sw.epilog ]
  %i.0425 = phi i32 [ %inc, %do.body ], [ 0, %sw.epilog ]
  %add = add i64 %v1.0427, %v0.0426
  %or46 = tail call i64 @llvm.fshl.i64(i64 %v1.0427, i64 %v1.0427, i64 13)
  %xor47 = xor i64 %or46, %add
  %or50 = tail call i64 @llvm.fshl.i64(i64 %add, i64 %add, i64 32)
  %add51 = add i64 %v3.0429, %v2.0428
  %or54 = tail call i64 @llvm.fshl.i64(i64 %v3.0429, i64 %v3.0429, i64 16)
  %xor55 = xor i64 %or54, %add51
  %add56 = add i64 %xor55, %or50
  %or59 = tail call i64 @llvm.fshl.i64(i64 %xor55, i64 %xor55, i64 21)
  %xor60 = xor i64 %or59, %add56
  %add61 = add i64 %add51, %xor47
  %or64 = tail call i64 @llvm.fshl.i64(i64 %xor47, i64 %xor47, i64 17)
  %xor65 = xor i64 %add61, %or64
  %or68 = tail call i64 @llvm.fshl.i64(i64 %add61, i64 %add61, i64 32)
  %inc = add nuw i32 %i.0425, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.end, label %do.body, !llvm.loop !23

for.end:                                          ; preds = %do.body, %sw.epilog
  %v0.0.lcssa = phi i64 [ %1, %sw.epilog ], [ %add56, %do.body ]
  %v1.0.lcssa = phi i64 [ %2, %sw.epilog ], [ %xor65, %do.body ]
  %v2.0.lcssa = phi i64 [ %3, %sw.epilog ], [ %or68, %do.body ]
  %v3.0.lcssa = phi i64 [ %xor, %sw.epilog ], [ %xor60, %do.body ]
  %xor69 = xor i64 %v0.0.lcssa, %b.6
  %cmp71 = icmp eq i32 %5, 16
  %v2.1.v = select i1 %cmp71, i64 238, i64 255
  %v2.1 = xor i64 %v2.0.lcssa, %v2.1.v
  %drounds = getelementptr inbounds %struct.siphash_st, %struct.siphash_st* %ctx, i64 0, i32 8
  %15 = load i32, i32* %drounds, align 4, !tbaa !13
  %cmp78433.not = icmp eq i32 %15, 0
  br i1 %cmp78433.not, label %for.end112, label %do.body81

do.body81:                                        ; preds = %for.end, %do.body81
  %v3.1438 = phi i64 [ %xor99, %do.body81 ], [ %v3.0.lcssa, %for.end ]
  %v2.2437 = phi i64 [ %or107, %do.body81 ], [ %v2.1, %for.end ]
  %v1.1436 = phi i64 [ %xor104, %do.body81 ], [ %v1.0.lcssa, %for.end ]
  %v0.1435 = phi i64 [ %add95, %do.body81 ], [ %xor69, %for.end ]
  %i.1434 = phi i32 [ %inc111, %do.body81 ], [ 0, %for.end ]
  %add82 = add i64 %v1.1436, %v0.1435
  %or85 = tail call i64 @llvm.fshl.i64(i64 %v1.1436, i64 %v1.1436, i64 13)
  %xor86 = xor i64 %or85, %add82
  %or89 = tail call i64 @llvm.fshl.i64(i64 %add82, i64 %add82, i64 32)
  %add90 = add i64 %v3.1438, %v2.2437
  %or93 = tail call i64 @llvm.fshl.i64(i64 %v3.1438, i64 %v3.1438, i64 16)
  %xor94 = xor i64 %or93, %add90
  %add95 = add i64 %xor94, %or89
  %or98 = tail call i64 @llvm.fshl.i64(i64 %xor94, i64 %xor94, i64 21)
  %xor99 = xor i64 %or98, %add95
  %add100 = add i64 %add90, %xor86
  %or103 = tail call i64 @llvm.fshl.i64(i64 %xor86, i64 %xor86, i64 17)
  %xor104 = xor i64 %add100, %or103
  %or107 = tail call i64 @llvm.fshl.i64(i64 %add100, i64 %add100, i64 32)
  %inc111 = add nuw i32 %i.1434, 1
  %exitcond453.not = icmp eq i32 %inc111, %15
  br i1 %exitcond453.not, label %for.end112, label %do.body81, !llvm.loop !24

for.end112:                                       ; preds = %do.body81, %for.end
  %v0.1.lcssa = phi i64 [ %xor69, %for.end ], [ %add95, %do.body81 ]
  %v1.1.lcssa = phi i64 [ %v1.0.lcssa, %for.end ], [ %xor104, %do.body81 ]
  %v2.2.lcssa = phi i64 [ %v2.1, %for.end ], [ %or107, %do.body81 ]
  %v3.1.lcssa = phi i64 [ %v3.0.lcssa, %for.end ], [ %xor99, %do.body81 ]
  %xor113 = xor i64 %v1.1.lcssa, %v0.1.lcssa
  %xor114 = xor i64 %xor113, %v2.2.lcssa
  %xor115 = xor i64 %xor114, %v3.1.lcssa
  %conv117 = trunc i64 %xor115 to i8
  store i8 %conv117, i8* %out, align 1, !tbaa !11
  %shr120411 = lshr i64 %xor115, 8
  %conv121 = trunc i64 %shr120411 to i8
  %arrayidx122 = getelementptr inbounds i8, i8* %out, i64 1
  store i8 %conv121, i8* %arrayidx122, align 1, !tbaa !11
  %shr124412 = lshr i64 %xor115, 16
  %conv125 = trunc i64 %shr124412 to i8
  %arrayidx126 = getelementptr inbounds i8, i8* %out, i64 2
  store i8 %conv125, i8* %arrayidx126, align 1, !tbaa !11
  %shr128413 = lshr i64 %xor115, 24
  %conv129 = trunc i64 %shr128413 to i8
  %arrayidx130 = getelementptr inbounds i8, i8* %out, i64 3
  store i8 %conv129, i8* %arrayidx130, align 1, !tbaa !11
  %shr131 = lshr i64 %xor115, 32
  %conv133 = trunc i64 %shr131 to i8
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 4
  store i8 %conv133, i8* %add.ptr, align 1, !tbaa !11
  %shr137414 = lshr i64 %xor115, 40
  %conv138 = trunc i64 %shr137414 to i8
  %arrayidx140 = getelementptr inbounds i8, i8* %out, i64 5
  store i8 %conv138, i8* %arrayidx140, align 1, !tbaa !11
  %shr143415 = lshr i64 %xor115, 48
  %conv144 = trunc i64 %shr143415 to i8
  %arrayidx146 = getelementptr inbounds i8, i8* %out, i64 6
  store i8 %conv144, i8* %arrayidx146, align 1, !tbaa !11
  %sum.shift = lshr i64 %xor115, 56
  %conv150 = trunc i64 %sum.shift to i8
  %arrayidx152 = getelementptr inbounds i8, i8* %out, i64 7
  store i8 %conv150, i8* %arrayidx152, align 1, !tbaa !11
  %16 = load i32, i32* %hash_size, align 4, !tbaa !4
  %cmp154 = icmp eq i32 %16, 8
  br i1 %cmp154, label %cleanup, label %if.end157

if.end157:                                        ; preds = %for.end112
  %xor158 = xor i64 %v1.1.lcssa, 221
  %17 = load i32, i32* %drounds, align 4, !tbaa !13
  %cmp161443.not = icmp eq i32 %17, 0
  br i1 %cmp161443.not, label %for.end195, label %do.body164

do.body164:                                       ; preds = %if.end157, %do.body164
  %v3.2448 = phi i64 [ %xor182, %do.body164 ], [ %v3.1.lcssa, %if.end157 ]
  %v2.3447 = phi i64 [ %or190, %do.body164 ], [ %v2.2.lcssa, %if.end157 ]
  %v1.2446 = phi i64 [ %xor187, %do.body164 ], [ %xor158, %if.end157 ]
  %v0.2445 = phi i64 [ %add178, %do.body164 ], [ %v0.1.lcssa, %if.end157 ]
  %i.2444 = phi i32 [ %inc194, %do.body164 ], [ 0, %if.end157 ]
  %add165 = add i64 %v1.2446, %v0.2445
  %or168 = tail call i64 @llvm.fshl.i64(i64 %v1.2446, i64 %v1.2446, i64 13)
  %xor169 = xor i64 %or168, %add165
  %or172 = tail call i64 @llvm.fshl.i64(i64 %add165, i64 %add165, i64 32)
  %add173 = add i64 %v3.2448, %v2.3447
  %or176 = tail call i64 @llvm.fshl.i64(i64 %v3.2448, i64 %v3.2448, i64 16)
  %xor177 = xor i64 %or176, %add173
  %add178 = add i64 %xor177, %or172
  %or181 = tail call i64 @llvm.fshl.i64(i64 %xor177, i64 %xor177, i64 21)
  %xor182 = xor i64 %or181, %add178
  %add183 = add i64 %add173, %xor169
  %or186 = tail call i64 @llvm.fshl.i64(i64 %xor169, i64 %xor169, i64 17)
  %xor187 = xor i64 %add183, %or186
  %or190 = tail call i64 @llvm.fshl.i64(i64 %add183, i64 %add183, i64 32)
  %inc194 = add nuw i32 %i.2444, 1
  %exitcond454.not = icmp eq i32 %inc194, %17
  br i1 %exitcond454.not, label %for.end195, label %do.body164, !llvm.loop !25

for.end195:                                       ; preds = %do.body164, %if.end157
  %v0.2.lcssa = phi i64 [ %v0.1.lcssa, %if.end157 ], [ %add178, %do.body164 ]
  %v1.2.lcssa = phi i64 [ %xor158, %if.end157 ], [ %xor187, %do.body164 ]
  %v2.3.lcssa = phi i64 [ %v2.2.lcssa, %if.end157 ], [ %or190, %do.body164 ]
  %v3.2.lcssa = phi i64 [ %v3.1.lcssa, %if.end157 ], [ %xor182, %do.body164 ]
  %xor196 = xor i64 %v1.2.lcssa, %v0.2.lcssa
  %xor197 = xor i64 %xor196, %v2.3.lcssa
  %xor198 = xor i64 %xor197, %v3.2.lcssa
  %conv200 = trunc i64 %xor198 to i8
  %add.ptr201 = getelementptr inbounds i8, i8* %out, i64 8
  store i8 %conv200, i8* %add.ptr201, align 1, !tbaa !11
  %shr204417 = lshr i64 %xor198, 8
  %conv205 = trunc i64 %shr204417 to i8
  %arrayidx207 = getelementptr inbounds i8, i8* %out, i64 9
  store i8 %conv205, i8* %arrayidx207, align 1, !tbaa !11
  %shr209418 = lshr i64 %xor198, 16
  %conv210 = trunc i64 %shr209418 to i8
  %arrayidx212 = getelementptr inbounds i8, i8* %out, i64 10
  store i8 %conv210, i8* %arrayidx212, align 1, !tbaa !11
  %shr214419 = lshr i64 %xor198, 24
  %conv215 = trunc i64 %shr214419 to i8
  %arrayidx217 = getelementptr inbounds i8, i8* %out, i64 11
  store i8 %conv215, i8* %arrayidx217, align 1, !tbaa !11
  %shr218 = lshr i64 %xor198, 32
  %conv220 = trunc i64 %shr218 to i8
  %add.ptr222 = getelementptr inbounds i8, i8* %out, i64 12
  store i8 %conv220, i8* %add.ptr222, align 1, !tbaa !11
  %shr226420 = lshr i64 %xor198, 40
  %conv227 = trunc i64 %shr226420 to i8
  %arrayidx230 = getelementptr inbounds i8, i8* %out, i64 13
  store i8 %conv227, i8* %arrayidx230, align 1, !tbaa !11
  %shr233421 = lshr i64 %xor198, 48
  %conv234 = trunc i64 %shr233421 to i8
  %arrayidx237 = getelementptr inbounds i8, i8* %out, i64 14
  store i8 %conv234, i8* %arrayidx237, align 1, !tbaa !11
  %sum.shift422 = lshr i64 %xor198, 56
  %conv241 = trunc i64 %sum.shift422 to i8
  %arrayidx244 = getelementptr inbounds i8, i8* %out, i64 15
  store i8 %conv241, i8* %arrayidx244, align 1, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %for.end112, %entry, %for.end195
  %retval.0 = phi i32 [ 1, %for.end195 ], [ 0, %entry ], [ 1, %for.end112 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 44}
!5 = !{!"siphash_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !7, i64 56}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !6, i64 16}
!11 = !{!7, !7, i64 0}
!12 = !{!5, !9, i64 48}
!13 = !{!5, !9, i64 52}
!14 = !{!5, !9, i64 40}
!15 = !{!5, !6, i64 0}
!16 = !{!5, !6, i64 8}
!17 = !{!5, !6, i64 24}
!18 = !{!5, !6, i64 32}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
