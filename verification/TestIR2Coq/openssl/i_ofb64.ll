; ModuleID = 'crypto/idea/i_ofb64.c'
source_filename = "crypto/idea/i_ofb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idea_key_st = type { [9 x [6 x i32]] }

; Function Attrs: noinline nounwind uwtable
define void @IDEA_ofb64_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.idea_key_st* noundef %schedule, i8* nocapture noundef %ivec, i32* nocapture noundef %num) local_unnamed_addr #0 {
entry:
  %d = alloca [8 x i8], align 1
  %ti = alloca [2 x i64], align 16
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  %2 = bitcast [2 x i64]* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #3
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %ivec, i64 1
  %3 = load i8, i8* %ivec, align 1, !tbaa !8
  %conv = zext i8 %3 to i64
  %shl = shl nuw nsw i64 %conv, 24
  %incdec.ptr1 = getelementptr inbounds i8, i8* %ivec, i64 2
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv2 = zext i8 %4 to i64
  %shl3 = shl nuw nsw i64 %conv2, 16
  %or = or i64 %shl3, %shl
  %incdec.ptr4 = getelementptr inbounds i8, i8* %ivec, i64 3
  %5 = load i8, i8* %incdec.ptr1, align 1, !tbaa !8
  %conv5 = zext i8 %5 to i64
  %shl6 = shl nuw nsw i64 %conv5, 8
  %or7 = or i64 %or, %shl6
  %incdec.ptr8 = getelementptr inbounds i8, i8* %ivec, i64 4
  %6 = load i8, i8* %incdec.ptr4, align 1, !tbaa !8
  %conv9 = zext i8 %6 to i64
  %or10 = or i64 %or7, %conv9
  %incdec.ptr11 = getelementptr inbounds i8, i8* %ivec, i64 5
  %7 = load i8, i8* %incdec.ptr8, align 1, !tbaa !8
  %conv12 = zext i8 %7 to i64
  %shl13 = shl nuw nsw i64 %conv12, 24
  %incdec.ptr14 = getelementptr inbounds i8, i8* %ivec, i64 6
  %8 = load i8, i8* %incdec.ptr11, align 1, !tbaa !8
  %conv15 = zext i8 %8 to i64
  %shl16 = shl nuw nsw i64 %conv15, 16
  %or17 = or i64 %shl16, %shl13
  %incdec.ptr18 = getelementptr inbounds i8, i8* %ivec, i64 7
  %9 = load i8, i8* %incdec.ptr14, align 1, !tbaa !8
  %conv19 = zext i8 %9 to i64
  %shl20 = shl nuw nsw i64 %conv19, 8
  %or21 = or i64 %or17, %shl20
  %10 = load i8, i8* %incdec.ptr18, align 1, !tbaa !8
  %conv23 = zext i8 %10 to i64
  %or24 = or i64 %or21, %conv23
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i64 0, i64 0
  store i64 %or10, i64* %arrayidx, align 16, !tbaa !9
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i64 0, i64 1
  store i64 %or24, i64* %arrayidx25, align 8, !tbaa !9
  %incdec.ptr27 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 1
  store i8 %3, i8* %1, align 1, !tbaa !8
  %incdec.ptr31 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 2
  store i8 %4, i8* %incdec.ptr27, align 1, !tbaa !8
  %incdec.ptr35 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 3
  store i8 %5, i8* %incdec.ptr31, align 1, !tbaa !8
  %incdec.ptr38 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 4
  store i8 %6, i8* %incdec.ptr35, align 1, !tbaa !8
  %incdec.ptr42 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 5
  store i8 %7, i8* %incdec.ptr38, align 1, !tbaa !8
  %incdec.ptr46 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 6
  store i8 %8, i8* %incdec.ptr42, align 1, !tbaa !8
  %incdec.ptr50 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 7
  store i8 %9, i8* %incdec.ptr46, align 1, !tbaa !8
  store i8 %10, i8* %incdec.ptr50, align 1, !tbaa !8
  %tobool.not222 = icmp eq i64 %length, 0
  br i1 %tobool.not222, label %cleanup, label %while.body

while.body:                                       ; preds = %if.end, %if.end91
  %11 = phi i64 [ %15, %if.end91 ], [ %or24, %if.end ]
  %12 = phi i64 [ %16, %if.end91 ], [ %or10, %if.end ]
  %dec227.in = phi i64 [ %dec227, %if.end91 ], [ %length, %if.end ]
  %save.0226 = phi i32 [ %save.1, %if.end91 ], [ 0, %if.end ]
  %n.0225 = phi i32 [ %and98, %if.end91 ], [ %0, %if.end ]
  %in.addr.0224 = phi i8* [ %incdec.ptr92, %if.end91 ], [ %in, %if.end ]
  %out.addr.0223 = phi i8* [ %incdec.ptr97, %if.end91 ], [ %out, %if.end ]
  %dec227 = add nsw i64 %dec227.in, -1
  %cmp54 = icmp eq i32 %n.0225, 0
  br i1 %cmp54, label %if.then56, label %if.end91

if.then56:                                        ; preds = %while.body
  call void @IDEA_encrypt(i64* noundef nonnull %arrayidx, %struct.idea_key_st* noundef %schedule) #4
  %13 = load i64, i64* %arrayidx, align 16, !tbaa !9
  %shr60 = lshr i64 %13, 24
  %conv62 = trunc i64 %shr60 to i8
  store i8 %conv62, i8* %1, align 1, !tbaa !8
  %shr64 = lshr i64 %13, 16
  %conv66 = trunc i64 %shr64 to i8
  store i8 %conv66, i8* %incdec.ptr27, align 1, !tbaa !8
  %shr68 = lshr i64 %13, 8
  %conv70 = trunc i64 %shr68 to i8
  store i8 %conv70, i8* %incdec.ptr31, align 1, !tbaa !8
  %conv73 = trunc i64 %13 to i8
  store i8 %conv73, i8* %incdec.ptr35, align 1, !tbaa !8
  %14 = load i64, i64* %arrayidx25, align 8, !tbaa !9
  %shr76 = lshr i64 %14, 24
  %conv78 = trunc i64 %shr76 to i8
  store i8 %conv78, i8* %incdec.ptr38, align 1, !tbaa !8
  %shr80 = lshr i64 %14, 16
  %conv82 = trunc i64 %shr80 to i8
  store i8 %conv82, i8* %incdec.ptr42, align 1, !tbaa !8
  %shr84 = lshr i64 %14, 8
  %conv86 = trunc i64 %shr84 to i8
  store i8 %conv86, i8* %incdec.ptr46, align 1, !tbaa !8
  %conv89 = trunc i64 %14 to i8
  store i8 %conv89, i8* %incdec.ptr50, align 1, !tbaa !8
  %inc = add nsw i32 %save.0226, 1
  br label %if.end91

if.end91:                                         ; preds = %if.then56, %while.body
  %15 = phi i64 [ %14, %if.then56 ], [ %11, %while.body ]
  %16 = phi i64 [ %13, %if.then56 ], [ %12, %while.body ]
  %save.1 = phi i32 [ %inc, %if.then56 ], [ %save.0226, %while.body ]
  %incdec.ptr92 = getelementptr inbounds i8, i8* %in.addr.0224, i64 1
  %17 = load i8, i8* %in.addr.0224, align 1, !tbaa !8
  %idxprom = sext i32 %n.0225 to i64
  %arrayidx94 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx94, align 1, !tbaa !8
  %xor220 = xor i8 %18, %17
  %incdec.ptr97 = getelementptr inbounds i8, i8* %out.addr.0223, i64 1
  store i8 %xor220, i8* %out.addr.0223, align 1, !tbaa !8
  %add = add nsw i32 %n.0225, 1
  %and98 = and i32 %add, 7
  %tobool.not = icmp eq i64 %dec227, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !11

while.end:                                        ; preds = %if.end91
  %tobool99.not = icmp eq i32 %save.1, 0
  br i1 %tobool99.not, label %cleanup, label %if.then100

if.then100:                                       ; preds = %while.end
  %shr103 = lshr i64 %16, 24
  %conv105 = trunc i64 %shr103 to i8
  store i8 %conv105, i8* %ivec, align 1, !tbaa !8
  %shr107 = lshr i64 %16, 16
  %conv109 = trunc i64 %shr107 to i8
  store i8 %conv109, i8* %incdec.ptr, align 1, !tbaa !8
  %shr111 = lshr i64 %16, 8
  %conv113 = trunc i64 %shr111 to i8
  store i8 %conv113, i8* %incdec.ptr1, align 1, !tbaa !8
  %conv116 = trunc i64 %16 to i8
  store i8 %conv116, i8* %incdec.ptr4, align 1, !tbaa !8
  %shr118 = lshr i64 %15, 24
  %conv120 = trunc i64 %shr118 to i8
  store i8 %conv120, i8* %incdec.ptr8, align 1, !tbaa !8
  %shr122 = lshr i64 %15, 16
  %conv124 = trunc i64 %shr122 to i8
  store i8 %conv124, i8* %incdec.ptr11, align 1, !tbaa !8
  %shr126 = lshr i64 %15, 8
  %conv128 = trunc i64 %shr126 to i8
  store i8 %conv128, i8* %incdec.ptr14, align 1, !tbaa !8
  %conv131 = trunc i64 %15 to i8
  store i8 %conv131, i8* %incdec.ptr18, align 1, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then100, %if.end, %entry
  %storemerge = phi i32 [ -1, %entry ], [ %and98, %if.then100 ], [ %and98, %while.end ], [ %0, %if.end ]
  store i32 %storemerge, i32* %num, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @IDEA_encrypt(i64* noundef, %struct.idea_key_st* noundef) local_unnamed_addr #2

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
