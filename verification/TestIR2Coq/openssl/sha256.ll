; ModuleID = 'crypto/sha/sha256.c'
source_filename = "crypto/sha/sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA256state_st = type { [8 x i32], i32, i32, [16 x i32], i32, i32 }

; Function Attrs: noinline nounwind uwtable
define i32 @SHA224_Init(%struct.SHA256state_st* noundef %c) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.SHA256state_st* %c to i8*
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 112) #3
  %1 = bitcast %struct.SHA256state_st* %c to <4 x i32>*
  store <4 x i32> <i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599>, <4 x i32>* %1, align 4, !tbaa !4
  %arrayidx8 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 4
  %2 = bitcast i32* %arrayidx8 to <4 x i32>*
  store <4 x i32> <i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868>, <4 x i32>* %2, align 4, !tbaa !4
  %md_len = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 5
  store i32 28, i32* %md_len, align 4, !tbaa !8
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @SHA256_Init(%struct.SHA256state_st* noundef %c) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.SHA256state_st* %c to i8*
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 112) #3
  %1 = bitcast %struct.SHA256state_st* %c to <4 x i32>*
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %1, align 4, !tbaa !4
  %arrayidx8 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 4
  %2 = bitcast i32* %arrayidx8 to <4 x i32>*
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %2, align 4, !tbaa !4
  %md_len = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 5
  store i32 32, i32* %md_len, align 4, !tbaa !8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SHA224_Update(%struct.SHA256state_st* noundef %c, i8* noundef %data, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SHA256_Update(%struct.SHA256state_st* noundef %c, i8* noundef %data, i64 noundef %len) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SHA256_Update(%struct.SHA256state_st* noundef %c, i8* noundef %data_, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %Nl = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 1
  %0 = load i32, i32* %Nl, align 4, !tbaa !10
  %conv = trunc i64 %len to i32
  %shl = shl i32 %conv, 3
  %add = add i32 %0, %shl
  %cmp4 = icmp ult i32 %add, %0
  %Nh = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 2
  %1 = load i32, i32* %Nh, align 4, !tbaa !11
  %inc = zext i1 %cmp4 to i32
  %2 = add i32 %1, %inc
  %shr = lshr i64 %len, 29
  %conv8 = trunc i64 %shr to i32
  %Nh9 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 2
  %add10 = add i32 %2, %conv8
  store i32 %add10, i32* %Nh9, align 4, !tbaa !11
  store i32 %add, i32* %Nl, align 4, !tbaa !10
  %num = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 4
  %3 = load i32, i32* %num, align 4, !tbaa !12
  %conv12 = zext i32 %3 to i64
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %if.end34, label %if.then15

if.then15:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 3, i64 0
  %4 = bitcast i32* %arraydecay to i8*
  %cmp17 = icmp ugt i64 %len, 63
  %add19 = add i64 %conv12, %len
  %cmp20 = icmp ugt i64 %add19, 63
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp20
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %conv12
  br i1 %or.cond, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then15
  %sub = sub nsw i64 64, %conv12
  %call = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %data_, i64 noundef %sub) #3
  tail call void @sha256_block_data_order(%struct.SHA256state_st* noundef nonnull %c, i8* noundef nonnull %4, i64 noundef 1) #3
  %add.ptr24 = getelementptr inbounds i8, i8* %data_, i64 %sub
  %sub25 = sub i64 %len, %sub
  store i32 0, i32* %num, align 4, !tbaa !12
  %call27 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 64) #3
  br label %if.end34

if.else:                                          ; preds = %if.then15
  %call29 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %data_, i64 noundef %len) #3
  %5 = load i32, i32* %num, align 4, !tbaa !12
  %add32 = add i32 %5, %conv
  store i32 %add32, i32* %num, align 4, !tbaa !12
  br label %cleanup

if.end34:                                         ; preds = %if.then22, %if.end
  %len.addr.0 = phi i64 [ %sub25, %if.then22 ], [ %len, %if.end ]
  %data.0 = phi i8* [ %add.ptr24, %if.then22 ], [ %data_, %if.end ]
  %cmp35.not = icmp ult i64 %len.addr.0, 64
  br i1 %cmp35.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end34
  %div = lshr i64 %len.addr.0, 6
  tail call void @sha256_block_data_order(%struct.SHA256state_st* noundef nonnull %c, i8* noundef %data.0, i64 noundef %div) #3
  %mul = and i64 %len.addr.0, -64
  %add.ptr38 = getelementptr inbounds i8, i8* %data.0, i64 %mul
  %sub39 = and i64 %len.addr.0, 63
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34
  %len.addr.1 = phi i64 [ %sub39, %if.then37 ], [ %len.addr.0, %if.end34 ]
  %data.1 = phi i8* [ %add.ptr38, %if.then37 ], [ %data.0, %if.end34 ]
  %cmp41.not = icmp eq i64 %len.addr.1, 0
  br i1 %cmp41.not, label %cleanup, label %if.then43

if.then43:                                        ; preds = %if.end40
  %arraydecay45 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 3, i64 0
  %6 = bitcast i32* %arraydecay45 to i8*
  %conv46 = trunc i64 %len.addr.1 to i32
  store i32 %conv46, i32* %num, align 4, !tbaa !12
  %call48 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %data.1, i64 noundef %len.addr.1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then43, %entry, %if.else
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @SHA224_Final(i8* nocapture noundef writeonly %md, %struct.SHA256state_st* noundef %c) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @SHA256_Final(i8* noundef %md, %struct.SHA256state_st* noundef %c) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @SHA256_Final(i8* nocapture noundef writeonly %md, %struct.SHA256state_st* noundef %c) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 3, i64 0
  %0 = bitcast i32* %arraydecay to i8*
  %num = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 4
  %1 = load i32, i32* %num, align 4, !tbaa !12
  %conv = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %conv
  store i8 -128, i8* %arrayidx, align 1, !tbaa !13
  %inc = add nuw nsw i64 %conv, 1
  %cmp = icmp ugt i32 %1, 55
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %inc
  %sub = sub nsw i64 63, %conv
  %call = tail call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %sub) #3
  tail call void @sha256_block_data_order(%struct.SHA256state_st* noundef nonnull %c, i8* noundef nonnull %0, i64 noundef 1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %n.0 = phi i64 [ 0, %if.then ], [ %inc, %entry ]
  %add.ptr2 = getelementptr inbounds i8, i8* %0, i64 %n.0
  %sub3 = sub nsw i64 56, %n.0
  %call4 = tail call i8* @memset(i8* noundef nonnull %add.ptr2, i32 noundef 0, i64 noundef %sub3) #3
  %add.ptr5203 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 3, i64 14
  %add.ptr5 = bitcast i32* %add.ptr5203 to i8*
  %Nh = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 2
  %2 = load i32, i32* %Nh, align 4, !tbaa !11
  %shr = lshr i32 %2, 24
  %conv6 = trunc i32 %shr to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr5, i64 1
  store i8 %conv6, i8* %add.ptr5, align 1, !tbaa !13
  %shr8 = lshr i32 %2, 16
  %conv10 = trunc i32 %shr8 to i8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %add.ptr5, i64 2
  store i8 %conv10, i8* %incdec.ptr, align 1, !tbaa !13
  %shr13 = lshr i32 %2, 8
  %conv15 = trunc i32 %shr13 to i8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %add.ptr5, i64 3
  store i8 %conv15, i8* %incdec.ptr11, align 1, !tbaa !13
  %conv19 = trunc i32 %2 to i8
  %incdec.ptr20204 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 3, i64 15
  %incdec.ptr20 = bitcast i32* %incdec.ptr20204 to i8*
  store i8 %conv19, i8* %incdec.ptr16, align 1, !tbaa !13
  %Nl = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 1
  %3 = load i32, i32* %Nl, align 4, !tbaa !10
  %shr22 = lshr i32 %3, 24
  %conv24 = trunc i32 %shr22 to i8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %incdec.ptr20, i64 1
  store i8 %conv24, i8* %incdec.ptr20, align 1, !tbaa !13
  %shr27 = lshr i32 %3, 16
  %conv29 = trunc i32 %shr27 to i8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %incdec.ptr20, i64 2
  store i8 %conv29, i8* %incdec.ptr25, align 1, !tbaa !13
  %shr32 = lshr i32 %3, 8
  %conv34 = trunc i32 %shr32 to i8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %incdec.ptr20, i64 3
  store i8 %conv34, i8* %incdec.ptr30, align 1, !tbaa !13
  %conv38 = trunc i32 %3 to i8
  store i8 %conv38, i8* %incdec.ptr35, align 1, !tbaa !13
  tail call void @sha256_block_data_order(%struct.SHA256state_st* noundef nonnull %c, i8* noundef nonnull %0, i64 noundef 1) #3
  store i32 0, i32* %num, align 4, !tbaa !12
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #3
  %md_len = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 5
  %4 = load i32, i32* %md_len, align 4, !tbaa !8
  switch i32 %4, label %sw.default [
    i32 28, label %for.body.preheader
    i32 32, label %for.body67.preheader
  ]

for.body67.preheader:                             ; preds = %if.end
  %arrayidx70 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 0
  %5 = load i32, i32* %arrayidx70, align 4, !tbaa !4
  %conv71 = zext i32 %5 to i64
  %shr72 = lshr i64 %conv71, 24
  %conv74 = trunc i64 %shr72 to i8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %md, i64 1
  store i8 %conv74, i8* %md, align 1, !tbaa !13
  %shr76 = lshr i64 %conv71, 16
  %conv78 = trunc i64 %shr76 to i8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %md, i64 2
  store i8 %conv78, i8* %incdec.ptr75, align 1, !tbaa !13
  %shr80 = lshr i64 %conv71, 8
  %conv82 = trunc i64 %shr80 to i8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %md, i64 3
  store i8 %conv82, i8* %incdec.ptr79, align 1, !tbaa !13
  %conv85 = trunc i32 %5 to i8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %md, i64 4
  store i8 %conv85, i8* %incdec.ptr83, align 1, !tbaa !13
  %arrayidx70.1 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 1
  %6 = load i32, i32* %arrayidx70.1, align 4, !tbaa !4
  %conv71.1 = zext i32 %6 to i64
  %shr72.1 = lshr i64 %conv71.1, 24
  %conv74.1 = trunc i64 %shr72.1 to i8
  %incdec.ptr75.1 = getelementptr inbounds i8, i8* %md, i64 5
  store i8 %conv74.1, i8* %incdec.ptr86, align 1, !tbaa !13
  %shr76.1 = lshr i64 %conv71.1, 16
  %conv78.1 = trunc i64 %shr76.1 to i8
  %incdec.ptr79.1 = getelementptr inbounds i8, i8* %md, i64 6
  store i8 %conv78.1, i8* %incdec.ptr75.1, align 1, !tbaa !13
  %shr80.1 = lshr i64 %conv71.1, 8
  %conv82.1 = trunc i64 %shr80.1 to i8
  %incdec.ptr83.1 = getelementptr inbounds i8, i8* %md, i64 7
  store i8 %conv82.1, i8* %incdec.ptr79.1, align 1, !tbaa !13
  %conv85.1 = trunc i32 %6 to i8
  %incdec.ptr86.1 = getelementptr inbounds i8, i8* %md, i64 8
  store i8 %conv85.1, i8* %incdec.ptr83.1, align 1, !tbaa !13
  %arrayidx70.2 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 2
  %7 = load i32, i32* %arrayidx70.2, align 4, !tbaa !4
  %conv71.2 = zext i32 %7 to i64
  %shr72.2 = lshr i64 %conv71.2, 24
  %conv74.2 = trunc i64 %shr72.2 to i8
  %incdec.ptr75.2 = getelementptr inbounds i8, i8* %md, i64 9
  store i8 %conv74.2, i8* %incdec.ptr86.1, align 1, !tbaa !13
  %shr76.2 = lshr i64 %conv71.2, 16
  %conv78.2 = trunc i64 %shr76.2 to i8
  %incdec.ptr79.2 = getelementptr inbounds i8, i8* %md, i64 10
  store i8 %conv78.2, i8* %incdec.ptr75.2, align 1, !tbaa !13
  %shr80.2 = lshr i64 %conv71.2, 8
  %conv82.2 = trunc i64 %shr80.2 to i8
  %incdec.ptr83.2 = getelementptr inbounds i8, i8* %md, i64 11
  store i8 %conv82.2, i8* %incdec.ptr79.2, align 1, !tbaa !13
  %conv85.2 = trunc i32 %7 to i8
  %incdec.ptr86.2 = getelementptr inbounds i8, i8* %md, i64 12
  store i8 %conv85.2, i8* %incdec.ptr83.2, align 1, !tbaa !13
  %arrayidx70.3 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 3
  %8 = load i32, i32* %arrayidx70.3, align 4, !tbaa !4
  %conv71.3 = zext i32 %8 to i64
  %shr72.3 = lshr i64 %conv71.3, 24
  %conv74.3 = trunc i64 %shr72.3 to i8
  %incdec.ptr75.3 = getelementptr inbounds i8, i8* %md, i64 13
  store i8 %conv74.3, i8* %incdec.ptr86.2, align 1, !tbaa !13
  %shr76.3 = lshr i64 %conv71.3, 16
  %conv78.3 = trunc i64 %shr76.3 to i8
  %incdec.ptr79.3 = getelementptr inbounds i8, i8* %md, i64 14
  store i8 %conv78.3, i8* %incdec.ptr75.3, align 1, !tbaa !13
  %shr80.3 = lshr i64 %conv71.3, 8
  %conv82.3 = trunc i64 %shr80.3 to i8
  %incdec.ptr83.3 = getelementptr inbounds i8, i8* %md, i64 15
  store i8 %conv82.3, i8* %incdec.ptr79.3, align 1, !tbaa !13
  %conv85.3 = trunc i32 %8 to i8
  %incdec.ptr86.3 = getelementptr inbounds i8, i8* %md, i64 16
  store i8 %conv85.3, i8* %incdec.ptr83.3, align 1, !tbaa !13
  %arrayidx70.4 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 4
  %9 = load i32, i32* %arrayidx70.4, align 4, !tbaa !4
  %conv71.4 = zext i32 %9 to i64
  %shr72.4 = lshr i64 %conv71.4, 24
  %conv74.4 = trunc i64 %shr72.4 to i8
  %incdec.ptr75.4 = getelementptr inbounds i8, i8* %md, i64 17
  store i8 %conv74.4, i8* %incdec.ptr86.3, align 1, !tbaa !13
  %shr76.4 = lshr i64 %conv71.4, 16
  %conv78.4 = trunc i64 %shr76.4 to i8
  %incdec.ptr79.4 = getelementptr inbounds i8, i8* %md, i64 18
  store i8 %conv78.4, i8* %incdec.ptr75.4, align 1, !tbaa !13
  %shr80.4 = lshr i64 %conv71.4, 8
  %conv82.4 = trunc i64 %shr80.4 to i8
  %incdec.ptr83.4 = getelementptr inbounds i8, i8* %md, i64 19
  store i8 %conv82.4, i8* %incdec.ptr79.4, align 1, !tbaa !13
  %conv85.4 = trunc i32 %9 to i8
  %incdec.ptr86.4 = getelementptr inbounds i8, i8* %md, i64 20
  store i8 %conv85.4, i8* %incdec.ptr83.4, align 1, !tbaa !13
  %arrayidx70.5 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 5
  %10 = load i32, i32* %arrayidx70.5, align 4, !tbaa !4
  %conv71.5 = zext i32 %10 to i64
  %shr72.5 = lshr i64 %conv71.5, 24
  %conv74.5 = trunc i64 %shr72.5 to i8
  %incdec.ptr75.5 = getelementptr inbounds i8, i8* %md, i64 21
  store i8 %conv74.5, i8* %incdec.ptr86.4, align 1, !tbaa !13
  %shr76.5 = lshr i64 %conv71.5, 16
  %conv78.5 = trunc i64 %shr76.5 to i8
  %incdec.ptr79.5 = getelementptr inbounds i8, i8* %md, i64 22
  store i8 %conv78.5, i8* %incdec.ptr75.5, align 1, !tbaa !13
  %shr80.5 = lshr i64 %conv71.5, 8
  %conv82.5 = trunc i64 %shr80.5 to i8
  %incdec.ptr83.5 = getelementptr inbounds i8, i8* %md, i64 23
  store i8 %conv82.5, i8* %incdec.ptr79.5, align 1, !tbaa !13
  %conv85.5 = trunc i32 %10 to i8
  %incdec.ptr86.5 = getelementptr inbounds i8, i8* %md, i64 24
  store i8 %conv85.5, i8* %incdec.ptr83.5, align 1, !tbaa !13
  %arrayidx70.6 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 6
  %11 = load i32, i32* %arrayidx70.6, align 4, !tbaa !4
  %conv71.6 = zext i32 %11 to i64
  %shr72.6 = lshr i64 %conv71.6, 24
  %conv74.6 = trunc i64 %shr72.6 to i8
  %incdec.ptr75.6 = getelementptr inbounds i8, i8* %md, i64 25
  store i8 %conv74.6, i8* %incdec.ptr86.5, align 1, !tbaa !13
  %shr76.6 = lshr i64 %conv71.6, 16
  %conv78.6 = trunc i64 %shr76.6 to i8
  %incdec.ptr79.6 = getelementptr inbounds i8, i8* %md, i64 26
  store i8 %conv78.6, i8* %incdec.ptr75.6, align 1, !tbaa !13
  %shr80.6 = lshr i64 %conv71.6, 8
  %conv82.6 = trunc i64 %shr80.6 to i8
  %incdec.ptr83.6 = getelementptr inbounds i8, i8* %md, i64 27
  store i8 %conv82.6, i8* %incdec.ptr79.6, align 1, !tbaa !13
  %conv85.6 = trunc i32 %11 to i8
  %incdec.ptr86.6 = getelementptr inbounds i8, i8* %md, i64 28
  store i8 %conv85.6, i8* %incdec.ptr83.6, align 1, !tbaa !13
  %arrayidx70.7 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 7
  br label %cleanup.sink.split

for.body.preheader:                               ; preds = %if.end
  %arrayidx45 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 0
  %12 = load i32, i32* %arrayidx45, align 4, !tbaa !4
  %conv46 = zext i32 %12 to i64
  %shr47 = lshr i64 %conv46, 24
  %conv49 = trunc i64 %shr47 to i8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %md, i64 1
  store i8 %conv49, i8* %md, align 1, !tbaa !13
  %shr51 = lshr i64 %conv46, 16
  %conv53 = trunc i64 %shr51 to i8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %md, i64 2
  store i8 %conv53, i8* %incdec.ptr50, align 1, !tbaa !13
  %shr55 = lshr i64 %conv46, 8
  %conv57 = trunc i64 %shr55 to i8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %md, i64 3
  store i8 %conv57, i8* %incdec.ptr54, align 1, !tbaa !13
  %conv60 = trunc i32 %12 to i8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %md, i64 4
  store i8 %conv60, i8* %incdec.ptr58, align 1, !tbaa !13
  %arrayidx45.1 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 1
  %13 = load i32, i32* %arrayidx45.1, align 4, !tbaa !4
  %conv46.1 = zext i32 %13 to i64
  %shr47.1 = lshr i64 %conv46.1, 24
  %conv49.1 = trunc i64 %shr47.1 to i8
  %incdec.ptr50.1 = getelementptr inbounds i8, i8* %md, i64 5
  store i8 %conv49.1, i8* %incdec.ptr61, align 1, !tbaa !13
  %shr51.1 = lshr i64 %conv46.1, 16
  %conv53.1 = trunc i64 %shr51.1 to i8
  %incdec.ptr54.1 = getelementptr inbounds i8, i8* %md, i64 6
  store i8 %conv53.1, i8* %incdec.ptr50.1, align 1, !tbaa !13
  %shr55.1 = lshr i64 %conv46.1, 8
  %conv57.1 = trunc i64 %shr55.1 to i8
  %incdec.ptr58.1 = getelementptr inbounds i8, i8* %md, i64 7
  store i8 %conv57.1, i8* %incdec.ptr54.1, align 1, !tbaa !13
  %conv60.1 = trunc i32 %13 to i8
  %incdec.ptr61.1 = getelementptr inbounds i8, i8* %md, i64 8
  store i8 %conv60.1, i8* %incdec.ptr58.1, align 1, !tbaa !13
  %arrayidx45.2 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 2
  %14 = load i32, i32* %arrayidx45.2, align 4, !tbaa !4
  %conv46.2 = zext i32 %14 to i64
  %shr47.2 = lshr i64 %conv46.2, 24
  %conv49.2 = trunc i64 %shr47.2 to i8
  %incdec.ptr50.2 = getelementptr inbounds i8, i8* %md, i64 9
  store i8 %conv49.2, i8* %incdec.ptr61.1, align 1, !tbaa !13
  %shr51.2 = lshr i64 %conv46.2, 16
  %conv53.2 = trunc i64 %shr51.2 to i8
  %incdec.ptr54.2 = getelementptr inbounds i8, i8* %md, i64 10
  store i8 %conv53.2, i8* %incdec.ptr50.2, align 1, !tbaa !13
  %shr55.2 = lshr i64 %conv46.2, 8
  %conv57.2 = trunc i64 %shr55.2 to i8
  %incdec.ptr58.2 = getelementptr inbounds i8, i8* %md, i64 11
  store i8 %conv57.2, i8* %incdec.ptr54.2, align 1, !tbaa !13
  %conv60.2 = trunc i32 %14 to i8
  %incdec.ptr61.2 = getelementptr inbounds i8, i8* %md, i64 12
  store i8 %conv60.2, i8* %incdec.ptr58.2, align 1, !tbaa !13
  %arrayidx45.3 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 3
  %15 = load i32, i32* %arrayidx45.3, align 4, !tbaa !4
  %conv46.3 = zext i32 %15 to i64
  %shr47.3 = lshr i64 %conv46.3, 24
  %conv49.3 = trunc i64 %shr47.3 to i8
  %incdec.ptr50.3 = getelementptr inbounds i8, i8* %md, i64 13
  store i8 %conv49.3, i8* %incdec.ptr61.2, align 1, !tbaa !13
  %shr51.3 = lshr i64 %conv46.3, 16
  %conv53.3 = trunc i64 %shr51.3 to i8
  %incdec.ptr54.3 = getelementptr inbounds i8, i8* %md, i64 14
  store i8 %conv53.3, i8* %incdec.ptr50.3, align 1, !tbaa !13
  %shr55.3 = lshr i64 %conv46.3, 8
  %conv57.3 = trunc i64 %shr55.3 to i8
  %incdec.ptr58.3 = getelementptr inbounds i8, i8* %md, i64 15
  store i8 %conv57.3, i8* %incdec.ptr54.3, align 1, !tbaa !13
  %conv60.3 = trunc i32 %15 to i8
  %incdec.ptr61.3 = getelementptr inbounds i8, i8* %md, i64 16
  store i8 %conv60.3, i8* %incdec.ptr58.3, align 1, !tbaa !13
  %arrayidx45.4 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 4
  %16 = load i32, i32* %arrayidx45.4, align 4, !tbaa !4
  %conv46.4 = zext i32 %16 to i64
  %shr47.4 = lshr i64 %conv46.4, 24
  %conv49.4 = trunc i64 %shr47.4 to i8
  %incdec.ptr50.4 = getelementptr inbounds i8, i8* %md, i64 17
  store i8 %conv49.4, i8* %incdec.ptr61.3, align 1, !tbaa !13
  %shr51.4 = lshr i64 %conv46.4, 16
  %conv53.4 = trunc i64 %shr51.4 to i8
  %incdec.ptr54.4 = getelementptr inbounds i8, i8* %md, i64 18
  store i8 %conv53.4, i8* %incdec.ptr50.4, align 1, !tbaa !13
  %shr55.4 = lshr i64 %conv46.4, 8
  %conv57.4 = trunc i64 %shr55.4 to i8
  %incdec.ptr58.4 = getelementptr inbounds i8, i8* %md, i64 19
  store i8 %conv57.4, i8* %incdec.ptr54.4, align 1, !tbaa !13
  %conv60.4 = trunc i32 %16 to i8
  %incdec.ptr61.4 = getelementptr inbounds i8, i8* %md, i64 20
  store i8 %conv60.4, i8* %incdec.ptr58.4, align 1, !tbaa !13
  %arrayidx45.5 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 5
  %17 = load i32, i32* %arrayidx45.5, align 4, !tbaa !4
  %conv46.5 = zext i32 %17 to i64
  %shr47.5 = lshr i64 %conv46.5, 24
  %conv49.5 = trunc i64 %shr47.5 to i8
  %incdec.ptr50.5 = getelementptr inbounds i8, i8* %md, i64 21
  store i8 %conv49.5, i8* %incdec.ptr61.4, align 1, !tbaa !13
  %shr51.5 = lshr i64 %conv46.5, 16
  %conv53.5 = trunc i64 %shr51.5 to i8
  %incdec.ptr54.5 = getelementptr inbounds i8, i8* %md, i64 22
  store i8 %conv53.5, i8* %incdec.ptr50.5, align 1, !tbaa !13
  %shr55.5 = lshr i64 %conv46.5, 8
  %conv57.5 = trunc i64 %shr55.5 to i8
  %incdec.ptr58.5 = getelementptr inbounds i8, i8* %md, i64 23
  store i8 %conv57.5, i8* %incdec.ptr54.5, align 1, !tbaa !13
  %conv60.5 = trunc i32 %17 to i8
  %incdec.ptr61.5 = getelementptr inbounds i8, i8* %md, i64 24
  store i8 %conv60.5, i8* %incdec.ptr58.5, align 1, !tbaa !13
  %arrayidx45.6 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 6
  br label %cleanup.sink.split

sw.default:                                       ; preds = %if.end
  %cmp91 = icmp ugt i32 %4, 32
  br i1 %cmp91, label %cleanup, label %for.cond95.preheader

for.cond95.preheader:                             ; preds = %sw.default
  %cmp97215.not = icmp ult i32 %4, 4
  br i1 %cmp97215.not, label %cleanup, label %for.body99

for.body99:                                       ; preds = %for.cond95.preheader, %for.body99
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body99 ], [ 0, %for.cond95.preheader ]
  %md.addr.2216 = phi i8* [ %incdec.ptr118, %for.body99 ], [ %md, %for.cond95.preheader ]
  %arrayidx102 = getelementptr inbounds %struct.SHA256state_st, %struct.SHA256state_st* %c, i64 0, i32 0, i64 %indvars.iv
  %18 = load i32, i32* %arrayidx102, align 4, !tbaa !4
  %conv103 = zext i32 %18 to i64
  %shr104 = lshr i64 %conv103, 24
  %conv106 = trunc i64 %shr104 to i8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %md.addr.2216, i64 1
  store i8 %conv106, i8* %md.addr.2216, align 1, !tbaa !13
  %shr108 = lshr i64 %conv103, 16
  %conv110 = trunc i64 %shr108 to i8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %md.addr.2216, i64 2
  store i8 %conv110, i8* %incdec.ptr107, align 1, !tbaa !13
  %shr112 = lshr i64 %conv103, 8
  %conv114 = trunc i64 %shr112 to i8
  %incdec.ptr115 = getelementptr inbounds i8, i8* %md.addr.2216, i64 3
  store i8 %conv114, i8* %incdec.ptr111, align 1, !tbaa !13
  %conv117 = trunc i32 %18 to i8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %md.addr.2216, i64 4
  store i8 %conv117, i8* %incdec.ptr115, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %19 = load i32, i32* %md_len, align 4, !tbaa !8
  %div = lshr i32 %19, 2
  %20 = zext i32 %div to i64
  %cmp97 = icmp ult i64 %indvars.iv.next, %20
  br i1 %cmp97, label %for.body99, label %cleanup, !llvm.loop !14

cleanup.sink.split:                               ; preds = %for.body.preheader, %for.body67.preheader
  %.sink228.in = phi i32* [ %arrayidx45.6, %for.body.preheader ], [ %arrayidx70.7, %for.body67.preheader ]
  %.sink226 = phi i64 [ 25, %for.body.preheader ], [ 29, %for.body67.preheader ]
  %incdec.ptr86.6.sink = phi i8* [ %incdec.ptr61.5, %for.body.preheader ], [ %incdec.ptr86.6, %for.body67.preheader ]
  %.sink224 = phi i64 [ 26, %for.body.preheader ], [ 30, %for.body67.preheader ]
  %.sink223 = phi i64 [ 27, %for.body.preheader ], [ 31, %for.body67.preheader ]
  %.sink228 = load i32, i32* %.sink228.in, align 4, !tbaa !4
  %conv46.6 = zext i32 %.sink228 to i64
  %shr72.7 = lshr i64 %conv46.6, 24
  %conv74.7 = trunc i64 %shr72.7 to i8
  %incdec.ptr75.7 = getelementptr inbounds i8, i8* %md, i64 %.sink226
  store i8 %conv74.7, i8* %incdec.ptr86.6.sink, align 1, !tbaa !13
  %shr76.7 = lshr i64 %conv46.6, 16
  %conv78.7 = trunc i64 %shr76.7 to i8
  %incdec.ptr79.7 = getelementptr inbounds i8, i8* %md, i64 %.sink224
  store i8 %conv78.7, i8* %incdec.ptr75.7, align 1, !tbaa !13
  %shr80.7 = lshr i64 %conv46.6, 8
  %conv82.7 = trunc i64 %shr80.7 to i8
  %incdec.ptr83.7 = getelementptr inbounds i8, i8* %md, i64 %.sink223
  store i8 %conv82.7, i8* %incdec.ptr79.7, align 1, !tbaa !13
  %conv85.7 = trunc i32 %.sink228 to i8
  store i8 %conv85.7, i8* %incdec.ptr83.7, align 1, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %for.body99, %cleanup.sink.split, %for.cond95.preheader, %sw.default
  %21 = phi i32 [ 0, %sw.default ], [ 1, %for.cond95.preheader ], [ 1, %cleanup.sink.split ], [ 1, %for.body99 ]
  ret i32 %21
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare void @sha256_block_data_order(%struct.SHA256state_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @SHA256_Transform(%struct.SHA256state_st* noundef %c, i8* noundef %data) local_unnamed_addr #0 {
entry:
  tail call void @sha256_block_data_order(%struct.SHA256state_st* noundef %c, i8* noundef %data, i64 noundef 1) #3
  ret void
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !5, i64 108}
!9 = !{!"SHA256state_st", !6, i64 0, !5, i64 32, !5, i64 36, !6, i64 40, !5, i64 104, !5, i64 108}
!10 = !{!9, !5, i64 32}
!11 = !{!9, !5, i64 36}
!12 = !{!9, !5, i64 104}
!13 = !{!6, !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
