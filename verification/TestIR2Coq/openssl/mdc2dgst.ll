; ModuleID = 'crypto/mdc2/mdc2dgst.c'
source_filename = "crypto/mdc2/mdc2dgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdc2_ctx_st = type { i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

; Function Attrs: noinline nounwind uwtable
define i32 @MDC2_Init(%struct.mdc2_ctx_st* noundef %c) local_unnamed_addr #0 {
entry:
  %num = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 0
  store i32 0, i32* %num, align 4, !tbaa !4
  %pad_type = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 4
  store i32 1, i32* %pad_type, align 4, !tbaa !9
  %arrayidx = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 2, i64 0
  %call = tail call i8* @memset(i8* noundef nonnull %arrayidx, i32 noundef 82, i64 noundef 8) #4
  %arrayidx1 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 3, i64 0
  %call2 = tail call i8* @memset(i8* noundef nonnull %arrayidx1, i32 noundef 37, i64 noundef 8) #4
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @MDC2_Update(%struct.mdc2_ctx_st* noundef %c, i8* noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %num = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 0
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %conv = zext i32 %0 to i64
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %sub = sub nsw i64 8, %conv
  %cmp2 = icmp ugt i64 %sub, %len
  %arrayidx = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 1, i64 %conv
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %call = tail call i8* @memcpy(i8* noundef nonnull %arrayidx, i8* noundef %in, i64 noundef %len) #4
  %conv5 = trunc i64 %len to i32
  %1 = load i32, i32* %num, align 4, !tbaa !4
  %add = add i32 %1, %conv5
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then
  %call10 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx, i8* noundef %in, i64 noundef %sub) #4
  %sub11 = sub i64 %len, %sub
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %sub
  store i32 0, i32* %num, align 4, !tbaa !4
  %arrayidx14 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 1, i64 0
  tail call fastcc void @mdc2_body(%struct.mdc2_ctx_st* noundef nonnull %c, i8* noundef nonnull %arrayidx14, i64 noundef 8) #5
  br label %if.end15

if.end15:                                         ; preds = %if.else, %entry
  %in.addr.0 = phi i8* [ %add.ptr, %if.else ], [ %in, %entry ]
  %len.addr.0 = phi i64 [ %sub11, %if.else ], [ %len, %entry ]
  %and = and i64 %len.addr.0, -8
  %cmp16.not = icmp eq i64 %and, 0
  br i1 %cmp16.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  tail call fastcc void @mdc2_body(%struct.mdc2_ctx_st* noundef nonnull %c, i8* noundef %in.addr.0, i64 noundef %and) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  %sub20 = and i64 %len.addr.0, 7
  %cmp21.not = icmp eq i64 %sub20, 0
  br i1 %cmp21.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %if.end19
  %arrayidx25 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 1, i64 0
  %arrayidx26 = getelementptr inbounds i8, i8* %in.addr.0, i64 %and
  %call27 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx25, i8* noundef %arrayidx26, i64 noundef %sub20) #4
  %conv28 = trunc i64 %sub20 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then4, %if.then23
  %conv28.sink = phi i32 [ %conv28, %if.then23 ], [ %add, %if.then4 ]
  store i32 %conv28.sink, i32* %num, align 4, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @mdc2_body(%struct.mdc2_ctx_st* noundef %c, i8* nocapture noundef readonly %in, i64 noundef %len) unnamed_addr #0 {
entry:
  %d = alloca [2 x i32], align 4
  %dd = alloca [2 x i32], align 4
  %k = alloca %struct.DES_ks, align 4
  %0 = bitcast [2 x i32]* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast [2 x i32]* %dd to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = bitcast %struct.DES_ks* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #6
  %cmp178.not = icmp eq i64 %len, 0
  br i1 %cmp178.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %dd, i64 0, i64 0
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %d, i64 0, i64 0
  %arrayidx26 = getelementptr inbounds [2 x i32], [2 x i32]* %dd, i64 0, i64 1
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %d, i64 0, i64 1
  %h = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 2
  %arrayidx28 = getelementptr inbounds [8 x i8], [8 x i8]* %h, i64 0, i64 0
  %hh = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 3
  %arrayidx34 = getelementptr inbounds [8 x i8], [8 x i8]* %hh, i64 0, i64 0
  %incdec.ptr57 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 2, i64 1
  %incdec.ptr60 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 2, i64 2
  %incdec.ptr64 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 2, i64 3
  %incdec.ptr68 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 2, i64 4
  %incdec.ptr71 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 2, i64 5
  %incdec.ptr75 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 2, i64 6
  %incdec.ptr79 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 2, i64 7
  %incdec.ptr88 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 3, i64 1
  %incdec.ptr92 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 3, i64 2
  %incdec.ptr96 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 3, i64 3
  %incdec.ptr100 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 3, i64 4
  %incdec.ptr103 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 3, i64 5
  %incdec.ptr107 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 3, i64 6
  %incdec.ptr111 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 3, i64 7
  %.pre = load i8, i8* %arrayidx28, align 4, !tbaa !10
  %.pre181 = load i8, i8* %arrayidx34, align 4, !tbaa !10
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %3 = phi i8 [ %.pre181, %for.body.lr.ph ], [ %conv87, %for.body ]
  %4 = phi i8 [ %.pre, %for.body.lr.ph ], [ %conv56, %for.body ]
  %i.0180 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %in.addr.0179 = phi i8* [ %in, %for.body.lr.ph ], [ %incdec.ptr22, %for.body ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.0179, i64 1
  %5 = load i8, i8* %in.addr.0179, align 1, !tbaa !10
  %conv = zext i8 %5 to i32
  %incdec.ptr1 = getelementptr inbounds i8, i8* %in.addr.0179, i64 2
  %6 = load i8, i8* %incdec.ptr, align 1, !tbaa !10
  %conv2 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %incdec.ptr3 = getelementptr inbounds i8, i8* %in.addr.0179, i64 3
  %7 = load i8, i8* %incdec.ptr1, align 1, !tbaa !10
  %conv4 = zext i8 %7 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %incdec.ptr7 = getelementptr inbounds i8, i8* %in.addr.0179, i64 4
  %8 = load i8, i8* %incdec.ptr3, align 1, !tbaa !10
  %conv8 = zext i8 %8 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  store i32 %or10, i32* %arrayidx, align 4, !tbaa !11
  store i32 %or10, i32* %arrayidx11, align 4, !tbaa !11
  %incdec.ptr12 = getelementptr inbounds i8, i8* %in.addr.0179, i64 5
  %9 = load i8, i8* %incdec.ptr7, align 1, !tbaa !10
  %conv13 = zext i8 %9 to i32
  %incdec.ptr14 = getelementptr inbounds i8, i8* %in.addr.0179, i64 6
  %10 = load i8, i8* %incdec.ptr12, align 1, !tbaa !10
  %conv15 = zext i8 %10 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %or17 = or i32 %shl16, %conv13
  %incdec.ptr18 = getelementptr inbounds i8, i8* %in.addr.0179, i64 7
  %11 = load i8, i8* %incdec.ptr14, align 1, !tbaa !10
  %conv19 = zext i8 %11 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %or21 = or i32 %or17, %shl20
  %incdec.ptr22 = getelementptr inbounds i8, i8* %in.addr.0179, i64 8
  %12 = load i8, i8* %incdec.ptr18, align 1, !tbaa !10
  %conv23 = zext i8 %12 to i32
  %shl24 = shl nuw i32 %conv23, 24
  %or25 = or i32 %or21, %shl24
  store i32 %or25, i32* %arrayidx26, align 4, !tbaa !11
  store i32 %or25, i32* %arrayidx27, align 4, !tbaa !11
  %13 = and i8 %4, -97
  %14 = or i8 %13, 64
  store i8 %14, i8* %arrayidx28, align 4, !tbaa !10
  %15 = and i8 %3, -97
  %16 = or i8 %15, 32
  store i8 %16, i8* %arrayidx34, align 4, !tbaa !10
  call void @DES_set_odd_parity([8 x i8]* noundef nonnull %h) #4
  call void @DES_set_key_unchecked([8 x i8]* noundef nonnull %h, %struct.DES_ks* noundef nonnull %k) #4
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx11, %struct.DES_ks* noundef nonnull %k, i32 noundef 1) #4
  call void @DES_set_odd_parity([8 x i8]* noundef nonnull %hh) #4
  call void @DES_set_key_unchecked([8 x i8]* noundef nonnull %hh, %struct.DES_ks* noundef nonnull %k) #4
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx, %struct.DES_ks* noundef nonnull %k, i32 noundef 1) #4
  %17 = load i32, i32* %arrayidx, align 4, !tbaa !11
  %xor = xor i32 %17, %or10
  %18 = load i32, i32* %arrayidx26, align 4, !tbaa !11
  %xor48 = xor i32 %18, %or25
  %19 = load i32, i32* %arrayidx11, align 4, !tbaa !11
  %xor50 = xor i32 %19, %or10
  %20 = load i32, i32* %arrayidx27, align 4, !tbaa !11
  %xor52 = xor i32 %20, %or25
  %conv56 = trunc i32 %xor50 to i8
  store i8 %conv56, i8* %arrayidx28, align 1, !tbaa !10
  %shr = lshr i32 %xor50, 8
  %conv59 = trunc i32 %shr to i8
  store i8 %conv59, i8* %incdec.ptr57, align 1, !tbaa !10
  %shr61 = lshr i32 %xor50, 16
  %conv63 = trunc i32 %shr61 to i8
  store i8 %conv63, i8* %incdec.ptr60, align 1, !tbaa !10
  %shr65 = lshr i32 %xor50, 24
  %conv67 = trunc i32 %shr65 to i8
  store i8 %conv67, i8* %incdec.ptr64, align 1, !tbaa !10
  %conv70 = trunc i32 %xor48 to i8
  store i8 %conv70, i8* %incdec.ptr68, align 1, !tbaa !10
  %shr72 = lshr i32 %xor48, 8
  %conv74 = trunc i32 %shr72 to i8
  store i8 %conv74, i8* %incdec.ptr71, align 1, !tbaa !10
  %shr76 = lshr i32 %xor48, 16
  %conv78 = trunc i32 %shr76 to i8
  store i8 %conv78, i8* %incdec.ptr75, align 1, !tbaa !10
  %shr80 = lshr i32 %xor48, 24
  %conv82 = trunc i32 %shr80 to i8
  store i8 %conv82, i8* %incdec.ptr79, align 1, !tbaa !10
  %conv87 = trunc i32 %xor to i8
  store i8 %conv87, i8* %arrayidx34, align 1, !tbaa !10
  %shr89 = lshr i32 %xor, 8
  %conv91 = trunc i32 %shr89 to i8
  store i8 %conv91, i8* %incdec.ptr88, align 1, !tbaa !10
  %shr93 = lshr i32 %xor, 16
  %conv95 = trunc i32 %shr93 to i8
  store i8 %conv95, i8* %incdec.ptr92, align 1, !tbaa !10
  %shr97 = lshr i32 %xor, 24
  %conv99 = trunc i32 %shr97 to i8
  store i8 %conv99, i8* %incdec.ptr96, align 1, !tbaa !10
  %conv102 = trunc i32 %xor52 to i8
  store i8 %conv102, i8* %incdec.ptr100, align 1, !tbaa !10
  %shr104 = lshr i32 %xor52, 8
  %conv106 = trunc i32 %shr104 to i8
  store i8 %conv106, i8* %incdec.ptr103, align 1, !tbaa !10
  %shr108 = lshr i32 %xor52, 16
  %conv110 = trunc i32 %shr108 to i8
  store i8 %conv110, i8* %incdec.ptr107, align 1, !tbaa !10
  %shr112 = lshr i32 %xor52, 24
  %conv114 = trunc i32 %shr112 to i8
  store i8 %conv114, i8* %incdec.ptr111, align 1, !tbaa !10
  %add = add i64 %i.0180, 8
  %cmp = icmp ult i64 %add, %len
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !12

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @MDC2_Final(i8* noundef %md, %struct.mdc2_ctx_st* noundef %c) local_unnamed_addr #0 {
entry:
  %num = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 0
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %pad_type = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 4
  %1 = load i32, i32* %pad_type, align 4, !tbaa !9
  %cmp = icmp ne i32 %0, 0
  %cmp1 = icmp eq i32 %1, 2
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %inc = add i32 %0, 1
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 1, i64 %idxprom
  store i8 -128, i8* %arrayidx, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %i.0 = phi i32 [ %inc, %if.then3 ], [ %0, %if.then ]
  %idxprom5 = zext i32 %i.0 to i64
  %arrayidx6 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 1, i64 %idxprom5
  %sub = sub i32 8, %i.0
  %conv = zext i32 %sub to i64
  %call = tail call i8* @memset(i8* noundef nonnull %arrayidx6, i32 noundef 0, i64 noundef %conv) #4
  %arraydecay = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 1, i64 0
  tail call fastcc void @mdc2_body(%struct.mdc2_ctx_st* noundef nonnull %c, i8* noundef nonnull %arraydecay, i64 noundef 8) #5
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.end
  %arraydecay9 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 2, i64 0
  %call10 = tail call i8* @memcpy(i8* noundef %md, i8* noundef nonnull %arraydecay9, i64 noundef 8) #4
  %arrayidx11 = getelementptr inbounds i8, i8* %md, i64 8
  %arraydecay12 = getelementptr inbounds %struct.mdc2_ctx_st, %struct.mdc2_ctx_st* %c, i64 0, i32 3, i64 0
  %call13 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx11, i8* noundef nonnull %arraydecay12, i64 noundef 8) #4
  ret i32 1
}

declare void @DES_set_odd_parity([8 x i8]* noundef) local_unnamed_addr #3

declare void @DES_set_key_unchecked([8 x i8]* noundef, %struct.DES_ks* noundef) local_unnamed_addr #3

declare void @DES_encrypt1(i32* noundef, %struct.DES_ks* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"mdc2_ctx_st", !6, i64 0, !7, i64 4, !7, i64 12, !7, i64 20, !6, i64 28}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!5, !6, i64 28}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
