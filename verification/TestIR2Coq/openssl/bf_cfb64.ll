; ModuleID = 'crypto/bf/bf_cfb64.c'
source_filename = "crypto/bf/bf_cfb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i32], [1024 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @BF_cfb64_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.bf_key_st* noundef %schedule, i8* noundef %ivec, i32* nocapture noundef %num, i32 noundef %encrypt) local_unnamed_addr #0 {
entry:
  %ti = alloca [2 x i32], align 4
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %1 = bitcast [2 x i32]* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  %tobool.not = icmp eq i32 %encrypt, 0
  %tobool83.not282 = icmp eq i64 %length, 0
  br i1 %tobool.not, label %while.cond81.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  br i1 %tobool83.not282, label %if.end179, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %incdec.ptr = getelementptr inbounds i8, i8* %ivec, i64 1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %ivec, i64 2
  %incdec.ptr9 = getelementptr inbounds i8, i8* %ivec, i64 3
  %incdec.ptr15 = getelementptr inbounds i8, i8* %ivec, i64 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  %incdec.ptr20 = getelementptr inbounds i8, i8* %ivec, i64 5
  %incdec.ptr24 = getelementptr inbounds i8, i8* %ivec, i64 6
  %incdec.ptr30 = getelementptr inbounds i8, i8* %ivec, i64 7
  %arrayidx41 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  br label %while.body

while.cond81.preheader:                           ; preds = %entry
  br i1 %tobool83.not282, label %if.end179, label %while.body84.lr.ph

while.body84.lr.ph:                               ; preds = %while.cond81.preheader
  %incdec.ptr88 = getelementptr inbounds i8, i8* %ivec, i64 1
  %incdec.ptr92 = getelementptr inbounds i8, i8* %ivec, i64 2
  %incdec.ptr98 = getelementptr inbounds i8, i8* %ivec, i64 3
  %incdec.ptr104 = getelementptr inbounds i8, i8* %ivec, i64 4
  %arrayidx109 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  %incdec.ptr110 = getelementptr inbounds i8, i8* %ivec, i64 5
  %incdec.ptr114 = getelementptr inbounds i8, i8* %ivec, i64 6
  %incdec.ptr120 = getelementptr inbounds i8, i8* %ivec, i64 7
  %arrayidx131 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  br label %while.body84

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %dec280.in = phi i64 [ %length, %while.body.lr.ph ], [ %dec280, %if.end ]
  %n.0279 = phi i32 [ %0, %while.body.lr.ph ], [ %and80, %if.end ]
  %in.addr.0278 = phi i8* [ %in, %while.body.lr.ph ], [ %incdec.ptr72, %if.end ]
  %out.addr.0277 = phi i8* [ %out, %while.body.lr.ph ], [ %incdec.ptr77, %if.end ]
  %dec280 = add nsw i64 %dec280.in, -1
  %cmp = icmp eq i32 %n.0279, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  %2 = load i8, i8* %ivec, align 1, !tbaa !8
  %conv = zext i8 %2 to i32
  %shl = shl nuw i32 %conv, 24
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv5 = zext i8 %3 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or = or i32 %shl6, %shl
  %4 = load i8, i8* %incdec.ptr4, align 1, !tbaa !8
  %conv10 = zext i8 %4 to i32
  %shl11 = shl nuw nsw i32 %conv10, 8
  %or13 = or i32 %or, %shl11
  %5 = load i8, i8* %incdec.ptr9, align 1, !tbaa !8
  %conv16 = zext i8 %5 to i32
  %or18 = or i32 %or13, %conv16
  store i32 %or18, i32* %arrayidx, align 4, !tbaa !4
  %6 = load i8, i8* %incdec.ptr15, align 1, !tbaa !8
  %conv21 = zext i8 %6 to i32
  %shl22 = shl nuw i32 %conv21, 24
  %7 = load i8, i8* %incdec.ptr20, align 1, !tbaa !8
  %conv25 = zext i8 %7 to i32
  %shl26 = shl nuw nsw i32 %conv25, 16
  %or28 = or i32 %shl26, %shl22
  %8 = load i8, i8* %incdec.ptr24, align 1, !tbaa !8
  %conv31 = zext i8 %8 to i32
  %shl32 = shl nuw nsw i32 %conv31, 8
  %or34 = or i32 %or28, %shl32
  %9 = load i8, i8* %incdec.ptr30, align 1, !tbaa !8
  %conv37 = zext i8 %9 to i32
  %or39 = or i32 %or34, %conv37
  store i32 %or39, i32* %arrayidx41, align 4, !tbaa !4
  call void @BF_encrypt(i32* noundef nonnull %arrayidx, %struct.bf_key_st* noundef %schedule) #4
  %10 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %shr = lshr i32 %10, 24
  %conv43 = trunc i32 %shr to i8
  store i8 %conv43, i8* %ivec, align 1, !tbaa !8
  %shr45 = lshr i32 %10, 16
  %conv47 = trunc i32 %shr45 to i8
  store i8 %conv47, i8* %incdec.ptr, align 1, !tbaa !8
  %shr49 = lshr i32 %10, 8
  %conv51 = trunc i32 %shr49 to i8
  store i8 %conv51, i8* %incdec.ptr4, align 1, !tbaa !8
  %conv54 = trunc i32 %10 to i8
  store i8 %conv54, i8* %incdec.ptr9, align 1, !tbaa !8
  %11 = load i32, i32* %arrayidx41, align 4, !tbaa !4
  %shr57 = lshr i32 %11, 24
  %conv59 = trunc i32 %shr57 to i8
  store i8 %conv59, i8* %incdec.ptr15, align 1, !tbaa !8
  %shr61 = lshr i32 %11, 16
  %conv63 = trunc i32 %shr61 to i8
  store i8 %conv63, i8* %incdec.ptr20, align 1, !tbaa !8
  %shr65 = lshr i32 %11, 8
  %conv67 = trunc i32 %shr65 to i8
  store i8 %conv67, i8* %incdec.ptr24, align 1, !tbaa !8
  %conv70 = trunc i32 %11 to i8
  store i8 %conv70, i8* %incdec.ptr30, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then2, %while.body
  %incdec.ptr72 = getelementptr inbounds i8, i8* %in.addr.0278, i64 1
  %12 = load i8, i8* %in.addr.0278, align 1, !tbaa !8
  %idxprom = sext i32 %n.0279 to i64
  %arrayidx74 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom
  %13 = load i8, i8* %arrayidx74, align 1, !tbaa !8
  %xor273 = xor i8 %13, %12
  %incdec.ptr77 = getelementptr inbounds i8, i8* %out.addr.0277, i64 1
  store i8 %xor273, i8* %out.addr.0277, align 1, !tbaa !8
  store i8 %xor273, i8* %arrayidx74, align 1, !tbaa !8
  %add = add nsw i32 %n.0279, 1
  %and80 = and i32 %add, 7
  %tobool1.not = icmp eq i64 %dec280, 0
  br i1 %tobool1.not, label %if.end179, label %while.body, !llvm.loop !9

while.body84:                                     ; preds = %while.body84.lr.ph, %if.end165
  %dec82286.in = phi i64 [ %length, %while.body84.lr.ph ], [ %dec82286, %if.end165 ]
  %n.1285 = phi i32 [ %0, %while.body84.lr.ph ], [ %and177, %if.end165 ]
  %in.addr.1284 = phi i8* [ %in, %while.body84.lr.ph ], [ %incdec.ptr166, %if.end165 ]
  %out.addr.1283 = phi i8* [ %out, %while.body84.lr.ph ], [ %incdec.ptr175, %if.end165 ]
  %dec82286 = add nsw i64 %dec82286.in, -1
  %cmp85 = icmp eq i32 %n.1285, 0
  br i1 %cmp85, label %if.then87, label %if.end165

if.then87:                                        ; preds = %while.body84
  %14 = load i8, i8* %ivec, align 1, !tbaa !8
  %conv89 = zext i8 %14 to i32
  %shl90 = shl nuw i32 %conv89, 24
  %15 = load i8, i8* %incdec.ptr88, align 1, !tbaa !8
  %conv93 = zext i8 %15 to i32
  %shl94 = shl nuw nsw i32 %conv93, 16
  %or96 = or i32 %shl94, %shl90
  %16 = load i8, i8* %incdec.ptr92, align 1, !tbaa !8
  %conv99 = zext i8 %16 to i32
  %shl100 = shl nuw nsw i32 %conv99, 8
  %or102 = or i32 %or96, %shl100
  %17 = load i8, i8* %incdec.ptr98, align 1, !tbaa !8
  %conv105 = zext i8 %17 to i32
  %or107 = or i32 %or102, %conv105
  store i32 %or107, i32* %arrayidx109, align 4, !tbaa !4
  %18 = load i8, i8* %incdec.ptr104, align 1, !tbaa !8
  %conv111 = zext i8 %18 to i32
  %shl112 = shl nuw i32 %conv111, 24
  %19 = load i8, i8* %incdec.ptr110, align 1, !tbaa !8
  %conv115 = zext i8 %19 to i32
  %shl116 = shl nuw nsw i32 %conv115, 16
  %or118 = or i32 %shl116, %shl112
  %20 = load i8, i8* %incdec.ptr114, align 1, !tbaa !8
  %conv121 = zext i8 %20 to i32
  %shl122 = shl nuw nsw i32 %conv121, 8
  %or124 = or i32 %or118, %shl122
  %21 = load i8, i8* %incdec.ptr120, align 1, !tbaa !8
  %conv127 = zext i8 %21 to i32
  %or129 = or i32 %or124, %conv127
  store i32 %or129, i32* %arrayidx131, align 4, !tbaa !4
  call void @BF_encrypt(i32* noundef nonnull %arrayidx109, %struct.bf_key_st* noundef %schedule) #4
  %22 = load i32, i32* %arrayidx109, align 4, !tbaa !4
  %shr134 = lshr i32 %22, 24
  %conv136 = trunc i32 %shr134 to i8
  store i8 %conv136, i8* %ivec, align 1, !tbaa !8
  %shr138 = lshr i32 %22, 16
  %conv140 = trunc i32 %shr138 to i8
  store i8 %conv140, i8* %incdec.ptr88, align 1, !tbaa !8
  %shr142 = lshr i32 %22, 8
  %conv144 = trunc i32 %shr142 to i8
  store i8 %conv144, i8* %incdec.ptr92, align 1, !tbaa !8
  %conv147 = trunc i32 %22 to i8
  store i8 %conv147, i8* %incdec.ptr98, align 1, !tbaa !8
  %23 = load i32, i32* %arrayidx131, align 4, !tbaa !4
  %shr150 = lshr i32 %23, 24
  %conv152 = trunc i32 %shr150 to i8
  store i8 %conv152, i8* %incdec.ptr104, align 1, !tbaa !8
  %shr154 = lshr i32 %23, 16
  %conv156 = trunc i32 %shr154 to i8
  store i8 %conv156, i8* %incdec.ptr110, align 1, !tbaa !8
  %shr158 = lshr i32 %23, 8
  %conv160 = trunc i32 %shr158 to i8
  store i8 %conv160, i8* %incdec.ptr114, align 1, !tbaa !8
  %conv163 = trunc i32 %23 to i8
  store i8 %conv163, i8* %incdec.ptr120, align 1, !tbaa !8
  br label %if.end165

if.end165:                                        ; preds = %if.then87, %while.body84
  %incdec.ptr166 = getelementptr inbounds i8, i8* %in.addr.1284, i64 1
  %24 = load i8, i8* %in.addr.1284, align 1, !tbaa !8
  %idxprom167 = sext i32 %n.1285 to i64
  %arrayidx168 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom167
  %25 = load i8, i8* %arrayidx168, align 1, !tbaa !8
  store i8 %24, i8* %arrayidx168, align 1, !tbaa !8
  %xor173272 = xor i8 %25, %24
  %incdec.ptr175 = getelementptr inbounds i8, i8* %out.addr.1283, i64 1
  store i8 %xor173272, i8* %out.addr.1283, align 1, !tbaa !8
  %add176 = add nsw i32 %n.1285, 1
  %and177 = and i32 %add176, 7
  %tobool83.not = icmp eq i64 %dec82286, 0
  br i1 %tobool83.not, label %if.end179, label %while.body84, !llvm.loop !11

if.end179:                                        ; preds = %if.end, %if.end165, %while.cond.preheader, %while.cond81.preheader
  %n.2 = phi i32 [ %0, %while.cond81.preheader ], [ %0, %while.cond.preheader ], [ %and177, %if.end165 ], [ %and80, %if.end ]
  store i32 %n.2, i32* %num, align 4, !tbaa !4
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
!11 = distinct !{!11, !10}
