; ModuleID = 'crypto/bf/bf_ofb64.c'
source_filename = "crypto/bf/bf_ofb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i32], [1024 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @BF_ofb64_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.bf_key_st* noundef %schedule, i8* nocapture noundef %ivec, i32* nocapture noundef %num) local_unnamed_addr #0 {
entry:
  %d = alloca [8 x i8], align 1
  %ti = alloca [2 x i32], align 4
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  %2 = bitcast [2 x i32]* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #3
  %incdec.ptr = getelementptr inbounds i8, i8* %ivec, i64 1
  %3 = load i8, i8* %ivec, align 1, !tbaa !8
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 %conv, 24
  %incdec.ptr2 = getelementptr inbounds i8, i8* %ivec, i64 2
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv3 = zext i8 %4 to i32
  %shl4 = shl nuw nsw i32 %conv3, 16
  %or = or i32 %shl4, %shl
  %incdec.ptr7 = getelementptr inbounds i8, i8* %ivec, i64 3
  %5 = load i8, i8* %incdec.ptr2, align 1, !tbaa !8
  %conv8 = zext i8 %5 to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  %or11 = or i32 %or, %shl9
  %incdec.ptr13 = getelementptr inbounds i8, i8* %ivec, i64 4
  %6 = load i8, i8* %incdec.ptr7, align 1, !tbaa !8
  %conv14 = zext i8 %6 to i32
  %or16 = or i32 %or11, %conv14
  %incdec.ptr18 = getelementptr inbounds i8, i8* %ivec, i64 5
  %7 = load i8, i8* %incdec.ptr13, align 1, !tbaa !8
  %conv19 = zext i8 %7 to i32
  %shl20 = shl nuw i32 %conv19, 24
  %incdec.ptr22 = getelementptr inbounds i8, i8* %ivec, i64 6
  %8 = load i8, i8* %incdec.ptr18, align 1, !tbaa !8
  %conv23 = zext i8 %8 to i32
  %shl24 = shl nuw nsw i32 %conv23, 16
  %or26 = or i32 %shl24, %shl20
  %incdec.ptr28 = getelementptr inbounds i8, i8* %ivec, i64 7
  %9 = load i8, i8* %incdec.ptr22, align 1, !tbaa !8
  %conv29 = zext i8 %9 to i32
  %shl30 = shl nuw nsw i32 %conv29, 8
  %or32 = or i32 %or26, %shl30
  %10 = load i8, i8* %incdec.ptr28, align 1, !tbaa !8
  %conv35 = zext i8 %10 to i32
  %or37 = or i32 %or32, %conv35
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  store i32 %or16, i32* %arrayidx, align 4, !tbaa !4
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  store i32 %or37, i32* %arrayidx39, align 4, !tbaa !4
  %incdec.ptr41 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 1
  store i8 %3, i8* %1, align 1, !tbaa !8
  %incdec.ptr45 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 2
  store i8 %4, i8* %incdec.ptr41, align 1, !tbaa !8
  %incdec.ptr49 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 3
  store i8 %5, i8* %incdec.ptr45, align 1, !tbaa !8
  %incdec.ptr52 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 4
  store i8 %6, i8* %incdec.ptr49, align 1, !tbaa !8
  %incdec.ptr56 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 5
  store i8 %7, i8* %incdec.ptr52, align 1, !tbaa !8
  %incdec.ptr60 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 6
  store i8 %8, i8* %incdec.ptr56, align 1, !tbaa !8
  %incdec.ptr64 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 7
  store i8 %9, i8* %incdec.ptr60, align 1, !tbaa !8
  store i8 %10, i8* %incdec.ptr64, align 1, !tbaa !8
  %tobool.not222 = icmp eq i64 %length, 0
  br i1 %tobool.not222, label %if.end144, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %11 = phi i32 [ %15, %if.end ], [ %or37, %entry ]
  %12 = phi i32 [ %16, %if.end ], [ %or16, %entry ]
  %dec227.in = phi i64 [ %dec227, %if.end ], [ %length, %entry ]
  %save.0226 = phi i32 [ %save.1, %if.end ], [ 0, %entry ]
  %n.0225 = phi i32 [ %and109, %if.end ], [ %0, %entry ]
  %in.addr.0224 = phi i8* [ %incdec.ptr103, %if.end ], [ %in, %entry ]
  %out.addr.0223 = phi i8* [ %incdec.ptr108, %if.end ], [ %out, %entry ]
  %dec227 = add nsw i64 %dec227.in, -1
  %cmp = icmp eq i32 %n.0225, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @BF_encrypt(i32* noundef nonnull %arrayidx, %struct.bf_key_st* noundef %schedule) #4
  %13 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %shr72 = lshr i32 %13, 24
  %conv74 = trunc i32 %shr72 to i8
  store i8 %conv74, i8* %1, align 1, !tbaa !8
  %shr76 = lshr i32 %13, 16
  %conv78 = trunc i32 %shr76 to i8
  store i8 %conv78, i8* %incdec.ptr41, align 1, !tbaa !8
  %shr80 = lshr i32 %13, 8
  %conv82 = trunc i32 %shr80 to i8
  store i8 %conv82, i8* %incdec.ptr45, align 1, !tbaa !8
  %conv85 = trunc i32 %13 to i8
  store i8 %conv85, i8* %incdec.ptr49, align 1, !tbaa !8
  %14 = load i32, i32* %arrayidx39, align 4, !tbaa !4
  %shr88 = lshr i32 %14, 24
  %conv90 = trunc i32 %shr88 to i8
  store i8 %conv90, i8* %incdec.ptr52, align 1, !tbaa !8
  %shr92 = lshr i32 %14, 16
  %conv94 = trunc i32 %shr92 to i8
  store i8 %conv94, i8* %incdec.ptr56, align 1, !tbaa !8
  %shr96 = lshr i32 %14, 8
  %conv98 = trunc i32 %shr96 to i8
  store i8 %conv98, i8* %incdec.ptr60, align 1, !tbaa !8
  %conv101 = trunc i32 %14 to i8
  store i8 %conv101, i8* %incdec.ptr64, align 1, !tbaa !8
  %inc = add nsw i32 %save.0226, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %15 = phi i32 [ %14, %if.then ], [ %11, %while.body ]
  %16 = phi i32 [ %13, %if.then ], [ %12, %while.body ]
  %save.1 = phi i32 [ %inc, %if.then ], [ %save.0226, %while.body ]
  %incdec.ptr103 = getelementptr inbounds i8, i8* %in.addr.0224, i64 1
  %17 = load i8, i8* %in.addr.0224, align 1, !tbaa !8
  %idxprom = sext i32 %n.0225 to i64
  %arrayidx105 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 %idxprom
  %18 = load i8, i8* %arrayidx105, align 1, !tbaa !8
  %xor220 = xor i8 %18, %17
  %incdec.ptr108 = getelementptr inbounds i8, i8* %out.addr.0223, i64 1
  store i8 %xor220, i8* %out.addr.0223, align 1, !tbaa !8
  %add = add nsw i32 %n.0225, 1
  %and109 = and i32 %add, 7
  %tobool.not = icmp eq i64 %dec227, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !9

while.end:                                        ; preds = %if.end
  %tobool110.not = icmp eq i32 %save.1, 0
  br i1 %tobool110.not, label %if.end144, label %if.then111

if.then111:                                       ; preds = %while.end
  %shr114 = lshr i32 %16, 24
  %conv116 = trunc i32 %shr114 to i8
  store i8 %conv116, i8* %ivec, align 1, !tbaa !8
  %shr118 = lshr i32 %16, 16
  %conv120 = trunc i32 %shr118 to i8
  store i8 %conv120, i8* %incdec.ptr, align 1, !tbaa !8
  %shr122 = lshr i32 %16, 8
  %conv124 = trunc i32 %shr122 to i8
  store i8 %conv124, i8* %incdec.ptr2, align 1, !tbaa !8
  %conv127 = trunc i32 %16 to i8
  store i8 %conv127, i8* %incdec.ptr7, align 1, !tbaa !8
  %shr129 = lshr i32 %15, 24
  %conv131 = trunc i32 %shr129 to i8
  store i8 %conv131, i8* %incdec.ptr13, align 1, !tbaa !8
  %shr133 = lshr i32 %15, 16
  %conv135 = trunc i32 %shr133 to i8
  store i8 %conv135, i8* %incdec.ptr18, align 1, !tbaa !8
  %shr137 = lshr i32 %15, 8
  %conv139 = trunc i32 %shr137 to i8
  store i8 %conv139, i8* %incdec.ptr22, align 1, !tbaa !8
  %conv142 = trunc i32 %15 to i8
  store i8 %conv142, i8* %incdec.ptr28, align 1, !tbaa !8
  br label %if.end144

if.end144:                                        ; preds = %entry, %if.then111, %while.end
  %n.0.lcssa232 = phi i32 [ %and109, %if.then111 ], [ %and109, %while.end ], [ %0, %entry ]
  store i32 %n.0.lcssa232, i32* %num, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @BF_encrypt(i32* noundef, %struct.bf_key_st* noundef) local_unnamed_addr #2

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
