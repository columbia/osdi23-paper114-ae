; ModuleID = 'crypto/ec/curve448/f_generic.c'
source_filename = "crypto/ec/curve448/f_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf_s = type { [8 x i64] }

@MODULUS = internal unnamed_addr constant [1 x %struct.gf_s] [%struct.gf_s { [8 x i64] [i64 72057594037927935, i64 72057594037927935, i64 72057594037927935, i64 72057594037927935, i64 72057594037927934, i64 72057594037927935, i64 72057594037927935, i64 72057594037927935] }], align 16
@ONE = internal constant [1 x %struct.gf_s] [%struct.gf_s { [8 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0] }], align 16

; Function Attrs: nofree noinline nosync nounwind uwtable
define void @gf_serialize(i8* nocapture noundef writeonly %serial, %struct.gf_s* nocapture noundef readonly %x, i32 noundef %with_hibit) local_unnamed_addr #0 {
entry:
  %red = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %red to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #9
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %red, i64 0, i64 0
  %1 = bitcast %struct.gf_s* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %0, i8* noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false) #9, !tbaa.struct !4
  call void @gf_strong_reduce(%struct.gf_s* noundef nonnull %arraydecay) #10
  br label %for.body

for.body:                                         ; preds = %entry, %if.end9
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end9 ]
  %buffer.030 = phi i128 [ 0, %entry ], [ %shr, %if.end9 ]
  %fill.029 = phi i32 [ 0, %entry ], [ %sub, %if.end9 ]
  %j.028 = phi i32 [ 0, %entry ], [ %j.1, %if.end9 ]
  %cmp3 = icmp ult i32 %fill.029, 8
  %cmp4 = icmp ult i32 %j.028, 8
  %or.cond = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then6, label %if.end9

if.then6:                                         ; preds = %for.body
  %conv = zext i32 %j.028 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %red, i64 0, i64 0, i32 0, i64 %conv
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !8
  %conv8 = zext i64 %2 to i128
  %sh_prom = zext i32 %fill.029 to i128
  %shl = shl nuw nsw i128 %conv8, %sh_prom
  %or = or i128 %shl, %buffer.030
  %add = add nuw nsw i32 %fill.029, 56
  %inc = add nuw nsw i32 %j.028, 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %for.body
  %j.1 = phi i32 [ %inc, %if.then6 ], [ %j.028, %for.body ]
  %fill.1 = phi i32 [ %add, %if.then6 ], [ %fill.029, %for.body ]
  %buffer.1 = phi i128 [ %or, %if.then6 ], [ %buffer.030, %for.body ]
  %conv10 = trunc i128 %buffer.1 to i8
  %arrayidx12 = getelementptr inbounds i8, i8* %serial, i64 %indvars.iv
  store i8 %conv10, i8* %arrayidx12, align 1, !tbaa !5
  %sub = add i32 %fill.1, -8
  %shr = lshr i128 %buffer.1, 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 56
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !10

for.end:                                          ; preds = %if.end9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @gf_strong_reduce(%struct.gf_s* nocapture noundef %a) local_unnamed_addr #2 {
entry:
  %arrayidx.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 7
  %0 = load i64, i64* %arrayidx.i, align 8, !tbaa !8
  %shr.i = lshr i64 %0, 56
  %arrayidx2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 4
  %1 = load i64, i64* %arrayidx2.i, align 16, !tbaa !8
  %add.i = add i64 %1, %shr.i
  %and.i = and i64 %0, 72057594037927935
  %arrayidx7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 6
  %2 = load i64, i64* %arrayidx7.i, align 8, !tbaa !8
  %shr8.i = lshr i64 %2, 56
  %add9.i = add nuw nsw i64 %shr8.i, %and.i
  %and.1.i = and i64 %2, 72057594037927935
  %arrayidx7.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 5
  %3 = load i64, i64* %arrayidx7.1.i, align 8, !tbaa !8
  %shr8.1.i = lshr i64 %3, 56
  %add9.1.i = add nuw nsw i64 %shr8.1.i, %and.1.i
  %and.2.i = and i64 %3, 72057594037927935
  %shr8.2.i = lshr i64 %add.i, 56
  %add9.2.i = add nuw nsw i64 %and.2.i, %shr8.2.i
  %and.3.i = and i64 %add.i, 72057594037927935
  %arrayidx7.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 3
  %4 = load i64, i64* %arrayidx7.3.i, align 8, !tbaa !8
  %shr8.3.i = lshr i64 %4, 56
  %add9.3.i = add nuw nsw i64 %shr8.3.i, %and.3.i
  %and.4.i = and i64 %4, 72057594037927935
  %arrayidx7.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 2
  %5 = load i64, i64* %arrayidx7.4.i, align 8, !tbaa !8
  %shr8.4.i = lshr i64 %5, 56
  %add9.4.i = add nuw nsw i64 %shr8.4.i, %and.4.i
  %and.5.i = and i64 %5, 72057594037927935
  %arrayidx7.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 1
  %6 = load i64, i64* %arrayidx7.5.i, align 8, !tbaa !8
  %shr8.5.i = lshr i64 %6, 56
  %add9.5.i = add nuw nsw i64 %shr8.5.i, %and.5.i
  %and.6.i = and i64 %6, 72057594037927935
  %arrayidx7.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 0
  %7 = load i64, i64* %arrayidx7.6.i, align 8, !tbaa !8
  %shr8.6.i = lshr i64 %7, 56
  %add9.6.i = add nuw nsw i64 %shr8.6.i, %and.6.i
  %and15.i = and i64 %7, 72057594037927935
  %add16.i = add nuw nsw i64 %and15.i, %shr.i
  %conv2 = zext i64 %add16.i to i128
  %sub = add nsw i128 %conv2, -72057594037927935
  %shr = ashr i128 %sub, 56
  %conv2.1 = zext i64 %add9.6.i to i128
  %add.1 = add nsw i128 %shr, %conv2.1
  %sub.1 = add nsw i128 %add.1, -72057594037927935
  %shr.1 = ashr i128 %sub.1, 56
  %conv2.2 = zext i64 %add9.5.i to i128
  %add.2 = add nsw i128 %shr.1, %conv2.2
  %sub.2 = add nsw i128 %add.2, -72057594037927935
  %shr.2 = ashr i128 %sub.2, 56
  %conv2.3 = zext i64 %add9.4.i to i128
  %add.3 = add nsw i128 %shr.2, %conv2.3
  %sub.3 = add nsw i128 %add.3, -72057594037927935
  %shr.3 = ashr i128 %sub.3, 56
  %conv2.4 = zext i64 %add9.3.i to i128
  %add.4 = add nsw i128 %shr.3, %conv2.4
  %sub.4 = add nsw i128 %add.4, -72057594037927934
  %shr.4 = ashr i128 %sub.4, 56
  %conv2.5 = zext i64 %add9.2.i to i128
  %add.5 = add nsw i128 %shr.4, %conv2.5
  %sub.5 = add nsw i128 %add.5, -72057594037927935
  %shr.5 = ashr i128 %sub.5, 56
  %conv2.6 = zext i64 %add9.1.i to i128
  %add.6 = add nsw i128 %shr.5, %conv2.6
  %sub.6 = add nsw i128 %add.6, -72057594037927935
  %shr.6 = ashr i128 %sub.6, 56
  %conv2.7 = zext i64 %add9.i to i128
  %add.7 = add nsw i128 %shr.6, %conv2.7
  %sub.7 = add nsw i128 %add.7, -72057594037927935
  %shr.7 = ashr i128 %sub.7, 56
  %conv19 = and i128 %sub, 72057594037927935
  %conv24 = and i128 %shr.7, 72057594037927935
  %add25 = add nuw nsw i128 %conv24, %conv19
  %shr31 = lshr i128 %add25, 56
  %conv19.1 = and i128 %sub.1, 72057594037927935
  %add20.1 = add nuw nsw i128 %shr31, %conv19.1
  %add25.1 = add nuw nsw i128 %add20.1, %conv24
  %8 = insertelement <2 x i128> poison, i128 %add25, i64 0
  %9 = insertelement <2 x i128> %8, i128 %add25.1, i64 1
  %10 = trunc <2 x i128> %9 to <2 x i64>
  %11 = and <2 x i64> %10, <i64 72057594037927935, i64 72057594037927935>
  %12 = bitcast %struct.gf_s* %a to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %12, align 8, !tbaa !8
  %shr31.1 = lshr i128 %add25.1, 56
  %conv19.2 = and i128 %sub.2, 72057594037927935
  %add20.2 = add nuw nsw i128 %shr31.1, %conv19.2
  %add25.2 = add nuw nsw i128 %add20.2, %conv24
  %shr31.2 = lshr i128 %add25.2, 56
  %conv19.3 = and i128 %sub.3, 72057594037927935
  %add20.3 = add nuw nsw i128 %shr31.2, %conv19.3
  %add25.3 = add nuw nsw i128 %add20.3, %conv24
  %13 = insertelement <2 x i128> poison, i128 %add25.2, i64 0
  %14 = insertelement <2 x i128> %13, i128 %add25.3, i64 1
  %15 = trunc <2 x i128> %14 to <2 x i64>
  %16 = and <2 x i64> %15, <i64 72057594037927935, i64 72057594037927935>
  %17 = bitcast i64* %arrayidx7.4.i to <2 x i64>*
  store <2 x i64> %16, <2 x i64>* %17, align 8, !tbaa !8
  %shr31.3 = lshr i128 %add25.3, 56
  %conv19.4 = and i128 %sub.4, 72057594037927935
  %add20.4 = add nuw nsw i128 %shr31.3, %conv19.4
  %conv24.4 = and i128 %shr.7, 72057594037927934
  %add25.4 = add nuw nsw i128 %add20.4, %conv24.4
  %shr31.4 = lshr i128 %add25.4, 56
  %conv19.5 = and i128 %sub.5, 72057594037927935
  %add20.5 = add nuw nsw i128 %shr31.4, %conv19.5
  %add25.5 = add nuw nsw i128 %add20.5, %conv24
  %18 = insertelement <2 x i128> poison, i128 %add25.4, i64 0
  %19 = insertelement <2 x i128> %18, i128 %add25.5, i64 1
  %20 = trunc <2 x i128> %19 to <2 x i64>
  %21 = and <2 x i64> %20, <i64 72057594037927935, i64 72057594037927935>
  %22 = bitcast i64* %arrayidx2.i to <2 x i64>*
  store <2 x i64> %21, <2 x i64>* %22, align 8, !tbaa !8
  %shr31.5 = lshr i128 %add25.5, 56
  %conv19.6 = and i128 %sub.6, 72057594037927935
  %add20.6 = add nuw nsw i128 %shr31.5, %conv19.6
  %add25.6 = add nuw nsw i128 %add20.6, %conv24
  %shr31.6 = lshr i128 %add25.6, 56
  %add20.7 = add nsw i128 %shr31.6, %sub.7
  %add25.7 = add nsw i128 %add20.7, %shr.7
  %23 = insertelement <2 x i128> poison, i128 %add25.6, i64 0
  %24 = insertelement <2 x i128> %23, i128 %add25.7, i64 1
  %25 = trunc <2 x i128> %24 to <2 x i64>
  %26 = and <2 x i64> %25, <i64 72057594037927935, i64 72057594037927935>
  %27 = bitcast i64* %arrayidx7.i to <2 x i64>*
  store <2 x i64> %26, <2 x i64>* %27, align 8, !tbaa !8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define i64 @gf_hibit(%struct.gf_s* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %y = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #9
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %y, i64 0, i64 0
  call void @gf_add(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef %x, %struct.gf_s* noundef %x) #10
  call void @gf_strong_reduce(%struct.gf_s* noundef nonnull %arraydecay) #10
  %arrayidx = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %y, i64 0, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx, align 16, !tbaa !8
  %and = and i64 %1, 1
  %sub = sub nsw i64 0, %and
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #9
  ret i64 %sub
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @gf_add(%struct.gf_s* nocapture noundef %d, %struct.gf_s* nocapture noundef readonly %a, %struct.gf_s* nocapture noundef readonly %b) local_unnamed_addr #3 {
entry:
  %arrayidx.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx.i, align 8, !tbaa !8
  %arrayidx4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx4.i, align 8, !tbaa !8
  %add.i = add i64 %1, %0
  %arrayidx7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 0
  store i64 %add.i, i64* %arrayidx7.i, align 8, !tbaa !8
  %arrayidx.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 1
  %2 = load i64, i64* %arrayidx.1.i, align 8, !tbaa !8
  %arrayidx4.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 1
  %3 = load i64, i64* %arrayidx4.1.i, align 8, !tbaa !8
  %add.1.i = add i64 %3, %2
  %arrayidx7.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 1
  store i64 %add.1.i, i64* %arrayidx7.1.i, align 8, !tbaa !8
  %arrayidx.2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 2
  %4 = load i64, i64* %arrayidx.2.i, align 8, !tbaa !8
  %arrayidx4.2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 2
  %5 = load i64, i64* %arrayidx4.2.i, align 8, !tbaa !8
  %add.2.i = add i64 %5, %4
  %arrayidx7.2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 2
  store i64 %add.2.i, i64* %arrayidx7.2.i, align 8, !tbaa !8
  %arrayidx.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 3
  %6 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !8
  %arrayidx4.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 3
  %7 = load i64, i64* %arrayidx4.3.i, align 8, !tbaa !8
  %add.3.i = add i64 %7, %6
  %arrayidx7.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 3
  store i64 %add.3.i, i64* %arrayidx7.3.i, align 8, !tbaa !8
  %arrayidx.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 4
  %8 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !8
  %arrayidx4.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 4
  %9 = load i64, i64* %arrayidx4.4.i, align 8, !tbaa !8
  %add.4.i = add i64 %9, %8
  %arrayidx7.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 4
  store i64 %add.4.i, i64* %arrayidx7.4.i, align 8, !tbaa !8
  %arrayidx.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 5
  %10 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !8
  %arrayidx4.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 5
  %11 = load i64, i64* %arrayidx4.5.i, align 8, !tbaa !8
  %add.5.i = add i64 %11, %10
  %arrayidx7.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 5
  store i64 %add.5.i, i64* %arrayidx7.5.i, align 8, !tbaa !8
  %arrayidx.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 6
  %12 = load i64, i64* %arrayidx.6.i, align 8, !tbaa !8
  %arrayidx4.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 6
  %13 = load i64, i64* %arrayidx4.6.i, align 8, !tbaa !8
  %add.6.i = add i64 %13, %12
  %arrayidx7.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 6
  store i64 %add.6.i, i64* %arrayidx7.6.i, align 8, !tbaa !8
  %arrayidx.7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 7
  %14 = load i64, i64* %arrayidx.7.i, align 8, !tbaa !8
  %arrayidx4.7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 7
  %15 = load i64, i64* %arrayidx4.7.i, align 8, !tbaa !8
  %add.7.i = add i64 %15, %14
  %arrayidx7.7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 7
  %shr.i.i = lshr i64 %add.7.i, 56
  %add.i.i = add i64 %shr.i.i, %add.4.i
  %and.i.i = and i64 %add.7.i, 72057594037927935
  %shr8.i.i = lshr i64 %add.6.i, 56
  %add9.i.i = add nuw nsw i64 %and.i.i, %shr8.i.i
  %and.1.i.i = and i64 %add.6.i, 72057594037927935
  %shr8.1.i.i = lshr i64 %add.5.i, 56
  %add9.1.i.i = add nuw nsw i64 %and.1.i.i, %shr8.1.i.i
  %and.2.i.i = and i64 %add.5.i, 72057594037927935
  %shr8.2.i.i = lshr i64 %add.i.i, 56
  %add9.2.i.i = add nuw nsw i64 %shr8.2.i.i, %and.2.i.i
  %and.3.i.i = and i64 %add.i.i, 72057594037927935
  %shr8.3.i.i = lshr i64 %add.3.i, 56
  %add9.3.i.i = add nuw nsw i64 %and.3.i.i, %shr8.3.i.i
  %and.4.i.i = and i64 %add.3.i, 72057594037927935
  %shr8.4.i.i = lshr i64 %add.2.i, 56
  %add9.4.i.i = add nuw nsw i64 %and.4.i.i, %shr8.4.i.i
  %and.5.i.i = and i64 %add.2.i, 72057594037927935
  %shr8.5.i.i = lshr i64 %add.1.i, 56
  %add9.5.i.i = add nuw nsw i64 %and.5.i.i, %shr8.5.i.i
  %and.6.i.i = and i64 %add.1.i, 72057594037927935
  %shr8.6.i.i = lshr i64 %add.i, 56
  %add9.6.i.i = add nuw nsw i64 %and.6.i.i, %shr8.6.i.i
  %and15.i.i = and i64 %add.i, 72057594037927935
  %add16.i.i = add nuw nsw i64 %shr.i.i, %and15.i.i
  %shr.i = lshr i64 %add9.i.i, 56
  %add.i3 = add nuw nsw i64 %add9.3.i.i, %shr.i
  %and.i = and i64 %add9.i.i, 72057594037927935
  %shr8.i = lshr i64 %add9.1.i.i, 56
  %add9.i = add nuw nsw i64 %and.i, %shr8.i
  store i64 %add9.i, i64* %arrayidx7.7.i, align 8, !tbaa !8
  %and.1.i = and i64 %add9.1.i.i, 72057594037927935
  %shr8.1.i = lshr i64 %add9.2.i.i, 56
  %add9.1.i = add nuw nsw i64 %shr8.1.i, %and.1.i
  store i64 %add9.1.i, i64* %arrayidx7.6.i, align 8, !tbaa !8
  %and.2.i = and i64 %add9.2.i.i, 72057594037927935
  %shr8.2.i = lshr i64 %add.i3, 56
  %add9.2.i = add nuw nsw i64 %shr8.2.i, %and.2.i
  store i64 %add9.2.i, i64* %arrayidx7.5.i, align 8, !tbaa !8
  %and.3.i = and i64 %add.i3, 72057594037927935
  %shr8.3.i = lshr i64 %add9.4.i.i, 56
  %add9.3.i = add nuw nsw i64 %and.3.i, %shr8.3.i
  store i64 %add9.3.i, i64* %arrayidx7.4.i, align 8, !tbaa !8
  %and.4.i = and i64 %add9.4.i.i, 72057594037927935
  %shr8.4.i = lshr i64 %add9.5.i.i, 56
  %add9.4.i = add nuw nsw i64 %and.4.i, %shr8.4.i
  store i64 %add9.4.i, i64* %arrayidx7.3.i, align 8, !tbaa !8
  %and.5.i = and i64 %add9.5.i.i, 72057594037927935
  %shr8.5.i = lshr i64 %add9.6.i.i, 56
  %add9.5.i = add nuw nsw i64 %and.5.i, %shr8.5.i
  store i64 %add9.5.i, i64* %arrayidx7.2.i, align 8, !tbaa !8
  %and.6.i = and i64 %add9.6.i.i, 72057594037927935
  %shr8.6.i = lshr i64 %add16.i.i, 56
  %add9.6.i = add nuw nsw i64 %shr8.6.i, %and.6.i
  store i64 %add9.6.i, i64* %arrayidx7.1.i, align 8, !tbaa !8
  %and15.i = and i64 %add16.i.i, 72057594037927935
  %add16.i = add nuw nsw i64 %and15.i, %shr.i
  store i64 %add16.i, i64* %arrayidx7.i, align 16, !tbaa !8
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define i64 @gf_lobit(%struct.gf_s* nocapture noundef readonly %x) local_unnamed_addr #0 {
entry:
  %y = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #9
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %y, i64 0, i64 0
  %1 = bitcast %struct.gf_s* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %0, i8* noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false) #9, !tbaa.struct !4
  call void @gf_strong_reduce(%struct.gf_s* noundef nonnull %arraydecay) #10
  %arrayidx = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %y, i64 0, i64 0, i32 0, i64 0
  %2 = load i64, i64* %arrayidx, align 16, !tbaa !8
  %and = and i64 %2, 1
  %sub = sub nsw i64 0, %and
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #9
  ret i64 %sub
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define i64 @gf_deserialize(%struct.gf_s* nocapture noundef %x, i8* nocapture noundef readonly %serial, i32 noundef %with_hibit, i8 noundef zeroext %hi_nmask) local_unnamed_addr #0 {
entry:
  %neg = xor i8 %hi_nmask, -1
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry, %while.end
  %indvars.iv87 = phi i64 [ 0, %entry ], [ %indvars.iv.next88, %while.end ]
  %j.084 = phi i32 [ 0, %entry ], [ %j.1.lcssa, %while.end ]
  %fill.082 = phi i32 [ 0, %entry ], [ %sub20, %while.end ]
  %scarry.081 = phi i128 [ 0, %entry ], [ %shr30, %while.end ]
  %buffer.080 = phi i128 [ 0, %entry ], [ %shr, %while.end ]
  %cmp273 = icmp ult i32 %fill.082, 56
  %cmp474 = icmp ult i32 %j.084, 56
  %0 = select i1 %cmp273, i1 %cmp474, i1 false
  br i1 %0, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %1 = zext i32 %j.084 to i64
  %arrayidx = getelementptr inbounds i8, i8* %serial, i64 %1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %cmp6 = icmp eq i32 %j.084, 55
  %and = select i1 %cmp6, i8 %neg, i8 -1
  %sj.0 = and i8 %2, %and
  %conv11 = zext i8 %sj.0 to i128
  %sh_prom = zext i32 %fill.082 to i128
  %shl = shl nuw nsw i128 %conv11, %sh_prom
  %or = or i128 %shl, %buffer.080
  %add = add nuw nsw i32 %fill.082, 8
  %indvars.iv.next = add nuw nsw i64 %1, 1
  %cmp2 = icmp ult i32 %fill.082, 48
  %cmp4 = icmp ult i32 %j.084, 55
  %3 = select i1 %cmp2, i1 %cmp4, i1 false
  br i1 %3, label %while.body.1, label %while.end.loopexit, !llvm.loop !12

while.body.1:                                     ; preds = %while.body.preheader
  %arrayidx.1 = getelementptr inbounds i8, i8* %serial, i64 %indvars.iv.next
  %4 = load i8, i8* %arrayidx.1, align 1, !tbaa !5
  %cmp6.1 = icmp eq i64 %indvars.iv.next, 55
  %and.1 = select i1 %cmp6.1, i8 %neg, i8 -1
  %sj.0.1 = and i8 %4, %and.1
  %conv11.1 = zext i8 %sj.0.1 to i128
  %sh_prom.1 = zext i32 %add to i128
  %shl.1 = shl nuw nsw i128 %conv11.1, %sh_prom.1
  %or.1 = or i128 %shl.1, %or
  %add.1 = add nuw nsw i32 %fill.082, 16
  %indvars.iv.next.1 = add nuw nsw i64 %1, 2
  %cmp2.1 = icmp ult i32 %fill.082, 40
  %cmp4.1 = icmp ult i32 %j.084, 54
  %5 = select i1 %cmp2.1, i1 %cmp4.1, i1 false
  br i1 %5, label %while.body.2, label %while.end.loopexit, !llvm.loop !12

while.body.2:                                     ; preds = %while.body.1
  %arrayidx.2 = getelementptr inbounds i8, i8* %serial, i64 %indvars.iv.next.1
  %6 = load i8, i8* %arrayidx.2, align 1, !tbaa !5
  %cmp6.2 = icmp eq i64 %indvars.iv.next.1, 55
  %and.2 = select i1 %cmp6.2, i8 %neg, i8 -1
  %sj.0.2 = and i8 %6, %and.2
  %conv11.2 = zext i8 %sj.0.2 to i128
  %sh_prom.2 = zext i32 %add.1 to i128
  %shl.2 = shl nuw nsw i128 %conv11.2, %sh_prom.2
  %or.2 = or i128 %shl.2, %or.1
  %add.2 = add nuw nsw i32 %fill.082, 24
  %indvars.iv.next.2 = add nuw nsw i64 %1, 3
  %cmp2.2 = icmp ult i32 %fill.082, 32
  %cmp4.2 = icmp ult i32 %j.084, 53
  %7 = select i1 %cmp2.2, i1 %cmp4.2, i1 false
  br i1 %7, label %while.body.3, label %while.end.loopexit, !llvm.loop !12

while.body.3:                                     ; preds = %while.body.2
  %arrayidx.3 = getelementptr inbounds i8, i8* %serial, i64 %indvars.iv.next.2
  %8 = load i8, i8* %arrayidx.3, align 1, !tbaa !5
  %cmp6.3 = icmp eq i64 %indvars.iv.next.2, 55
  %and.3 = select i1 %cmp6.3, i8 %neg, i8 -1
  %sj.0.3 = and i8 %8, %and.3
  %conv11.3 = zext i8 %sj.0.3 to i128
  %sh_prom.3 = zext i32 %add.2 to i128
  %shl.3 = shl nuw nsw i128 %conv11.3, %sh_prom.3
  %or.3 = or i128 %shl.3, %or.2
  %add.3 = add nuw nsw i32 %fill.082, 32
  %indvars.iv.next.3 = add nuw nsw i64 %1, 4
  %cmp2.3 = icmp ult i32 %fill.082, 24
  %cmp4.3 = icmp ult i32 %j.084, 52
  %9 = select i1 %cmp2.3, i1 %cmp4.3, i1 false
  br i1 %9, label %while.body.4, label %while.end.loopexit, !llvm.loop !12

while.body.4:                                     ; preds = %while.body.3
  %arrayidx.4 = getelementptr inbounds i8, i8* %serial, i64 %indvars.iv.next.3
  %10 = load i8, i8* %arrayidx.4, align 1, !tbaa !5
  %cmp6.4 = icmp eq i64 %indvars.iv.next.3, 55
  %and.4 = select i1 %cmp6.4, i8 %neg, i8 -1
  %sj.0.4 = and i8 %10, %and.4
  %conv11.4 = zext i8 %sj.0.4 to i128
  %sh_prom.4 = zext i32 %add.3 to i128
  %shl.4 = shl nuw nsw i128 %conv11.4, %sh_prom.4
  %or.4 = or i128 %shl.4, %or.3
  %add.4 = add nuw nsw i32 %fill.082, 40
  %indvars.iv.next.4 = add nuw nsw i64 %1, 5
  %cmp2.4 = icmp ult i32 %fill.082, 16
  %cmp4.4 = icmp ult i32 %j.084, 51
  %11 = select i1 %cmp2.4, i1 %cmp4.4, i1 false
  br i1 %11, label %while.body.5, label %while.end.loopexit, !llvm.loop !12

while.body.5:                                     ; preds = %while.body.4
  %arrayidx.5 = getelementptr inbounds i8, i8* %serial, i64 %indvars.iv.next.4
  %12 = load i8, i8* %arrayidx.5, align 1, !tbaa !5
  %cmp6.5 = icmp eq i64 %indvars.iv.next.4, 55
  %and.5 = select i1 %cmp6.5, i8 %neg, i8 -1
  %sj.0.5 = and i8 %12, %and.5
  %conv11.5 = zext i8 %sj.0.5 to i128
  %sh_prom.5 = zext i32 %add.4 to i128
  %shl.5 = shl nuw nsw i128 %conv11.5, %sh_prom.5
  %or.5 = or i128 %shl.5, %or.4
  %add.5 = add nuw nsw i32 %fill.082, 48
  %indvars.iv.next.5 = add nuw nsw i64 %1, 6
  %cmp2.5 = icmp ult i32 %fill.082, 8
  %cmp4.5 = icmp ult i32 %j.084, 50
  %13 = select i1 %cmp2.5, i1 %cmp4.5, i1 false
  br i1 %13, label %while.body.6, label %while.end.loopexit, !llvm.loop !12

while.body.6:                                     ; preds = %while.body.5
  %arrayidx.6 = getelementptr inbounds i8, i8* %serial, i64 %indvars.iv.next.5
  %14 = load i8, i8* %arrayidx.6, align 1, !tbaa !5
  %cmp6.6 = icmp eq i64 %indvars.iv.next.5, 55
  %and.6 = select i1 %cmp6.6, i8 %neg, i8 -1
  %sj.0.6 = and i8 %14, %and.6
  %conv11.6 = zext i8 %sj.0.6 to i128
  %sh_prom.6 = zext i32 %add.5 to i128
  %shl.6 = shl nuw nsw i128 %conv11.6, %sh_prom.6
  %or.6 = or i128 %shl.6, %or.5
  %add.6 = add nuw nsw i32 %fill.082, 56
  %indvars.iv.next.6 = add nuw nsw i64 %1, 7
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %while.body.6, %while.body.5, %while.body.4, %while.body.3, %while.body.2, %while.body.1, %while.body.preheader
  %or.lcssa = phi i128 [ %or, %while.body.preheader ], [ %or.1, %while.body.1 ], [ %or.2, %while.body.2 ], [ %or.3, %while.body.3 ], [ %or.4, %while.body.4 ], [ %or.5, %while.body.5 ], [ %or.6, %while.body.6 ]
  %add.lcssa = phi i32 [ %add, %while.body.preheader ], [ %add.1, %while.body.1 ], [ %add.2, %while.body.2 ], [ %add.3, %while.body.3 ], [ %add.4, %while.body.4 ], [ %add.5, %while.body.5 ], [ %add.6, %while.body.6 ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %while.body.preheader ], [ %indvars.iv.next.1, %while.body.1 ], [ %indvars.iv.next.2, %while.body.2 ], [ %indvars.iv.next.3, %while.body.3 ], [ %indvars.iv.next.4, %while.body.4 ], [ %indvars.iv.next.5, %while.body.5 ], [ %indvars.iv.next.6, %while.body.6 ]
  %15 = trunc i64 %indvars.iv.next.lcssa to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  %buffer.1.lcssa = phi i128 [ %buffer.080, %while.cond.preheader ], [ %or.lcssa, %while.end.loopexit ]
  %fill.1.lcssa = phi i32 [ %fill.082, %while.cond.preheader ], [ %add.lcssa, %while.end.loopexit ]
  %j.1.lcssa = phi i32 [ %j.084, %while.cond.preheader ], [ %15, %while.end.loopexit ]
  %cmp13 = icmp ult i64 %indvars.iv87, 7
  %and15 = and i128 %buffer.1.lcssa, 72057594037927935
  %cond16 = select i1 %cmp13, i128 %and15, i128 %buffer.1.lcssa
  %conv17 = trunc i128 %cond16 to i64
  %arrayidx19 = getelementptr inbounds %struct.gf_s, %struct.gf_s* %x, i64 0, i32 0, i64 %indvars.iv87
  store i64 %conv17, i64* %arrayidx19, align 8, !tbaa !8
  %sub20 = add i32 %fill.1.lcssa, -56
  %shr = lshr i128 %buffer.1.lcssa, 56
  %conv24 = and i128 %cond16, 18446744073709551615
  %add25 = add nsw i128 %conv24, %scarry.081
  %arrayidx27 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* @MODULUS, i64 0, i64 0, i32 0, i64 %indvars.iv87
  %16 = load i64, i64* %arrayidx27, align 8, !tbaa !8
  %conv28 = zext i64 %16 to i128
  %sub29 = sub nsw i128 %add25, %conv28
  %shr30 = ashr i128 %sub29, 64
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next88, 8
  br i1 %exitcond.not, label %for.end, label %while.cond.preheader, !llvm.loop !13

for.end:                                          ; preds = %while.end
  %tobool.not = icmp eq i32 %with_hibit, 0
  br i1 %tobool.not, label %cond.false34, label %cond.end36

cond.false34:                                     ; preds = %for.end
  %call = tail call i64 @gf_hibit(%struct.gf_s* noundef nonnull %x) #10
  %neg35 = xor i64 %call, -1
  br label %cond.end36

cond.end36:                                       ; preds = %for.end, %cond.false34
  %cond37 = phi i64 [ %neg35, %cond.false34 ], [ -1, %for.end ]
  %conv38 = trunc i128 %shr to i64
  %call39 = tail call fastcc i64 @constant_time_is_zero_64(i64 noundef %conv38) #10
  %and40 = and i64 %call39, %cond37
  %conv41 = trunc i128 %shr30 to i64
  %call42 = tail call fastcc i64 @constant_time_is_zero_64(i64 noundef %conv41) #10
  %neg43 = xor i64 %call42, -1
  %and44 = and i64 %and40, %neg43
  ret i64 %and44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_is_zero_64(i64 noundef %a) unnamed_addr #4 {
entry:
  %neg = xor i64 %a, -1
  %sub = add i64 %a, -1
  %and = and i64 %sub, %neg
  %call = tail call fastcc i64 @constant_time_msb_64(i64 noundef %and) #10
  ret i64 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @gf_sub(%struct.gf_s* nocapture noundef %d, %struct.gf_s* nocapture noundef readonly %a, %struct.gf_s* nocapture noundef readonly %b) local_unnamed_addr #3 {
entry:
  %arrayidx.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx.i, align 8, !tbaa !8
  %arrayidx4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 0
  %1 = load i64, i64* %arrayidx4.i, align 8, !tbaa !8
  %sub5.i = add i64 %0, 144115188075855870
  %add.i = sub i64 %sub5.i, %1
  %arrayidx11.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 0
  store i64 %add.i, i64* %arrayidx11.i, align 8, !tbaa !8
  %arrayidx.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 1
  %2 = load i64, i64* %arrayidx.1.i, align 8, !tbaa !8
  %arrayidx4.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 1
  %3 = load i64, i64* %arrayidx4.1.i, align 8, !tbaa !8
  %sub5.1.i = add i64 %2, 144115188075855870
  %add.1.i = sub i64 %sub5.1.i, %3
  %arrayidx11.1.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 1
  store i64 %add.1.i, i64* %arrayidx11.1.i, align 8, !tbaa !8
  %arrayidx.2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 2
  %4 = load i64, i64* %arrayidx.2.i, align 8, !tbaa !8
  %arrayidx4.2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 2
  %5 = load i64, i64* %arrayidx4.2.i, align 8, !tbaa !8
  %sub5.2.i = add i64 %4, 144115188075855870
  %add.2.i = sub i64 %sub5.2.i, %5
  %arrayidx11.2.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 2
  store i64 %add.2.i, i64* %arrayidx11.2.i, align 8, !tbaa !8
  %arrayidx.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 3
  %6 = load i64, i64* %arrayidx.3.i, align 8, !tbaa !8
  %arrayidx4.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 3
  %7 = load i64, i64* %arrayidx4.3.i, align 8, !tbaa !8
  %sub5.3.i = add i64 %6, 144115188075855870
  %add.3.i = sub i64 %sub5.3.i, %7
  %arrayidx11.3.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 3
  store i64 %add.3.i, i64* %arrayidx11.3.i, align 8, !tbaa !8
  %arrayidx.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 4
  %8 = load i64, i64* %arrayidx.4.i, align 8, !tbaa !8
  %arrayidx4.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 4
  %9 = load i64, i64* %arrayidx4.4.i, align 8, !tbaa !8
  %sub5.4.i = add i64 %8, 144115188075855868
  %add.4.i = sub i64 %sub5.4.i, %9
  %arrayidx11.4.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 4
  store i64 %add.4.i, i64* %arrayidx11.4.i, align 8, !tbaa !8
  %arrayidx.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 5
  %10 = load i64, i64* %arrayidx.5.i, align 8, !tbaa !8
  %arrayidx4.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 5
  %11 = load i64, i64* %arrayidx4.5.i, align 8, !tbaa !8
  %sub5.5.i = add i64 %10, 144115188075855870
  %add.5.i = sub i64 %sub5.5.i, %11
  %arrayidx11.5.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 5
  store i64 %add.5.i, i64* %arrayidx11.5.i, align 8, !tbaa !8
  %arrayidx.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 6
  %12 = load i64, i64* %arrayidx.6.i, align 8, !tbaa !8
  %arrayidx4.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 6
  %13 = load i64, i64* %arrayidx4.6.i, align 8, !tbaa !8
  %sub5.6.i = add i64 %12, 144115188075855870
  %add.6.i = sub i64 %sub5.6.i, %13
  %arrayidx11.6.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 6
  store i64 %add.6.i, i64* %arrayidx11.6.i, align 8, !tbaa !8
  %arrayidx.7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %a, i64 0, i32 0, i64 7
  %14 = load i64, i64* %arrayidx.7.i, align 8, !tbaa !8
  %arrayidx4.7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %b, i64 0, i32 0, i64 7
  %15 = load i64, i64* %arrayidx4.7.i, align 8, !tbaa !8
  %sub5.7.i = add i64 %14, 144115188075855870
  %add.7.i = sub i64 %sub5.7.i, %15
  %arrayidx11.7.i = getelementptr inbounds %struct.gf_s, %struct.gf_s* %d, i64 0, i32 0, i64 7
  %shr.i.i = lshr i64 %add.7.i, 56
  %add.i.i = add i64 %shr.i.i, %add.4.i
  %and.i.i = and i64 %add.7.i, 72057594037927935
  %shr8.i.i = lshr i64 %add.6.i, 56
  %add9.i.i = add nuw nsw i64 %and.i.i, %shr8.i.i
  %and.1.i.i = and i64 %add.6.i, 72057594037927935
  %shr8.1.i.i = lshr i64 %add.5.i, 56
  %add9.1.i.i = add nuw nsw i64 %and.1.i.i, %shr8.1.i.i
  %and.2.i.i = and i64 %add.5.i, 72057594037927935
  %shr8.2.i.i = lshr i64 %add.i.i, 56
  %add9.2.i.i = add nuw nsw i64 %shr8.2.i.i, %and.2.i.i
  %and.3.i.i = and i64 %add.i.i, 72057594037927935
  %shr8.3.i.i = lshr i64 %add.3.i, 56
  %add9.3.i.i = add nuw nsw i64 %and.3.i.i, %shr8.3.i.i
  %and.4.i.i = and i64 %add.3.i, 72057594037927935
  %shr8.4.i.i = lshr i64 %add.2.i, 56
  %add9.4.i.i = add nuw nsw i64 %and.4.i.i, %shr8.4.i.i
  %and.5.i.i = and i64 %add.2.i, 72057594037927935
  %shr8.5.i.i = lshr i64 %add.1.i, 56
  %add9.5.i.i = add nuw nsw i64 %and.5.i.i, %shr8.5.i.i
  %and.6.i.i = and i64 %add.1.i, 72057594037927935
  %shr8.6.i.i = lshr i64 %add.i, 56
  %add9.6.i.i = add nuw nsw i64 %and.6.i.i, %shr8.6.i.i
  %and15.i.i = and i64 %add.i, 72057594037927935
  %add16.i.i = add nuw nsw i64 %shr.i.i, %and15.i.i
  %shr.i = lshr i64 %add9.i.i, 56
  %add.i4 = add nuw nsw i64 %add9.3.i.i, %shr.i
  %and.i = and i64 %add9.i.i, 72057594037927935
  %shr8.i = lshr i64 %add9.1.i.i, 56
  %add9.i = add nuw nsw i64 %and.i, %shr8.i
  store i64 %add9.i, i64* %arrayidx11.7.i, align 8, !tbaa !8
  %and.1.i = and i64 %add9.1.i.i, 72057594037927935
  %shr8.1.i = lshr i64 %add9.2.i.i, 56
  %add9.1.i = add nuw nsw i64 %shr8.1.i, %and.1.i
  store i64 %add9.1.i, i64* %arrayidx11.6.i, align 8, !tbaa !8
  %and.2.i = and i64 %add9.2.i.i, 72057594037927935
  %shr8.2.i = lshr i64 %add.i4, 56
  %add9.2.i = add nuw nsw i64 %shr8.2.i, %and.2.i
  store i64 %add9.2.i, i64* %arrayidx11.5.i, align 8, !tbaa !8
  %and.3.i = and i64 %add.i4, 72057594037927935
  %shr8.3.i = lshr i64 %add9.4.i.i, 56
  %add9.3.i = add nuw nsw i64 %and.3.i, %shr8.3.i
  store i64 %add9.3.i, i64* %arrayidx11.4.i, align 8, !tbaa !8
  %and.4.i = and i64 %add9.4.i.i, 72057594037927935
  %shr8.4.i = lshr i64 %add9.5.i.i, 56
  %add9.4.i = add nuw nsw i64 %and.4.i, %shr8.4.i
  store i64 %add9.4.i, i64* %arrayidx11.3.i, align 8, !tbaa !8
  %and.5.i = and i64 %add9.5.i.i, 72057594037927935
  %shr8.5.i = lshr i64 %add9.6.i.i, 56
  %add9.5.i = add nuw nsw i64 %and.5.i, %shr8.5.i
  store i64 %add9.5.i, i64* %arrayidx11.2.i, align 8, !tbaa !8
  %and.6.i = and i64 %add9.6.i.i, 72057594037927935
  %shr8.6.i = lshr i64 %add16.i.i, 56
  %add9.6.i = add nuw nsw i64 %shr8.6.i, %and.6.i
  store i64 %add9.6.i, i64* %arrayidx11.1.i, align 8, !tbaa !8
  %and15.i = and i64 %add16.i.i, 72057594037927935
  %add16.i = add nuw nsw i64 %and15.i, %shr.i
  store i64 %add16.i, i64* %arrayidx11.i, align 16, !tbaa !8
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define i64 @gf_eq(%struct.gf_s* nocapture noundef readonly %a, %struct.gf_s* nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %c = alloca <8 x i64>, align 16
  %0 = bitcast <8 x i64>* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #9
  %arraydecay = bitcast <8 x i64>* %c to %struct.gf_s*
  call void @gf_sub(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef %a, %struct.gf_s* noundef %b) #10
  call void @gf_strong_reduce(%struct.gf_s* noundef nonnull %arraydecay) #10
  %1 = load <8 x i64>, <8 x i64>* %c, align 16, !tbaa !8
  %2 = call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %1)
  %call = tail call fastcc i64 @constant_time_is_zero_64(i64 noundef %2) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #9
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @gf_isr(%struct.gf_s* nocapture noundef writeonly %a, %struct.gf_s* noundef %x) local_unnamed_addr #5 {
entry:
  %L0 = alloca [1 x %struct.gf_s], align 16
  %L1 = alloca [1 x %struct.gf_s], align 16
  %L2 = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %L0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #9
  %1 = bitcast [1 x %struct.gf_s]* %L1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #9
  %2 = bitcast [1 x %struct.gf_s]* %L2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %2) #9
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %L1, i64 0, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef %x) #11
  %arraydecay1 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %L2, i64 0, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef %x, %struct.gf_s* noundef nonnull %arraydecay) #11
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1) #11
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef %x, %struct.gf_s* noundef nonnull %arraydecay) #11
  call fastcc void @gf_sqrn(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, i32 noundef 3) #10
  %arraydecay9 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %L0, i64 0, i64 0
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay) #11
  call fastcc void @gf_sqrn(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay9, i32 noundef 3) #10
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay) #11
  call fastcc void @gf_sqrn(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay9, i32 noundef 9) #10
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay1) #11
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay) #11
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef %x, %struct.gf_s* noundef nonnull %arraydecay9) #11
  call fastcc void @gf_sqrn(%struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay1, i32 noundef 18) #10
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay9) #11
  call fastcc void @gf_sqrn(%struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay1, i32 noundef 37) #10
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay9) #11
  call fastcc void @gf_sqrn(%struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay, i32 noundef 37) #10
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay9) #11
  call fastcc void @gf_sqrn(%struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay, i32 noundef 111) #10
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay9) #11
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay1) #11
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef %x, %struct.gf_s* noundef nonnull %arraydecay9) #11
  call fastcc void @gf_sqrn(%struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay, i32 noundef 223) #10
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay9) #11
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef nonnull %arraydecay) #11
  call void @gf_mul(%struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef nonnull %arraydecay1, %struct.gf_s* noundef %x) #11
  %3 = bitcast %struct.gf_s* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %3, i8* noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false) #9, !tbaa.struct !4
  %call = call i64 @gf_eq(%struct.gf_s* noundef nonnull %arraydecay9, %struct.gf_s* noundef getelementptr inbounds ([1 x %struct.gf_s], [1 x %struct.gf_s]* @ONE, i64 0, i64 0)) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #9
  ret i64 %call
}

declare void @gf_sqr(%struct.gf_s* noundef, %struct.gf_s* noundef) local_unnamed_addr #6

declare void @gf_mul(%struct.gf_s* noundef, %struct.gf_s* noundef, %struct.gf_s* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @gf_sqrn(%struct.gf_s* noalias noundef %y, %struct.gf_s* noundef %x, i32 noundef %n) unnamed_addr #5 {
entry:
  %tmp = alloca [1 x %struct.gf_s], align 16
  %0 = bitcast [1 x %struct.gf_s]* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #9
  %and = and i32 %n, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @gf_sqr(%struct.gf_s* noundef %y, %struct.gf_s* noundef %x) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %tmp, i64 0, i64 0
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay, %struct.gf_s* noundef %x) #11
  call void @gf_sqr(%struct.gf_s* noundef %y, %struct.gf_s* noundef nonnull %arraydecay) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ -2, %if.else ], [ -1, %if.then ]
  %sub = add nsw i32 %.sink, %n
  %tobool2.not14 = icmp eq i32 %sub, 0
  br i1 %tobool2.not14, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [1 x %struct.gf_s], [1 x %struct.gf_s]* %tmp, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %n.addr.115 = phi i32 [ %sub, %for.body.lr.ph ], [ %sub5, %for.body ]
  call void @gf_sqr(%struct.gf_s* noundef nonnull %arraydecay3, %struct.gf_s* noundef %y) #11
  call void @gf_sqr(%struct.gf_s* noundef %y, %struct.gf_s* noundef nonnull %arraydecay3) #11
  %sub5 = add nsw i32 %n.addr.115, -2
  %tobool2.not = icmp eq i32 %sub5, 0
  br i1 %tobool2.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.body, %if.end
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @constant_time_msb_64(i64 noundef %a) unnamed_addr #4 {
entry:
  %shr.neg = ashr i64 %a, 63
  ret i64 %shr.neg
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #8

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{i64 0, i64 64, !5}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
