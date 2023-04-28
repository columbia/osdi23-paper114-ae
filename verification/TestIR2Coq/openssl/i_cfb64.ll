; ModuleID = 'crypto/idea/i_cfb64.c'
source_filename = "crypto/idea/i_cfb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idea_key_st = type { [9 x [6 x i32]] }

; Function Attrs: noinline nounwind uwtable
define void @IDEA_cfb64_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.idea_key_st* noundef %schedule, i8* noundef %ivec, i32* nocapture noundef %num, i32 noundef %encrypt) local_unnamed_addr #0 {
entry:
  %ti = alloca [2 x i64], align 16
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %1 = bitcast [2 x i64]* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #3
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %encrypt, 0
  %tobool72.not267 = icmp eq i64 %length, 0
  br i1 %tobool.not, label %while.cond70.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  br i1 %tobool72.not267, label %cleanup, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %incdec.ptr = getelementptr inbounds i8, i8* %ivec, i64 1
  %incdec.ptr5 = getelementptr inbounds i8, i8* %ivec, i64 2
  %incdec.ptr8 = getelementptr inbounds i8, i8* %ivec, i64 3
  %incdec.ptr12 = getelementptr inbounds i8, i8* %ivec, i64 4
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i64 0, i64 0
  %incdec.ptr15 = getelementptr inbounds i8, i8* %ivec, i64 5
  %incdec.ptr18 = getelementptr inbounds i8, i8* %ivec, i64 6
  %incdec.ptr22 = getelementptr inbounds i8, i8* %ivec, i64 7
  %arrayidx29 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i64 0, i64 1
  br label %while.body

while.cond70.preheader:                           ; preds = %if.end
  br i1 %tobool72.not267, label %cleanup, label %while.body73.lr.ph

while.body73.lr.ph:                               ; preds = %while.cond70.preheader
  %incdec.ptr77 = getelementptr inbounds i8, i8* %ivec, i64 1
  %incdec.ptr80 = getelementptr inbounds i8, i8* %ivec, i64 2
  %incdec.ptr84 = getelementptr inbounds i8, i8* %ivec, i64 3
  %incdec.ptr88 = getelementptr inbounds i8, i8* %ivec, i64 4
  %arrayidx91 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i64 0, i64 0
  %incdec.ptr92 = getelementptr inbounds i8, i8* %ivec, i64 5
  %incdec.ptr95 = getelementptr inbounds i8, i8* %ivec, i64 6
  %incdec.ptr99 = getelementptr inbounds i8, i8* %ivec, i64 7
  %arrayidx106 = getelementptr inbounds [2 x i64], [2 x i64]* %ti, i64 0, i64 1
  br label %while.body73

while.body:                                       ; preds = %while.body.lr.ph, %if.end60
  %dec265.in = phi i64 [ %length, %while.body.lr.ph ], [ %dec265, %if.end60 ]
  %n.0264 = phi i32 [ %0, %while.body.lr.ph ], [ %and69, %if.end60 ]
  %in.addr.0263 = phi i8* [ %in, %while.body.lr.ph ], [ %incdec.ptr61, %if.end60 ]
  %out.addr.0262 = phi i8* [ %out, %while.body.lr.ph ], [ %incdec.ptr66, %if.end60 ]
  %dec265 = add nsw i64 %dec265.in, -1
  %cmp3 = icmp eq i32 %n.0264, 0
  br i1 %cmp3, label %if.then4, label %if.end60

if.then4:                                         ; preds = %while.body
  %2 = load i8, i8* %ivec, align 1, !tbaa !8
  %conv = zext i8 %2 to i64
  %shl = shl nuw nsw i64 %conv, 24
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv6 = zext i8 %3 to i64
  %shl7 = shl nuw nsw i64 %conv6, 16
  %or = or i64 %shl7, %shl
  %4 = load i8, i8* %incdec.ptr5, align 1, !tbaa !8
  %conv9 = zext i8 %4 to i64
  %shl10 = shl nuw nsw i64 %conv9, 8
  %or11 = or i64 %or, %shl10
  %5 = load i8, i8* %incdec.ptr8, align 1, !tbaa !8
  %conv13 = zext i8 %5 to i64
  %or14 = or i64 %or11, %conv13
  store i64 %or14, i64* %arrayidx, align 16, !tbaa !9
  %6 = load i8, i8* %incdec.ptr12, align 1, !tbaa !8
  %conv16 = zext i8 %6 to i64
  %shl17 = shl nuw nsw i64 %conv16, 24
  %7 = load i8, i8* %incdec.ptr15, align 1, !tbaa !8
  %conv19 = zext i8 %7 to i64
  %shl20 = shl nuw nsw i64 %conv19, 16
  %or21 = or i64 %shl20, %shl17
  %8 = load i8, i8* %incdec.ptr18, align 1, !tbaa !8
  %conv23 = zext i8 %8 to i64
  %shl24 = shl nuw nsw i64 %conv23, 8
  %or25 = or i64 %or21, %shl24
  %9 = load i8, i8* %incdec.ptr22, align 1, !tbaa !8
  %conv27 = zext i8 %9 to i64
  %or28 = or i64 %or25, %conv27
  store i64 %or28, i64* %arrayidx29, align 8, !tbaa !9
  call void @IDEA_encrypt(i64* noundef nonnull %arrayidx, %struct.idea_key_st* noundef %schedule) #4
  %10 = load i64, i64* %arrayidx, align 16, !tbaa !9
  %shr = lshr i64 %10, 24
  %conv31 = trunc i64 %shr to i8
  store i8 %conv31, i8* %ivec, align 1, !tbaa !8
  %shr33 = lshr i64 %10, 16
  %conv35 = trunc i64 %shr33 to i8
  store i8 %conv35, i8* %incdec.ptr, align 1, !tbaa !8
  %shr37 = lshr i64 %10, 8
  %conv39 = trunc i64 %shr37 to i8
  store i8 %conv39, i8* %incdec.ptr5, align 1, !tbaa !8
  %conv42 = trunc i64 %10 to i8
  store i8 %conv42, i8* %incdec.ptr8, align 1, !tbaa !8
  %11 = load i64, i64* %arrayidx29, align 8, !tbaa !9
  %shr45 = lshr i64 %11, 24
  %conv47 = trunc i64 %shr45 to i8
  store i8 %conv47, i8* %incdec.ptr12, align 1, !tbaa !8
  %shr49 = lshr i64 %11, 16
  %conv51 = trunc i64 %shr49 to i8
  store i8 %conv51, i8* %incdec.ptr15, align 1, !tbaa !8
  %shr53 = lshr i64 %11, 8
  %conv55 = trunc i64 %shr53 to i8
  store i8 %conv55, i8* %incdec.ptr18, align 1, !tbaa !8
  %conv58 = trunc i64 %11 to i8
  store i8 %conv58, i8* %incdec.ptr22, align 1, !tbaa !8
  br label %if.end60

if.end60:                                         ; preds = %if.then4, %while.body
  %incdec.ptr61 = getelementptr inbounds i8, i8* %in.addr.0263, i64 1
  %12 = load i8, i8* %in.addr.0263, align 1, !tbaa !8
  %idxprom = sext i32 %n.0264 to i64
  %arrayidx63 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom
  %13 = load i8, i8* %arrayidx63, align 1, !tbaa !8
  %xor258 = xor i8 %13, %12
  %incdec.ptr66 = getelementptr inbounds i8, i8* %out.addr.0262, i64 1
  store i8 %xor258, i8* %out.addr.0262, align 1, !tbaa !8
  store i8 %xor258, i8* %arrayidx63, align 1, !tbaa !8
  %add = add nsw i32 %n.0264, 1
  %and69 = and i32 %add, 7
  %tobool2.not = icmp eq i64 %dec265, 0
  br i1 %tobool2.not, label %cleanup, label %while.body, !llvm.loop !11

while.body73:                                     ; preds = %while.body73.lr.ph, %if.end140
  %dec71271.in = phi i64 [ %length, %while.body73.lr.ph ], [ %dec71271, %if.end140 ]
  %n.1270 = phi i32 [ %0, %while.body73.lr.ph ], [ %and152, %if.end140 ]
  %in.addr.1269 = phi i8* [ %in, %while.body73.lr.ph ], [ %incdec.ptr141, %if.end140 ]
  %out.addr.1268 = phi i8* [ %out, %while.body73.lr.ph ], [ %incdec.ptr150, %if.end140 ]
  %dec71271 = add nsw i64 %dec71271.in, -1
  %cmp74 = icmp eq i32 %n.1270, 0
  br i1 %cmp74, label %if.then76, label %if.end140

if.then76:                                        ; preds = %while.body73
  %14 = load i8, i8* %ivec, align 1, !tbaa !8
  %conv78 = zext i8 %14 to i64
  %shl79 = shl nuw nsw i64 %conv78, 24
  %15 = load i8, i8* %incdec.ptr77, align 1, !tbaa !8
  %conv81 = zext i8 %15 to i64
  %shl82 = shl nuw nsw i64 %conv81, 16
  %or83 = or i64 %shl82, %shl79
  %16 = load i8, i8* %incdec.ptr80, align 1, !tbaa !8
  %conv85 = zext i8 %16 to i64
  %shl86 = shl nuw nsw i64 %conv85, 8
  %or87 = or i64 %or83, %shl86
  %17 = load i8, i8* %incdec.ptr84, align 1, !tbaa !8
  %conv89 = zext i8 %17 to i64
  %or90 = or i64 %or87, %conv89
  store i64 %or90, i64* %arrayidx91, align 16, !tbaa !9
  %18 = load i8, i8* %incdec.ptr88, align 1, !tbaa !8
  %conv93 = zext i8 %18 to i64
  %shl94 = shl nuw nsw i64 %conv93, 24
  %19 = load i8, i8* %incdec.ptr92, align 1, !tbaa !8
  %conv96 = zext i8 %19 to i64
  %shl97 = shl nuw nsw i64 %conv96, 16
  %or98 = or i64 %shl97, %shl94
  %20 = load i8, i8* %incdec.ptr95, align 1, !tbaa !8
  %conv100 = zext i8 %20 to i64
  %shl101 = shl nuw nsw i64 %conv100, 8
  %or102 = or i64 %or98, %shl101
  %21 = load i8, i8* %incdec.ptr99, align 1, !tbaa !8
  %conv104 = zext i8 %21 to i64
  %or105 = or i64 %or102, %conv104
  store i64 %or105, i64* %arrayidx106, align 8, !tbaa !9
  call void @IDEA_encrypt(i64* noundef nonnull %arrayidx91, %struct.idea_key_st* noundef %schedule) #4
  %22 = load i64, i64* %arrayidx91, align 16, !tbaa !9
  %shr109 = lshr i64 %22, 24
  %conv111 = trunc i64 %shr109 to i8
  store i8 %conv111, i8* %ivec, align 1, !tbaa !8
  %shr113 = lshr i64 %22, 16
  %conv115 = trunc i64 %shr113 to i8
  store i8 %conv115, i8* %incdec.ptr77, align 1, !tbaa !8
  %shr117 = lshr i64 %22, 8
  %conv119 = trunc i64 %shr117 to i8
  store i8 %conv119, i8* %incdec.ptr80, align 1, !tbaa !8
  %conv122 = trunc i64 %22 to i8
  store i8 %conv122, i8* %incdec.ptr84, align 1, !tbaa !8
  %23 = load i64, i64* %arrayidx106, align 8, !tbaa !9
  %shr125 = lshr i64 %23, 24
  %conv127 = trunc i64 %shr125 to i8
  store i8 %conv127, i8* %incdec.ptr88, align 1, !tbaa !8
  %shr129 = lshr i64 %23, 16
  %conv131 = trunc i64 %shr129 to i8
  store i8 %conv131, i8* %incdec.ptr92, align 1, !tbaa !8
  %shr133 = lshr i64 %23, 8
  %conv135 = trunc i64 %shr133 to i8
  store i8 %conv135, i8* %incdec.ptr95, align 1, !tbaa !8
  %conv138 = trunc i64 %23 to i8
  store i8 %conv138, i8* %incdec.ptr99, align 1, !tbaa !8
  br label %if.end140

if.end140:                                        ; preds = %if.then76, %while.body73
  %incdec.ptr141 = getelementptr inbounds i8, i8* %in.addr.1269, i64 1
  %24 = load i8, i8* %in.addr.1269, align 1, !tbaa !8
  %idxprom142 = sext i32 %n.1270 to i64
  %arrayidx143 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom142
  %25 = load i8, i8* %arrayidx143, align 1, !tbaa !8
  store i8 %24, i8* %arrayidx143, align 1, !tbaa !8
  %xor148257 = xor i8 %25, %24
  %incdec.ptr150 = getelementptr inbounds i8, i8* %out.addr.1268, i64 1
  store i8 %xor148257, i8* %out.addr.1268, align 1, !tbaa !8
  %add151 = add nsw i32 %n.1270, 1
  %and152 = and i32 %add151, 7
  %tobool72.not = icmp eq i64 %dec71271, 0
  br i1 %tobool72.not, label %cleanup, label %while.body73, !llvm.loop !13

cleanup:                                          ; preds = %if.end60, %if.end140, %while.cond70.preheader, %while.cond.preheader, %entry
  %storemerge = phi i32 [ -1, %entry ], [ %0, %while.cond70.preheader ], [ %0, %while.cond.preheader ], [ %and152, %if.end140 ], [ %and69, %if.end60 ]
  store i32 %storemerge, i32* %num, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #3
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
!13 = distinct !{!13, !12}
