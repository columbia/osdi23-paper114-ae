; ModuleID = 'crypto/sha/sha1dgst.c'
source_filename = "crypto/sha/sha1dgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHAstate_st = type { i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }

; Function Attrs: noinline nounwind uwtable
define i32 @SHA1_Update(%struct.SHAstate_st* noundef %c, i8* noundef %data_, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %Nl = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 5
  %0 = load i32, i32* %Nl, align 4, !tbaa !4
  %conv = trunc i64 %len to i32
  %shl = shl i32 %conv, 3
  %add = add i32 %0, %shl
  %cmp4 = icmp ult i32 %add, %0
  %Nh = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 6
  %1 = load i32, i32* %Nh, align 4, !tbaa !9
  %inc = zext i1 %cmp4 to i32
  %2 = add i32 %1, %inc
  %shr = lshr i64 %len, 29
  %conv8 = trunc i64 %shr to i32
  %Nh9 = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 6
  %add10 = add i32 %2, %conv8
  store i32 %add10, i32* %Nh9, align 4, !tbaa !9
  store i32 %add, i32* %Nl, align 4, !tbaa !4
  %num = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 8
  %3 = load i32, i32* %num, align 4, !tbaa !10
  %conv12 = zext i32 %3 to i64
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %if.end34, label %if.then15

if.then15:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 7, i64 0
  %4 = bitcast i32* %arraydecay to i8*
  %cmp17 = icmp ugt i64 %len, 63
  %add19 = add i64 %conv12, %len
  %cmp20 = icmp ugt i64 %add19, 63
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp20
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %conv12
  br i1 %or.cond, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then15
  %sub = sub nsw i64 64, %conv12
  %call = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %data_, i64 noundef %sub) #4
  tail call void @sha1_block_data_order(%struct.SHAstate_st* noundef nonnull %c, i8* noundef nonnull %4, i64 noundef 1) #4
  %add.ptr24 = getelementptr inbounds i8, i8* %data_, i64 %sub
  %sub25 = sub i64 %len, %sub
  store i32 0, i32* %num, align 4, !tbaa !10
  %call27 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i64 noundef 64) #4
  br label %if.end34

if.else:                                          ; preds = %if.then15
  %call29 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %data_, i64 noundef %len) #4
  %5 = load i32, i32* %num, align 4, !tbaa !10
  %add32 = add i32 %5, %conv
  store i32 %add32, i32* %num, align 4, !tbaa !10
  br label %cleanup

if.end34:                                         ; preds = %if.then22, %if.end
  %len.addr.0 = phi i64 [ %sub25, %if.then22 ], [ %len, %if.end ]
  %data.0 = phi i8* [ %add.ptr24, %if.then22 ], [ %data_, %if.end ]
  %cmp35.not = icmp ult i64 %len.addr.0, 64
  br i1 %cmp35.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end34
  %div = lshr i64 %len.addr.0, 6
  tail call void @sha1_block_data_order(%struct.SHAstate_st* noundef nonnull %c, i8* noundef %data.0, i64 noundef %div) #4
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
  %arraydecay45 = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 7, i64 0
  %6 = bitcast i32* %arraydecay45 to i8*
  %conv46 = trunc i64 %len.addr.1 to i32
  store i32 %conv46, i32* %num, align 4, !tbaa !10
  %call48 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %data.1, i64 noundef %len.addr.1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then43, %entry, %if.else
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @sha1_block_data_order(%struct.SHAstate_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @SHA1_Transform(%struct.SHAstate_st* noundef %c, i8* noundef %data) local_unnamed_addr #0 {
entry:
  tail call void @sha1_block_data_order(%struct.SHAstate_st* noundef %c, i8* noundef %data, i64 noundef 1) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @SHA1_Final(i8* nocapture noundef writeonly %md, %struct.SHAstate_st* noundef %c) local_unnamed_addr #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 7, i64 0
  %0 = bitcast i32* %arraydecay to i8*
  %num = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 8
  %1 = load i32, i32* %num, align 4, !tbaa !10
  %conv = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %conv
  store i8 -128, i8* %arrayidx, align 1, !tbaa !11
  %inc = add nuw nsw i64 %conv, 1
  %cmp = icmp ugt i32 %1, 55
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %inc
  %sub = sub nsw i64 63, %conv
  %call = tail call i8* @memset(i8* noundef nonnull %add.ptr, i32 noundef 0, i64 noundef %sub) #4
  tail call void @sha1_block_data_order(%struct.SHAstate_st* noundef nonnull %c, i8* noundef nonnull %0, i64 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %n.0 = phi i64 [ 0, %if.then ], [ %inc, %entry ]
  %add.ptr2 = getelementptr inbounds i8, i8* %0, i64 %n.0
  %sub3 = sub nsw i64 56, %n.0
  %call4 = tail call i8* @memset(i8* noundef nonnull %add.ptr2, i32 noundef 0, i64 noundef %sub3) #4
  %add.ptr5209 = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 7, i64 14
  %add.ptr5 = bitcast i32* %add.ptr5209 to i8*
  %Nh = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 6
  %2 = load i32, i32* %Nh, align 4, !tbaa !9
  %shr = lshr i32 %2, 24
  %conv6 = trunc i32 %shr to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr5, i64 1
  store i8 %conv6, i8* %add.ptr5, align 1, !tbaa !11
  %shr8 = lshr i32 %2, 16
  %conv10 = trunc i32 %shr8 to i8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %add.ptr5, i64 2
  store i8 %conv10, i8* %incdec.ptr, align 1, !tbaa !11
  %shr13 = lshr i32 %2, 8
  %conv15 = trunc i32 %shr13 to i8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %add.ptr5, i64 3
  store i8 %conv15, i8* %incdec.ptr11, align 1, !tbaa !11
  %conv19 = trunc i32 %2 to i8
  %incdec.ptr20210 = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 7, i64 15
  %incdec.ptr20 = bitcast i32* %incdec.ptr20210 to i8*
  store i8 %conv19, i8* %incdec.ptr16, align 1, !tbaa !11
  %Nl = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 5
  %3 = load i32, i32* %Nl, align 4, !tbaa !4
  %shr22 = lshr i32 %3, 24
  %conv24 = trunc i32 %shr22 to i8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %incdec.ptr20, i64 1
  store i8 %conv24, i8* %incdec.ptr20, align 1, !tbaa !11
  %shr27 = lshr i32 %3, 16
  %conv29 = trunc i32 %shr27 to i8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %incdec.ptr20, i64 2
  store i8 %conv29, i8* %incdec.ptr25, align 1, !tbaa !11
  %shr32 = lshr i32 %3, 8
  %conv34 = trunc i32 %shr32 to i8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %incdec.ptr20, i64 3
  store i8 %conv34, i8* %incdec.ptr30, align 1, !tbaa !11
  %conv38 = trunc i32 %3 to i8
  store i8 %conv38, i8* %incdec.ptr35, align 1, !tbaa !11
  tail call void @sha1_block_data_order(%struct.SHAstate_st* noundef nonnull %c, i8* noundef nonnull %0, i64 noundef 1) #4
  store i32 0, i32* %num, align 4, !tbaa !10
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 64) #4
  %h0 = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 0
  %4 = load i32, i32* %h0, align 4, !tbaa !12
  %conv43 = zext i32 %4 to i64
  %shr44 = lshr i64 %conv43, 24
  %conv46 = trunc i64 %shr44 to i8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %md, i64 1
  store i8 %conv46, i8* %md, align 1, !tbaa !11
  %shr48 = lshr i64 %conv43, 16
  %conv50 = trunc i64 %shr48 to i8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %md, i64 2
  store i8 %conv50, i8* %incdec.ptr47, align 1, !tbaa !11
  %shr52 = lshr i64 %conv43, 8
  %conv54 = trunc i64 %shr52 to i8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %md, i64 3
  store i8 %conv54, i8* %incdec.ptr51, align 1, !tbaa !11
  %conv57 = trunc i32 %4 to i8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %md, i64 4
  store i8 %conv57, i8* %incdec.ptr55, align 1, !tbaa !11
  %h1 = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 1
  %5 = load i32, i32* %h1, align 4, !tbaa !13
  %conv59 = zext i32 %5 to i64
  %shr60 = lshr i64 %conv59, 24
  %conv62 = trunc i64 %shr60 to i8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %md, i64 5
  store i8 %conv62, i8* %incdec.ptr58, align 1, !tbaa !11
  %shr64 = lshr i64 %conv59, 16
  %conv66 = trunc i64 %shr64 to i8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %md, i64 6
  store i8 %conv66, i8* %incdec.ptr63, align 1, !tbaa !11
  %shr68 = lshr i64 %conv59, 8
  %conv70 = trunc i64 %shr68 to i8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %md, i64 7
  store i8 %conv70, i8* %incdec.ptr67, align 1, !tbaa !11
  %conv73 = trunc i32 %5 to i8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %md, i64 8
  store i8 %conv73, i8* %incdec.ptr71, align 1, !tbaa !11
  %h2 = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 2
  %6 = load i32, i32* %h2, align 4, !tbaa !14
  %conv75 = zext i32 %6 to i64
  %shr76 = lshr i64 %conv75, 24
  %conv78 = trunc i64 %shr76 to i8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %md, i64 9
  store i8 %conv78, i8* %incdec.ptr74, align 1, !tbaa !11
  %shr80 = lshr i64 %conv75, 16
  %conv82 = trunc i64 %shr80 to i8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %md, i64 10
  store i8 %conv82, i8* %incdec.ptr79, align 1, !tbaa !11
  %shr84 = lshr i64 %conv75, 8
  %conv86 = trunc i64 %shr84 to i8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %md, i64 11
  store i8 %conv86, i8* %incdec.ptr83, align 1, !tbaa !11
  %conv89 = trunc i32 %6 to i8
  %incdec.ptr90 = getelementptr inbounds i8, i8* %md, i64 12
  store i8 %conv89, i8* %incdec.ptr87, align 1, !tbaa !11
  %h3 = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 3
  %7 = load i32, i32* %h3, align 4, !tbaa !15
  %conv91 = zext i32 %7 to i64
  %shr92 = lshr i64 %conv91, 24
  %conv94 = trunc i64 %shr92 to i8
  %incdec.ptr95 = getelementptr inbounds i8, i8* %md, i64 13
  store i8 %conv94, i8* %incdec.ptr90, align 1, !tbaa !11
  %shr96 = lshr i64 %conv91, 16
  %conv98 = trunc i64 %shr96 to i8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %md, i64 14
  store i8 %conv98, i8* %incdec.ptr95, align 1, !tbaa !11
  %shr100 = lshr i64 %conv91, 8
  %conv102 = trunc i64 %shr100 to i8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %md, i64 15
  store i8 %conv102, i8* %incdec.ptr99, align 1, !tbaa !11
  %conv105 = trunc i32 %7 to i8
  %incdec.ptr106 = getelementptr inbounds i8, i8* %md, i64 16
  store i8 %conv105, i8* %incdec.ptr103, align 1, !tbaa !11
  %h4 = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 4
  %8 = load i32, i32* %h4, align 4, !tbaa !16
  %conv107 = zext i32 %8 to i64
  %shr108 = lshr i64 %conv107, 24
  %conv110 = trunc i64 %shr108 to i8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %md, i64 17
  store i8 %conv110, i8* %incdec.ptr106, align 1, !tbaa !11
  %shr112 = lshr i64 %conv107, 16
  %conv114 = trunc i64 %shr112 to i8
  %incdec.ptr115 = getelementptr inbounds i8, i8* %md, i64 18
  store i8 %conv114, i8* %incdec.ptr111, align 1, !tbaa !11
  %shr116 = lshr i64 %conv107, 8
  %conv118 = trunc i64 %shr116 to i8
  %incdec.ptr119 = getelementptr inbounds i8, i8* %md, i64 19
  store i8 %conv118, i8* %incdec.ptr115, align 1, !tbaa !11
  %conv121 = trunc i32 %8 to i8
  store i8 %conv121, i8* %incdec.ptr119, align 1, !tbaa !11
  ret i32 1
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @SHA1_Init(%struct.SHAstate_st* noundef %c) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.SHAstate_st* %c to i8*
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 96) #4
  %1 = bitcast %struct.SHAstate_st* %c to <4 x i32>*
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %1, align 4, !tbaa !17
  %h4 = getelementptr inbounds %struct.SHAstate_st, %struct.SHAstate_st* %c, i64 0, i32 4
  store i32 -1009589776, i32* %h4, align 4, !tbaa !16
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_sha1_ctrl(%struct.SHAstate_st* noundef %sha1, i32 noundef %cmd, i32 noundef %mslen, i8* noundef %ms) local_unnamed_addr #0 {
entry:
  %padtmp = alloca [40 x i8], align 16
  %sha1tmp = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [40 x i8], [40 x i8]* %padtmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #5
  %1 = getelementptr inbounds [20 x i8], [20 x i8]* %sha1tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %1) #5
  %cmp.not = icmp eq i32 %cmd, 29
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp ne %struct.SHAstate_st* %sha1, null
  %cmp4.not = icmp eq i32 %mslen, 48
  %or.cond = and i1 %cmp1, %cmp4.not
  br i1 %or.cond, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %call = tail call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %sha1, i8* noundef %ms, i64 noundef 48) #6
  %call11 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 54, i64 noundef 40) #4
  %call13 = call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %sha1, i8* noundef nonnull %0, i64 noundef 40) #6
  %call17 = call i32 @SHA1_Final(i8* noundef nonnull %1, %struct.SHAstate_st* noundef nonnull %sha1) #6
  %call21 = call i32 @SHA1_Init(%struct.SHAstate_st* noundef nonnull %sha1) #6
  %call26 = call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %sha1, i8* noundef %ms, i64 noundef 48) #6
  %call32 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 92, i64 noundef 40) #4
  %call34 = call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %sha1, i8* noundef nonnull %0, i64 noundef 40) #6
  %call39 = call i32 @SHA1_Update(%struct.SHAstate_st* noundef nonnull %sha1, i8* noundef nonnull %1, i64 noundef 20) #6
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 20) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end6
  %retval.0 = phi i32 [ 1, %if.end6 ], [ -2, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #5
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 20}
!5 = !{!"SHAstate_st", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !7, i64 28, !6, i64 92}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 24}
!10 = !{!5, !6, i64 92}
!11 = !{!7, !7, i64 0}
!12 = !{!5, !6, i64 0}
!13 = !{!5, !6, i64 4}
!14 = !{!5, !6, i64 8}
!15 = !{!5, !6, i64 12}
!16 = !{!5, !6, i64 16}
!17 = !{!6, !6, i64 0}
