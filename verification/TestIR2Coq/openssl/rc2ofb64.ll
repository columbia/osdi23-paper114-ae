; ModuleID = 'crypto/rc2/rc2ofb64.c'
source_filename = "crypto/rc2/rc2ofb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc2_key_st = type { [64 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @RC2_ofb64_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.rc2_key_st* noundef %schedule, i8* nocapture noundef %ivec, i32* nocapture noundef %num) local_unnamed_addr #0 {
entry:
  %d = alloca [8 x i8], align 1
  %ti = alloca [2 x i64], align 16
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  %2 = bitcast [2 x i64]* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #3
  %incdec.ptr = getelementptr inbounds i8, i8* %ivec, i64 1
  %3 = load i8, i8* %ivec, align 1, !tbaa !8
  %conv = zext i8 %3 to i64
  %incdec.ptr1 = getelementptr inbounds i8, i8* %ivec, i64 2
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv2 = zext i8 %4 to i64
  %shl = shl nuw nsw i64 %conv2, 8
  %or = or i64 %shl, %conv
  %incdec.ptr3 = getelementptr inbounds i8, i8* %ivec, i64 3
  %5 = load i8, i8* %incdec.ptr1, align 1, !tbaa !8
  %conv4 = zext i8 %5 to i64
  %shl5 = shl nuw nsw i64 %conv4, 16
  %or6 = or i64 %or, %shl5
  %incdec.ptr7 = getelementptr inbounds i8, i8* %ivec, i64 4
  %6 = load i8, i8* %incdec.ptr3, align 1, !tbaa !8
  %conv8 = zext i8 %6 to i64
  %shl9 = shl nuw nsw i64 %conv8, 24
  %or10 = or i64 %or6, %shl9
  %incdec.ptr11 = getelementptr inbounds i8, i8* %ivec, i64 5
  %7 = load i8, i8* %incdec.ptr7, align 1, !tbaa !8
  %conv12 = zext i8 %7 to i64
  %incdec.ptr13 = getelementptr inbounds i8, i8* %ivec, i64 6
  %8 = load i8, i8* %incdec.ptr11, align 1, !tbaa !8
  %conv14 = zext i8 %8 to i64
  %shl15 = shl nuw nsw i64 %conv14, 8
  %or16 = or i64 %shl15, %conv12
  %incdec.ptr17 = getelementptr inbounds i8, i8* %ivec, i64 7
  %9 = load i8, i8* %incdec.ptr13, align 1, !tbaa !8
  %conv18 = zext i8 %9 to i64
  %shl19 = shl nuw nsw i64 %conv18, 16
  %or20 = or i64 %or16, %shl19
  %10 = load i8, i8* %incdec.ptr17, align 1, !tbaa !8
  %conv22 = zext i8 %10 to i64
  %shl23 = shl nuw nsw i64 %conv22, 24
  %or24 = or i64 %or20, %shl23
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i64 0, i64 0
  store i64 %or10, i64* %arrayidx, align 16, !tbaa !9
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i64 0, i64 1
  store i64 %or24, i64* %arrayidx25, align 8, !tbaa !9
  %incdec.ptr27 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 1
  store i8 %3, i8* %1, align 1, !tbaa !8
  %incdec.ptr30 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 2
  store i8 %4, i8* %incdec.ptr27, align 1, !tbaa !8
  %incdec.ptr34 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 3
  store i8 %5, i8* %incdec.ptr30, align 1, !tbaa !8
  %incdec.ptr38 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 4
  store i8 %6, i8* %incdec.ptr34, align 1, !tbaa !8
  %incdec.ptr41 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 5
  store i8 %7, i8* %incdec.ptr38, align 1, !tbaa !8
  %incdec.ptr45 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 6
  store i8 %8, i8* %incdec.ptr41, align 1, !tbaa !8
  %incdec.ptr49 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 7
  store i8 %9, i8* %incdec.ptr45, align 1, !tbaa !8
  store i8 %10, i8* %incdec.ptr49, align 1, !tbaa !8
  %tobool.not208 = icmp eq i64 %length, 0
  br i1 %tobool.not208, label %if.end130, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %11 = phi i64 [ %15, %if.end ], [ %or24, %entry ]
  %12 = phi i64 [ %16, %if.end ], [ %or10, %entry ]
  %dec213.in = phi i64 [ %dec213, %if.end ], [ %length, %entry ]
  %save.0212 = phi i32 [ %save.1, %if.end ], [ 0, %entry ]
  %n.0211 = phi i32 [ %and95, %if.end ], [ %0, %entry ]
  %in.addr.0210 = phi i8* [ %incdec.ptr89, %if.end ], [ %in, %entry ]
  %out.addr.0209 = phi i8* [ %incdec.ptr94, %if.end ], [ %out, %entry ]
  %dec213 = add nsw i64 %dec213.in, -1
  %cmp = icmp eq i32 %n.0211, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @RC2_encrypt(i64* noundef nonnull %arrayidx, %struct.rc2_key_st* noundef %schedule) #4
  %13 = load i64, i64* %arrayidx, align 16, !tbaa !9
  %conv59 = trunc i64 %13 to i8
  store i8 %conv59, i8* %1, align 1, !tbaa !8
  %shr61 = lshr i64 %13, 8
  %conv63 = trunc i64 %shr61 to i8
  store i8 %conv63, i8* %incdec.ptr27, align 1, !tbaa !8
  %shr65 = lshr i64 %13, 16
  %conv67 = trunc i64 %shr65 to i8
  store i8 %conv67, i8* %incdec.ptr30, align 1, !tbaa !8
  %shr69 = lshr i64 %13, 24
  %conv71 = trunc i64 %shr69 to i8
  store i8 %conv71, i8* %incdec.ptr34, align 1, !tbaa !8
  %14 = load i64, i64* %arrayidx25, align 8, !tbaa !9
  %conv75 = trunc i64 %14 to i8
  store i8 %conv75, i8* %incdec.ptr38, align 1, !tbaa !8
  %shr77 = lshr i64 %14, 8
  %conv79 = trunc i64 %shr77 to i8
  store i8 %conv79, i8* %incdec.ptr41, align 1, !tbaa !8
  %shr81 = lshr i64 %14, 16
  %conv83 = trunc i64 %shr81 to i8
  store i8 %conv83, i8* %incdec.ptr45, align 1, !tbaa !8
  %shr85 = lshr i64 %14, 24
  %conv87 = trunc i64 %shr85 to i8
  store i8 %conv87, i8* %incdec.ptr49, align 1, !tbaa !8
  %inc = add nsw i32 %save.0212, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %15 = phi i64 [ %14, %if.then ], [ %11, %while.body ]
  %16 = phi i64 [ %13, %if.then ], [ %12, %while.body ]
  %save.1 = phi i32 [ %inc, %if.then ], [ %save.0212, %while.body ]
  %incdec.ptr89 = getelementptr inbounds i8, i8* %in.addr.0210, i64 1
  %17 = load i8, i8* %in.addr.0210, align 1, !tbaa !8
  %idxprom = sext i32 %n.0211 to i64
  %arrayidx91 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx91, align 1, !tbaa !8
  %xor206 = xor i8 %18, %17
  %incdec.ptr94 = getelementptr inbounds i8, i8* %out.addr.0209, i64 1
  store i8 %xor206, i8* %out.addr.0209, align 1, !tbaa !8
  %add = add nsw i32 %n.0211, 1
  %and95 = and i32 %add, 7
  %tobool.not = icmp eq i64 %dec213, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !11

while.end:                                        ; preds = %if.end
  %tobool96.not = icmp eq i32 %save.1, 0
  br i1 %tobool96.not, label %if.end130, label %if.then97

if.then97:                                        ; preds = %while.end
  %conv101 = trunc i64 %16 to i8
  store i8 %conv101, i8* %ivec, align 1, !tbaa !8
  %shr103 = lshr i64 %16, 8
  %conv105 = trunc i64 %shr103 to i8
  store i8 %conv105, i8* %incdec.ptr, align 1, !tbaa !8
  %shr107 = lshr i64 %16, 16
  %conv109 = trunc i64 %shr107 to i8
  store i8 %conv109, i8* %incdec.ptr1, align 1, !tbaa !8
  %shr111 = lshr i64 %16, 24
  %conv113 = trunc i64 %shr111 to i8
  store i8 %conv113, i8* %incdec.ptr3, align 1, !tbaa !8
  %conv116 = trunc i64 %15 to i8
  store i8 %conv116, i8* %incdec.ptr7, align 1, !tbaa !8
  %shr118 = lshr i64 %15, 8
  %conv120 = trunc i64 %shr118 to i8
  store i8 %conv120, i8* %incdec.ptr11, align 1, !tbaa !8
  %shr122 = lshr i64 %15, 16
  %conv124 = trunc i64 %shr122 to i8
  store i8 %conv124, i8* %incdec.ptr13, align 1, !tbaa !8
  %shr126 = lshr i64 %15, 24
  %conv128 = trunc i64 %shr126 to i8
  store i8 %conv128, i8* %incdec.ptr17, align 1, !tbaa !8
  br label %if.end130

if.end130:                                        ; preds = %entry, %if.then97, %while.end
  %n.0.lcssa218 = phi i32 [ %and95, %if.then97 ], [ %and95, %while.end ], [ %0, %entry ]
  store i32 %n.0.lcssa218, i32* %num, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @RC2_encrypt(i64* noundef, %struct.rc2_key_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
