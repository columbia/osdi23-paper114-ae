; ModuleID = 'crypto/des/cbc_cksm.c'
source_filename = "crypto/des/cbc_cksm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

; Function Attrs: noinline nounwind uwtable
define i32 @DES_cbc_cksum(i8* nocapture noundef readonly %in, [8 x i8]* noundef writeonly %output, i64 noundef %length, %struct.DES_ks* noundef %schedule, [8 x i8]* nocapture noundef readonly %ivec) local_unnamed_addr #0 {
entry:
  %tin = alloca [2 x i32], align 4
  %0 = bitcast [2 x i32]* %tin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %1 = load i8, i8* %arrayidx1, align 1, !tbaa !4
  %conv = zext i8 %1 to i32
  %incdec.ptr2 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv3 = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl, %conv
  %incdec.ptr4 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %3 = load i8, i8* %incdec.ptr2, align 1, !tbaa !4
  %conv5 = zext i8 %3 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or7 = or i32 %or, %shl6
  %incdec.ptr8 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %4 = load i8, i8* %incdec.ptr4, align 1, !tbaa !4
  %conv9 = zext i8 %4 to i32
  %shl10 = shl nuw i32 %conv9, 24
  %or11 = or i32 %or7, %shl10
  %incdec.ptr12 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %5 = load i8, i8* %incdec.ptr8, align 1, !tbaa !4
  %conv13 = zext i8 %5 to i32
  %incdec.ptr14 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %6 = load i8, i8* %incdec.ptr12, align 1, !tbaa !4
  %conv15 = zext i8 %6 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %or17 = or i32 %shl16, %conv13
  %incdec.ptr18 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %7 = load i8, i8* %incdec.ptr14, align 1, !tbaa !4
  %conv19 = zext i8 %7 to i32
  %shl20 = shl nuw nsw i32 %conv19, 16
  %or21 = or i32 %or17, %shl20
  %8 = load i8, i8* %incdec.ptr18, align 1, !tbaa !4
  %conv23 = zext i8 %8 to i32
  %shl24 = shl nuw i32 %conv23, 24
  %or25 = or i32 %or21, %shl24
  %cmp217 = icmp sgt i64 %length, 0
  br i1 %cmp217, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  %arrayidx94 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %in.addr.0221 = phi i8* [ %in, %for.body.lr.ph ], [ %in.addr.8, %if.end ]
  %l.0220 = phi i64 [ %length, %for.body.lr.ph ], [ %sub, %if.end ]
  %tout1.0219 = phi i32 [ %or25, %for.body.lr.ph ], [ %25, %if.end ]
  %tout0.0218 = phi i32 [ %or11, %for.body.lr.ph ], [ %24, %if.end ]
  %cmp27 = icmp ugt i64 %l.0220, 7
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %incdec.ptr29 = getelementptr inbounds i8, i8* %in.addr.0221, i64 1
  %9 = load i8, i8* %in.addr.0221, align 1, !tbaa !4
  %conv30 = zext i8 %9 to i32
  %incdec.ptr31 = getelementptr inbounds i8, i8* %in.addr.0221, i64 2
  %10 = load i8, i8* %incdec.ptr29, align 1, !tbaa !4
  %conv32 = zext i8 %10 to i32
  %shl33 = shl nuw nsw i32 %conv32, 8
  %or34 = or i32 %shl33, %conv30
  %incdec.ptr35 = getelementptr inbounds i8, i8* %in.addr.0221, i64 3
  %11 = load i8, i8* %incdec.ptr31, align 1, !tbaa !4
  %conv36 = zext i8 %11 to i32
  %shl37 = shl nuw nsw i32 %conv36, 16
  %or38 = or i32 %or34, %shl37
  %incdec.ptr39 = getelementptr inbounds i8, i8* %in.addr.0221, i64 4
  %12 = load i8, i8* %incdec.ptr35, align 1, !tbaa !4
  %conv40 = zext i8 %12 to i32
  %shl41 = shl nuw i32 %conv40, 24
  %or42 = or i32 %or38, %shl41
  %incdec.ptr43 = getelementptr inbounds i8, i8* %in.addr.0221, i64 5
  %13 = load i8, i8* %incdec.ptr39, align 1, !tbaa !4
  %conv44 = zext i8 %13 to i32
  %incdec.ptr45 = getelementptr inbounds i8, i8* %in.addr.0221, i64 6
  %14 = load i8, i8* %incdec.ptr43, align 1, !tbaa !4
  %conv46 = zext i8 %14 to i32
  %shl47 = shl nuw nsw i32 %conv46, 8
  %or48 = or i32 %shl47, %conv44
  %incdec.ptr49 = getelementptr inbounds i8, i8* %in.addr.0221, i64 7
  %15 = load i8, i8* %incdec.ptr45, align 1, !tbaa !4
  %conv50 = zext i8 %15 to i32
  %shl51 = shl nuw nsw i32 %conv50, 16
  %or52 = or i32 %or48, %shl51
  %incdec.ptr53 = getelementptr inbounds i8, i8* %in.addr.0221, i64 8
  %16 = load i8, i8* %incdec.ptr49, align 1, !tbaa !4
  %conv54 = zext i8 %16 to i32
  %shl55 = shl nuw i32 %conv54, 24
  %or56 = or i32 %or52, %shl55
  br label %if.end

if.else:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0221, i64 %l.0220
  switch i64 %l.0220, label %if.end [
    i64 1, label %sw.bb88
    i64 7, label %sw.bb60
    i64 6, label %sw.bb65
    i64 5, label %sw.bb70
    i64 4, label %sw.bb74
    i64 3, label %sw.bb78
    i64 2, label %sw.bb83
  ]

sw.bb60:                                          ; preds = %if.else
  %incdec.ptr61 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %17 = load i8, i8* %incdec.ptr61, align 1, !tbaa !4
  %conv62 = zext i8 %17 to i32
  %shl63 = shl nuw nsw i32 %conv62, 16
  br label %sw.bb65

sw.bb65:                                          ; preds = %if.else, %sw.bb60
  %tin1.1 = phi i32 [ 0, %if.else ], [ %shl63, %sw.bb60 ]
  %in.addr.2 = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr61, %sw.bb60 ]
  %incdec.ptr66 = getelementptr inbounds i8, i8* %in.addr.2, i64 -1
  %18 = load i8, i8* %incdec.ptr66, align 1, !tbaa !4
  %conv67 = zext i8 %18 to i32
  %shl68 = shl nuw nsw i32 %conv67, 8
  %or69 = or i32 %shl68, %tin1.1
  br label %sw.bb70

sw.bb70:                                          ; preds = %if.else, %sw.bb65
  %tin1.2 = phi i32 [ 0, %if.else ], [ %or69, %sw.bb65 ]
  %in.addr.3 = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr66, %sw.bb65 ]
  %incdec.ptr71 = getelementptr inbounds i8, i8* %in.addr.3, i64 -1
  %19 = load i8, i8* %incdec.ptr71, align 1, !tbaa !4
  %conv72 = zext i8 %19 to i32
  %or73 = or i32 %tin1.2, %conv72
  br label %sw.bb74

sw.bb74:                                          ; preds = %if.else, %sw.bb70
  %tin1.3 = phi i32 [ 0, %if.else ], [ %or73, %sw.bb70 ]
  %in.addr.4 = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr71, %sw.bb70 ]
  %incdec.ptr75 = getelementptr inbounds i8, i8* %in.addr.4, i64 -1
  %20 = load i8, i8* %incdec.ptr75, align 1, !tbaa !4
  %conv76 = zext i8 %20 to i32
  %shl77 = shl nuw i32 %conv76, 24
  br label %sw.bb78

sw.bb78:                                          ; preds = %if.else, %sw.bb74
  %tin0.0 = phi i32 [ 0, %if.else ], [ %shl77, %sw.bb74 ]
  %tin1.4 = phi i32 [ 0, %if.else ], [ %tin1.3, %sw.bb74 ]
  %in.addr.5 = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr75, %sw.bb74 ]
  %incdec.ptr79 = getelementptr inbounds i8, i8* %in.addr.5, i64 -1
  %21 = load i8, i8* %incdec.ptr79, align 1, !tbaa !4
  %conv80 = zext i8 %21 to i32
  %shl81 = shl nuw nsw i32 %conv80, 16
  %or82 = or i32 %shl81, %tin0.0
  br label %sw.bb83

sw.bb83:                                          ; preds = %if.else, %sw.bb78
  %tin0.1 = phi i32 [ 0, %if.else ], [ %or82, %sw.bb78 ]
  %tin1.5 = phi i32 [ 0, %if.else ], [ %tin1.4, %sw.bb78 ]
  %in.addr.6 = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr79, %sw.bb78 ]
  %incdec.ptr84 = getelementptr inbounds i8, i8* %in.addr.6, i64 -1
  %22 = load i8, i8* %incdec.ptr84, align 1, !tbaa !4
  %conv85 = zext i8 %22 to i32
  %shl86 = shl nuw nsw i32 %conv85, 8
  %or87 = or i32 %shl86, %tin0.1
  br label %sw.bb88

sw.bb88:                                          ; preds = %if.else, %sw.bb83
  %tin0.2 = phi i32 [ 0, %if.else ], [ %or87, %sw.bb83 ]
  %tin1.6 = phi i32 [ 0, %if.else ], [ %tin1.5, %sw.bb83 ]
  %in.addr.7 = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr84, %sw.bb83 ]
  %incdec.ptr89 = getelementptr inbounds i8, i8* %in.addr.7, i64 -1
  %23 = load i8, i8* %incdec.ptr89, align 1, !tbaa !4
  %conv90 = zext i8 %23 to i32
  %or91 = or i32 %tin0.2, %conv90
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.bb88, %if.then
  %tin0.3 = phi i32 [ %or42, %if.then ], [ 0, %if.else ], [ %or91, %sw.bb88 ]
  %tin1.7 = phi i32 [ %or56, %if.then ], [ 0, %if.else ], [ %tin1.6, %sw.bb88 ]
  %in.addr.8 = phi i8* [ %incdec.ptr53, %if.then ], [ %add.ptr, %if.else ], [ %incdec.ptr89, %sw.bb88 ]
  %xor = xor i32 %tin0.3, %tout0.0218
  store i32 %xor, i32* %arrayidx92, align 4, !tbaa !7
  %xor93 = xor i32 %tin1.7, %tout1.0219
  store i32 %xor93, i32* %arrayidx94, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx92, %struct.DES_ks* noundef %schedule, i32 noundef 1) #5
  %24 = load i32, i32* %arrayidx92, align 4, !tbaa !7
  %25 = load i32, i32* %arrayidx94, align 4, !tbaa !7
  %sub = add nsw i64 %l.0220, -8
  %cmp = icmp sgt i64 %l.0220, 8
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %if.end, %entry
  %tout0.0.lcssa = phi i32 [ %or11, %entry ], [ %24, %if.end ]
  %tout1.0.lcssa = phi i32 [ %or25, %entry ], [ %25, %if.end ]
  %cmp97.not = icmp eq [8 x i8]* %output, null
  br i1 %cmp97.not, label %if.end128, label %if.then99

if.then99:                                        ; preds = %for.end
  %conv100 = trunc i32 %tout0.0.lcssa to i8
  %incdec.ptr101 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 1
  store i8 %conv100, i8* %arrayidx, align 1, !tbaa !4
  %shr = lshr i32 %tout0.0.lcssa, 8
  %conv103 = trunc i32 %shr to i8
  %incdec.ptr104 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 2
  store i8 %conv103, i8* %incdec.ptr101, align 1, !tbaa !4
  %shr105 = lshr i32 %tout0.0.lcssa, 16
  %conv107 = trunc i32 %shr105 to i8
  %incdec.ptr108 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 3
  store i8 %conv107, i8* %incdec.ptr104, align 1, !tbaa !4
  %shr109 = lshr i32 %tout0.0.lcssa, 24
  %conv111 = trunc i32 %shr109 to i8
  %incdec.ptr112 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 4
  store i8 %conv111, i8* %incdec.ptr108, align 1, !tbaa !4
  %conv114 = trunc i32 %tout1.0.lcssa to i8
  %incdec.ptr115 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 5
  store i8 %conv114, i8* %incdec.ptr112, align 1, !tbaa !4
  %shr116 = lshr i32 %tout1.0.lcssa, 8
  %conv118 = trunc i32 %shr116 to i8
  %incdec.ptr119 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 6
  store i8 %conv118, i8* %incdec.ptr115, align 1, !tbaa !4
  %shr120 = lshr i32 %tout1.0.lcssa, 16
  %conv122 = trunc i32 %shr120 to i8
  %incdec.ptr123 = getelementptr inbounds [8 x i8], [8 x i8]* %output, i64 0, i64 7
  store i8 %conv122, i8* %incdec.ptr119, align 1, !tbaa !4
  %shr124 = lshr i32 %tout1.0.lcssa, 24
  %conv126 = trunc i32 %shr124 to i8
  store i8 %conv126, i8* %incdec.ptr123, align 1, !tbaa !4
  br label %if.end128

if.end128:                                        ; preds = %if.then99, %for.end
  %or141 = call i32 @llvm.bswap.i32(i32 %tout1.0.lcssa)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i32 %or141
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @DES_encrypt1(i32* noundef, %struct.DES_ks* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
